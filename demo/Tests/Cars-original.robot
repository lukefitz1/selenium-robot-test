*** Settings ***
Documentation  Testing cars.com sign in
Resource  ../Resources/CarsApp.robot
Resource  ../Resources/Common.robot
Resource  ../Data/InputData.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Test Cases ***
Unregistered user should see correct error message at login
    CarsApp.Navigate to Sign In Page
    CarsApp.Attempt Login  ${UNREGISTERED_USER}
    CarsApp.Verify Login Page Error Message  ${UNREGISTERED_USER.ExpectedErrorMessage}

Login with invalid password should show correct error message
    CarsApp.Navigate to Sign In Page
    CarsApp.Attempt Login  ${INVALID_PASSWORD_USER}
    CarsApp.Verify Login Page Error Message  ${INVALID_PASSWORD_USER.ExpectedErrorMessage}

Login with blank email and password should show correct error message
    CarsApp.Navigate to Sign In Page
    CarsApp.Attempt Login  ${BLANK_CREDENTIALS_USER}
    CarsApp.Verify Login Page Error Message  ${BLANK_CREDENTIALS_USER.ExpectedErrorMessage}