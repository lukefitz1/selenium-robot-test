*** Settings ***
Documentation  This is some info about the suite
Resource  ../Resources/Amazon.robot
Resource  ../Resources/Common.robot

Suite Setup  Insert Test Data
Suite Teardown  Remove Test Data

Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***
# ${BROWSER} = chrome

*** Test Cases ***
User must sign in to checkout
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke

    # Amazon.Search for Products
    # Amazon.Select Product from Search Results
    # Amazon.Add Product to Cart
    # Amazon.Begin Checkout

    # These do not work, just an example
    Given User is not logged in
    And User has product in cart
    When User attempts to checkout
    Then User is required to login
