*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://parabank.parasoft.com/parabank/register.htm
${BROWSER}        Chrome

*** Test Cases ***
Open Customer Care Page
    Open Browser  ${URL}  ${BROWSER}
    Wait Until Page Contains Element  //li[@class='contact']/a
    Click Element   //li[@class='contact']/a
    Wait Until Page Contains    Customer Care
