*** Settings ***
Resource  ../Resources/page-objects/Homepage.robot
Resource  ../Resources/page-objects/Header.robot
Resource  ../Resources/page-objects/SearchResults.robot
Resource  ../Resources/page-objects/Product.robot
Resource  ../Resources/page-objects/Cart.robot
Resource  ../Resources/page-objects/Login.robot
Library  ../Libraries/MyCustomLibrary.py

*** Keywords ***
Search for Products
    [Arguments]  ${search_term}

    Homepage.Load
    Homepage.Verify Page Loaded

    # test case for static search
    # Header.Search for Products

    # test case for variable search
    Header.Search for Variable Products  ${search_term}
    SearchResults.Verify Search Results  ${search_term}

Search for Products with Return
    [Arguments]  ${search_term}

    Homepage.Load
    Homepage.Verify Page Loaded

    # test case for static search
    # Header.Search for Products

    # test case for variable search
    Header.Search for Variable Products  ${search_term}
    ${ReturnedInfo} =  SearchResults.Return Verify Search Results  ${search_term}
    Log  ${ReturnedInfo}

Select Product from Search Results
    SearchResults.Click Product Link
    Product.Verify Page Loaded

Add Product to Cart
    Product.Add Product to Cart
    Cart.Verify Page Loaded

Begin Checkout
    Cart.Proceed to Checkout
    Login.Verify Page Loaded

Do Custom Thing
    Do Something Special