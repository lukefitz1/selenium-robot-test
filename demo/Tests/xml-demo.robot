*** Settings ***
Documentation  This is some info about the suite
Resource  ../Resources/XML/Breakfast_Menu.robot

*** Test Cases ***
Verify Menu Count
    [Tags]  XML

    Breakfast_Menu.Should be one menu in the file

Verify Root
    [Tags]  XML

    Breakfast_Menu.Verify Menu Name

Verify Food Count
    [Tags]  XML
    Breakfast_Menu.Verify Food Count

Verify First Food
    [Tags]  XML

    Breakfast_Menu.Verify First Food Name
    Breakfast_Menu.Verify First Food Price
    Breakfast_Menu.Verify First Food Calories

Add a Food
    [Tags]  XML

    Breakfast_Menu.Add New Food

Verify New Food Was Added
    [Tags]  XML

    Breakfast_Menu.Verify New Food Exists

