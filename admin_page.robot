*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://parabank.parasoft.com/parabank/register.htm
${BROWSER}        Chrome

*** Test Cases ***
Open Parabank Page
    Open Browser  ${URL}  ${BROWSER}
    Click Link  Admin Page
    Wait Until Page Contains    Administration