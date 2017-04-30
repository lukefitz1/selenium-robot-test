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

# List variable - use the '@' symbol - can hold multiple values (array - like) - values are separate by 2 spaces
@{LIST_VARIABLE} =  Value 1  Value 2  Value 3

*** Test Cases ***
Log scalar & list variables test case
    [Documentation]  List Variables test
    [Tags]  Smoke

    # Scalar variable
    Log  ${BROWSER}

    # List variable
    Log  @{LIST_VARIABLE}[0]
    Log  @{LIST_VARIABLE}[1]
    Log  @{LIST_VARIABLE}[2]

Create list variables in test case with Set Variable
    @{local_list_variable} =  Set Variable  localvar1  localrvar2  localvar3

    Log  @{local_list_variable}[0]
    Log  @{local_list_variable}[1]
    Log  @{local_list_variable}[2]

Create list variables in test case with Create List - recommended
    @{local_list_variable} =  Create List  localvar1-2  localrvar2-2  localvar3-2

    Log  @{local_list_variable}[0]
    Log  @{local_list_variable}[1]
    Log  @{local_list_variable}[2]