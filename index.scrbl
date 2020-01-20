#lang reader "website.rkt"

@page[#:title "Main"
      #:container? #f]{
 @div[class: "jumbotron"]{
  @div[class: "container"]{
   @div[class: "splash"]{
    @center{@img[src: "res/cropped-SIF-Logo-Cross-LOW-RES.jpg"
                 alt: "SIF MA NOW!" height: 200 width: 533]}
    @center{@h1{Join us in the fight and help to SAVE LIVES NOW!}}

    @center{@h4{SIF MA Now is a growing coalition of medical
      and public health professionals and organizations, current
      and former substance users, law enforcement and criminal
      justice professionals, social justice groups, and concerned
      Massachusetts residents who believe that safe consumption
      sites (SCSs) are one important evidence-based solution to
      problems related to drug use in Massachusetts.}}

    @center{
     @a[class: "btn btn-default btn-lg btn-oval"
        href: "about.html"
        role: "button"]{
      Learn More!}}}}}}
