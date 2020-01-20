#lang reader "website.rkt"

@(define (accordion . elements)
   (define ac-id (make-id))
   @div[class: "accordion" id: ac-id]{
    @(for/list ([e (in-list elements)])
       (define h-id (make-id))
       (define b-id (make-id))
       (list
        @div[class: "card"]{
         @div[class: "card-header" id: h-id]{
          @h2[class: "mb-0"]{
           @button[class: "btn btn-link"
                   type: "button"
                   data-toggle: "collapse"
                   data-target: (ref-id b-id)]{
            @(first e)}}}
         @div[id: b-id
              class: "collapse"
              data-parent: (ref-id ac-id)
              aria-labelledBy: (ref-id h-id)]{
          @div[class: "card-body"]{
           @(rest e)}}}))})

@page[#:title "Learn More"]{

 @a[name: "experts"]
 @h1{What do the experts say?}
 @(accordion (list "The American Medical Association"
                   @markdown{
  # AMA Wants New Approaches to Combat Synthetic and Injectable Drugs
  ## June 12, 2017

  CHICAGO – Responding to the health and safety threat posed
  by the abuse of new designer drugs that are synthesized and
  marketed to circumvent drug laws, the American Medical
  Association (AMA) today voted to support a comprehensive,
  multidisciplinary effort to close a gap in the nation’s
  ability to identify, regulate, and mitigate the dangers
  posed by new psychoactive substances.

  New psychoactive substances – or NPS – mimic the effects of
  a wide range of substances, including prescription opioids,
  cannabinoids, stimulants, hallucinogens, and central nervous
  system depressants. NPS are sold as “legal highs” and
  alternatives to established drugs of abuse. NPS have been
  increasingly associated with hospital emergencies, acute
  adverse health consequences, and drug-induced death.

  “Although Congress passed AMA-supported legislation in 2012
  that placed 26 synthetic drugs in Schedule 1 under the
  Controlled Substances Act (CSA), drug traffickers have
  devised ways to circumvent federal drug laws by slightly
  altering the chemical structure of their products and
  designing new synthetic drugs,” said Patrice A. Harris,
  M.D., chair of the AMA Board of Trustees and the AMA Task
  Force on Opioid Abuse. “These new products are currently
  unregulated and are frequently marketed to young people as
  innocent products like “bath salts,” plant food, or incense.
  They also include variations of the extremely dangerous
  opioid fentanyl, which has been wreaking havoc across the
  country and resulting in a sharp increase in drug overdoses
  and deaths due to such overdoses.”
   
  Delegates at the AMA Annual Meeting voted to support
  multifaceted, collaborative multiagency approach to combat
  NPS. Delegates also supported increased NPS surveillance and
  early warning systems for more actionable information that
  can quickly aid law enforcement, public health officials,
  emergency physicians, and vulnerable populations in
  mitigating the growing NPS problem.
   
  Public health approaches have been used to successfully
  address outbreaks of NPS overdoses. When such approaches
  have been successful, pre-existing coordinated relationships
  among multiple stakeholders have allowed for a rapid and
  comprehensive response to a given outbreak.

  In addition to the newly adopted policies for eliminating
  the NPS threat, the AMA is also supporting the “Synthetic
  Drug Control Act of 2017” (H.R. 1732) that would require the
  Attorney General of the United States to assign Schedule I
  classification to approximately 250 dangerous new synthetic
  substances identified by the Drug Enforcement Administration
  since 2012.

  In an effort to consider promising strategies that could
  reduce the health and societal problems associated with
  injection drug use, the AMA today voted to support the
  development of pilot facilities where people who use
  intravenous drugs can inject self-provided drugs under
  medical supervision.

  Studies from other countries have shown that supervised
  injection facilities reduce the number of overdose deaths,
  reduce transmission rates of infectious disease, and
  increase the number of individuals initiating treatment for
  substance use disorders without increasing drug trafficking
  or crime in the areas where the facilities are located.

  “State and local governments around the nation are
  currently involved in exploratory efforts to create
  supervised injection facilities to help reduce public health
  and societal impacts of illegal drug use,” said Dr.
  Harris.“Pilot facilities will help inform U.S . policymakers
  on the feasibility, effectiveness and legal aspects of
  supervised injection facilities in reducing harms and health
  care costs associated with injection drug use.”

  The examination of this issue by physicians at the AMA
  Annual Meeting was greatly assisted by the Massachusetts
  Medical Society and its recently completed comprehensive
  study of the literature associated with supervised injection
  facilities.})

             (list "The Lancet"
                   @markdown{
  # The Lancet
  ## Volume 377, Issue 9775
  ## 23–29 April 2011, Pages 1385-1386

  ### Methods
  
  We examined population-based overdose mortality rates for
  the period before (Jan 1, 2001, to Sept 20, 2003) and after
  (Sept 21, 2003, to Dec 31, 2005) the opening of the
  Vancouver SIF. The location of death was determined from
  provincial coroner records. We compared overdose fatality
  rates within an a priori specified 500 m radius of the SIF
  and for the rest of the city.

  ### Findings
  
  Of 290 decedents, 229 (79·0%) were male, and the median age
  at death was 40 years (IQR 32–48 years). A third (89, 30·7%)
  of deaths occurred in city blocks within 500 m of the SIF.
  The fatal overdose rate in this area decreased by 35·0%
  after the opening of the SIF, from 253·8 to 165·1 deaths per
  100 000 person-years (p=0·048). By contrast, during the same
  period, the fatal overdose rate in the rest of the city
  decreased by only 9·3%, from 7·6 to 6·9 deaths per 100 000
  person-years (p=0·490). There was a significant interaction
  of rate differences across strata (p=0·049).

  ### Interpretation

  SIFs should be considered where injection drug use is
  prevalent, particularly in areas with high densities of
  overdose.

  ### Funding
  
  Vancouver Coastal Health, Canadian Institutes of Health
  Research, and the Michael Smith Foundation for Health
  Research.})
             (list "Scientific American"
                   @markdown{
                             

# Scientific American
## Safe Injection Facilities Save Lives

  To fight the opioid crisis, let substance users shoot up
  under medical supervision

  ## By THE EDITORS on January 29, 2018

  Annual opioid fatalities have now surpassed the yearly
  number of deaths from AIDS at the height of that epidemic in
  the mid-1990s. In 2016 drug overdose deaths numbered 63,000,
  more than the U.S. death toll from the entire Vietnam War.
  The trend is terrifying: the problem is getting worse each
  year.

  Cities and states reeling from opioid deaths need to give
  serious consideration to setting up safe injection rooms,
  which could significantly reduce fatalities. These are
  places where a drug user can go to consume illegal drugs
  under the supervision of health workers. They have been used
  in Europe, Canada and Australia for decades, and evidence
  and experience there shows they are very effective. This may
  not seem like an obvious way to fight an abuse epidemic, but
  there are few other options. While in the U.S., many cities’
  efforts to establish such sites have stalled, Philadelphia
  is now poised to open the country’s first officially
  sanctioned safe injection site.

  The misuse of prescription opioids such as OxyContin is
  inextricably linked with that of street drugs such as
  heroin. Nearly half of young people who inject heroin
  started by abusing prescription drugs. Then they turned to
  the cheaper, more readily available alternative. The path
  from pills to needles has meant that U.S. deaths from heroin
  have increased by a factor of five since 2010, topping
  15,000 people in 2016. The number of dead is continuing to
  climb as people overdose on heroin laced with fentanyl, a
  synthetic opioid that makes heroin much more potent—and thus
  more deadly.

  That’s where safe injection sites would come in. At more
  than 90 such locations in Europe and elsewhere, if someone
  overdoses at one of these sites, a health worker or other
  first responder quickly administers an antidote. The
  injection facilities also have proved they can reduce the
  transmission of blood-borne infections, partly through
  needle-exchange programs. They can also save money: in San
  Francisco, for example, one analysis concluded that for
  every dollar spent on such sites, $2.33 in emergency
  medical, law enforcement and other costs would be reduced,
  producing a yearly net savings of $3.5 million.

  The evidence for increased safety is compelling. At Insite,
  a safe-injection site in Vancouver, for example, there was a
  35 percent reduction in fatal overdoses in the area around
  the facility, compared with a 9.3 percent reduction in other
  parts of the city that may have had other interventions.
  People who used Insite were also much less likely to share
  needles than individuals who shot up in unsupervised places.
  And Insite helped get people clean. Of the 6,532 people who
  visited the facility in 2015, 464 were referred to addiction
  treatment, and more than half of them completed it.

  Critics argue, correctly, that safe injection sites are not
  a perfect solution on their own. Our country needs more
  drug-treatment beds and counseling options, medication
  assistance to help with drug withdrawal and other
  evidence-based care to alleviate the crisis. Safe sites also
  work best in places where drug use is centralized, such as
  in specific urban neighborhoods rather than rural areas. And
  of course, they are controversial because they require
  officials to tacitly accept illegal drug use.

  That is why no American city has yet cleared the necessary
  hurdles to proceed with establishing an injection site. San
  Francisco and Denver are among the jurisdictions that have
  considered this option. Seattle, too, has called for two
  safe-consumption rooms and has even set aside funds to
  support them, but its effort has been mired in legal
  battles. Federal law currently makes it illegal to use
  nonprescribed opiates and opioids, so Philadelphia officials
  have said they would not fund or operate such a facility.
  They would instead encourage private efforts to open
  one—which would perhaps providing slightly more legal
  distance than if they were to finance and manage it
  themselves. Still, the U.S. Department of Justice may choose
  to prosecute the city for supporting the move. (The Mayor’s
  office told Scientific American in a statement that “We’re
  aware of federal concerns but given the depth of the problem
  and the number of lives impacted, we need to be bold in our
  approach.”)

  But the stakes are high. If this site does get off the
  ground, it could finally pave the way for other cities to
  follow suit—giving communities new hope that the rising
  death toll from the opioid crisis might finally begin to
  reverse.})

             (list "Annals of Internal Medicine"
                   @markdown{
                       
  # Annals of Internal Medicine

  ## New Strategies Are Needed to Stop Overdose Fatalities: The Case for Supervised Injection Facilities

  ### Jessie M. Gaeta, MD, and Melanie Racine, MPH

  Last summer, the lifeless body of a 26-year-old
  heroin-using man, Tim (not his real name), was dis- covered
  in the shadows of a side street in Boston. Ninety minutes
  before, he had come to our clinic at Boston Health Care for
  the Homeless Program, mere blocks away, pleading for help.
  He told us with certainty that he was going to relapse that
  day, ending 6 weeks of hard-earned sobriety. Our nurse
  offered to connect Tim to treatment at the nearby methadone
  clinic or our office-based addiction treatment program, but
  he refused. He said he wasn’t ready to enter another
  treatment program: What he wanted, simply, was accompaniment
  while he used. “I’m just looking for a ‘buddy’ to go with
  me. I don’t want to die.”

  The nurse made sure Tim had a naloxone rescue kit in his
  pocket and counseled him that his tolerance was lower than
  usual and he should start with a reduced “test” dose. With
  no friends available to accompany him, and without the legal
  authority to allow him to stay in our building, our staff
  watched Tim walk out the door for the last time. When he was
  found an hour and a half later—in the shadow of a
  world-class medical center and a large needle-exchange
  program, with naloxone at arm’s length—alone, we found
  ourselves agonizing over the limits of our current options
  for helping people like him.

  With the explosion of highly potent fentanyl and its
  analogues in the illicit drug supply, overdose fatalities
  are occurring with alarming frequency and speed—often within
  minutes or even seconds of injection, leaving little time
  for first responders to find and resuscitate victims. For
  this reason, we often advise people to use with a friend and
  recommend that persons who use drugs, or who are around
  those who use drugs, carry the overdose reversal drug
  naloxone. Most of them do, and thousands of “peer saves” in
  Boston and across the country have been credited to expanded
  naloxone education and distribution. We regularly connect
  patients to detoxification programs, residential treatment
  pro- grams, medication for addiction treatment, and a host
  of other resources for treatment of substance use dis-
  order. But in too many cases we are constrained in our
  ability to save people like Tim: the ones who are unable to
  stop using today but don’t want to die.

  It was this desperation that drove us to open the
  Supportive Place for Observation and Treatment (SPOT) in
  2016 (1), where Tim had presented that day and where we’d
  gotten to know him over the previous months. SPOT is a
  nonjudgmental space focused on reducing the harms of drug
  use, where people who have ingested drugs nearby and who are
  over sedated can walk in to be medically monitored and
  connected to services and treatment. This program has
  allowed us to forge deep relationships with people who
  actively use drugs and be as close to them as possible while
  they are intoxicated. In the first year at SPOT, we saw 500
  unique, high-risk people in more than 3800 encounters. In
  addition to preventing emergency department visits by
  providing medical monitoring on site and responding to
  overdose with supplemental oxygen, intravenous fluids, and
  naloxone as needed, we’ve used SPOT as a key conduit to
  treatment: In a sample of 409 patients who received care at
  SPOT, 23.5% were referred directly to substance use
  treatment, which could include inpatient detoxification,
  methadone treatment, office-based addiction treatment with
  buprenorphine or naltrexone, behavioral therapies, or some
  combination of these. Fifty-five percent of persons referred
  to treatment directly from SPOT successfully accessed it.

  Yet, as Tim’s case painfully reminds us, SPOT is not
  enough. In our urgency to bring an end to these senseless
  deaths, we now support a strategy that other countries
  adopted as early as 1984: supervised injection facilities
  (SIFs). Approximately 100 of these facilities in 11
  countries across Europe, North America, and Australia have
  been studied for decades. They offer sterile equipment and a
  hygienic environment for medically supervised injection of
  drugs obtained off site. They also offer education about
  reducing harms; access to lifesaving naloxone; and
  connection to primary health care services, counseling, and
  treatment for substance use disorder.

  More than 100 peer-reviewed studies on SIFs have offered
  compelling evidence that they reduce mortality (2) and
  overdose (3) while increasing the safety of injection
  behaviors (3) (which is linked to reduced infectious disease
  transmission) and access to addiction treatment (4, 5). At
  the same time, research has shown that they do not increase
  public disorder or attract drug-related crime to an area (3)
  or increase relapse rates (6).

  The Massachusetts Medical Society and the American Medical
  Association now both support development of pilot SIFs in
  the United States (7, 8) as part of a multi pronged approach
  to this devastating epidemic. Pilot programs would allow us
  to study the effect of these facilities while providing
  despairing communities with an additional strategy to
  mitigate overdose deaths and connect people to treatment.

  Would widespread SIFs be accepted by people who inject
  drugs? From our experience, the answer is a resounding
  “yes.” Not only do we hear this on a daily basis in our
  clinics, but in a survey of 237 people who use drugs at
  Boston’s needle-exchange program, we have found that 91% of
  participants reported they would be willing to use a SIF
  (9). Furthermore, Kral and colleagues (10) recently
  documented the high utilization an unsanctioned SIF in an
  undisclosed U.S. city.

  If the opioid overdose epidemic continues at any- where
  near its current rate, more than half a million more persons
  will die in the United States in the next 10 years. As
  health care practitioners, we have a duty to advocate for
  the development and study of interventions that have shown
  promise in promoting health and saving lives. We endorse
  SIFs as 1 piece of a comprehensive continuum of care for
  this chronic, relapsing disease. Only by heeding the calls
  for help of those suffering with substance use disorder will
  we find a way out of this epidemic. As Tim’s death
  demonstrates, sometimes, in the moment, treatment is not the
  only help that is needed: Sometimes it is bringing addiction
  out of the shadows.

  From Institute for Research, Quality, and Policy in
  Homeless Health Care, Boston Health Care for the Homeless
  Program, and Section of General Internal Medicine, Boston
  Medical Center, Boston, Massachusetts (J.M.G.); and
  Institute for Re- search, Quality, and Policy in Homeless
  Health Care, Boston Health Care for the Homeless Program,
  Boston, Massachusetts (M.R.).

  *Disclosures:* None disclosed. Forms can be viewed at www.
  acponline.org/authors/icmje/ConflictOfInterestForms.do?ms
  Num=M18-0258.

  *Corresponding Author:* Jessie M. Gaeta, MD, Institute for
  Re- search, Quality, and Policy in Homeless Health Care,
  Boston Health Care for the Homeless Program, 780 Albany
  Street, Boston, MA 02118; e-mail, jgaeta@"@"bhchp.org.

  Current author addresses and author contributions are
  available at Annals.org.

  *Ann Intern Med. 2018;168:664-665. doi:10.7326/M18-0258*

  ### References

  1. Gaeta J, Bock B, Takach M. Providing a safe space and medical monitoring to prevent overdose deaths. Health Affairs Blog. 31 Au- gust 2016. Accessed at www.healthaffairs.org/do/10.1377/hblog 20160831.056280/full/ on 29 January 2018.
  
  2. Marshall BD, Milloy MJ, Wood E, Montaner JS, Kerr T. Reduction in overdose mortality after the opening of North America’s first medically supervised safer injecting facility: a retrospective population- based study. Lancet. 2011;377:1429-37. [PMID: 21497898] doi:10 .1016/S0140-6736(10)62353-7
  
  3. Potier C, Laprévote V, Dubois-Arber F, Cottencin O, Rolland B. Supervised injection services: what has been demonstrated? A systematic literature review. Drug Alcohol Depend. 2014;145:48-68. [PMID: 25456324] doi:10.1016/j.drugalcdep.2014.10.012
  
  4. Wood E, Tyndall MW, Zhang R, Stoltz JA, Lai C, Montaner JS, et al. Attendance at supervised injecting facilities and use of detoxification services [Letter]. N Engl J Med. 2006;354:2512-4. [PMID: 16760459] 5. DeBeck K, Kerr T, Bird L, Zhang R, Marsh D, Tyndall M, et al. Injection drug use cessation and use of North America’s first medically supervised safer injecting facility. Drug Alcohol Depend. 2011; 113:172-6. [PMID: 20800976] doi:10.1016/j.drugalcdep.2010.07 .023
  
  5. Kerr T, Stoltz JA, Tyndall M, Li K, Zhang R, Montaner J, et al. Impact of a medically supervised safer injection facility on community drug use patterns: a before and after study. BMJ. 2006;332: 220-2. [PMID: 16439401].
  
  6. Massachusetts Medical Society, Task Force on Opioid Therapy and Physician Communication. Establishment of a pilot medically supervised injection facility in Massachusetts. 2017. Accessed at www .massmed.org/advocacy/state-advocacy/sif-report-2017 on 30 January 2018.
  
  7. American Medical Association. AMA wants new approaches to combat synthetic and injectable drugs. 2017. Accessed at www.ama -assn.org/ama-wants-new-approaches-combat-synthetic-and-injectable -drugs on 30 January 2018.
  
  8. Leó n C, Cardoso L, Mackin S, Bock B, Gaeta JM. The willingness of people who inject drugs in Boston to use a supervised injection facility. Subst Abus. 2017:1-7. [PMID: 28799847] doi:10.1080 /08897077.2017.1365804
  
  9. Kral AH, Davidson PJ. Addressing the nation’s opioid epidemic: lessons from an unsanctioned supervised injection site in the U.S. Am J Prev Med. 2017;53:919-922. [PMID: 28801014] doi:10.1016/j. amepre.2017.06.010

  ### Annals.org

  Annals of Internal Medicine • Vol. 168 No. 9 • 1 May 2018 665

  *Current Author Addresses:* Dr. Gaeta and Ms. Racine: Institute for Research, Quality, and Policy in Homeless Health Care, Boston Health Care for the Homeless Program, 780 Albany St., Boston, MA 02118.

  *Author Contributions:* Conception and design: J.M. Gaeta. Analysis and interpretation of the data: J.M. Gaeta. Drafting of the article: M. Racine. Critical revision for important intellectual content: J.M. Gaeta. Final approval of the article: J.M. Gaeta.

  *Provision of study materials and patients:* J.M. Gaeta.

  ### Annals.org

  Annals of Internal Medicine • Vol. 168 No. 9 • 1 May 2018}))
   

 @a[name: "national"]
 @h1{National news coverage}

 @a[name: "news"]
 @h1{SIFMA NOW in the news}

 @a[name: "videos"]
 @h1{Videos}
 
}
