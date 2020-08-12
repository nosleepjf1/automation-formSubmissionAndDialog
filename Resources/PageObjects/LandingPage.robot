*** Settings ***
Documentation  The tests for the landing page of the site being tested
Library  SeleniumLibrary

*** Keywords ***
Open Web Page
    Go To   ${URL}

Verify Page Loaded
    Wait Until Page Contains  Contact

Click Contact Link
    Click Link  css:li#menu-item-2057 a