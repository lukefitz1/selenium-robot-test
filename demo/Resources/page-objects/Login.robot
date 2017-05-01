*** Settings ***
Library  Selenium2Library

*** Variables ***
${login_form} =  css=#a-page > div.a-section.a-padding-medium.auth-workflow > div:nth-child(3) > div > div > form
${login_header} =  css=#a-page > div.a-section.a-padding-medium.auth-workflow > div:nth-child(3) > div > div > form > div > div > div > h1

*** Keywords ***
Verify Page Loaded
    Login Form Displayed
    Sign In Text Displayed

Login Form Displayed
    Page Should Contain Element  ${login_form}

Sign In Text Displayed
    Element Text Should Be  ${login_header}  Sign in