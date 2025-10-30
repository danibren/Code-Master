***Settings***
Library           SeleniumLibrary
Library           OperatingSystem

***Variables***
${URL}            file:///c:/Users/Public/code-folder/Code-Master/web_ai/quote_daily.html
${BROWSER}        Chrome

***Test Cases***
Verify Quote Display
    Open Browser To Quote Page
    Click Button    id:generate-classic-btn
    Quote And Author Should Be Displayed

***Keywords***
Open Browser To Quote Page
    Open Browser    ${URL}    ${BROWSER}
    Set Window Size    1200    800

Quote And Author Should Be Displayed
    Wait Until Element Is Visible    id:quote-text    timeout=10
    Wait Until Element Is Visible    id:quote-author    timeout=10
    Should Not Be Empty    id:quote-text
    Should Not Be Empty    id:quote-author
    Close Browser