***Settings***
Documentation    A Test Using data Driven CSV
Library    DataDriver    data.csv
Library    SeleniumLibrary
Test Template    Login With Credentials

*** Variables ***
${URL_LOGIN}     https://practicetestautomation.com/practice-test-login/
${BROWSER}    Chrome

*** Test Cases ***
Login with user ${username} and password ${password}    Default    UserData

***Keywords***
Login With Credentials
    [Arguments]    ${username}    ${password}
    Open Browser    ${URL_LOGIN}    ${BROWSER}
    Input Text    id:username    ${username}
    Input Text    id:password    ${password}
    Click Button    id:submit
    Title Should Be    Logged In Successfully | Practice Test Automation
    [Teardown]    Close Browser

