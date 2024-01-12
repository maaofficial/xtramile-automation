*** Settings ***
Resource            ../KeywordsStep/computer_database_keyword.robot

Test Setup          Open Web Browser Computer Database
Test Teardown       Close Browser

*** Test Cases ***
TC01 : Able to visit website Computer database
    Navigate to website Computer database

TC02 : Able to Add a new computer
    Navigate to website Computer database
    Click on Add a new computer button
    Fill the required fields
    Click on Create this computer button
    Validate the message successfully created appears

TC03 : Not able to add new computer when field computer name is empty
    Navigate to website Computer database
    Click on Add a new computer button
    Fill All field except computer name
    Click on Create this computer button
    Validate the message Failed created/edit appears

TC04 : Able to cancel to add new computer
    Navigate to website Computer database
    Click on Add a new computer button
    Fill the required fields
    Click on Cancel button
    Validate back to dashboard page

TC05 : Able to Edit a computer
    Navigate to website Computer database
    Click on selected computer
    Fill the required fields
    Click on Save this computer button
    Validate the message successfully edit appears

TC06 : Not able to edit computer when field computer name is empty
    Navigate to website Computer database
    Click on selected computer
    Delete text computer name
    Click on Save this computer button
    Validate the message Failed created/edit appears

TC07 : Able to cancel to edit computer
    Navigate to website Computer database
    Click on selected computer
    Fill the required fields
    Click on Cancel button
    Validate back to dashboard page

TC08 : Able to Delete computer
    Navigate to website Computer database
    Click on selected computer
    Click on Delete button
    Validate the message successfully delete appears

TC09 : Able to search by computer name
    Navigate to website Computer database
    Fill in search field
    Click on Filter by Name button
    Validate the computer name is match with keyword that inputted