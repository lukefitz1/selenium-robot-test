*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify Page Loaded
    Login Form Displayed
    Sign In Text Displayed

Login Form Displayed
    Page Should Contain Element  css=#a-page > div.a-section.a-padding-medium.auth-workflow > div:nth-child(3) > div > div > form

Sign In Text Displayed
    Element Text Should Be  css=#a-page > div.a-section.a-padding-medium.auth-workflow > div:nth-child(3) > div > div > form > div > div > div > h1  Sign in