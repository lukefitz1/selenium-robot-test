*** Settings ***
Documentation  This is some info about the suite
Library  Selenium2Library

*** Variables ***
#$(Browser) = chrome

*** Test Cases ***
Test case 1
    Do Something
    Do Something Else

Test case 2
    Do Another Thing
    Do Something Else


*** Keywords ***
Do Something
    Log  I am doing something ...

Do Something Else
    Log  I am doing something else ...

Do Another Thing
    Log  I am doing another thing ...