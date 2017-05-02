*** Settings ***
Documentation  This is some info about the suite
Library  String

*** Variables ***
${BROWSER} =  chrome
${BASE_URL} =  http://www.amazon.com
${MY_VALUE} =  100

*** Test Cases ***
Testing a for loop with upper bounds
    [Documentation]  Starts at 0
    [Tags]  loop

    :FOR  ${Index}  IN RANGE  5
    \  Do Something  ${Index}
    \  ${RANDOM_STRING} =  Generate Random String  ${Index}
    \  Log  ${RANDOM_STRING}

Testing a for loop with start and finish range
    [Documentation]  Starts at 1 goes to 4
    [Tags]  loop

    :FOR  ${Index}  IN RANGE  1  4
    \  Do Something  ${Index}
    \  ${RANDOM_STRING} =  Generate Random String  ${Index}
    \  Log  ${RANDOM_STRING}

Testing a for loop with start, finish, and step range
    [Documentation]  Counter will increase by 2 each time
    [Tags]  loop

    :FOR  ${Index}  IN RANGE  1  10  2
    \  Do Something  ${Index}
    \  ${RANDOM_STRING} =  Generate Random String  ${Index}
    \  Log  ${RANDOM_STRING}

Testing a for loop with a list
    @{ITEMS} =  Create List  Item 1  Item 2  Item 3

    :FOR  ${ELEMENT}  IN  @{ITEMS}
    \  Log  ${ELEMENT}

Exiting a for loop
    @{ITEMS} =  Create List  Item 1  Item 2  Item 3  Item 4

    :FOR  ${ELEMENT}  IN  ${ITEMS}
    \  Log  ${ELEMENT}
    \  Run Keyword If  "${ELEMENT}" == "Item 3"  Exit For Loop
    \  Log  Didn't exit yet

    Log  Now we're out of the loop

Repeat a keyword many times
    [Documentation]  Multiple ways to repeat a keyword with the Repeat Keyword command
    [Tags]  loop

    Repeat Keyword  5  A repeatable keyword
    Repeat Keyword  2 times  A repeatable keyword
    Repeat Keyword  2 x  A repeatable keyword
    Repeat Keyword  3 s  A repeatable keyword  # repeats for a certain number of seconds

*** Keywords ***
A repeatable keyword
    Log  I am being repeated

Do Something
    [Arguments]  ${arg}

    Log  Doing something ${arg}!