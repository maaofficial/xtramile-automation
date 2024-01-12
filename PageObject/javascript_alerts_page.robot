*** Variables ***
${headers_website}         xpath=//h3[normalize-space()='JavaScript Alerts']
${btn_js_alert}            xpath=//button[normalize-space()='Click for JS Alert']
${btn_js_confirm}          xpath=//button[normalize-space()='Click for JS Confirm']
${btn_js_prompt}           xpath=//button[normalize-space()='Click for JS Prompt']
${result}                  xpath=//p[@id='result']