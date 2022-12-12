*** Settings ***
Resource            ..//resources//orientation_resources.robot

Test Teardown       Close All Browsers


*** Test Cases ***
Validate Orientation Sub Portal - Welcome Page
    [Documentation]    Validating if Orientation homepage can be accessed
    [Tags]    smoke    ortn    web
    Skip If    '${env}'=='prod'
    Access Orientation Sub Portal

Validate Orientation Sub Portal - Complete Registration Checklist
    [Documentation]    Validating if user can access the content Complete Registration Checklist page
    [Tags]    smoke    ortn    web
    Skip If    '${env}'=='prod'
    Access Orientation Sub Portal
    Access Orientation Page From Dropdown Menu    My checklist    Complete registration checklist
    Validate Card In Checklist Page    Confirm your invoice
    Validate Card In Checklist Page    Pay your fees
    Validate Card In Checklist Page    Activate your online accounts
    Validate Card In Checklist Page    Upload your ONE Card photo
    Validate Card In Checklist Page    Complete personalized checklist

Validate Orientation Sub Portal - Complete Personalized Checklist
    [Documentation]    Validating if user can access the content Complete Personalized Checklist page
    [Tags]    regression    ortn    web
    Skip If    '${env}'=='prod'
    Access Orientation Sub Portal
    Access Orientation Page From Dropdown Menu    My checklist    Complete personalized checklist
    Validate Card In Checklist Page    Conestoga Ready App
    Validate Card In Checklist Page    Get your timetable
    Validate Card In Checklist Page    Find a place to live off campus
    Validate Card In Checklist Page    Get your books and course equipment
    Validate Card In Checklist Page    Conestoga 101
    Validate Card In Checklist Page    Get your orientation schedule
    Validate Card In Checklist Page    Your CSI Health Plan
    Validate Card In Checklist Page    Review the Student Guide and your program handbook
    Validate Card In Checklist Page    Get your parking pass

Validate Orientation Sub Portal - Additional Events
    [Documentation]    Validating if user can access the content from additional events page
    [Tags]    regression    ortn    web
    Access Orientation Sub Portal
    Access Orientation Page From Dropdown Menu    My orientation    Additional events
    Validate Event Cards In Additional Events Page

Validate Orientation Sub Portal - Calendar
    [Documentation]    Validating page contents in the Calendar page under Orientation
    [Tags]    regression    ortn    web
    Access Child Page Under Orientation    Calendar
    Validate Legend Section In Calendar Page
