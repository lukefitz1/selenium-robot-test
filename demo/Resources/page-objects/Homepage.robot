*** Settings ***
Library  Selenium2Library

*** Variables ***
${page_string} =  Your Amazon.com

*** Keywords ***
Load
    Go To  ${BASE_URL}

Verify Page Loaded
    Wait Until Page Contains  ${page_string}