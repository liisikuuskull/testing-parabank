*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://parabank.parasoft.com/parabank/register.htm
${BROWSER}        Chrome

*** Test Cases ***
Open Services Page
    Open Browser  ${URL}  ${BROWSER}
    Click Link  Services
    Wait Until Page Contains    Available Bookstore SOAP services: