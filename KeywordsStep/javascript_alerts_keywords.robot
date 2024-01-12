*** Settings ***
Resource            ../Resource.robot
Resource            ../PageObject/javascript_alerts_page.robot

*** Variables ***
${msg_js_alert}              I am a JS Alert
${msg_js_confirm}            I am a JS Confirm
${msg_js_prompt}             I am a JS prompt

*** Keywords ***
Navigate to website Javascript Alerts
    Wait Until Element Is Visible    ${headers_website}        10s

Click on JS Alert button
    Wait Until Element Is Visible    ${btn_js_alert}         10s
    Click Element    ${btn_js_alert}

Validate Pop Up JS Alert and message result appears
    ${message}=        Handle Alert
    Should Be Equal    ${message}    ${msg_js_alert}
    ${msg_result}=        Get Text    ${result}
    Element Text Should Be    ${result}    ${msg_result}
    Log To Console    ${message}
    Log To Console    ${msg_result}

Click on JS Confirm button
    Wait Until Element Is Visible    ${btn_js_confirm}         10s
    Click Element    ${btn_js_confirm}

Validate Pop Up JS Confirm and message result OK appears
    ${message}=    Handle Alert    action=ACCEPT
    Should Be Equal        ${message}        ${msg_js_confirm}
    ${msg_result}=        Get Text    ${result}
    Element Text Should Be    ${result}    ${msg_result}

Validate Pop Up JS Confirm and message result Cancel appears
    ${message}=    Handle Alert    action=DISMISS
    Should Be Equal        ${message}        ${msg_js_confirm}
    ${msg_result}=        Get Text    ${result}
    Element Text Should Be    ${result}    ${msg_result}

Click on JS Prompt button
    Wait Until Element Is Visible    ${btn_js_prompt}         10s
    Click Element    ${btn_js_prompt}

Validate Pop Up JS Prompt and message result input text prompt appears
    Input Text Into Alert    Xtramile        action=ACCEPT
    ${msg_result}=        Get Text    ${result}
    Element Text Should Be    ${result}    ${msg_result}

Validate Pop Up JS Prompt and message result Cancel appears
    ${message}=    Handle Alert    action=DISMISS
    Should Be Equal        ${message}        ${msg_js_prompt}
    ${msg_result}=        Get Text    ${result}
    Element Text Should Be    ${result}    ${msg_result}