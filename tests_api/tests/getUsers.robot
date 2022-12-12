*** Settings ***
Library     RequestsLibrary


*** Variables ***
${base_url}     https://reqres.in


*** Test Cases ***
Get User Info
    [Documentation]    Validating if user info can be retrieved
    [Tags]    smoke    api
    ${response}=    GET    ${base_url}/api/users/2
    Log    ${response.json()}
    Should Be Equal    'Janet'    '${response.json()['data']['first_name']}'
