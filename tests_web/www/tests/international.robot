*** Settings ***
Resource            ..//resources//international_resources.robot

Test Teardown       Close All Browsers


*** Variables ***
${doc_search_country}       India


*** Test Cases ***
Validate Corp Website International Home Page Access
    [Documentation]    Validating if International subapp home page is loaded with content
    [Tags]    smoke    www    web    intl
    Access International Sub App
    Validate Title And Content In International Home Page

Validate Corp Website International - Application information
    [Documentation]    Validating if page can be accessed and content is present
    [Tags]    smoke    www    web    intl
    Access International Sub App
    Access International Page From Dropdown Menu    Apply to Conestoga    Application information
    Validate Application Information Page Content

Validate Corp Website International - Academic Document Search
    [Documentation]    Validating if a countrywise search can be done on Academic documents
    [Tags]    smoke    www    web    intl
    Access International Sub App
    Access International Page From Dropdown Menu    Apply to Conestoga    Academic documents
    Enter Country And Search For Document List    ${doc_search_country}
    Validate Document Search Result    ${doc_search_country}

Validate Corp Website International - Fees & Payment
    [Documentation]    Validating if sections in Fees and Payment can be accessed and have content
    [Tags]    smoke    www    web    intl
    Access International Sub App
    Access International Page From Dropdown Menu    Apply to Conestoga    Fees & payment
    Validate Tuition Fee Schedule Section
    Validate Payment And Key Dates Section
    Validate Detials Under Section    ${lbl_pymntOptions_xpath}    ${lbl_pymntOptData_xpath}
    Validate Page Subsection Content Present    ${txt_refund_xpath}

Validate Corp Website International - Awards & Scholarships
    [Documentation]    Validating if sections in Awards & scholarships can be accessed and have content
    [Tags]    smoke    www    web    intl
    Access International Sub App
    Access International Page From Dropdown Menu    Apply to Conestoga    Awards & scholarships
    Validate Page Subsection Content Present    ${txt_studAwards_xpath}
    Validate Page Subsection Content Present    ${txt_intStudSchlrshp_xpath}
    Validate Page Subsection Content Present    ${txt_entrSchlrshp_xpath}
    Validate Page Subsection Content Present    ${txt_regSchlrshp_xpath}

Validate Corp Website International - Complete Your Registration
    [Documentation]    Validating if sections in Complete your registration
    [Tags]    smoke    www    web    intl
    Access International Sub App
    Access International Page From Dropdown Menu
    ...    Apply to Conestoga
    ...    Complete your registration
    Validate Page Subsection Content Present    ${lbl_howToComplete_xpath}
    Validate Page Subsection Content Present    ${lbl_regChckLst_xpath}
    Validate Page Subsection Content Present    ${lbl_cnfrmInvc_xpath}

Validate Corp Website International - Housing
    [Documentation]    Validating if sections under Housing can be accessed and have content
    [Tags]    smoke    www    web    intl
    Access International Sub App
    Access International Page From Dropdown Menu    Student support    Housing
    Validate Detials Under Section    ${lbl_housOpt_xpath}    ${txt_housOpt_xpath}
    Validate Detials Under Section    ${lbl_housFAQ_xpath}    ${txt_housFAQ_xpath}

Validate Corp Website International - Cost of living
    [Documentation]    Validating if sections under Cost of living
    [Tags]    smoke    www    web    intl
    Access International Sub App
    Access International Page From Dropdown Menu    Student support    Cost of living
    Validate Page Subsection Content Present    ${txt_expTableFirstItem_xpath}
    Validate Page Subsection Content Present    ${txt_expTableLastItem_xpath}
    Validate Page Subsection Content Present    ${txt_costOfLiv_xpath}

Validate Corp Website International - Airport arrivals & pickup
    [Documentation]    Validating if sections under Airport arrivals & pickup
    [Tags]    smoke    www    web    intl
    Access International Sub App
    Access International Page From Dropdown Menu    Student support    Airport arrivals & pickup
    Validate Page Subsection Content Present    ${txt_airportPckup_xpath}

Validate Corp Website International - Safe arrival plan
    [Documentation]    Validating if sections under Safe arrival plan
    [Tags]    smoke    www    web    intl
    Access International Sub App
    Access International Page From Dropdown Menu    Student support    Safe arrival plan
    Validate Detials Under Section    ${lbl_preArrvlpln_xpath}    ${txt_preArrvlPln_xpath}
    Validate Detials Under Section    ${lbl_prepEntrCan_xpath}    ${txt_prepEntrCan_xpath}
    Validate Detials Under Section    ${lbl_arriveCan_xpath}    ${txt_arriveCan_xpath}
    Validate Detials Under Section    ${lbl_welcome_xpath}    ${txt_welcome_xpath}

Validate Corp Website International - Health insurance & medical care
    [Documentation]    Validating if sections under Health insurance & medical care
    [Tags]    smoke    www    web    intl
    Access International Sub App
    Access International Page From Dropdown Menu
    ...    Student support
    ...    Health insurance & medical care
    Validate Detials Under Section    ${lbl_medCare_xpath}    ${txt_medCare_xpath}

Validate Corp Website International - Fraud prevention
    [Documentation]    Validating if sections under Fraud prevention
    [Tags]    smoke    www    web    intl
    Access International Sub App
    Access International Page From Dropdown Menu    Student support    Fraud prevention
    Validate Detials Under Section    ${lbl_contact_xpath}    ${txt_contact_xpath}
    Validate Detials Under Section    ${lbl_scam_xpath}    ${txt_scam_xpath}

Validate Corp Website International - Transportation
    [Documentation]    Validating if sections under Transportation
    [Tags]    smoke    www    web    intl
    Access International Sub App
    Access International Page From Dropdown Menu    Student support    Transportation
    Validate Page Subsection Content Present    ${txt_localTrnsit_xpath}
    Validate Detials Under Section    ${lbl_TransitByCity_xpath}    ${txt_TransitByCity_xpath}
    Validate Detials Under Section    ${lbl_drivePark_xpath}    ${txt_drivePark_xpath}

Validate Corp Website International - IRCC-related information
    [Documentation]    Validating if all sections under IRCC-related inofmation page is available
    [Tags]    smoke    www    web    intl
    Access International Sub App
    Access International Page From Dropdown Menu
    ...    Immigration information
    ...    IRCC-related information
    Validate Page Subsection Content Present    ${txt_irccInfo_xpath}
    Validate Page Subsection Content Present    ${lbl_irccVideo_xpath}
    Validate Detials Under Section    ${lbl_irccUpdate_xpath}    ${txt_irccUpdate_xpath}

Validate Corp Website International - Work Eligibility
    [Documentation]    Validating if all sections under Work eligibility page is available
    [Tags]    smoke    www    web    intl
    Access International Sub App
    Access International Page From Dropdown Menu    Immigration information    Work eligibility
    Validate Detials Under Section    ${lbl_workBeforeFAQ_xpath}    ${txt_workBeforeFAQ_xpath}
    Validate Detials Under Section    ${lbl_workAfterFAQ_xpath}    ${txt_workAfterFAQ_xpath}
    Validate Page Subsection Content Present    ${txt_disclaimer_xpath}

Validate Corp Website International - Book An ISA Appointment
    [Documentation]    Validating if all sections under Work eligibility page is available
    [Tags]    smoke    www    web    intl
    Access International Sub App
    Access International Page From Dropdown Menu
    ...    Immigration information
    ...    Book an ISA appointment
    Validate Page Subsection Content Present    ${txt_isa_xpath}
    Validate Page Subsection Content Present    ${lnk_isaAppntmnt_xpath}

Validate Corp Website International - Agents
    [Documentation]    Validating if all sections under Agents page is available
    [Tags]    smoke    www    web    intl
    Access International Sub App
    Access International Section    ${btn_agentHeader_xpath}
    Validate Page Subsection Content Present    ${txt_agentContent_xpath}
    Validate Page Subsection Content Present    ${lnk_agentTrain_xpath}
    Validate Page Subsection Content Present    ${lnk_agentAppForm_xpath}
    Validate Page Subsection Content Present    ${txt_agentContent_xpath}

Validate Corp Website International - Contact
    [Documentation]    Validating if contents in the contact page shows up
    [Tags]    smoke    www    web    intl
    Access International Sub App
    Access International Section    ${btn_contactsHeader_xpath}
    Validate Page Subsection Content Present    ${lbl_address_xpath}
    Validate Page Subsection Content Present    ${lbl_asiaAfrica_xpath}
    Validate Page Subsection Content Present    ${lbl_eastAsia_xpath}
    Validate Page Subsection Content Present    ${lbl_laAmCarib_xpath}
    Validate Page Subsection Content Present    ${lbl_brazil_xpath}
    Validate Page Subsection Content Present    ${lbl_sKoreaJap_xpath}
    Validate Page Subsection Content Present    ${lbl_china_xpath}
    Validate Page Subsection Content Present    ${lbl_grtChina_xpath}
