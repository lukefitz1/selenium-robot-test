*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify Search Results
    [Arguments]  ${search_term}

    Wait Until Page Contains  ${search_term}

Click Product Link
    Click Link  css=#result_3 > div > div:nth-child(3) > div > a