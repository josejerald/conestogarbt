*** Settings ***
Library     String
Library     Collections
Library     Selenium2Library
Library     ..//..//..//tools//utils//url_formatter.py
Resource    ..//page_obj//international_pageobj.robot


*** Variables ***
${url_tail_int}     International


*** Keywords ***
Access International Sub App
    [Documentation]    Accessing International Subapp home page
    ${page_url}    Get Base Url    ${site}    ${env}
    Set Test Variable    ${cur_stu_url}    ${page_url}${url_tail_int}
    Open Browser    ${cur_stu_url}    ${browser}
    Maximize Browser Window
    Wait Until Page Contains Element    ${lbl_intrntlTitle_xpath}

Validate Title And Content In International Home Page
    [Documentation]    Checking if the home page contains proper title and Content
    Page Should Contain Element    ${lbl_intrntlTitle_xpath}
    Page Should Contain Element    ${btn_virtualTr_xpath}
    Page Should Contain Element    ${btn_intrntlPrgms_xpath}
    Page Should Contain Element    ${btn_chseCnstga_xpath}
    ${content}    Get Element Count    ${txt_homePageContent_xpath}
    Should Not Be Equal As Strings    '0'    '${content}'

Access International Page From Dropdown Menu
    [Documentation]    Accessing a specific subpage from International subapp header
    [Arguments]    ${header}    ${sub_hdr}
    ${header}    Replace String    ${btn_intrnlHeader_xpath}    <placeholder>    ${header}
    Mouse Over    ${header}
    ${sub_hdr}    Replace String    ${drpdown_submenu_xpath}    <placeholder>    ${sub_hdr}
    Wait Until Element Is Visible    ${sub_hdr}
    Click Element    ${sub_hdr}

Access International Section
    [Documentation]    Accessing a subapp header option from International
    [Arguments]    ${sub_hdr}
    Wait Until Element Is Visible    ${sub_hdr}
    Click Element    ${sub_hdr}

Validate Application Information Page Content
    [Documentation]    Checking if the page contains expected elements
    Page Should Contain Element    ${btn_applyNow_xpath}
    Page Should Contain Element    ${btn_academDoc_xpath}
    Page Should Contain Element    ${lbl_appInstruc_xpath}

Enter Country And Search For Document List
    [Documentation]    Enter the county in search bar and search
    [Arguments]    ${country}
    Wait Until Page Contains Element    ${txtbox_searchDoc_id}
    Input Text    ${txtbox_searchDoc_id}    ${country}
    Click Element    ${btn_search_xpath}

Validate Document Search Result
    [Documentation]    Check the content of the document search result
    [Arguments]    ${country}
    ${srch_rslt}    Replace String    ${lbl_srchRslt_xpath}    <placeholder>    ${country}
    Wait Until Page Contains Element    ${srch_rslt}
    Page Should Contain Element    ${srch_rslt}

Validate Tuition Fee Schedule Section
    [Documentation]    Check if minimum one fee schedule is populated under the Tuition fee schedule
    Wait Until Page Contains Element    ${txt_feeSchedule_xpath}
    ${schedule_count}    Get Element Count    ${txt_feeSchedule_xpath}
    Should Not Be Equal As Strings    '0'    '${txt_feeSchedule_xpath}'

Validate Payment And Key Dates Section
    [Documentation]    Check if the Payment and key dates section contains data
    Wait Until Page Contains Element    ${txt_payDate_xpath}
    ${schedule_count}    Get Element Count    ${txt_payDate_xpath}
    Should Not Be Equal As Strings    '0'    '${txt_payDate_xpath}'

Validate Detials Under Section
    [Documentation]    Check if each Detail under a section can be opened and contains data
    [Arguments]    ${html_elem}    ${html_elem_data}
    Wait Until Page Contains Element    ${html_elem}
    @{elem_list}    Get WebElements    ${html_elem}
    Set Local Variable    ${count}    1
    FOR    ${element}    IN    @{elem_list}
        Click Element    ${element}
        ${cnt}    Convert To String    ${count}
        ${elem}    Replace String    ${html_elem_data}    <placeholder>    ${cnt}
        Wait Until Element Is Visible    ${elem}
        ${count}    Evaluate    ${count}+1
    END

Validate Page Subsection Content Present
    [Documentation]    Checking if the page contains the element provided
    [Arguments]    ${elem}
    Wait Until Page Contains Element    ${elem}
    Page Should Contain Element    ${elem}
