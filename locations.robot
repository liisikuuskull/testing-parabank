*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://parabank.parasoft.com/parabank/register.htm
${BROWSER}        Chrome

*** Test Cases ***
Open Locations Page
    Open Browser  ${URL}  ${BROWSER}
    Click Link  Locations
    Wait Until Page Contains    The Parasoft Continuous Quality Platform: AI-Powered Test Automation Solutions