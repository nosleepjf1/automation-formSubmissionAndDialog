*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary
Resource  ../Resources/PageObjects/LandingPage.robot
Resource  ../Resources/PageObjects/ContactPage.robot

*** Variables ***
${name} =  jonny
${email} =  jonny@fake.com
${title} =  Form Test
${message} =  I am testing out this form by filling in each field.

${invalidEmail} =  adsf

*** Keywords ***
Open home page
    [Tags]  Smoke
    LandingPage.Open Webpage
    LandingPage.Verify Page Loaded

Open contact page
    LandingPage.Click Contact Link
    ContactPage.Verify Page Loaded

Enter name
    ContactPage.Enter Name

Enter email
    ContactPage.Enter Email

Enter invalid email
    ContactPage.Enter Invalid Email

Enter title
    ContactPage.Enter Title

Enter message
    ContactPage.Enter Message

Submit form
    ContactPage.Submit Contact Form

Confirm validation message
    ContactPage.Verify Form Validation Message

Confirm email validation message
    ContactPage.Verify Email Validation Message