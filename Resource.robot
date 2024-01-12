*** Settings ***
Library                                     SeleniumLibrary
Library                                     Collections
Library                                     BuiltIn
Library                                     String
Library                                     OperatingSystem

*** Variables ***
${Browser}                       Chrome
${url_computer_database}         https://computer-database.gatling.io/computers
${url_javascript_alerts}         https://the-internet.herokuapp.com/javascript_alerts       

*** Keywords ***
Open Web Browser Computer Database
    Open Browser       ${url_computer_database}         ${Browser}
    Set Selenium Speed          0.5s
    Maximize Browser Window

Open Web Browser Javascript Alerts
    Open Browser       ${url_javascript_alerts}         ${Browser}
    Set Selenium Speed          0.5s
    Maximize Browser Window