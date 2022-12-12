*** Settings ***
Resource            ..//resources//current-students_resources.robot

Test Teardown       Close All Browsers


*** Test Cases ***
Validate Current Students Subsection - Home page
    [Documentation]    Validating if the Current Student subsection is displayed properly with contents
    [Tags]    smoke    www    web    crst
    Access Current Students Sub Portal
    Check Errors In The Page
    Validate Contents In Current Students Home Page

Validate Current Students Subsection - New Students Page
    [Documentation]    Validating if the New Students page is displayed properly with contents
    [Tags]    smoke    www    web    crst
    Access Current Students Sub Portal
    Open Student Subsection    New students
    Check Errors In The Page
    Validate Buttons In New Students Page
    Validate Content In The Subsection    Next steps checklist
    Validate Content In The Subsection    Frequently asked questions

Validate Current Students Subsection - Returning Students Page
    [Documentation]    Validating if the New Students page is displayed properly with contents
    [Tags]    smoke    www    web    crst
    Access Current Students Sub Portal
    Open Student Subsection    Returning student
    Check Errors In The Page
    Validate Buttons In Returning Students Page
    Validate The Sections In The Returning Student Page
