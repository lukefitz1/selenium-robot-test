*** Settings ***
Library  Selenium2Library

*** Variables ***
${product_link} =  css=#result_3 > div > div:nth-child(3) > div > a

*** Keywords ***
Verify Search Results
    [Arguments]  ${search_term}

    Wait Until Page Contains  ${search_term}

Click Product Link
    Click Link  ${product_link}

Return Verify Search Results
    [Arguments]  ${search_term}

    Wait Until Page Contains  ${search_term}
    [Return]  Found it!