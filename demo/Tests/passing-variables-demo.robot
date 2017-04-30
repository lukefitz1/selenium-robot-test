*** Settings ***
Documentation  This is some info about the suite
Resource  ../Resources/Amazon.robot
Resource  ../Resources/Common.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***
${BROWSER} =  chrome
${BASE_URL} =  http://www.amazon.com

*** Test Cases ***
Passing variables to keyword
    [Documentation]  Passing variables test
    [Tags]  Smoke

    Amazon.Search for Products  Cookie Monster