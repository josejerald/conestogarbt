*** Variables ***
### Home Page ###
${lbl_intrntlTitle_xpath}           //h1[contains(text(),"International")]
${btn_virtualTr_xpath}              //a[contains(text(),"Virtual Tour")]
${btn_intrntlPrgms_xpath}           //a[contains(text(),"International Programs")]
${btn_chseCnstga_xpath}             //a[contains(text(),"Choose Conestoga")]
${txt_homePageContent_xpath}        //h2[contains(text(),"Study in Canada")]/../p
${btn_intrnlHeader_xpath}           //div[@class="toggle_wrap"]/a[contains(text(),"<placeholder>")]
${drpdown_submenu_xpath}            //li[@class="menu-item"]/a[contains(text(),"<placeholder>")]
${btn_agentHeader_xpath}            //a[contains(text(),"Agents")]
${btn_contactsHeader_xpath}         //*[@id="custom-nav"]/ul/li[6]/a

### Apply To Conestoga Section ###
${btn_applyNow_xpath}               //a[contains(text(),"APPLY NOW")]
${btn_academDoc_xpath}              //a[contains(text(),"ACADEMIC DOCUMENTS")]

# Application information page
${lbl_appInstruc_xpath}             //h2[contains(text(),"Application instructions")]

# Academic documents page
${txtbox_searchDoc_id}              text-search-documents
${btn_search_xpath}                 //button[@aria-label="Search for academic document"]
${lbl_srchRslt_xpath}               //td[contains(text(),"<placeholder>")]

# Fees & payment page
${txt_feeSchedule_xpath}            //details/summary[contains(text(),"tuition fee schedule")]
${txt_payDate_xpath}                //h3[contains(text(),"when you should pay")]
${lbl_pymntOptions_xpath}           //p[contains(text(),"Choose the payment")]/../details
${lbl_pymntOptData_xpath}
...                                 //p[contains(text(),"Choose the payment")]/../details[<placeholder>]/p
${txt_refund_xpath}                 //h2[@id="refundwithdraw"]/../p

# Awards & scholarships page
${txt_studAwards_xpath}             //summary[contains(text(),"Narhari")]
${txt_intStudSchlrshp_xpath}
...                                 //h2[contains(text(),"International student scholarships")]/../p
${txt_entrSchlrshp_xpath}           //h2[contains(text(),"Entrance scholarships")]/../details
${txt_regSchlrshp_xpath}            //h2[contains(text(),"Regional scholarships")]/../details

# Complete your registration page
${lbl_howToComplete_xpath}          //h2[contains(text(),"How to complete your registration")]
${lbl_regChckLst_xpath}             //h2[contains(text(),"Registration checklist")]
${lbl_cnfrmInvc_xpath}              //h2[contains(text(),"Confirm your invoice")]

### Student support Section ###
# Housing Page
${lbl_housOpt_xpath}                //h2[contains(text(),"Housing options")]/../details
${txt_housOpt_xpath}
...                                 //h2[contains(text(),"Housing options")]/../details[<placeholder>]/p
${lbl_housFAQ_xpath}                //h2[contains(text(),"Housing FAQ")]/../details
${txt_housFAQ_xpath}
...                                 //h2[contains(text(),"Housing FAQ")]/../details[<placeholder>]/p

# Cost of living page
${txt_expTableFirstItem_xpath}      //tbody/tr/th[contains(text(),"Housing")]
${txt_expTableLastItem_xpath}       //tbody/tr/th[contains(text(),"Academic materials")]
${txt_costOfLiv_xpath}              //h2[contains(text(),"Cost of living tips")]/../p

# Airport arrivals & pickup page
${txt_airportPckup_xpath}           //h2[contains(text(),"Airport pick-up services")]/../p

# Safe arrival plan page
${lbl_preArrvlPln_xpath}            //h2[contains(text(),"Pre-arrival")]/../details
${txt_preArrvlPln_xpath}
...                                 //h2[contains(text(),"Pre-arrival")]/../details[<placeholder>]/*[self::p or self::b or self::ul or self::ol]
${lbl_prepEntrCan_xpath}            //h2[contains(text(),"Preparing to enter Canada")]/../details
${txt_prepEntrCan_xpath}
...                                 //h2[contains(text(),"Preparing to enter Canada")]/../details[<placeholder>]/*[self::p or self::b or self::ul or self::ol]
${lbl_arriveCan_xpath}              //h2[contains(text(),"Arriving in Canada")]/../details
${txt_arriveCan_xpath}
...                                 //h2[contains(text(),"Arriving in Canada")]/../details[<placeholder>]/p
${lbl_welcome_xpath}                //h2[contains(text(),"Welcome to Conestoga")]/../details
${txt_welcome_xpath}
...                                 //h2[contains(text(),"Welcome to Conestoga")]/../details[<placeholder>]/p

# Health insurance & medical care page
${lbl_medCare_xpath}
...                                 //h2[contains(text(),"Medical & health care services")]/../details
${txt_medCare_xpath}
...                                 //h2[contains(text(),"Medical & health care services")]/../details[<placeholder>]/p

# Fraud prevention page
${lbl_contact_xpath}                //h2[contains(text(),"Contacts")]/../details
${txt_contact_xpath}                //h2[contains(text(),"Contacts")]/../details[<placeholder>]/p
${lbl_scam_xpath}                   //h2[contains(text(),"Scam and fraud prevention")]/../details
${txt_scam_xpath}
...                                 //h2[contains(text(),"Scam and fraud prevention")]/../details[<placeholder>]/*

# Transportation page
${txt_localTrnsit_xpath}            //h2[contains(text(),"Local transit & bus passes")]/../p
${lbl_TransitByCity_xpath}          //h2[contains(text(),"Bus transit by city")]/../details
${txt_TransitByCity_xpath}
...                                 //h2[contains(text(),"Bus transit by city")]/../details[<placeholder>]/*
${lbl_drivePark_xpath}              //h2[contains(text(),"Driving and parking")]/../details
${txt_drivePark_xpath}
...                                 //h2[contains(text(),"Driving and parking")]/../details[<placeholder>]/*

### Immigration information ###
# IRCC-related information page
${txt_irccInfo_xpath}               //h2[contains(text(),"(IRCC)")]/../p[2]
${lbl_irccVideo_xpath}              //h2[contains(text(),"IRCC-related videos")]
${lbl_irccUpdate_xpath}             //h3[contains(text(),"Recent updates from IRCC")]/../details
${txt_irccUpdate_xpath}
...                                 //h3[contains(text(),"Recent updates from IRCC")]/../details[<placeholder>]/p

# Work Eligibility page
${lbl_workBeforeFAQ_xpath}
...                                 //h2[contains(text(),"Working in Canada before graduation - FAQ")]
${txt_workBeforeFAQ_xpath}
...                                 //h2[contains(text(),"Working in Canada before graduation - FAQ")]/../details
${lbl_workAfterFAQ_xpath}
...                                 //h2[contains(text(),"Working in Canada after graduation - FAQ")]
${txt_workAfterFAQ_xpath}
...                                 //h2[contains(text(),"Working in Canada after graduation - FAQ")]/../details
${txt_disclaimer_xpath}             //strong[contains(text(),"Disclaimer")]

# Book an ISA appointment page
${txt_isa_xpath}                    //h2[contains(text(),"(ISA)")]/../p
${lnk_isaAppntmnt_xpath}            //a[contains(text(),"BOOK AN APPOINTMENT")]

# Agent page
${txt_agentContent_xpath}           //h2[contains(text(),"International agent application")]/../p
${lnk_agentTrain_xpath}             //a[contains(text(),"Agent training portal")]
${lnk_agentAppForm_xpath}           //a[contains(text(),"Agent application form")]
${lnk_agentExisting_xpath}          //a[contains(@href,"international.ontariocolleges.ca/agent?")]

# Contact page
${lbl_address_xpath}                //address[contains(text(),"Conestoga College")]
${lbl_asiaAfrica_xpath}
...                                 //h3[contains(text(),"South Asia, Southeast Asia, Middle East, and Africa")]/../p/a
${lbl_eastAsia_xpath}
...                                 //h3[contains(text(),"Vietnam, Philippines, Indonesia, and Malaysia")]/../p/a
${lbl_laAmCarib_xpath}              //h3[contains(text(),"Latin America and Caribbean")]/../p/a
${lbl_brazil_xpath}                 //h3[contains(text(),"Brazil")]/../p/a
${lbl_sKoreaJap_xpath}              //h3[contains(text(),"South Korea and Japan")]/../p/a
${lbl_china_xpath}                  //h3[contains(text(),"Mainland China")]/../p/a
${lbl_grtChina_xpath}
...                                 //h3[contains(text(),"The Greater China (China, Hong Kong, Taiwan)")]/../p/a
