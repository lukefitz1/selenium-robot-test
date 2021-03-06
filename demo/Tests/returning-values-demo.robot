*** Settings ***
Documentation  This is some info about the suite
Resource  ../Resources/Amazon.robot
Resource  ../Resources/Common.robot

Suite Setup  Insert Test Data
Suite Teardown  Remove Test Data

Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***
${BROWSER} =  chrome
${BASE_URL} =  http://www.amazon.com

*** Test Cases ***
User can search for products
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke

    Amazon.Search for Products with Return  Ferrari 458
    Amazon.Select Product from Search Results
    Amazon.Add Product to Cart
    # Amazon.Begin Checkout