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
   

 @a[name: "news"]
 @h1{SIF/SCSs in the news}

 @(accordion (list "Boston Globe"
                   @markdown{
# Follow the data, governor: sites for injections work

## May 8, 2017 Editorial

  LAST SPRING, AFTER signing legislation aimed at curbing
  opioid abuse at a State House ceremony, Governor Charlie
  Baker broke down in tears.

  Only after a swell of applause from a large crowd of
  legislators, law enforcement officials, and families of
  overdose victims was he able to speak. “May today’s bill
  passage signal to you that the Commonwealth is listening,”
  he said, “and we will keep fighting for all of you.”

  The governor can be an emotional leader. But he also touts
  his data-driven approach to governance. And the data, it
  must be said, do not look good.

  Last year, almost 2,000 people are believed to have died of
  opioid overdoses in Massachusetts, according to state
  officials, a record toll that defied a new wave of treatment
  and education efforts — including some high-profile measures
  in the bill Baker signed that spring day.

  At the top of the list: clinics where addicts can shoot up
  under the watchful eye of doctors and nurses — offering
  clean needles, drugs that can reverse overdoses, and
  referrals to drug treatment.

  Last weekend, the push for supervised drug-injection sites
  got a big boost when the Massachusetts Medical Society’s
  governing body voted overwhelmingly to urge a state-run
  pilot program that would allow for up to two such clinics in
  the state.

  There are already 90 of these facilities worldwide, and the
  data — take note, governor — are quite promising. After a
  clinic opened in Vancouver, in 2003, researchers found a 35
  percent decrease in overdoses in the surrounding
  neighborhood, compared to a 9 percent decline citywide.
  Ambulance calls for overdoses near a Sydney facility dropped
  by 68 percent.

  There are dozens of peer-reviewed studies — more than 40 now
  — and some of them have appeared in the world’s most
  prestigious medical journals.

  “This work is published in the Lancet and The New England
  Journal of Medicine,” said Dr. Thomas Kerr, a professor of
  medicine at the University of British Columbia who has
  studied the Vancouver clinic. “It doesn’t get tougher than
  that.”

  The drug-injection sites have their critics, of course. The
  studies, however, rebut some of the most prominent
  objections. Intravenous drug use does not increase in the
  areas where clinics operate, the research shows. And opening
  a facility does not have a “honey pot” effect, drawing drug
  dealers and prostitutes to the area.

  After studying six years of crime data for the area
  surrounding the Vancouver clinic, criminologist Neil Boyd
  told The Globe and Mail newspaper, “our detailed maps
  confirmed the hypothesis of no impact, no significant
  changes in relation to criminal offenses.”

  A separate study appearing in the journal Substance Abuse
  Treatment, Prevention, and Policy found no gain in drug
  trafficking or robberies and assaults in the neighborhood.
  Vehicle break-ins and thefts actually declined.

  There are significant legal obstacles to opening
  drug-injection sites in Massachusetts. State and federal law
  bars the clinics, and getting an exemption from a
  GOP-controlled Washington would be no small task.

  But there is some precedent. In recent years, the federal
  government has looked the other way as states have legalized
  marijuana; indeed, Massachusetts is counting on that
  forbearance now as it rolls out its own regulatory setup for
  legal pot.

  And with hundreds and hundreds of people dying of opioid
  overdoses every year, policy makers should be willing to
  take some chances here. “We will keep fighting for all of
  you,” Baker promised, a year ago.

  Fulfilling that promise means supporting solutions that work
  — no matter how controversial.})
             
             (list "New York Times"
                   @markdown{
  # Let Cities Open Safe Injection Sites
  ## By The Editorial Board

  An overdose is often a lonely way to die. Overdoses happen
  when a toxic amount of a drug, or a combination of drugs,
  overwhelms the body’s basic functions, first slowing and
  eventually stopping the brain’s drive to breathe. If someone
  notices the signs of an overdose — lips turning blue,
  restricted pupils, unresponsiveness, a loss of
  consciousness, among others — it can generally be reversed
  with drugs like naloxone, which saves thousands of lives a
  year. But someone must be there to notice.

  Yet one of the most consistent patterns in the more than
  64,000 deaths attributed to opioid and other drug overdoses
  in 2016 was that the victims’ last moments went unobserved.
  Last year, the number of deaths was most likely even higher.

  In the face of this emergency, dedicated public health
  officials and policymakers have suggested some vital
  solutions. One important, rigorously tested harm-reduction
  method, however, is still rarely discussed in the United
  States: supervised drug consumption sites, also known as
  safe injection sites. This must change. All evidence so far
  shows these facilities have proved incredibly effective at
  slashing overdose deaths in every country that has welcomed
  them. If lawmakers are serious about ending the opioid
  crisis, American cities and states should follow their lead.

  At safe injection sites, trained staffs provide clean
  needles, administer naloxone when there are overdoses and
  offer long-term treatment options. People bring their own
  drugs — most often heroin.

  It may seem counterintuitive: Give drug users space and
  support to inject themselves with potentially deadly
  substances, even while encouraging them to stop.

  But dozens of studies suggest that these sites curtail
  overdose deaths and increase participation in drug
  treatment. Despite millions of injections that have occurred
  at more than 90 facilities internationally over the past
  three decades, not a single overdose death has been
  recorded.

  The Trump administration has threatened to prosecute safe
  injection sites under federal law. But just as cities and
  states have legalized medical and recreational marijuana,
  they could also pass laws authorizing these sites,
  preventing the local police from intervening. Federal law
  enforcement could then either turn a blind eye, as it’s
  largely done with marijuana, or bring states to court.

  People are dying at a staggering rate from overdoses — more
  in one year than the number of American soldiers who died
  during the entire Vietnam War. So some cities are already,
  rightly, taking the risk. Seattle and San Francisco are both
  on track to open sites, and Philadelphia recently approved
  the idea as well. Boston, Ithaca and New York City are
  considering their own facilities.

  At the first supervised site in North America, which opened
  in Vancouver in 2003, there was a 35 percent reduction in
  overdose deaths in the immediate vicinity, compared with a
  nine percent reduction in the rest of the city, according to
  a study published in The Lancet.

  And four separate studies have shown a positive association
  between using a safe injection site and starting addiction
  treatment.

  Neighbors and city officials sometimes challenge sites like
  these because they fear they will promote drug use and
  increase crime. Research instead suggests that they lead to
  increases in public order, with fewer discarded needles on
  the street and less drug use on the sidewalk, and have no
  impact on drug-related crimes.

  Such sites certainly don’t solve the problem of drug
  overdoses — Vancouver has had a recent spike in
  fentanyl-related overdose deaths, for instance. But they’re
  effective as part of a larger harm-reduction movement, which
  assumes that no matter how many well-intentioned programs
  exist to prevent people from starting or continuing to use
  drugs, there will always be people who shoot up. It’s better
  for everyone, the thinking goes, if they do that as safely
  as possible, with clean needles that are discarded properly.
  If the goal is to get drug users into treatment, the first
  step is to make sure they don’t die.

  So far, President Trump has advocated the opposite approach,
  focusing on law enforcement instead of harm reduction and
  promising to be “really, really tough” on people who deal
  drugs — an old idea that hasn’t worked to save lives. The
  administration’s 2019 budget plan proposed $13 billion over
  two years to address the opioid crisis, but it didn’t
  include much detail about what, exactly, that money would
  fund. In December, the attorney general’s office made its
  position on safe injection sites clear in response to a
  proposed facility in Vermont: “It is a crime, not only to
  use illicit narcotics, but to manage and maintain sites on
  which such drugs are used and distributed.”

  “In short, opiate addicts need treatment, not a place to
  continue using,” the office wrote.

  Advocates agree on the need for evidence-based treatment and
  services to help homeless drug users find housing or mental
  health care, but that’s not a reason to prosecute people
  trying to save lives at safe injection sites.

  There is at least one unauthorized, invitation-only site in
  the United States that a small nonprofit has been secretly
  running, in an unadvertised location, for more than three
  years. Staff members have been able to reverse all eight
  overdoses that have occurred on-site.

  Critics of such sites raise legitimate concerns about
  normalizing drug use that could be fatal. But so far, the
  wealth of available evidence shows two things: Most of
  America’s past policies have failed catastrophically, and
  the regions that have tried these sites have saved people.

  States and other cities should follow the lead of Seattle
  and Philadelphia to open safe injection sites. One of the
  most meaningful things the Trump administration could do to
  help drug users and their families is to stay out of the
  way.

  A version of this article appears in print on February 25,
  2018, on Page SR10 of the New York edition with the
  headline: Let Cities Open Safe Injection Sites.})

             (list "USA Today"
                   @markdown{
  # War on drugs requires new tactics: Our view
  ## The Editorial Board , USA TODAY Published 4:56 p.m. ET May 16, 2016 | Updated 6:39 p.m. ET May 16, 2016

  Supervised heroin injection sites show promise in Canada,
  Europe.

  With an average 78 Americans dying each day from overdoses
  of prescription opioid painkillers and heroin, it’s clear
  that the U.S. is losing the war on drugs. The epidemic has
  spread to suburbia and rural areas. The death toll from
  heroin has more than tripled since 2010. And the nation is
  desperate for answers.

  Congress is working on bipartisan measures that would give
  states, localities and non-profit groups money to finance an
  array of education, treatment and law enforcement programs.
  Final passage can’t come a moment too soon. But it’s all
  rather standard fare.

  To deal with people who are already addicted, some
  unconventional thinking is required, and here’s one idea
  worth considering: supervised injection facilities, where an
  addict can bring heroin and inject it in a clean, safe
  environment under medical supervision, with easy access to
  counselors and health care referrals.

  Yes, we know, this might look crazy at first glance. We
  thought so, too, but the results where this approach has
  been tried suggest it just might make sense.

  This is not a ploy to legalize heroin, weaken law
  enforcement or replace treatment. It’s an idea that has been
  effective in Europe, where about 90 such centers operate,
  and in Vancouver, where the only center in North America
  opened in 2003.

  According to researchers at the University of British
  Columbia and the Center for Excellence in HIV/AIDS, the
  Canadian center has prevented overdose deaths, reduced the
  risk of HIV and AIDS through the use of clean needles, cut
  down on public injections and their dangerous debris of used
  needles, and promoted detox and treatment.

  The facility, called Insite, has saved lives after on-site
  overdoses, and in the 27 months after it opened, overdose
  deaths dropped 35% in the blocks around the facility — four
  times the decrease in the rest of Vancouver. The facility,
  which receives funding from the British Columbia government,
  has saved taxpayers money by reducing expensive-to-treat HIV
  and AIDS cases.

  Critics have tried to debunk findings of Insite’s success,
  and in the mid-2000s, a new Conservative Party prime
  minister moved to shut it down. But the battle became the
  center’s savior. National medical, public health, and nurses
  associations intervened on its side, and in 2011 the
  Canadian Supreme Court unanimously rejected closure, finding
  that “during its eight years of operation, Insite has been
  proven to save lives with no discernible negative impact on
  the public safety and health objectives of Canada.” That
  opened the way for more facilities. Now Toronto, Montreal
  and Ottawaare considering the idea.

  In Europe, such injection centers have been around for 30
  years. Since the first one opened in Switzerland, the idea
  has spread to Germany, the Netherlands, Luxembourg, Denmark,
  Norway and even Sydney, Australia. Like Insite, they’ve made
  it more likely that addicts will enter treatment, according
  to the European Monitoring Center for Drugs and Drug
  Addiction. Not surprising, when you put the hardest-to-reach
  addicts in a place where counseling is readily available.

  Impressed by these results, a handful of city officials and
  state lawmakers in the USA are interested. The mayor of
  Ithaca, N.Y., is pushing the idea, and the county prosecutor
  is on board. In Seattle’s King County, Sheriff John
  Urquhart, a former narcotics detective, told TheSeattle
  Times he is “still trying to wrap my head around this. But
  the more I hear, the more open I am to the possibility.”

  Critics remain adamant that the idea is preposterous,
  tantamount to declaring surrender in the war on drugs and
  turning the government into an enabler of illegal drug use.
  The same arguments were used against methadone clinics and
  needle exchanges, which now have widespread acceptance.

  Vancouver’s experience can inform U.S. decisions: Start
  small with modest goals — bringing addicts off the streets,
  preventing disease and overdoses — and provide rigorous,
  independent research to see whether similar programs can
  work here.})
             (list "Associated Press"
                   @markdown{
  # Once unthinkable in US, drug shoot-up rooms get serious look
  ## By DAVID KLEPPER
  ### May. 8, 2016 9:46 PM EDT

  Across the United States, heroin users have died in alleys
  behind convenience stores, on city sidewalks and in the
  bathrooms of fast-food joints — because no one was around to
  save them when they overdosed.

  An alarming 47,000 American overdose deaths in 2014 — 60
  percent from heroin and related painkillers like fentanyl —
  has pushed elected leaders from coast to coast to consider
  what was once unthinkable: government-sanctioned sites where
  users can shoot up under the supervision of a doctor or
  nurse who can administer an antidote if necessary.

  “Things are getting out of control. We have to find things
  we can do for people who are addicted now,” said New York
  state Assemblywoman Linda Rosenthal, who is working on
  legislation to allow supervised injection sites that would
  also include space for treatment services. “The idea
  shouldn’t be dismissed out of hand. I don’t see anyone else
  coming up with anything new and innovative.”

  Critics of the war on drugs have long talked about the need
  for a new approach to addiction, but the idea of allowing
  supervised injection sites is now coming from state
  lawmakers in New York, Maryland and California, along with
  city officials in Seattle, San Francisco and Ithaca, New
  York, who note that syringe exchanges were once
  controversial but now operate in 33 states.

  While such sites have operated for years in places such as
  Canada, the Netherlands and Australia, they face significant
  legal and political challenges in the U.S., including
  criticism that they are tantamount to waving a white flag at
  an epidemic that should be fought with prevention and
  treatment.

  “It’s a dangerous idea,” said John Walters, drug czar under
  President George W. Bush. “It’s advocated by people who seem
  to think that the way we should help sick people is by
  keeping them sick, but comfortably sick.”

  But proponents argue such sites are not so radical outside
  the U.S., pointing to examples where they offer not only a
  place to shoot up, but also health care, counseling and even
  treatment beds. In many cases, the users are there to shoot
  up heroin or dangerous opioids like fentanyl, though some
  take painkillers in pill form.

  At Sydney’s Medically Supervised Injecting Centre, more than
  5,900 people have overdosed since it opened in 2001. No one
  has died. It’s the same at Insite in Vancouver, British
  Columbia. About 20 overdoses happen there every week, but
  the facility, which is jointly operated by a local nonprofit
  and the Vancouver Coastal Health Authority, has yet to
  record a death.

  “A big fat zero,” said Insite site coordinator Darwin
  Fisher.

  Sydney’s facility is tucked between a hostel and a Chinese
  restaurant in Kings Cross, the city’s red-light district.
  Aside from the security guard posted just inside the front
  door, it looks like a typical health clinic.

  At least two staffers, including a registered nurse, monitor
  the injection room. They are not allowed to administer
  drugs, though sterile needles are provided. If a patient
  overdoses, the nurse delivers the antidote Narcan, which
  quickly reverses the overdose.

  After users get their fix, they head to a second room with a
  decidedly warmer feel. Colored Christmas lights hang from
  the ceiling; books and magazines line the shelves. Clients
  can relax with a cup of coffee or tea or talk to staff. Some
  stay for 15 minutes; others spend hours. They exit through a
  back door to protect their privacy.

  The center opened on an 18-month trial basis following a
  sharp increase in heroin use in Sydney. The trial was
  repeatedly extended by government officials until 2010, when
  it was granted permanent status. It’s run by the social
  services arm of the Uniting Church and is funded by
  police-seized proceeds of various crimes.

  A clinic in Amsterdam — one of three injection sites in the
  Dutch capital — goes even further, distributing free heroin
  to long-term addicts as part of a government program created
  for hardened addicts who might otherwise commit a crime to
  pay for their fix.

  About 80 users visit up to three times a day. Most are men,
  and the average age is 60. Many began using in the 1970s and
  1980s.

  “We would ideally like them to cut back their use,” said
  Fleur Clarijs, a doctor at the facility.

  But, she said, the main objective of the facility is to
  reduce risk to users — and their effects on the community.

  In Vancouver’s seedy Downtown Eastside neighborhood, Insite
  offers patients treatment services just up the stairs from
  where they shoot up. About a third of Insite’s visitors
  request referral to a detox program, the clinic said.

  A woman who gave her name as Rhea Jean spoke to The
  Associated Press after recently injecting herself there. She
  felt nauseous and ran outside to the curb to vomit. Her face
  covered with scabs, the longtime heroin user looks far older
  than her 33 years.

  “It’s a great place for active users in full-blown
  addiction. It links you up to other programs,” said Jean,
  who herself hasn’t sought treatment through Insite.

  A 65-year-old man who gave his name only as James because
  he’s in a 12-step program that requires anonymity said he
  has been using heroin since age 22. He was clean for 17
  years before relapsing; he said he was sexually abused as a
  child and spent 23 years in prison.

  He keeps returning to heroin, he said, because it provides
  release from his problems. Insite is the one place he can go
  and be treated if he reacts badly to the drug, he said.

  “They saved my life three times,” he said, adding that
  addiction shouldn’t be demonized.

  “There’s a large section of society that still refuses to
  accept it as a disease,” he said.

  The three clinics visited by the AP initially faced
  opposition from politicians and members of the public but
  gradually won support, in part because of studies showing
  reductions in overdose deaths and open-air drug use in the
  surrounding community.

  A 2010 survey of residents and businesses in Kings Cross,
  for instance, found strong support.

  Insite was targeted for closure by Canadian Prime Minister
  Stephen Harper and his Conservative Party. The case went to
  the Supreme Court of Canada, which in 2011 told the
  government to issue an exemption to the drug laws allowing
  Insite to operate.

  “Insite saves lives,” Chief Justice Beverley McLachlin wrote
  in the decision. “Its benefits have been proven. There has
  been no discernible negative impact on the public safety and
  health objectives of Canada during its eight years of
  operation.”

  Advocates in the U.S. have long discussed the potential
  benefits of injection sites — but they point to the tripling
  of heroin and opioid overdose deaths since 2000 as one
  reason why the suggestion is starting to get serious
  consideration.

  The deaths of actors Philip Seymour Hoffman and Heath Ledger
  put celebrity faces on the risks of overdosing alone, and it
  was revealed recently that representatives for Prince sought
  help for his addiction to painkillers just a day before the
  musician was found dead.

  In an effort to stay safe, some addicts are taking matters
  into their own hands. In Boston, after Massachusetts General
  Hospital equipped security guards with Narcan, the hospital
  began seeing an uptick in addicts shooting up in bathrooms
  and parking garages.

  Elsewhere in the city, a nonprofit recently set aside a room
  where addicts can go after using drugs. The users can’t
  inject there, but a nurse monitors those in the room and
  will intervene in case of overdose.

  U.S. federal law effectively prohibits injection facilities,
  but supporters say that if a state or city were to authorize
  one, Washington officials could adopt a hands-off approach
  similar to the federal response to state medical marijuana
  programs.

  Kevin Sabet, a former drug policy adviser to the Obama
  administration, put the chances of injection sites getting
  approval anytime soon at zero. He believes supporters want
  full legalization of all drugs and are exploiting the opioid
  crisis to advance their agenda.

  California Assemblyman Tom Lackey, who served on the
  California Highway Patrol for 28 years, said he understands
  that supporters are looking for a new approach. But he has
  deep reservations about legislation in his state which would
  create clinics where users could use heroin, crack or other
  drugs.

  “These facilities send a message that there is a safe use,
  and I don’t think there is any safe use of heroin,” he said.

  In Maryland, state House of Delegates member Dan Morhaim is
  an emergency physician who himself has administered Narcan
  “many, many times.” He sees his bill for supervised
  injection sites as just one of many creative approaches that
  will be needed to solve the heroin problem.

  “It’s not going to cure everyone,” he said. “But moving
  people from more dangerous behavior to less dangerous
  behavior is progress.”

  Marianne Jauncey, medical director at Sydney’s Medically
  Supervised Injecting Centre, said she would prefer better
  ways to help hardened addicts. Her facility will work to
  keep them alive until that happens.

  “Given their histories,” she said, “I think the least that
  we can do as a society is try.”

  ___


  Klepper reported from Albany, New York. Contributing to
  this report were Associated Press writers Mike Corder in
  Amsterdam, Kristen Gelineau in Sydney and Jeremy Hainsworth
  in Vancouver.})
             
             (list "Daily Hampshire Gazette"
                   @markdown{
# Editorial: Safe injection sites worth considering

  Syringes left by drug users amid the heroin crisis are
  turning up everywhere.

  Northwestern District Attorney David E. Sullivan is right to
  call for “outside-the-box thinking” — including supervised
  injection facilities — to combat the scourge of opioid
  deaths plaguing communities in the Valley and across the
  country.

  Sullivan also is correct when he describes as radical the
  concept of sanctioned places where people can inject illegal
  drugs such as heroin in medically supervised settings. Those
  facilities should be established only after careful study
  addressing issues including locating them in places that are
  easily accessible to people who are addicted and ensuring
  that those drug users are educated about treatment programs.

  “Supervised injection facilities are not suitable for all
  communities — they may not be cost effective except in large
  cities,” Sullivan wrote in a column published in January by
  the Daily Hampshire Gazette. “But I think they, and the
  approach they take in treating drug users with care, are an
  option worthy of consideration as we suffer the toll this
  epidemic takes in lost lives and shattered families and
  communities.”

  Sullivan joins an increasing number of health officials and
  politicians who are advocating for supervised sites that
  provide sterile injection equipment, access to medical
  staff, information about reducing the harm of drug use and
  referrals to addiction treatment. No such safe sites
  currently operate legally in the United States, and, in
  fact, they are illegal under federal law.

  However, there are about 100 such facilities in nine other
  countries, mostly in Europe as well as Australia and Canada.
  The first in North America, Insite, opened in 2003 in
  Vancouver, British Columbia. Nurses at Insite have
  supervised drug injections by some 3.6 million people in 15
  years, and while there have been more than 6,000 overdoses,
  no one has died there, according to the Associated Press.

  In 2016, there were 2,069 unintentional deaths in
  Massachusetts related to opioids, including heroin, fentanyl
  and prescription pain pills such as OxyContin.

  State Sen. William Brownsberger, D-Belmont, has filed
  legislation that would allow state health officials to
  permit safe injection sites. He said the intent of the bill,
  which awaits action, is to save lives and get addicts into
  treatment.

  The Massachusetts Medical Society and Massachusetts Hospital
  Association support consideration of supervised injection
  facilities. The medical society issued a report last year
  citing research at the sites in Canada and Australia that
  suggests they reduce overdose deaths and increase access to
  drug treatment. The medical society recommended establishing
  a pilot supervised injection facility program in
  Massachusetts, and to seek an exemption from federal drug
  laws.

  However, there are skeptics, including Republican Gov.
  Charlie Baker. He testified at a Statehouse hearing in
  January on legislation he filed addressing the opioid crisis
  that, among other things, would permit police and medical
  professionals to bring high-risk drug users to substance
  abuse treatment centers for up to 72 hours, even if they do
  not agree. The bill does not call for supervised injection
  sites.

  “As far as the data I’ve seen is concerned, it has not
  demonstrated any legitimate success in creating a pathway to
  treatment,” Baker said. “The harm reduction argument I think
  is a much better one, but I’m kind of a hard sell on that
  one.”

  Also last month, Philadelphia officials announced that the
  city is seeking private organizations to set up medically
  supervised drug injection facilities that also would offer
  access to sterile needles, the overdose-reversing drug
  naloxone (known by its brand name Narcan) and referral to
  treatment and social services.

  Philadelphia officials visited Insite in Vancouver, as well
  as Seattle, where the City Council has included $1.3 million
  in the 2018 budget for a safe injection site. Philadelphia
  officials also released a scientific review of studies
  concluding that such facilities reduce deaths from drug
  overdoses; prevent HIV, Hepatitis C and other infections;
  and help drug users get into treatment.

  Sullivan wrote in his column, “For people who think this
  idea is too radical, I would say this: In order to save
  lives, we need to look in a clear-eyed, rational way at what
  works and what doesn’t work.”

  We hope the state approves legislation clearing the way for
  a pilot safe injections site. We encourage its placement in
  Hampshire or Franklin county where the top law enforcement
  official has a progressive view about using all possible
  tools to combat addiction.

  })
             (list "San Francisco Chronicle"
                   @markdown{
  # EDITORIAL: CITY-SPONSORED DRUG-INJECTION SITES CAN SAVE LIVES  CHRONICLE EDITORIAL BOARD
  ## February 6, 2018

  San Francisco has more than 20,000 injection-drug users.
  Injection sites are an innovation that can reduce fatal
  overdoses by addicts and accidental needle sticks on the
  streets.

  The idea of a city-sponsored drug-injection site at first
  sounds baffling and dangerous. To some, providing
  comfortable quarters and needles to shoot up is the last
  thing a city should do to curb drug users sprawling across
  sidewalks and parks.

  But San Francisco, along with other major cities, is on
  track to do just that — and the plan makes sense. It’s a
  real-world answer that can lessen a runaway problem, prevent
  deaths and offer a pathway from addiction. Safe-injection
  sites have found support and success in dozens of cities in
  Canada, Europe and Australia.

  Between now and July, city Health Director Barbara Garcia
  plans to clarify the scope and operations of the local
  sites. Her department has worked on the idea for months,
  mindful of the legal and health hazards that go along with
  enabling illegal drug use.

  There are reasons for caution, but the idea is neither
  far-fetched nor implausible. San Francisco has more than
  20,000 injection-drug users, a figure that accounts for a
  demoralizing sight of discarded syringes and open drug use
  throughout the city. Anyone walking by a huddled group
  splayed on the pavement should want the city to come up with
  an answer.

  Offering a controlled setting indoors can help. It’s
  expected there will be medical oversight and counseling,
  clean needles, and safe surroundings. Police involvement to
  prevent drug sales needs to be worked out.

  Until now, San Francisco and other cities were stalled over
  legal and perceptual problems. Opening the doors ran afoul
  of a raft of laws barring drug use. The city could be liable
  if an addict overdosed. Even an ever-tolerant city wasn’t
  completely sold that allowing serious drug use would produce
  anything but trouble.

  But city leaders are sidestepping legal issues by lining up
  private organizations to provide the money to run the sites,
  which will begin with two locations with more to follow.
  Overdose fears haven’t been borne out elsewhere. As for
  public unease, San Francisco has become more upset over
  rampant drug use than over any doubts about a promising
  innovation.

  Richard Chenery rests after injecting heroin at the Insite
  clinic in Vancouver, B.C., North America’s first legal
  injection site.
 
  SF safe injection sites expected to be first in nation, open


  San Francisco moving toward opening nation’s 1st safe
  injection

  Why SF should open a supervised drug-injection facility

  This city won’t be alone. Philadelphia announced last month
  it will work with local groups to open injection sites.
  Seattle, Denver and Baltimore are also moving in the same
  direction. Fueling the urgency is a wave of drug deaths
  linked to opioids and heroin that totaled 63,000 fatalities
  in 2016. That astonishing number, larger than U.S. combat
  deaths in Vietnam, is easing official reluctance city by
  city.

  The spreading plans could be curtailed if the Trump
  administration chooses to block the sites through drug raids
  or court challenges. But that worry is too uncertain to stop
  a groundswell idea that needs to get under way.

  At best, the injection sites can dent a much larger problem.
  There needs to be more emphasis and money for medical
  treatment, rehabilitation and programs that treat addiction,
  not punish it. That leadership is missing in Washington,
  where the president’s endless emphasis on drug crime masks
  his failure to provide serious leadership.

  Injection sites are an innovation that can reduce fatal
  overdoses by addicts and accidental needle sticks on the
  streets. The status quo is intolerable. It’s time for San
  Francisco to give them a try.}))

 @a[name: "sifma"]
 @h1{SIFMA NOW in the news}

 @(accordion (list "CBS Boston"
              @markdown{
 # Advocates Push For Safe Injection Sites In Boston

  ## By Liam Martin April 30, 2018 at 5:27 pm

  BOSTON (CBS) – Boston advocates for controversial “safe
  injection sites” made a public push Monday. Along with
  information, they gave people an up close look at how they
  say these sites can prevent overdoses and save lives.

  We’re painfully aware of heroin users overdosing in back
  alleys, under bridges and even in public buildings, with the
  death toll a national crisis. Today, medical students and
  other advocates for what are called safe injection
  facilities took their campaign to the Harvard Medical School
  quad, talking to people about why they think Massachusetts
  should open the controversial sites.

  “People who would otherwise be injecting and overdosing
  alone on the street could come in and receive medical care,
  be supervised so they’re using substances safely, and are
  connected to long term treatment,” says Kathleen Koenigs, a
  first year medical student and a member of the Student
  Coalition on Addiction.

  They even set up an area that simulates what an injection
  site would look like. A simple desk with sterile syringes
  and Narcan in case of an overdose. Medical staff would be on
  hand for safety.

  It’s modeled after this injection facility in Vancouver that
  has operated for 15 years. “We don’t want to lose any more
  of our family members, our neighbors,” says Aubri Esters of
  Safe Injection Facilities Now.

  The facilities would look at addiction as a medical problem
  and offer treatment. “It’s an avenue for treatment. It’s an
  avenue for increased health and it’s an avenue to keep
  people alive,” she says.

  While there are several bills at the State House that would
  allow for these facilities, it’s a tough sell. Gov. Baker
  isn’t convinced. “I really want to see literature that
  demonstrates, one way or the other, whether this helps
  people get better,” he says.

  Even if Beacon Hill approved, the sites would still be
  illegal at the federal level. Right now there are about 100
  supervised injection sites around the world. None in the
  United States. In addition to Boston, people in
  Philadelphia, Seattle and San Francisco are considering
  whether the facilities would be effective in their
  communities.}))

 @a[name: "videos"]
 @h1{Videos}
 

 @(accordion (list "What’s Stopping Us?"
                   (youtube "sI6iH3wDqdo"))
             (list "Old Addictions, New Hope"
                   (youtube "vVIxXM_nn0Y"))
             (list "A front line doctor lays out the case for supervised injection facilities"
                   (youtube "S-_Hh6G0aco"))
             (list "I’m the guy finding the needles!"
                   (youtube "0vkQnyaw8qw"))
             (list "Cops, docs, and drug users on a remarkable panel about safe injection sites for Boston"
                   (youtube "3dzgzvEdT6k"))
             (list "Hear from a State Representative about the urgency of creating safe injection facilities"
                   (youtube "SA_Xeg3l1C8"))
             (list "An AIDS activist speaks out about SIFs"
                   (youtube "8rNxPtWjo70"))
             (list "A top Boston University Addiction Specialist on SIFs"
                   (youtube "V_dY7bdXRjY"))
             (list "A detailed proof of the effectiveness of supervised injection facilities"
                   (youtube "w1PyxdaMT8o"))
             (list "LEAP visits a Supervised Injection Site (Produced by Bill Fried for Law Enforcement Action Partnership)"
                   (youtube "HFAG7vDZRnA"))
             (list "The Portuguese Drug Czar “meets” an American Narcotics Officer"
                   (youtube "FeshX8TsMrg"))
             (list "Place Where You Don’t Have to Die"
                   (youtube "Sipsy7_CDNY"))
             (list "What Happens When Drug Users are not Seen as Criminals?"
                   (youtube "p52rhrK45-g"))
             (list "Portugal Figures out Difference Between Drug Use and Drug Abuse"
                   (youtube "aM3VSu-yLYM"))
             (list "New York Times video"
                   (youtube "v6NJPjpelKM"))
             (list "A Safe Injection Site saves lives and controls HIV"
                   (youtube "1b4rv9Y3eI8")))
}
