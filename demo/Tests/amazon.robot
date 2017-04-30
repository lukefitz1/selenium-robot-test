*** Settings ***
Documentation  This is some info about the suite
Library  Selenium2Library

*** Variables ***
#$(Browser) = chrome

*** Test Cases ***
User must sign in to checkout
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser  http://www.amazon.com  chrome
    Wait Until Page Contains  Your Amazon.com
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains  results for "Ferrari 458"
    Click Link  css=#result_0 > div > div > div > div.a-fixed-left-grid-col.a-col-right > div.a-row.a-spacing-small > div:nth-child(1) > a
    Wait Until Page Contains  Back to search results
    Click Button  id=add-to-cart-button
    # Wait Until Page Contains  Added to Cart
    # Click Link  Proceed to Checkout
    # Page Should Contain Element  ap_signin1a_pagelet_title
    # Element Text Should Be  ap_signin1a_pagelet_title Sign In
    Close Browser

*** Keywords ***
