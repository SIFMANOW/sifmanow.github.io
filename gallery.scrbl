#lang reader "website.rkt"

@(define IMG-HEIGHT 400)
@(define (captioned-image image . caption*)
   (define caption (apply string-append caption*))
   (define src-file (build-path project-root-dir "res" image))
   (define src (pict:bitmap src-file))
   (define out
     (pict:scale-to-fit src IMG-HEIGHT IMG-HEIGHT
                        #:mode
                        (if ((pict:pict-width src) . < . (pict:pict-height src))
                            'preserve
                            'preserve/max)))
   (define out-filename (format "~a-~a" (gensym) image))
   (define out-file (build-path project-root-dir "bldres" out-filename))
   (send (pict:pict->bitmap out) save-file out-file
         (case (path-get-extension out-file)
           [(#".jpg" #".jpeg") 'jpeg]
           [(#",png") 'png]
           [else 'png]))
   (list
    @img[src: (build-path "bldres" out-filename)]
    @p[caption]
    @br[]))

@page[#:title "Our Work"]{

 @captioned-image["Aubrey-at-BU-School-of-Public-Health-e1527357278313.jpg"]{SIFMA NOW co-founder, Aubri Esters, explains SIFs’ benefits and signs up new recruits at the BU School of Public Health in the fight to increase harm reduction services in Massachusetts.}

 @captioned-image["Katrina-in-tent-explaining.png"]{Dr. Katrina Ciraldo, South Boston Health Center, and SIFMA NOW co-founder, explains how a mobile Supervised Site might work in the field.}

 @captioned-image["Brandon-Marshall-Harvard-blackboard.jpeg"]{Brandon Marshall, PhD, Prof. at Brown University School of Public Health, shares his research showing the benefits of SIFS with the Harvard School of Public Health}

 @captioned-image["Brieze-Kelley-M.D.-Mass-General-Hospital-1.jpeg"]{Brieze Kelley, MD, Mass General Hospital, speaks to SIFMA NOW about the urgency of setting up SIFs}

 @captioned-image["Aubri-Iru-first-church-cambridge-smiling.png"]{Aubri Esters and Dr. Iru Fernando share a light moment on a panel at the First Church of Cambridge}

 @captioned-image["Jim-Stewart.jpg"]{Jim Stewart, co-founder of SIFMA NOW, Director of the Homeless Shelter at the First Church in Cambridge, addresses nursing students in western Massachusetts.}

 @captioned-image["med-students-state-house-1.jpg"]{Medical students join SIFMA NOW to educate legislators about the medical benefits of SIFs}

 @captioned-image["Mark-Eisenberg-office.jpeg"]{Mark Eisenberg, MD, Mass General Hospital and SIFMA NOW co-founder, mourns the unnecessary loss of life because of the absence of SIFs}

 @captioned-image["Sandro-Galea-interview-BUSPH.jpg"]{Sandro Galea, MD, Dean of the Boston University School of Public Health, speaks to the media in support of SIFs in front of the SIFMA NOW demonstration tent}

 @captioned-image["Richard-Saitz.jpeg"]{Richard Saitz, MD, Boston University School of Public Health, has data to refute fears of increased drug usage from the establishment of supervised injection facilities.}

 @captioned-image["panel-and-audience.jpg"]{A SIFMA NOW sponsored panel at the U. Mass School of Nursing}

 @captioned-image["Vaughn-Reese.png"]{Vaughan Rees, PhD, Harvard School of Public Health has particular expertise with SIFs in Australia. He lectures widely on their benefits.}

 @captioned-image["group-and-aubri-1.jpg"]{At UMass Medical Center in Worchester}

 @captioned-image["jim-S.jpg"]{Jim Stewart in conversation}
 
 @captioned-image["man-reading-studies-1.jpg"]{Stack o’ Studies…}

 @captioned-image["men-sam-aubri-in-tent-1.jpg"]{Mock SCS, UMass Medical Center, Worchester}
                          
}