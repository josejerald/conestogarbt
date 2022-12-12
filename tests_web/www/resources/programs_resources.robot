*** Settings ***
Library     String
Library     Collections
Library     Selenium2Library
Library     ..//..//..//tools//utils//url_formatter.py
Resource    ..//page_obj//programs_pageobj.robot


*** Variables ***
&{url_tail_pgm}         ft=fulltime    apprntc=trades-and-apprenticeship/programs
...                     intrnl=fulltime?keywords=&deliveryGroupFilterIds=IN
${prgm_with_logo}       Bachelor of Engineering - Mechanical Systems Engineering
@{prgm_errors}          An Error Occurred    Component not found (404)


*** Keywords ***
Access Programs Page
    [Documentation]    Accessing home page URL
    [Arguments]    ${pgm_type}
    ${page_url}    Get Base Url    ${site}    ${env}
    Set Test Variable    ${programs_url}    ${page_url}${url_tail_pgm}[${pgm_type}]
    Open Browser    ${programs_url}    ${browser}
    Maximize Browser Window
    Wait Until Page Contains Element    ${btn_ApplyFilters_xpath}

Click On Programs Sequentially
    [Documentation]    Click on a program
    ${pgm_cnt}    Get Program Count
    FOR    ${counter}    IN RANGE    1    ${pgm_cnt}
        ${cnt}    Convert To String    ${counter}
        ${elem}    Replace String    ${link_Prgm_xpath}    <replace>    ${cnt}
        Log    ${elem}
        Click Element    ${elem}
        Sleep    5
        Go To    ${page_url}fulltime
        Wait Until Page Contains Element    ${btn_ApplyFilters_xpath}
    END

Get Program Count
    [Documentation]    Get The Count Of Programs From Programs Page
    ${pgm_cnt}    Get Element Count    ${txt_SinglePgm_xpath}
    RETURN    ${pgm_cnt}

Get List Of FT Programs
    [Documentation]    Get List Of Programs
    ${pgm_cnt}    Get Program Count
    ${names}    Create List
    FOR    ${counter}    IN RANGE    1    3
        ${cnt}    Convert To String    ${counter}
        ${elem}    Replace String    ${lbl_PrgmTitle_xpath}    <replace>    ${cnt}
        ${name}    Get Text    ${elem}
        Append To List    ${names}    ${name}
    END
    Log    ${names}

Check Description Length For Each Program
    [Documentation]    Get List Of Programs
    ${pgm_cnt}    Get Program Count
    ${pgm_list}    Create List
    Append To List    ${pgm_list}    Progam Names,Char Count,Invalid Charecters\n
    FOR    ${counter}    IN RANGE    1    ${pgm_cnt}
        ${cnt}    Convert To String    ${counter}
        ${elem}    Replace String    ${link_Prgm_xpath}    <replace>    ${cnt}
        Log    ${elem}
        Click Element    ${elem}
        Wait Until Page Contains Element    ${lnk_PgmDescTitle_xpath}    10
        ${desc}    Get Text    ${txt_PgmDesc_xpath}
        ${leng}    Get Length    ${desc}
        ${title}    Get Text    ${txt_PgmTitle_xpath}
        Append To List    ${pgm_list}    ${title},${leng},No\n
        Go To    ${page_url}fulltime
        Wait Until Page Contains Element    ${btn_ApplyFilters_xpath}    10
        Log    ${pgm_list}
        Write Data To File    ${pgm_list}
    END

Check For Errors In Programs
    [Documentation]    Check if programs return error
    ${pgm_cnt}    Get Program Count
    ${pgm_list}    Create List
    FOR    ${counter}    IN RANGE    1    ${pgm_cnt}
        ${cnt}    Convert To String    ${counter}
        ${elem}    Replace String    ${link_Prgm_xpath}    <replace>    ${cnt}
        ${title}    Get Text    ${elem}
        Click Element    ${elem}
        ${err}    Get Element Count    ${lbl_404Error_xpath}
        IF    '${err}'=='1'    Append To List    ${pgm_list}    ${title}
        #Check Errors In The Program Page Content
        Go To    ${programs_url}
        Wait Until Page Contains Element    ${btn_ApplyFilters_xpath}    10
        Log    ${pgm_list}
    END
    Log    ${pgm_list}
    Should Be Empty    ${pgm_list}    msg=Check the pgm_list for list of empty programs

Check Errors In The Program Page Content
    [Documentation]    Checking if any of the errors in the list is appearing in the page
    FOR    ${error}    IN    @{prgm_errors}
        Page Should Not Contain    ${error}
    END
