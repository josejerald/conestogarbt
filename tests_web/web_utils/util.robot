*** Settings ***
Library     String
Library     Screenshot
Library     Selenium2Library


*** Keywords ***
Open Url In Browser
    [Documentation]    Open URL in a browser
    [Arguments]    ${docker}    ${page_url}    ${browser}
    ${docker}    Convert To Lower Case    ${docker}
    IF    '${docker}' == 'true'
        Open Browser Headless In Docker    ${page_url}    ${browser}
    ELSE
        Open Browser    ${page_url}    ${browser}
        Maximize Browser Window
    END

Open Browser Headless In Docker
    [Documentation]    Custom implementation for opening a webpage in Docker
    [Arguments]    ${url}    ${browser}
    ${chrome_options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    # disable page crash of chrome
    Call Method
    ...    ${chrome_options}
    ...    add_argument
    ...    --disable-dev-shm-usage
    Call Method    ${chrome_options}    add_argument    --no-sandbox    # disable sandbox mode
    Call Method    ${chrome_options}    add_argument    --headless    # run with no web browser
    Create Webdriver
    ...    driver_name=Chrome
    ...    alias=google
    ...    chrome_options=${chrome_options}
    ...    executable_path=/usr/local/bin/chromedriver
    Set Window Size    1200    1000    # run on docker can't use Maximize Browser Window
    Go To    ${url}
    Capture Page Screenshot    Robotframework.png
