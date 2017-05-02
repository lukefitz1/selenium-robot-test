*** Settings ***
Documentation  Testing cars.com sign in
Resource  ../Resources/CarsApp.robot
Resource  ../Resources/Common.robot
Resource  ../Data/InputData.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Test Cases ***
Invalid login scenarios should display correct error messages
    [Template]  Test Multiple Login Scenarios
    ${UNREGISTERED_USER}
    ${INVALID_PASSWORD_USER}
    ${BLANK_CREDENTIALS_USER}