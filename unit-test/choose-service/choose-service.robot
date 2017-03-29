*** Setting ***
Library    Selenium2Library

*** Variable ***
# SETUP VARIABLE INPUT
${WEB URL}    http://10.199.66.227/SoftEn2017/group5/
${BROWSER}    Chrome
${DELAY}    0
${SLEEP TIME}    3

# VALID VARIABLE INPUT
${VALID EMAIL}    tratta01@gmail.com
${VALID PASSWORD}    aA+12345

# HTML LOCATION NAME
${LOCATION EMAIL}    name=signin-email
${LOCATION PASSWORD}    name=signin-password
${LOCATION CAPTCHA}    g-recaptcha-response

# HTML BUTTON NAME
${LOCATION SIGNIN MAIN}    name=signin-main
${LOCATION SIGNIN SUBMIT}    name=login-submit
${LOCATION WANT HELP}    name=want-help
${LOCATION PLEASE HELP}    name=please-help
${LOCATION SUBMIT PRODUCT}    signup-submit

# HTML INPUT NAME
${LOCATION PNAME}    name=pname
${LOCATION PDETAIL}    name=pdetail
${LOCATION DESCRIPT}    name=description
${LOCATION SIZE}    name=size
${LOCATION WIGHT}    name=weight
${LOCATION QTY}    name=qty
${LOCATION IMG}    name=pimg
${LOCATION SENDTYPE}    sendtype

${CHOOSE TXT}    ขณะนี้มีจำนวนสิ่งของ

#DATA
${FILE PATH}    C://Users//TopPhon//Desktop//testcase//ssn.jpg

*** Testcase ***
[1] LOG IN
    Open Browser    ${WEB URL}    ${BROWSER}
    Location Should Be    ${WEB URL}
    Click Element    ${LOCATION SIGNIN MAIN}
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Click Element    ${LOCATION CAPTCHA}
    Sleep    ${SLEEP TIME}
    Capture Page Screenshot    filename=choose-service-001-1.png
    Click Button    ${LOCATION SIGNIN SUBMIT}
    Sleep    ${SLEEP TIME}
    Location Should Be    http://10.199.66.227/SoftEn2017/group5/index.php/Home
    Wait Until Page Contains    ${CHOOSE TXT}
    Set Selenium Speed    ${DELAY}

[2] WANT HELP
    Capture Page Screenshot    filename=choose-service-002-1.png
    Click Element    ${LOCATION WANT HELP}
    Sleep    ${SLEEP TIME}

[3] EMPTY INPUT
    Input Text    ${LOCATION PNAME}    ${EMPTY}
    Input Text    ${LOCATION PDETAIL}    ${EMPTY}
    Input Text    ${LOCATION DESCRIPT}    ${EMPTY}
    Input Text    ${LOCATION SIZE}    ${EMPTY}
    Input Text    ${LOCATION WIGHT}    ${EMPTY}
    Input Text    ${LOCATION QTY}    ${EMPTY}
    Choose File    ${LOCATION IMG}    ${FILE PATH}
    Capture Page Screenshot    filename=choose-service-003-1.png
    Sleep    ${SLEEP TIME}
    Click Element    xpath=//*[contains(@id, '${LOCATION SENDTYPE}')]
    Capture Page Screenshot    filename=choose-service-003-2.png
    Click Button    ${LOCATION SUBMIT PRODUCT}
    Location Should Be    http://10.199.66.227/SoftEn2017/group5/index.php/WantHelp/index
