*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://parabank.parasoft.com/parabank/index.htm
${BROWSER}        Chrome
${USERNAME}       kasutaja
${PASSWORD}       test1234

*** Test Cases ***
Log In with Invalid Credentials
    Open Browser    ${URL}    ${BROWSER}
    Input Text    name=username    ${USERNAME}
    Input Text    name=password    ${PASSWORD}
    Click Element   css=input.button
    Wait Until Page Contains    The username and password could not be verified.
