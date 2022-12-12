*** Settings ***
Library     String
Library     Collections
Library     Selenium2Library
Library     ..//..//..//tools//utils//url_formatter.py
Resource    ..//page_obj//current-students_pageobj.robot


*** Variables ***
${url_tail_curstu}      current-students
@{error_msgs}           Component not found (404)
${sectionCount}         [<placeholder>]


*** Keywords ***
Access Current Students Sub Portal
    [Documentation]    Accessing Current Students Sub Portal
    ${page_url}    Get Base Url    ${site}    ${env}
    Set Test Variable    ${url}    ${page_url}${url_tail_curstu}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Wait Until Page Contains Element    ${lbl_curStuHeader_xpath}

Check Errors In The Page
    [Documentation]    Checking if any of the errors in the list is appearing in the page
    FOR    ${error}    IN    @{error_msgs}
        Page Should Not Contain    ${error}
    END

Validate Contents In Current Students Home Page
    [Documentation]    Validating if each link under accouncement is displayed with content
    ${announcement_count}    Get Element Count    ${lbl_announcList_xpath}
    ${announcement_count}    Evaluate    ${announcement_count}+1
    FOR    ${counter}    IN RANGE    1    ${announcement_count}
        ${cnt}    Convert To String    ${counter}
        ${elem}    Replace String    ${lbl_announcPlcHld_xpath}    <placeholder>    ${cnt}
        Page Should Contain Element    ${elem}${lbl_announcHeader_xpath}
        Element Should Be Visible    ${elem}${txt_announcContent_xpath}
        ${data}    Get Text    ${elem}${txt_announcContent_xpath}
        Should Not Be Empty    ${data}
    END
    Element Should Be Visible    ${lnk_viewAcDates_xpath}

Open Student Subsection
    [Documentation]    Open a sub page under Current Students sub portal
    [Arguments]    ${page}
    ${elem}    Replace String    ${lnk_studentMenu_xpath}    <placeholder>    ${page}
    ${titleElem}    Replace String    ${lbl_studentHeader_xpath}    <placeholder>    ${page}
    Click Element    ${elem}
    Wait Until Page Contains Element    ${titleElem}

Validate Buttons In New Students Page
    [Documentation]    Validating contents of the New Students page
    Element Should Be Visible    ${lbl_newStuTitle_xpath}
    Element Should Be Visible    ${lnk_orientation_xpath}
    Element Should Be Visible    ${lnk_dueDates_xpath}
    Element Should Be Visible    ${lnk_stuEmail_xpath}

Validate Content In The Subsection
    [Documentation]    Validating each detail under the subsection
    [Arguments]    ${section_title}
    ${section}    Replace String    ${lbl_newStuSection_xpath}    <placeholder>    ${section_title}
    ${detail_count}    Get Element Count    ${section}
    ${detail_count}    Evaluate    ${detail_count}+1
    FOR    ${counter}    IN RANGE    1    ${detail_count}
        ${cnt}    Convert To String    ${counter}
        ${elem}    Replace String    ${sectionCount}    <placeholder>    ${cnt}
        Click Element    ${section}${elem}
        Wait Until Element Is Visible    ${section}${elem}${txt_sectionCont_xpath}
        Element Should Be Visible    ${section}${elem}${txt_sectionCont_xpath}
    END

Validate Buttons In Returning Students Page
    [Documentation]    Validating contents of the Returning Students page
    Element Should Be Visible    ${lnk_crseReg_xpath}
    Element Should Be Visible    ${lnk_electives_xpath}
    Element Should Be Visible    ${lnk_crseChanges_xpath}

Validate The Sections In The Returning Student Page
    [Documentation]    Validating the content in sections in the Returning students page
    ${detail_count}    Get Element Count    ${lbl_details_xpath}
    ${detail_count}    Evaluate    ${detail_count}+1
    FOR    ${counter}    IN RANGE    1    ${detail_count}
        ${cnt}    Convert To String    ${counter}
        ${elem}    Replace String    ${txt_details_xpath}    <placeholder>    ${cnt}
        Click Element    ${elem}
        Wait Until Element Is Visible    ${elem}${txt_sectionCont_xpath}
    END
