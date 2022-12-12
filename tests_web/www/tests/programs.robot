*** Settings ***
Resource            ..//resources//home_resources.robot
Resource            ..//resources//programs_resources.robot

Test Teardown       Close All Browsers


*** Test Cases ***
Validate Program Page
    [Documentation]    Making sure program Description
    [Tags]    regression    www    web    prgm
    Access Programs Page    ft
    Click On Programs Sequentially

Validate Program Names
    [Documentation]    Validate Program Names
    [Tags]    regression    www    web    prgm
    Access Programs Page    ft
    Get List Of FT Programs

Validate Program Description
    [Documentation]    Validating Program Description Content
    [Tags]    regression    www    web    prgm
    Access Programs Page    ft
    Check Description Length For Each Program

Valdiate Fulltime Programs Access
    [Documentation]    Validating all fulltime programs can be accessed
    [Tags]    smoke    www    web    prgm
    Access Programs Page    ft
    Check For Errors In Programs

Valdiate Trades & Apprenticeship Programs Access
    [Documentation]    Validating all trades and apprenticeship programs can be accessed
    [Tags]    smoke    www    web    prgm
    Access Programs Page    apprntc
    Check For Errors In Programs
