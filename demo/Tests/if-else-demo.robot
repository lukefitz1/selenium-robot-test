*** Settings ***
Documentation  This is some info about the suite

*** Variables ***
${BROWSER} =  chrome
${BASE_URL} =  http://www.amazon.com
${MY_VALUE} =  100

*** Test Cases ***
Testing a true IF statement
    [Tags]  IF-ELSE

    Run Keyword If  ${MY_VALUE} > 50  Keyword 1

Testing a false IF statement
    [Tags]  IF-ELSE

    Run Keyword If  ${MY_VALUE} > 200  Keyword 1

Testing an IF/ELSE statement
    [Tags]  IF-ELSE

    Run Keyword If  ${MY_VALUE} > 200  Keyword 1
    ...  ELSE  Keyword 2

Testing an IF/ELSE IF/ELSE statement
    [Tags]  IF-ELSE

    Run Keyword If  ${MY_VALUE} > 200  Keyword 1
    ...  ELSE IF  ${MY_VALUE} == 10  Keyword 2
    ...  ELSE  Keyword 3

*** Keywords ***
Keyword 1
    Log  Keyword 1

Keyword 2
    Log  Keyword 2

Keyword 3
    Log  Keyword 3