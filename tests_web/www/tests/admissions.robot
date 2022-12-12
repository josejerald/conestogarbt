*** Settings ***
Resource            ..//resources//admissions_resources.robot

Test Teardown       Close All Browsers


*** Test Cases ***
Validate Tuition & Fee Estimator For Canadaian Student
    [Documentation]    Valdiating the tuition and fee for a random course is populated as expected
    [Tags]    smoke    www    web    adms
    Access Admissions Section In Corp Website
    Access Admissions Page From Dropdown Menu    Paying your fees    Tuition & fees estimator
    Search With Year And Student To Get Fee List    Canadian
    Select A Program To Display The Fee    1
    Validate Intake Sessions Info For The Program

Validate Tuition & Fee Estimator For International Student
    [Documentation]    Valdiating the tuition and fee for a random course is populated as expected
    [Tags]    smoke    www    web    adms
    Access Admissions Section In Corp Website
    Access Admissions Page From Dropdown Menu    Paying your fees    Tuition & fees estimator
    Search With Year And Student To Get Fee List    International
    Select A Program To Display The Fee    1
    Validate Intake Sessions Info For The Program

Validate Tution & Fee Estimator For All Progams International
    [Documentation]    Validating the tuition and fee for all courses are populated as expected
    [Tags]    regression    www    web    adms
    Access Admissions Section In Corp Website
    Access Admissions Page From Dropdown Menu    Paying your fees    Tuition & fees estimator
    Search With Year And Student To Get Fee List    International
    Validate Fee For Each Program In Search Result Dropdown

Validate Tution & Fee Estimator For All Progams Canadian
    [Documentation]    Validating the tuition and fee for all courses are populated as expected
    [Tags]    regression    www    web    adms
    Access Admissions Section In Corp Website
    Access Admissions Page From Dropdown Menu    Paying your fees    Tuition & fees estimator
    Search With Year And Student To Get Fee List    Canadian
    Validate Fee For Each Program In Search Result Dropdown
