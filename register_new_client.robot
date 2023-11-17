*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://parabank.parasoft.com/parabank/register.htm
${BROWSER}        Chrome


*** Test Cases ***
Register New Client
    Open Browser  ${URL}  ${BROWSER}
    Wait Until Page Contains Element    //a[contains(text(),'Register')]
    Click Link          Register
    Wait Until Page Contains    If you have an account with us you can sign-up for free instant online access. You will have to provide some personal information.
    


    # Fill out the registration form
    Input Text      id=customer\\.firstName          Mari
    Input Text      id=customer\\.lastName           Maasikas
    Input Text      id=customer\\.address\\.street   Mustamäe tee 2
    Input Text      id=customer\\.address\\.city     Tallinn
    Input Text      id=customer\\.address\\.state    Harju 
    Input Text      id=customer\\.address\\.zipCode  12345
    Input Text      id=customer\\.phoneNumber        555 444 333
    Input Text      id=customer\\.ssn                123-45-6789
    Input Text      id=customer\\.username           marimaasikas
    Input Password  id=customer\\.password           mari1234
    Input Password  id=repeatedPassword              mari1234

    Click Button    css=input.button[type="submit"][value="Register"]
    Wait Until Page Contains    Your account was created successfully. You are now logged in.