*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://parabank.parasoft.com/parabank/register.htm
${BROWSER}        Chrome


*** Test Cases ***
Open Parabank Page
    Open Browser  ${URL}  ${BROWSER}

Send email
    Click Element   css=ul.button li.contact a   
    Wait Until Page Contains    Customer Care

    # Fill out the contact form
    Input Text      id=name        Liisi
    Input Text      id=email       example@example.com
    Input Text      id=phone       123456789
    Input Text      id=message     Testing

    Click Button    css=form#contactForm input.button
    Wait Until Page Contains    A Customer Care Representative will be contacting you.



