*** Settings ***
Library  Selenium2Library

*** Keywords ***
Load
    Go To  ${BASE_URL}

Verify Page Loaded
    Wait Until Page Contains  Your Amazon.com