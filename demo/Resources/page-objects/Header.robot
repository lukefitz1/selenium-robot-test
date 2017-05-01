*** Settings ***
Library  Selenium2Library

*** Variables ***
${search_field} =  id=twotabsearchtextbox
${search_button} =  xpath=//*[@id="nav-search"]/form/div[2]/div/input

*** Keywords ***
Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    Input Text  ${search_field}  Ferrari 458

Submit Search
    Click Button  ${search_button}

# method for passing arguments
Search for Variable Products
    [Arguments]  ${search_term}

    Enter Variable Search Term  ${search_term}
    Submit Search

# method for passing arguments
Enter Variable Search Term
    [Arguments]  ${search_term}

    Input Text  ${search_field}  ${search_term}