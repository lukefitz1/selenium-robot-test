*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  Cart subtotal

Proceed to Checkout
    Click Link  Proceed to checkout