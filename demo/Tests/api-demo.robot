*** Settings ***
Documentation  Some API tests
Resource  ../Resources/API/Github.robot
Resource  ../Resources/API/Foaas.robot


*** Test Cases ***
Make a simple REST API call
    [Tags]  API

    Check Github Username

Display emoji from Github
    [Tags]  API

    Display Emoji

Display Cool Story API Cool from FOAAS
    [Tags]  API

    Cool Story Bro
