*** Settings ***
Resource  ../Resources/Common.robot
Resource  ../Resources/SIG.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

# to change env via command line, pass in -v ENV:[env-name] e.g. -v ENV:prod

*** Variables ***
${BROWSER} =  chrome
${ENV} =  staging

# dictionaries creating with & symbol
&{URL}  qa=http://sig.qa-1.blueacorn.net  staging=http://staging.signaturehardware.com  prod=http://www.signaturehardware.com

*** Test Cases ***
Open Homepage
    [Documentation]
    [Tags]  dictionary

    SIG.Go To Homepage
    Sleep  5s



