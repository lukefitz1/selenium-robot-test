*** Settings ***
Library  Selenium2Library

*** Variables ***
${SIGN_IN_EMAIL} =  css=body > div.page-container > section > cars-profiles-lsp > cui-tabs > div > ul.cui-tab-containers.profiles-container.ng-scope > li:nth-child(1) > div > cars-login-form > div > div.profiles__email > form > input:nth-child(2)
${SIGN_IN_PASSWORD} =  css=body > div.page-container > section > cars-profiles-lsp > cui-tabs > div > ul.cui-tab-containers.profiles-container.ng-scope > li:nth-child(1) > div > cars-login-form > div > div.profiles__email > form > input:nth-child(4)
${LOGIN_SUBMIT_BUTTON} =  css=body > div.page-container > section > cars-profiles-lsp > cui-tabs > div > ul.cui-tab-containers.profiles-container.ng-scope > li:nth-child(1) > div > cars-login-form > div > div.profiles__email > form > button

*** Keywords ***
Navigate To
    ${SignInUrl} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENV}}  ${LOGIN_URL}
    go to  ${SignInUrl}

Enter Credentials
    [Arguments]  ${Credentials}

    run keyword unless  '${Credentials.Email}' == '#BLANK'  Input Text  ${SIGN_IN_EMAIL}  ${Credentials.Email}
    run keyword unless  '${Credentials.Password}' == '#BLANK'  Input Text  ${SIGN_IN_PASSWORD}  ${Credentials.Password}

Click Submit
    Click Button  ${LOGIN_SUBMIT_BUTTON}

VerifyErrorMessage
    [Arguments]  ${ExpectedErrorMessage}

    Page Should Contain  ${ExpectedErrorMessage}

Clear Input Fields
    Clear Element Text  ${SIGN_IN_EMAIL}