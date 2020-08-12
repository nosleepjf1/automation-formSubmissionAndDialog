*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/CommonKeywords.robot
Resource  ../Resources/IndexKeywords.robot
Library  Dialogs
Library  SeleniumLibrary

Test Setup  CommonKeywords.Begin Web Test
Test Teardown  CommonKeywords.End Web Test

*** Variables ***
${BROWSER} =  chrome
${URL} =  http://www.robotframeworktutorial.com/

*** Test Cases ***
User can view the home page
    [Tags]  Basic
    ${new_browser} =  Get Selection From User  Which browser?  chrome  firefox  safari
    Set Global Variable  ${BROWSER}  ${new_browser}
    IndexKeywords.Open home page

User can navigate to the contact page
    IndexKeywords.Open home page
    IndexKeywords.Open contact page

User can enter all form info in contact form
    IndexKeywords.Open home page
    IndexKeywords.Open contact page
    IndexKeywords.Enter name
    IndexKeywords.Enter email
    IndexKeywords.Enter title
    IndexKeywords.Enter message

User can't submit form with all empty fields
    IndexKeywords.Open home page
    IndexKeywords.Open contact page
    IndexKeywords.Submit form
    IndexKeywords.Confirm validation message

User can't submit form with empty name field
    IndexKeywords.Open home page
    IndexKeywords.Open contact page
    IndexKeywords.Enter email
    IndexKeywords.Enter title
    IndexKeywords.Enter message
    IndexKeywords.Submit form
    IndexKeywords.Confirm validation message

User can't submit form with empty email field
    IndexKeywords.Open home page
    IndexKeywords.Open contact page
    IndexKeywords.Enter name
    IndexKeywords.Enter title
    IndexKeywords.Enter message
    IndexKeywords.Submit form
    IndexKeywords.Confirm validation message

User can't submit form with empty title field
    IndexKeywords.Open home page
    IndexKeywords.Open contact page
    IndexKeywords.Enter name
    IndexKeywords.Enter email
    IndexKeywords.Enter message
    IndexKeywords.Submit form
    IndexKeywords.Confirm validation message

User can't submit form with empty message field
    IndexKeywords.Open home page
    IndexKeywords.Open contact page
    IndexKeywords.Enter name
    IndexKeywords.Enter email
    IndexKeywords.Enter title
    IndexKeywords.Submit form
    IndexKeywords.Confirm validation message

User must enter a valid email
    [Tags]  Email
    IndexKeywords.Open home page
    IndexKeywords.Open contact page
    IndexKeywords.Enter invalid email
    IndexKeywords.Submit form
    IndexKeywords.Confirm email validation message
