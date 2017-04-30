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
User must sign in to checkout
    [Documentation]  Search for products test
    [Tags]  Smoke

    Amazon.Search for Products
    # Amazon.Select Product from Search Results
    # Amazon.Add Product to Cart
    # Amazon.Begin Checkout

Setting a variable in the test case
    [Documentation]  Creating a variable in a test case
    [Tags]  Smoke

    ${my_new_variable} =  Set Variable  My New Variable
    Log  ${my_new_variable}