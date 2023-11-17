*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://parabank.parasoft.com/parabank/index.htm
${BROWSER}        Chrome

*** Test Cases ***
Open News Page
    Open Browser  ${URL}  ${BROWSER}
    Click Element  //a[contains(text(), 'ParaBank Is Now Re-Opened')]
    Wait Until Element Is Visible  //h1[@class='title' and contains(text(),'ParaBank News')]
