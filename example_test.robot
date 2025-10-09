*** Settings ***
Documentation    A challenge to click the button
Library    SeleniumLibrary

*** Variables ***
${URL_SELECTOR}     https://testpages.eviltester.com/styled/challenges/hard-selectors.html
${URL_BUTTON}     https://testpages.eviltester.com/styled/challenges/growing-clickable.html
${BROWSER}    Chrome
${STRING_EVENT_TRIGGERED}    Event Triggered


*** Test Cases ***
Test Challenging Selectors
    Open Browser    ${URL_SELECTOR}    ${BROWSER}
    Title Should Be    Challenging Selectors
    Click Button    locator=id:select.me.by.id
    Element Text Should Be    locator=id:select.me.by.idstatus    expected=${STRING_EVENT_TRIGGERED}
    [Teardown]    Close Browser

Test Button Animate
    Open Browser    ${URL_BUTTON}    ${BROWSER}
    Title Should Be    Growing Clickable
    Wait Until Element Is Visible    class:grown    timeout=10s
    Click Button    locator=class:grown
    Element Text Should Be    locator=growbuttonstatus    expected=${STRING_EVENT_TRIGGERED}
    [Teardown]    Close Browser    