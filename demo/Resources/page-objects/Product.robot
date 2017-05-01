*** Settings ***
Library  Selenium2Library

*** Variables ***
${add_to_cart_button} =  id=add-to-cart-button

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  Back to search results

Add Product to Cart
    Click Button  ${add_to_cart_button}