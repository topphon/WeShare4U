*** Setting ***
Library    Selenium2Library

*** Variable ***
# SETUP VARIABLE INPUT
${WEB URL}    http://10.199.66.227/SoftEn2017/group5/
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
${LOCATION EMAIL}    name=signin-email
${LOCATION PASSWORD}    name=signin-password

# HTML BUTTON NAME
${LOCATION SIGNIN MAIN}    name=signin-main
${LOCATION SIGNIN SUBMAIN}    name=signin-submain
${LOCATION SIGNUP}    name=signup
${LOCATION SIGNIN SUBMIT}    name=signin-submit
${LOCATION SIGNUP SUBMIT}    name=signup-submit
${LOCATION REMEMBER ME}    name=remember-me

# MESSAGE
${EMPTY ERROR MESSAGE}    กรุณาป้อนอีเมลและรหัสผ่านให้ครบถ้วน
${INVALID INPUT MESSAGE}    อีเมลหรือรหัสผ่านไม่ถูกต้อง
${INVALID PASSWORD MESSAGE}    รหัสผ่านไม่ถูกต้อง
${VALID INPUT MESSAGE}    ยินดีต้อนรับ

*** Testcase ***
# SIGNIN TC001
Open Start Page
    Open Browser    ${WEB URL}    ${BROWSER}
    Location Should Be    ${WEB URL}

# SIGNIN TC002
Empty Input
    Click Element    ${LOCATION SIGNIN}
    Click Button    ${LOCATION SIGNIN SUBMIT}
    Wait Until Page Contains    ${EMPTY ERROR MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNIN TC003
Empty EMAIL Input
    Input Text    ${LOCATION EMAIL}    ${EMPTY}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Wait Until Page Contains    ${EMPTY ERROR MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNIN TC004
Empty PASSWORD Input
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${EMPTY}
    Wait Until Page Contains    ${EMPTY ERROR MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNIN TC005
Invalid Input
    Input Text    ${LOCATION EMAIL}    ${INVALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${INVALID PASSWORD}
    Wait Until Page Contains    ${INVALID INPUT MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNIN TC006
Invalid EMAIL
    Input Text    ${LOCATION EMAIL}    ${INVALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Wait Until Page Contains    ${INVALID INPUT MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNIN TC007
Invalid PASSWORD
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${INVALID PASSWORD}
    Wait Until Page Contains    ${INVALID PASSWORD MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNIN TC008
Valid Input
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${INVALID PASSWORD}
    Select Checkbox     ${LOCATION REMEMBER ME}
    Wait Until Page Contains    ${VALID INPUT MESSAGE}
    Set Selenium Speed    ${DELAY}
    Close Browser