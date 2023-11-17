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
    Click Element   css=input.button[value="Log In"]
    Wait Until Page Contains    Log Out   timeout=15s

