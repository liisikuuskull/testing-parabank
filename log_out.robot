*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://parabank.parasoft.com/parabank/index.htm
${BROWSER}        Chrome
${USERNAME}       testkasutaja
${PASSWORD}       test1234

*** Test Cases ***
Log In with Valid Credentials
    Open Browser    ${URL}    ${BROWSER}
    Input Text    name=username    ${USERNAME}
    Input Text    name=password    ${PASSWORD}
    Click Element   css=input.button
    Wait Until Page Contains    Accounts Overview   timeout=10s

Log Out
    Wait Until Element Is Visible  css=li a[href="/parabank/logout.htm"]
    Click Element  css=li a[href="/parabank/logout.htm"]
    Wait Until Page Contains    Customer Login