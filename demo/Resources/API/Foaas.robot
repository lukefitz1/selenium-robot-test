*** Settings ***
Documentation  FOAAS API keyword file
Library  RequestsLibrary
Library  Selenium2Library  # only used to display something we get back from an API test

*** Keywords ***
Cool Story Bro
     # Create session
    Create Session  my_foaas_session  http://www.foaas.com

    # make the call, capture response in *** variables ***
    ${response} =  Get Request  my_foaas_session  cool/Luke

    # check response status
    Should Be Equal As Strings  ${response.status_code}  200

    # check response body
    Log  ${response}
