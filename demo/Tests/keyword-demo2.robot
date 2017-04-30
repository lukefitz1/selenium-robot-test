*** Settings ***
Documentation  This is some info about the suite
Library  Selenium2Library

*** Variables ***
#$(Browser) = chrome

*** Test Cases ***
User must sign in to checkout
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Begin Web Test
    Search for Products
    Select Product from Search Results
    Add Product to Cart
    # Begin Checkout
    End Web Test

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  chrome

Search for Products
    Go To  http://www.amazon.com
    Wait Until Page Contains  Your Amazon.com
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains  "Ferrari 458"

Select Product from Search Results
    Click Link  css=#result_3 > div > div:nth-child(3) > div > a
    Wait Until Page Contains  Back to search results

Add Product to Cart
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Cart subtotal

Begin Checkout
    Click Link  Proceed to checkout
    Page Should Contain Element  css=#a-page > div.a-section.a-padding-medium.auth-workflow > div:nth-child(3) > div > div > form
    Element Text Should Be  css=#a-page > div.a-section.a-padding-medium.auth-workflow > div:nth-child(3) > div > div > form > div > div > div > h1  Sign in

End Web Test
    Close Browser