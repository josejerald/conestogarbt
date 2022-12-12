*** Settings ***
Resource            ..//resources//home_resources.robot

Test Teardown       Close All Browsers


*** Test Cases ***
Validate Corp Website Home Page Access
    [Documentation]    Validating if Corporate website home page is loaded
    [Tags]    smoke    www    web    home
    Access Corp Website Home Page
    Validate Logo And Banner In Corp Website Home Page

Validate Corp Website Home Page Events Section
    [Documentation]    Valdiating if Event section in Corporate website home page
    [Tags]    smoke    www    web    home
    Access Corp Website Home Page
    Validate Event Section In Corp Website Home Page

Validate Corp Website Home Page Important Dates Section
    [Documentation]    Valdiating if Dates section in Corporate website home page
    [Tags]    smoke    www    web    home
    Access Corp Website Home Page
    Validate Important Date Section In Corp Website Home Page

Validate News Section in Corp Website Home Page
    [Documentation]    Valdiating if News section in Corporate website home page
    [Tags]    smoke    www    web    home
    Access Corp Website Home Page
    Validate Important Date Section In Corp Website Home Page

Validate Announcement Section in Corp Website Home Page
    [Documentation]    Valdiating if Announcement section in Corporate website home page
    [Tags]    smoke    www    web    home
    Access Corp Website Home Page
    Validate Announcement Section In Corp Website Home Page
