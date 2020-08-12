*** Settings ***
Documentation  The tests for the landing page of the site being tested
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  Email Address

Enter Name
    Input Text  id=et_pb_contact_name_1  ${name}

Enter Email
    Input Text  id=et_pb_contact_email_1  ${email}

Enter Invalid Email
    Input Text  id=et_pb_contact_email_1  ${invalidEmail}

Enter Title
    Input Text  id=et_pb_contact_title_1  ${title}

Enter Message
    Input Text  id=et_pb_contact_message_1  ${message}

Submit Contact Form
    Click Button  Submit

Verify Form Validation Message
    Wait Until Page Contains  Please, fill in the following fields

Verify Email Validation Message
    Wait Until Page Contains  Please, fix the following errors: