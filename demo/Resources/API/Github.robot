*** Settings ***
Documentation  Github API keyword file
Library  RequestsLibrary
Library  Selenium2Library  # only used to display something we get back from an API test

*** Keywords ***
Check Github Username
    # Create session
    Create Session  my_github_session  https://api.github.com

    # make the call, capture response in *** variables ***
    ${response} =  Get Request  my_github_session  users/lukefitz1

    # check response status
    Should Be Equal As Strings  ${response.status_code}  200

    # check response body
    ${json} =  Set Variable  ${response.json()}
    Should Be Equal As Strings  ${json['login']}  lukefitz1
    Log  ${json}

Display Emoji
    # Create session
    Create Session  my_github_session  https://api.github.com

    # make the call, capture response in *** variables ***
    ${response} =  Get Request  my_github_session  emojis

    # check response status
    Should Be Equal As Strings  ${response.status_code}  200

    # check response body
    ${json} =  Set Variable  ${response.json()}
    ${emoji_url} =  Set Variable  ${json['aerial_tramway']}
    Open Browser  ${emoji_url}  chrome