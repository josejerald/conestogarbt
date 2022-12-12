*** Settings ***
Library     String
Library     Collections
Library     Selenium2Library
Library     ..//..//..//tools//utils//url_formatter.py
Resource    ..//page_obj//ce_pageobj.robot


*** Variables ***
&{ce_pgm}                   all=programs    micro-credentials=micro-credentials
@{ce_errors}                An Error Occurred    Component not found (404)
@{microCred_sections}       Description    Completion Requirements
@{prgm_sections}            About the program    Program information    Program outcomes


*** Keywords ***
Access CE Programs Page
    [Documentation]    Accessing home page URL
    [Arguments]    ${pgm_type}
    ${page_url}    Get Base Url    ${site}    ${env}
    Set Test Variable    ${programs_url}    ${page_url}${ce_pgm}[${pgm_type}]
    Open Browser    ${programs_url}    ${browser}
    Maximize Browser Window
    Wait Until Page Contains Element    ${btn_ApplyFilters_xpath}

Get Program Count
    [Documentation]    Get The Count Of Programs From Programs Page
    ${pgm_cnt}    Get Element Count    ${txt_SinglePgm_xpath}
    RETURN    ${pgm_cnt}

Check For Errors In CE Page
    [Documentation]    Check if programs return error
    [Arguments]    ${ce_type}
    ${pgm_cnt}    Get Program Count
    ${pgm_cnt}    Evaluate    ${pgm_cnt}+1
    ${pgm_list}    Create List
    ${flag}    Evaluate    0
    ${err_count}    Evaluate    0
    FOR    ${counter}    IN RANGE    1    ${pgm_cnt}
        ${cnt}    Convert To String    ${counter}
        ${elem}    Replace String    ${link_Prgm_xpath}    <replace>    ${cnt}
        ${title}    Get Text    ${elem}
        Click Element    ${elem}
        IF    '${ce_type}'=='program'
            ${flag}    Validate Headers And Content In The CE Program
        ELSE IF    '${ce_type}'=='micro-cred'
            ${flag}    Validate Headers And Content In The CE Micro Credentials
        END
        ${err_count}    Evaluate    ${err_count}+${flag}
        Append To List    ${pgm_list}    ${title}:${flag}
        Go To    ${programs_url}
        Wait Until Page Contains Element    ${btn_ApplyFilters_xpath}    10
        Log    ${pgm_list}
    END
    Should Be Equal    '${err_count}'    '0'

Validate Headers And Content In The CE Program
    [Documentation]    Checking contents in CE Program page
    FOR    ${header}    IN    @{prgm_sections}
        ${section}    Replace String
        ...    ${lbl_prgmSection_path}
        ...    <placeholder>
        ...    About the program
        ${section_data}    Replace String
        ...    ${txt_prgmSectionData_xpath}
        ...    <placeholder>
        ...    About the program
        ${header_flag}    Get Element Count    ${section}
        IF    '${header_flag}' == '1'
            ${content}    Get Text    ${section_data}
            ${len}    Get Length    ${content}
            IF    '${len}' == '0'    RETURN    1
        ELSE
            RETURN    1
        END
    END
    RETURN    0

Validate Headers And Content In The CE Micro Credentials
    [Documentation]    Checking contents in CE Micro Credentials page
    FOR    ${header}    IN    @{microCred_sections}
        ${section}    Replace String    ${lbl_prgmSection_path}    <placeholder>    ${header}
        ${section_data}    Replace String
        ...    ${txt_prgmSectionData_xpath}
        ...    <placeholder>
        ...    ${header}
        ${header_flag}    Get Element Count    ${section}
        IF    '${header_flag}' == '1'
            ${content}    Get Text    ${section_data}
            ${len}    Get Length    ${content}
            IF    '${len}' == '0'    RETURN    0
        ELSE
            RETURN    0
        END
    END
    RETURN    0
