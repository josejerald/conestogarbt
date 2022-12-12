*** Settings ***
Library     String
Library     Collections
Library     Selenium2Library
Library     ..//..//..//tools//utils//url_formatter.py
Resource    ..//page_obj//orientation_pageobj.robot


*** Variables ***
@{ortn_errors}          404    tbd    Component not found
@{legend_activity}
...                     Academic Orientation Session (AOS)
...                     Campus Welcome Drop-in (CWD)
...                     Additional Events (AE)
&{pages}                Calendar=myOrientation/calendar


*** Keywords ***
Access Orientation Sub Portal
    [Documentation]    Accessing Orientation Homepage URL
    ${page_url}    Get Base Url    ${site}    ${env}
    Open Browser    ${page_url}    ${browser}
    Maximize Browser Window
    Wait Until Page Contains Element    ${lbl_ortnHeader_xpath}
    Page Should Contain Element    ${btn_ortVwChklist_xpath}
    Page Should Contain Element    ${lnk_ortEmail_xpath}

Access Orientation Page From Dropdown Menu
    [Documentation]    Accessing a specific subpage from Orientation subapp header
    [Arguments]    ${header}    ${sub_hdr}
    ${header}    Replace String    ${btn_ortnHeader_xpath}    <placeholder>    ${header}
    Mouse Over    ${header}
    ${sub_hdr}    Replace String    ${drpdown_ortnSubmenu_xpath}    <placeholder>    ${sub_hdr}
    Wait Until Element Is Visible    ${sub_hdr}
    Click Element    ${sub_hdr}

Validate Card In Checklist Page
    [Documentation]    Checking title, text and button presence in the card
    [Arguments]    ${title}
    ${titlePath}    Replace String    ${lbl_cardTitle_xpath}    <placeholder>    ${title}
    Wait Until Element Is Visible    ${titlePath}
    Page Should Contain Element    ${titlePath}
    ${card_content}    Get Text    ${titlePath}${txt_cardData_xpath}
    Validate Card Content For Errors    ${card_content}
    Page Should Contain Element    ${titlePath}${txt_cardAction_xpath}

Validate Card Content For Errors
    [Documentation]    Checking if the content contains 404 or component missing
    [Arguments]    ${card_content}
    ${card_content}    Convert To Lower Case    ${card_content}
    FOR    ${error}    IN    @{ortn_errors}
        ${error}    Convert To Lower Case    ${error}
        Should Not Contain    ${card_content}    ${error}
    END

Validate Event Cards In Additional Events Page
    [Documentation]    Looping through each card and validate content present
    ${cnt}    Get Element Count    (${txt_cardContent_xpath})
    ${cnt}    Evaluate    ${cnt}+1
    FOR    ${counter}    IN RANGE    1    ${cnt}
        ${cnt_str}    Convert To String    ${counter}
        ${text}    Get Text    (${txt_cardContent_xpath})[${${cnt_str}}]
        Validate Card Content For Errors    ${text}
    END

Validate Legend Section In Calendar Page
    [Documentation]    Checking the Legend section in the Calendar page
    ${legend_count}    Get Element Count    ${txt_legend_xpath}
    ${legend_count}    Evaluate    ${legend_count}+1
    FOR    ${counter}    IN RANGE    1    ${legend_count}
        Page Should Contain Element    (${txt_legend_xpath})[${counter}]
        ${txt}    Get Text    (${txt_legendText_xpath})[${counter}]
        Should Not Be Empty    ${txt}
        Validate Card Content For Errors    ${txt}
    END

Access Child Page Under Orientation
    [Documentation]    Appending page info to url and access the pageye
    [Arguments]    ${page}
    ${base_url}    Get Base Url    ${site}    ${env}
    Open Browser    ${base_url}${pages}[${page}]    ${browser}
    Maximize Browser Window
    Wait Until Page Contains    ${page}

Validate Calendar Schedule Content
    [Documentation]    Checking calendar schedule tables by loopin into each table
    ${sch_count}    Get Element Count    ${tbl_schedule_xpath}
    FOR    ${counter}    IN RANGE    2    ${sch_count}+1
        Replace String    ${txt_scheduleHeader_xpath}    <placeholder>    ${cnt}
        Page Should Contain Element    (${txt_legend_xpath})[${counter}]
        ${txt}    Get Text    (${txt_legendText_xpath})[${counter}]
        Should Not Be Empty    ${txt}
        Validate Card Content For Errors    ${txt}
    END
