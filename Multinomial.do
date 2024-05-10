*renaming variables
label variable Q112Perceptionsofcorruption ""

rename Q112Perceptionsofcorruption Corruption_level

label variable Q113InvolvedincorruptionSt ""

rename Q113InvolvedincorruptionSt State_Authorities

label variable Q114InvolvedincorruptionBu ""

rename Q114InvolvedincorruptionBu Business_executives

label variable Q116InvolvedincorruptionCi ""

rename Q116InvolvedincorruptionCi Civil_service

label variable Q117InvolvedincorruptionJo ""

rename Q117InvolvedincorruptionJo Journalists_media

rename Q118Frequencyordinarypeople people_pay_bribe

label variable people_pay_bribe ""

label variable Q275RHighesteducationallevel ""

rename Q275RHighesteducationallevel Educational_level

label variable Q142WorriesLosingmyjobor ""

rename Q142WorriesLosingmyjobor Worries_Losing_job

label variable Q71ConfidenceTheGovernment ""

rename Q71ConfidenceTheGovernment Confidence_in_the_government

label variable Q194JustifiablePoliticalvio ""

rename Q194JustifiablePoliticalvio justifiablepoliticalviolence

label variable Q164ImportanceofGod ""

rename Q164ImportanceofGod importanceofgod

label variable Q288RIncomelevelRecoded ""

rename Q288RIncomelevelRecoded incomelevel

*cleaning the data
drop if Corruption_level == -1
drop if Corruption_level == -2
tab Corruption_level

tab State_Authorities
drop if State_Authorities == -1
drop if State_Authorities == -2

tab Business_executives
drop if Business_executives == -1
drop if Business_executives == -2

tab Civil_service
drop if Civil_service == -1
drop if Civil_service == -2

tab Journalists_media
drop if Journalists_media == -1

tab  people_pay_bribe
drop if people_pay_bribe == -1
drop if people_pay_bribe == -2


tab  Educational_level
drop if Educational_level == -5

tab Worries_Losing_job
drop if Worries_Losing_job == -1
drop if Worries_Losing_job == -2

tab Confidence_in_the_government
drop if Confidence_in_the_government == -1
drop if Confidence_in_the_government == -2


tab justifiablepoliticalviolence

drop if justifiablepoliticalviolence == -1
drop if justifiablepoliticalviolence == -2

tab importanceofgod

drop if importanceofgod == -1
drop if importanceofgod == -2

tab incomelevel
drop if incomelevel == -1
drop if incomelevel == -2

*recoding variables
tab Corruption_level
replace Corruption_level = 0 if Corruption_level == 3 | Corruption_level == 2 | Corruption_level==1

replace Corruption_level = 1 if Corruption_level == 4 | Corruption_level == 5 | Corruption_level == 6 | Corruption_level == 7

replace Corruption_level = 2 if Corruption_level == 8 | Corruption_level == 9 | Corruption_level == 10 

tab justifiablepoliticalviolence

replace justifiablepoliticalviolence = 1 if justifiablepoliticalviolence == 2 | justifiablepoliticalviolence ==1
replace justifiablepoliticalviolence = 2 if justifiablepoliticalviolence ==3 | justifiablepoliticalviolence ==4
replace justifiablepoliticalviolence =3 if justifiablepoliticalviolence ==5 | justifiablepoliticalviolence ==6
replace justifiablepoliticalviolence =4 if justifiablepoliticalviolence ==7 | justifiablepoliticalviolence == 8
replace justifiablepoliticalviolence =5 if justifiablepoliticalviolence ==9 |justifiablepoliticalviolence == 10

tab importanceofgod

replace importanceofgod =1 if importanceofgod == 2 | importanceofgod == 3
replace importanceofgod = 2 if importanceofgod == 4 | importanceofgod == 5 | importanceofgod == 6 | importanceofgod == 7
replace importanceofgod = 3 if importanceofgod == 8 | importanceofgod == 9 | importanceofgod ==10

*naming the categories of each variable
label define Corruption_level 0"low levels of corruption" 1"Moderate levels of corruption" 2"High levels of corruption"
label values Corruption_level Corruption_level
tab Corruption_level

label define State_Authorities 1"None of them" 2"Few of them" 3"Most of them" 4"All of them"
label values State_Authorities State_Authorities
tab State_Authorities

label define Business_executives 1"None of them" 2"Few of them" 3"Most of them" 4"All of them"
label values Business_executives Business_executives
tab Business_executives

label define Civil_service 1"None of them" 2"Few of them" 3"Most of them" 4"All of them"
label values Civil_service Civil_service
tab Civil_service

label define Journalists_media 1"None of them" 2"Few of them" 3"Most of them" 4"All of them"
label values Journalists_media Journalists_media
tab Journalists_media

label define people_pay_bribe 1"Never" 2"Rarely" 3"Frequently" 4"Always"
label values people_pay_bribe people_pay_bribe
tab people_pay_bribe

label define Educational_level 1"Primary Education" 2"Secondary Education" 3"Higher Education"
label values Educational_level Educational_level
tab Educational_level

label define Worries_Losing_job 1"Very Much" 2"A Good Deal" 3"Not Much" 4"Not at All"
label values Worries_Losing_job Worries_Losing_job
tab Worries_Losing_job

label define Confidence_in_the_government 1"A Great Deal" 2"Quite a Lot" 3"Not Very Much" 4"Not at All"
label values Confidence_in_the_government Confidence_in_the_government
tab Confidence_in_the_government

label define justifiablepoliticalviolence 1"Never justifiable" 2"Rarely justifiable" 3"Sometimes justifiable" 4"Often justifiable" 5"Always justifiable"
label values justifiablepoliticalviolence justifiablepoliticalviolence
tab justifiablepoliticalviolence

label define importanceofgod 1"Not at all important " 2"Moderately important" 3"Very important"
label values importanceofgod importanceofgod
tab importanceofgod

label define incomelevel 1"Lower class" 2"Middle class" 3"Upper class"
label values incomelevel incomelevel
tab incomelevel


*********Creating Dummy Variables***********
**dummy variables for State Authorities
gen State_Authorities_1 = 1 if State_Authorities == 1
replace State_Authorities_1 = 0 if State_Authorities != 1

gen State_Authorities_2 = 1 if State_Authorities == 2
replace State_Authorities_2 = 0 if State_Authorities != 2

gen State_Authorities_3 = 1 if State_Authorities == 3
replace State_Authorities_3 = 0 if State_Authorities != 3

gen State_Authorities_4 = 1 if State_Authorities == 4
replace State_Authorities_4 = 0 if State_Authorities != 4

**dummy variables for people pay bribe
gen people_pay_bribe_1 = 1 if people_pay_bribe == 1
replace people_pay_bribe_1 = 0 if people_pay_bribe != 1

gen people_pay_bribe_2 = 1 if people_pay_bribe == 2
replace people_pay_bribe_2 = 0 if people_pay_bribe != 2

gen people_pay_bribe_3 = 1 if people_pay_bribe == 3
replace people_pay_bribe_3 = 0 if people_pay_bribe != 3

gen people_pay_bribe_4 = 1 if people_pay_bribe == 4
replace people_pay_bribe_4 = 0 if people_pay_bribe != 4

**dummy variables for Business_executives

gen Business_executives_1 = 1 if Business_executives == 1
replace Business_executives_1 = 0 if Business_executives != 1

gen Business_executives_2 = 1 if Business_executives == 2
replace Business_executives_2 = 0 if Business_executives != 2

gen Business_executives_3 = 1 if Business_executives == 3
replace Business_executives_3 = 0 if Business_executives != 3

gen Business_executives_4 = 1 if Business_executives == 4
replace Business_executives_4 = 0 if Business_executives != 4

** dummy variables for Worries_Losing_job

gen Worries_Losing_job_1 = 1 if Worries_Losing_job == 1
replace Worries_Losing_job_1 = 0 if Worries_Losing_job != 1

gen Worries_Losing_job_2 = 1 if Worries_Losing_job == 2
replace Worries_Losing_job_2 = 0 if Worries_Losing_job != 2

gen Worries_Losing_job_3 = 1 if Worries_Losing_job == 3
replace Worries_Losing_job_3 = 0 if Worries_Losing_job != 3

gen Worries_Losing_job_4 = 1 if Worries_Losing_job == 4
replace Worries_Losing_job_4 = 0 if Worries_Losing_job != 4

** dummy variables for Civil_service
gen Civil_service_1 = 1 if Civil_service == 1
replace Civil_service_1 = 0 if Civil_service != 1

gen Civil_service_2 = 1 if Civil_service == 2
replace Civil_service_2 = 0 if Civil_service != 2

gen Civil_service_3 = 1 if Civil_service == 3
replace Civil_service_3 = 0 if Civil_service != 3

gen Civil_service_4 = 1 if Civil_service == 4
replace Civil_service_4 = 0 if Civil_service != 4

**dummy variables for Confidence_in_the_government

gen Confidence_in_the_government_1 = 1 if Confidence_in_the_government == 1
replace Confidence_in_the_government_1 = 0 if Confidence_in_the_government != 1

gen Confidence_in_the_government_2 = 1 if Confidence_in_the_government == 2
replace Confidence_in_the_government_2 = 0 if Confidence_in_the_government != 2

gen Confidence_in_the_government_3 = 1 if Confidence_in_the_government == 3
replace Confidence_in_the_government_3 = 0 if Confidence_in_the_government != 3

gen Confidence_in_the_government_4 = 1 if Confidence_in_the_government == 4
replace Confidence_in_the_government_4 = 0 if Confidence_in_the_government != 4



**dummy variables for Journalists media
gen Journalists_media_1 = 1 if Journalists_media == 1
replace Journalists_media_1 = 0 if Journalists_media != 1

gen Journalists_media_2 = 1 if Journalists_media == 2
replace Journalists_media_2 = 0 if Journalists_media != 2

gen Journalists_media_3 = 1 if Journalists_media == 3
replace Journalists_media_3 = 0 if Journalists_media != 3

gen Journalists_media_4 = 1 if Journalists_media == 4
replace Journalists_media_4 = 0 if Journalists_media != 4

**dummy variables for Educational_level
gen Educational_level_1 = 1 if Educational_level == 1
replace Educational_level_1 = 0 if Educational_level != 1

gen Educational_level_2 = 1 if Educational_level == 2
replace Educational_level_2 = 0 if Educational_level != 2

gen Educational_level_3 = 1 if Educational_level == 3
replace Educational_level_3 = 0 if Educational_level != 3

**dummy variables for incomelevel

gen incomelevel_1 = 1 if incomelevel == 1
replace incomelevel_1 = 0 if incomelevel != 1

gen incomelevel_2 = 1 if incomelevel == 2
replace incomelevel_2 = 0 if incomelevel != 2

gen incomelevel_3 = 1 if incomelevel == 3
replace incomelevel_3 = 0 if incomelevel != 3
***interaction term
gen edu_level_2_inc_level_2 = Educational_level_2 * incomelevel_2
gen edu_level_2_inc_level_3 = Educational_level_2 * incomelevel_3
gen edu_level_3_inc_level_2 = Educational_level_3 * incomelevel_2
gen edu_level_3_inc_level_3 = Educational_level_3 * incomelevel_3

*****ordinal logistec *****


ologit Corruption_level i.State_Authorities i.people_pay_bribe i.Business_executives i.Worries_Losing_job i.Civil_service i.Confidence_in_the_government i.Journalists_media, or

xi:omodel logit Corruption_level i.State_Authorities i.people_pay_bribe i.Business_executives i.Worries_Losing_job i.Civil_service i.Confidence_in_the_government i.Journalists_media



****multinomial Logistec ******
xi: stepwise, pr(0.05): mlogit Corruption_level i.State_Authorities i.Business_executives i.Civil_service i.Journalists_media i.people_pay_bribe i.Educational_level i.Worries_Losing_job i.Confidence_in_the_government i.justifiablepoliticalviolence i.importanceofgod i.incomelevel edu_level_2_inc_level_2 edu_level_2_inc_level_3 edu_level_3_inc_level_2 edu_level_3_inc_level_3, rrr

mlogit Corruption_level i.State_Authorities i.Business_executives i.Civil_service i.Journalists_media i.people_pay_bribe i.Educational_level i.Worries_Losing_job i.Confidence_in_the_government i.justifiablepoliticalviolence i.importanceofgod i.incomelevel edu_level_2_inc_level_2 - edu_level_3_inc_level_3, rrr


mlogitgof
