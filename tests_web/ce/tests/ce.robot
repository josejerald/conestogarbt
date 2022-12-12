*** Settings ***
Resource            ..//resources//ce_resources.robot

Test Teardown       Close All Browsers


*** Test Cases ***
Validate CE Programs Pages
    [Documentation]    Validating each of the CE programs
    [Tags]    smoke    ce    web    prgm
    Access CE Programs Page    all
    Check For Errors In CE Page    progr
    
Validate CE Micro Credentials Pages
    [Documentation]    Validating each of the CE programs
    [Tags]    smoke    ce    web    prgm
    Access CE Programs Page    micro-credentials
    Check For Errors In CE Page    micro-cred
