*** Settings ***
Resource            ../KeywordsStep/javascript_alerts_keywords.robot

Test Setup          Open Web Browser Javascript Alerts
Test Teardown       Close Browser


*** Test Cases ***
TC01 : Able to click button Click for JS Alert
    Navigate to website Javascript Alerts
    Click on JS Alert button
    Validate Pop Up JS Alert and message result appears

TC02 : Able to click button Click for JS Confirm
    Navigate to website Javascript Alerts
    Click on JS Confirm button
    Validate Pop Up JS Confirm and message result OK appears
    Click on JS Confirm button
    Validate Pop Up JS Confirm and message result Cancel appears

TC03 : Able to click button Click for JS Prompt
    Navigate to website Javascript Alerts
    Click on JS Prompt button
    Validate Pop Up JS Prompt and message result input text prompt appears
    Click on JS Prompt button
    Validate Pop Up JS Prompt and message result Cancel appears