*** Setting ***
Library    Selenium2Library

*** Variable ***
# SETUP VARIABLE INPUT
${WEB URL}    http://localhost:7272/index.html
${BROWSER}    Chrome
${DELAY}    0
${SLEEP TIME}    10

# VALID VARIABLE INPUT
${VALID EMAIL}    tratta01@gmail.com
${VALID PASSWORD}    aA@12345

# INVALID VARIABLE INPUT

${INVALID EMAIL}    somchai@gmail.com
${INVALID PASSWORD}    aA@12345cssc


# HTML LOCATION NAME
${LOCATION EMAIL}    email
${LOCATION PASSWORD}    password

# HTML BUTTON NAME
${BTN SIGNIN}    signin
${BTN SIGNUP}    signup
${BTN SIGNIN SAVE}    signin-save
${BTN SIGNUP SAVE}    signup-save

# MESSAGE
${EMPTY ERROR MESSAGE}    กรุณาป้อนอีเมลและรหัสผ่านให้ครบถ้วน
${INVALID INPUT MESSAGE}    อีเมลหรือรหัสผ่านไม่ถูกต้อง
${INVALID PASSWORD MESSAGE}    รหัสผ่านไม่ถูกต้อง

*** Testcase ***
# SIGNIN TC001
Open Start Page
    Open Browser    ${WEB URL}    ${BROWSER}
    Wait Until Page Contains    เริ่มตอนนี้ ,,

# SIGNIN TC002
Empty Input
    Click Element    ${BTN SIGNIN}
    Click Button    ${BTN SIGNIN SAVE}
    Wait Until Page Contains    ${EMPTY ERROR MESSAGE}
    Set Selenium Speed    ${DELAY}


Empty EMAIL Input
    Input Text    ${LOCATION EMAIL}    ${EMPTY}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Wait Until Page Contains    ${EMPTY ERROR MESSAGE}
    Set Selenium Speed    ${DELAY}


Empty PASSWORD Input
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${EMPTY}
    Wait Until Page Contains    ${EMPTY ERROR MESSAGE}
    Set Selenium Speed    ${DELAY}


Invalid Input
    Input Text    ${LOCATION EMAIL}    ${INVALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${INVALID PASSWORD}
    Wait Until Page Contains    ${INVALID INPUT MESSAGE}
    Set Selenium Speed    ${DELAY}

Invalid EMAIL
    Input Text    ${LOCATION EMAIL}    ${INVALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Wait Until Page Contains    ${INVALID INPUT MESSAGE}
    Set Selenium Speed    ${DELAY}

Invalid PASSWORD
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${INVALID PASSWORD}
    Wait Until Page Contains    ${INVALID PASSWORD MESSAGE}
    Set Selenium Speed    ${DELAY}
    Close Browser