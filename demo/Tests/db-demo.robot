*** Settings ***
Documentation  Some MySQL tests
Resource  ../Resources/Database/MySQL.robot

Test Setup  MySql.Connect
Test Teardown  MySql.Disconnect

*** Test Cases ***
# Requires having MySql installed on host
Insert a Record
    [Tags]  DbTest

    MySQL.Save Current Row Count
    MySQL.Insert Record
    MySQL.Verify New Record Added

Verify Insert Contains Correct Input Data
    [Tags]  DbTest

    MySQL.Verify First Record

Log All Rows
    [Tags]  DbTest

    MySQL.Log All Rows