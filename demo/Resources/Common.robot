*** Settings ***
Library  Selenium2Library

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}

End Web Test
    Close Browser

Insert Test Data
    Log  Setting up some test data

Remove Test Data
    Log  Removing some test data