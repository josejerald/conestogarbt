*** Settings ***
Library     String
Library     Collections
Library     Selenium2Library
Library     ..//..//..//tools//utils//url_formatter.py
Resource    ..//page_obj//admissions_pageobj.robot


*** Variables ***
${url_tail_adms}    admissions


*** Keywords ***
Access Admissions Section In Corp Website
    [Documentation]    Accessing Admissions section in Corp Website
    ${page_url}    Get Base Url    ${site}    ${env}
    Set Test Variable    ${programs_url}    ${page_url}${url_tail_adms}
    Open Browser    ${programs_url}    ${browser}
    Maximize Browser Window
    Wait Until Page Contains Element    ${lnk_homeAdm_xpath}

Access Admissions Page From Dropdown Menu
    [Documentation]    Accessing a specific subpage from Admissions section
    [Arguments]    ${header}    ${sub_hdr}
    ${header}    Replace String    ${btn_admHeaderDrpMenu_xpath}    <placeholder>    ${header}
    Mouse Over    ${header}
    ${sub_hdr}    Replace String    ${drpdown_admSubmenu_xpath}    <placeholder>    ${sub_hdr}
    Wait Until Element Is Visible    ${sub_hdr}
    Click Element    ${sub_hdr}

Access Admissions Section
    [Documentation]    Accessing a subapp header option from International
    [Arguments]    ${sub_hdr}
    Wait Until Element Is Visible    ${sub_hdr}
    Click Element    ${sub_hdr}

Search With Year And Student To Get Fee List
    [Documentation]    Enter Year and student status info and search for fee
    [Arguments]    ${student_type}
    Wait Until Page Contains Element    ${drpdown_acadYear_id}
    Select From List By Index    ${drpdown_acadYear_id}    0
    Select From List By Label    ${drpdown_stuStatus_id}    ${student_type}
    Click Element    ${btn_yearSearch_xpath}
    Wait Until Page Contains Element    ${btn_prgmSearch_xpath}

Select A Program To Display The Fee
    [Documentation]    Select a program and search for the fee details
    [Arguments]    ${pgm_index}
    Wait Until Page Contains Element    ${drpdown_prgmList_id}
    Select From List By Index    ${drpdown_prgmList_id}    ${pgm_index}
    Click Element    ${btn_prgmSearch_xpath}
    Wait Until Page Contains Element    ${lbl_prgmTitle_xpath}

Validate Intake Sessions Info For The Program
    [Documentation]    Check all intake for the program
    ${intake_count}    Get Element Count    ${lbl_intake_xpath}
    ${intake_count}    Evaluate    ${intake_count}+1
    FOR    ${intake}    IN RANGE    1    ${intake_count}
        ${cnt}    Convert To String    ${intake}
        ${elem}    Replace String    ${lbl_intakeDetails_xpath}    <placeholder>    ${cnt}
        Validate Detials Under Each Intake Section    ${elem}
    END

Validate Detials Under Each Intake Section
    [Documentation]    Check if fee is populated under each intake for the program
    [Arguments]    ${html_elem}
    Click Element    ${html_elem}
    Wait Until Element Is Visible    ${html_elem}${txt_termTotal_xpath}
    ${total}    Get Text    ${html_elem}${txt_termTotal_xpath}
    Should Not Be Empty    ${html_elem}${txt_termTotal_xpath}
    ${total}    Get Text    ${html_elem}${txt_termTotal_xpath}
    ${summary}    Get Text    ${html_elem}${lbl_intakeSummary_xpath}
    ${check_flag}    Get Lines Containing String    ${summary}    co-op option    case_insensitive
    IF    '${check_flag}'=='${EMPTY}'
        Should Not Be Equal    ${total}    $0.00
    END
    Click Element    ${html_elem}

Validate Fee For Each Program In Search Result Dropdown
    [Documentation]    Looping through each program to check the fee for the program
    ${prgm_list}    Get List Items    ${drpdown_prgmList_id}
    ${prgm_count}    Get Length    ${prgm_list}
    FOR    ${program}    IN RANGE    2    ${prgm_count}
        Select A Program To Display The Fee    ${program}
        Validate Intake Sessions Info For The Program
    END
