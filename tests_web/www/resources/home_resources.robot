*** Settings ***
Library     Selenium2Library
Resource    ..//page_obj//home_pageObj.robot
Resource    ..//page_obj//header_pageObj.robot
Library     ..//..//..//tools//utils//url_formatter.py
Resource    ..//..//web_utils//util.robot


*** Keywords ***
Access Corp Website Home Page
    [Documentation]    Accessing home page URL
    ${page_url}    Get Base Url    ${site}    ${env}
    Open Url In Browser    ${docker}    ${page_url}    ${browser}

Validate Logo And Banner In Corp Website Home Page
    [Documentation]    Check if logo is present in header
    Wait Until Element Is Visible    ${img_logo_xpath}
    Page Should Contain Element    ${img_logo_xpath}
    ${banner_count}    Get Element Count    ${div_banner_xpath}
    Should Be Equal As Strings    '1'    '${banner_count}'

Validate Event Section In Corp Website Home Page
    [Documentation]    Events are loaded www home page
    Wait Until Element Is Visible    ${txt_eventsMnth_xpath}
    Page Should Contain Element    ${txt_eventsMnth_xpath}

Validate Important Date Section In Corp Website Home Page
    [Documentation]    Checking if Dates section is loaded www home page
    Wait Until Element Is Visible    ${txt_impDates_xpath}
    Page Should Contain Element    ${txt_impDates_xpath}

Validate News Section In Corp Website Home Page
    [Documentation]    Checking if News section is loaded www home page
    Wait Until Element Is Visible    ${txt_news_xpath}
    Page Should Contain Element    ${txt_news_xpath}

Validate Announcement Section In Corp Website Home Page
    [Documentation]    Checking if Announcements are loaded www home page
    Wait Until Element Is Visible    ${txt_announce_xpath}
    Page Should Contain Element    ${txt_announce_xpath}
