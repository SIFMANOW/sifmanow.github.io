#!/usr/bin/env racket
#lang at-exp racket/base

(require racket/class
         racket/file
         racket/pretty
         syntax/parse/define
         scribble/html/html
         (prefix-in html: scribble/html/extra)
         racket/format
         racket/dict
         racket/runtime-path
         racket/path
         racket/splicing
         (except-in scribble/html/lang read read-syntax)
         web-server/servlet-env
         web-server/dispatchers/dispatch
         pkg
         pkg/lib
         (prefix-in pict: pict)
         (for-syntax racket/base
                     racket/list
                     racket/string
                     racket/dict))

(provide (except-out (all-from-out scribble/html/lang)
                     #%module-begin)
         (all-from-out racket/format)
         (rename-out [-module-begin #%module-begin])
         read read-syntax get-info
         page
         make-id
         ref-id
         project-root-dir)

(define (header #:rest [rest '()] . v)
  @head{
    @meta[charset: "utf-8"]
    @meta[http-equiv: "X-UA-Compatible" content: "IE=edge"]
    @meta[name: "viewport" 'content: "width=device-width, initial-scale=1"]
    @link[rel: "stylesheet" type: "text/css" href: "/css/custom.css"]
    @;@link[rel: "shortcut icon" href: "logo/tiny.png" type: "image/x-icon"]
    @link[rel: "stylesheet"
          href: "https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity: "sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin: "anonymous"]
    @script[src: "https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity: "sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin: "anonymous"]
    @script[src: "https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity:"sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
            crossorigin: "anonymous"]
    @script[src: "https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity: "sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin: "anonymous"]
    @title[v]{ - SIF MA NOW}
    @rest})

(define (navbar . current-page)
  @html:header{
 @element["nav" class: "navbar navbar-expand-sm navbar-light bg-light"]{
  @a[class: "navbar-brand" href: (build-path "/" (car (dict-ref html-navbar-file-table "Home")))]{
   @img[src: "res/cropped-SIF-Logo-Cross-LOW-RES.jpg" alt: "logo"]}
  @ul[class: "navbar-nav"]{
   @(for/list ([title-pair (in-list html-navbar-file-table)])
      (define cur-page (equal? (car title-pair) (car current-page)))
      (define subs (caddr title-pair))
      @li[class: @~a{nav-item @(if cur-page
                                   "active"
                                   "")
                              @(if (null? subs)
                                   ""
                                   "dropdown")}]{
       @a[class: @~a{nav-link @(if (null? subs)
                                   ""
                                   "dropdown-toggle")}
          href: (if (or cur-page (not (null? subs))) "#" (build-path "/" (cadr title-pair)))
          @(unless (null? subs) data-toggle:)
          @(unless (null? subs) "dropdown")
          (car title-pair)]
       @(unless (null? subs)
          @div[class: "dropdown-menu"]{
            @(for/list ([item (in-list subs)])
               @a[class: "dropdown-item" href: (build-path "/" (cdr item)) (car item)])})})}}})

(define (footer #:rest [rest '()] . v)
  (list*
   @html:footer[class: "container"]{
     @div[class: "copyright"]{
       @p[style: "float:left"]{Copyright © 2019}}}
   ;@script[src: "/js/bootstrap.min.js"]
   rest))

(define (page #:title title
              #:header-rest [header-rest '()]
              #:footer-rest [footer-rest '()]
              #:container? [container? #t]
              . content)
  (list @doctype{html}
        @html[lang: "en"]{
          @header[#:rest header-rest]{@title}
          @body[id: "pn-top"]{
            @navbar[title]
            @(if container?
                 @div[class: "container"]{@html:main[role: "main"]{@content}}
                 @html:main[role: "main"]{@content})
            @footer[#:rest footer-rest]}}))

;; ===================================================================================================

;; Each entry in the file table is:
;; (Pair Name (Pair Path (Listof (Pair Subname AnchorPath))))
(module files-mod racket
  (provide file-table)
  (define file-table
  '(("Home" "index.scrbl")
    ("Who we are" "about.scrbl")
    ("Gallery" "gallery.scrbl")
    ("SIF/SCS" "sif.scrbl"
               ("What do the experts say?" . "experts")
               ("National news coverage" . "national")
               ("SIFMA NOW in the news" . "news")
               ("Videos" . "videos"))
    ("Latest Updates" "updates.scrbl")
    ("Contact Us" "contact.scrbl"))))
(require 'files-mod
         (for-syntax 'files-mod))

(define-runtime-path-list files
  (map car (dict-values file-table)))

(define html-navbar-file-table
  (for/list ([(f v) (in-dict file-table)])
    (define path (path-replace-suffix (car v) ".html"))
    (list f path
          (for/list ([(k* v*) (in-dict (cdr v))])
            (cons k* (format "~a#~a" path v*))))))

;; ===================================================================================================

;; Assumes Racket 7, with minimal backwards support for v6.10+
(define-syntax (-module-begin stx)
  (syntax-parse stx
    [(_ body ...)
     (if (string-prefix? (version) "6.1")
         ;; Old version of racket, make a best effort attempt.
         #'(#%module-begin
            (define orig-url-roots (url-roots))
            (url-roots '(("" "/" abs)))
            body ...
            (url-roots orig-url-roots))
         #'(#%module-begin
            (require racket/splicing)
            (splicing-parameterize ([url-roots '(("" "/" abs))])
              body ...)))]))

(module reader syntax/module-reader
  #:read scribble:read-inside
  #:read-syntax scribble:read-syntax-inside
  #:whole-body-readers? #t
  #:info        reader-info
  #:language `(submod ,(build-path this-dir "website.rkt") lang)

  (require (prefix-in scribble: scribble/reader)
           (only-in scribble/base/reader scribble-base-reader-info)
           (only-in racket/runtime-path define-runtime-path)
           (for-syntax (only-in racket/base #%datum)))
  
  (define base-reader-info (scribble-base-reader-info))
  (define (reader-info key defvalue default)
    (case key
      [(drracket:default-filters) (cons '("Scribble HTML" "*.shtml")
                                        (or (base-reader-info key defvalue default) '()))]
      [(drracket:default-extension) "shtml"]
      [else (base-reader-info key defvalue default)]))
  
  (define-runtime-path this-dir "."))
(require 'reader)

;; ===================================================================================================

(define-runtime-path project-root-dir ".")

(define (preview!)
  (serve/servlet (lambda (_) (next-dispatcher))
                 #:servlet-path "/index.html"
                 #:extra-files-paths (list project-root-dir)
                 #:port (integer-bytes->integer #"LA" #f)
                 #:listen-ip #f
                 #:launch-browser? #t))

(define (build!)
  ;; Make bldres dir
  (make-directory* (build-path project-root-dir "bldres"))
  ;; Build HTML files
  (for ([f (in-list files)])
    (unless (equal? (path-get-extension f) #".html")
      (with-output-to-file (path-replace-suffix f ".html")
        #:exists 'replace
        (lambda ()
          (dynamic-require f 0)))))
  ;; Build Images
  (for ([i (in-directory (build-path project-root-dir "res"))])
    (define img (pict:scale-to-fit (pict:bitmap i) 300 300))
    (define type (case (path-get-extension i)
                   [(#".jpg" #".jpeg") 'jpeg]
                   [(#".png") 'png]))
    (define save-location (build-path project-root-dir "bldres" (file-name-from-path i)))
    (send (pict:pict->bitmap img) save-file save-location type)))

;; ===================================================================================================

(define (make-id) (symbol->string (gensym)))
(define (ref-id id) (format "#~a" id))

;; ===================================================================================================

(module deps racket
  (provide (all-defined-out))
  (require pkg
           pkg/lib)
  (define deps '("sml"
                 "markdown"))

  (define (install-deps [check-update? #t])
    (for ([i (in-list deps)])
      (cond [(hash-has-key? (installed-pkg-table) i)
             (when check-update?
               (pkg-update-command #:deps 'search-auto i #:no-setup #t))]
            [else
             (pkg-install-command #:deps 'search-auto i #:no-setup #t)]))))
(require 'deps
         (for-syntax 'deps))

;; ===================================================================================================

(module* main #f
  (begin-for-syntax
    (with-handlers* ([exn:fail? (λ (e) (log-warning "build-deps: ~a" e))])
      (install-deps #f)))
  (require racket/cmdline)
  (void
   (command-line
    #:program "Leif Andersen Website"
    #:once-each
    [("-d" "--deps") "Install the required deps to build the website"
     (install-deps)]
    [("-b" "--build") "Build Website"
     (build!)]
    [("-p" "--preview") "Preview Website"
     (preview!)]
    )))

;; ===================================================================================================

(module* lang racket
  (require (submod "..")
           (prefix-in pict: pict)
           racket/class
           racket/file
           racket/path
           markdown)
  (provide (all-from-out (submod ".."))
           (all-from-out pict)
           (all-from-out racket/class)
           (all-from-out racket/file)
           (all-from-out racket/path)
           markdown)
  (define (markdown . str)
    (literal (map xexpr->string (parse-markdown (apply string-append str))))))
