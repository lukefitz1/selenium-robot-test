*** Settings ***
Resource  ../Resources/page-objects/SIG-Homepage.robot

*** Keywords ***
Go To Homepage
    SIG-Homepage.Load
    SIG-Homepage.Verify Page Loaded
