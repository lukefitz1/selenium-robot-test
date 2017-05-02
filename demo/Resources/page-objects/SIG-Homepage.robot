*** Settings ***
Library  Selenium2Library

*** Variables ***
${page_string} =  Free Shipping

*** Keywords ***
Load
    # Even tho URL is a dictionary, you still want to use the $ to call it
    Go To  ${URL.${ENV}}

Verify Page Loaded
    Wait Until Page Contains  ${page_string}