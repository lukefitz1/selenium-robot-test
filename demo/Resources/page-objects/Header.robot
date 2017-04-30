*** Settings ***
Library  Selenium2Library

*** Keywords ***
Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    Input Text  id=twotabsearchtextbox  Ferrari 458

Submit Search
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input

# method for passing arguments
Search for Variable Products
    [Arguments]  ${search_term}

    Enter Variable Search Term  ${search_term}
    Submit Search

# method for passing arguments
Enter Variable Search Term
    [Arguments]  ${search_term}

    Input Text  id=twotabsearchtextbox  ${search_term}