*** Settings ***
Documentation  Basic OS operations
Resource  ../Resources/OperatingSystem/OS.robot

*** Test Cases ***
Create directories
    [Tags]  OperatingSystem

    OS.Create the Base Directory
    OS.Create Directory 1
    OS.Create Directory 2

Create files
    [Tags]  OperatingSystem

    OS.Create the First File
    OS.Create the Second File
    OS.Create the Third File

Move a File
    [Tags]  OperatingSystem

    Move File 3 from Directory 2 to Directory 1

Copy a File
    [Tags]  OperatingSystem

    Copy File 1 from Directory 1 to Directory 2