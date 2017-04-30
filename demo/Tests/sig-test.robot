*** Settings ***
Documentation  This is some info about the suite
Library  Selenium2Library

*** Variables ***
#$(Browser) = chrome

*** Test Cases ***
User must sign in to checkout
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser  http://www.signaturehardware.com  chrome
    Wait Until Page Contains  MAKE A STATEMENT

    Close Browser

*** Keywords ***