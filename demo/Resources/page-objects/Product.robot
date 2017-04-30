*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  Back to search results

Add Product to Cart
    Click Button  id=add-to-cart-button