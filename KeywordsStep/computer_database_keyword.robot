*** Settings ***
Resource            ../Resource.robot
Resource            ../PageObject/computer_database_page.robot

*** Variables ***
${computer_name}                    Macbook 15
${introduced_time}                  2022-01-01
${discontinued_time}                2023-01-01
${search_keyword}                   Acer

*** Keywords ***
Navigate to website Computer database
    Wait Until Element Is Visible                ${headers_website}             10s

Click on Add a new computer button
    Wait Until Element Is Visible                ${btn_add_computer}            10s
    Click Element                                ${btn_add_computer}

Click on selected computer
    Wait Until Element Is Visible                ${select_computer}             10s
    Click Element                                ${select_computer}

Fill the required fields
    Wait Until Element Is Visible                ${field_computer_name}         10s
    Input Text                                   ${field_computer_name}         ${computer_name}
    Wait Until Element Is Visible                ${field_introduce}             10s
    Input Text                                   ${field_introduce}             ${introduced_time}
    Wait Until Element Is Visible                ${field_discontinued}          10s
    Input Text                                   ${field_discontinued}          ${discontinued_time}
    Wait Until Element Is Visible                ${field_company}               10s
    Click Element                                ${field_company}
    Sleep    2s
    Click Element                                ${select_company}

Fill All field except computer name
    Wait Until Element Is Visible                ${field_introduce}             10s
    Input Text                                   ${field_introduce}             ${introduced_time}
    Wait Until Element Is Visible                ${field_discontinued}          10s
    Input Text                                   ${field_discontinued}          ${discontinued_time}
    Wait Until Element Is Visible                ${field_company}               10s
    Click Element                                ${field_company}
    Sleep    2s
    Click Element                                ${select_company}

Delete text computer name
    Wait Until Element Is Visible                ${field_computer_name}         10s
    Clear Element Text                           ${field_computer_name}         

Click on Create this computer button
    Wait Until Element Is Visible                ${btn_create_computer}         10s
    Click Element                                ${btn_create_computer}

Click on Save this computer button
    Wait Until Element Is Visible                ${btn_save_computer}           10s
    Click Element                                ${btn_save_computer}

Click on Cancel button
    Wait Until Element Is Visible                ${btn_cancel}                  10s
    Click Element                                ${btn_cancel}

Click on Delete button
    Wait Until Element Is Visible                ${btn_delete_computer}         10s
    Click Element                                ${btn_delete_computer}

Validate the message successfully created appears
    Wait Until Element Is Visible                ${message_alert_success}       10s
    ${result}=        Get Text    ${message_alert_success}
    Element Should Contain                       ${message_alert_success}       ${result}

Validate the message successfully edit appears
    Wait Until Element Is Visible                ${message_alert_success}       10s
    ${result}=        Get Text    ${message_alert_success}
    Element Should Contain                       ${message_alert_success}       ${result}

Validate the message Failed created/edit appears
    Wait Until Element Is Visible                ${message_alert_failed}        10s
    ${result}=        Get Text    ${message_alert_failed}
    Element Should Contain                       ${message_alert_failed}        ${result}

Validate back to dashboard page
    Wait Until Element Is Visible                ${headers_website}             10s

Validate the message successfully delete appears
    Wait Until Element Is Visible                ${message_alert_success}       10s
    ${result}=        Get Text    ${message_alert_success}
    Element Should Contain                       ${message_alert_success}       ${result}

Fill in search field
    Wait Until Element Is Visible                ${field_search_computer}       10s
    Input Text                                   ${field_search_computer}       ${search_keyword}

Click on Filter by Name button
    Wait Until Element Is Visible                ${btn_search_computer}         10s
    Click Element                                ${btn_search_computer}

Validate the computer name is match with keyword that inputted
    Wait Until Element Is Visible                ${search_result}               10s
    ${result}=        Get Text    ${search_result}
    Element Should Contain                       ${search_result}               ${result}