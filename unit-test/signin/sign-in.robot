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

# INVALID VARIABLE INPUT
${INVALID EMAIL}    somchai@gmail.com
${INVALID PASSWORD}    aA+12345cssc

# HTML LOCATION NAME
${LOCATION EMAIL}    name=signin-email
${LOCATION PASSWORD}    name=signin-password
${LOCATION CAPTCHA}    g-recaptcha-response

# HTML BUTTON NAME
${LOCATION SIGNIN MAIN}    name=signin-main
${LOCATION SIGNIN SUBMAIN}    name=signin-submain
${LOCATION SIGNIN SUBMIT}    name=login-submit

# MESSAGE
${EMAIL ERROR MESSAGE}    รูปแบบของอีเมลไม่ถูกต้อง !
${LOGIN ERROR MESSAGE}    อีเมลหรือรหัสผ่านไม่ถูกต้อง !! กรุณาลองอีกครั้ง.
${ALERT ROBOT}     กรุณายืนยันว่าไม่ใช่โปรแกรมอัตโนมัติ

*** Testcase ***
# SIGNIN TC001
[1] Open Start Page
    Open Browser    ${WEB URL}    ${BROWSER}
    Capture Page Screenshot    filename=sign-in-001.png
    Location Should Be    ${WEB URL}
    Set Selenium Speed    ${DELAY}

# SIGNIN TC002
[2] Empty Input
    Click Element    ${LOCATION SIGNIN MAIN}
    Click Button    ${LOCATION SIGNIN SUBMIT}
    Alert Should Be Present    text=${ALERT ROBOT}
    Wait Until Page Contains    ${LOGIN ERROR MESSAGE}
    Capture Page Screenshot    filename=sign-in-002.png

# SIGNIN TC003
[3] Valid Input Unselect Chaptcha
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${INVALID PASSWORD}
    Click Button    ${LOCATION SIGNIN SUBMIT}
    Alert Should Be Present    text=${ALERT ROBOT}
    Capture Page Screenshot    filename=sign-in-003.png

# SIGNIN TC004
[4] Empty EMAIL Input
    Input Text    ${LOCATION EMAIL}    ${EMPTY}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Click Element    ${LOCATION CAPTCHA}
    Sleep    ${SLEEP TIME}
    Click Button    ${LOCATION SIGNIN SUBMIT}
    Wait Until Page Contains    ${EMAIL ERROR MESSAGE}
    Capture Page Screenshot    filename=sign-in-004.png

# SIGNIN TC005
[5] Empty PASSWORD Input
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${EMPTY}
    Click Button    ${LOCATION SIGNIN SUBMIT}
    Wait Until Page Contains    ${LOGIN ERROR MESSAGE}
    Capture Page Screenshot    filename=sign-in-005.png

# SIGNIN TC006
[6] Invalid Input
    Input Text    ${LOCATION EMAIL}    ${INVALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${INVALID PASSWORD}
    Click Button    ${LOCATION SIGNIN SUBMIT}
    Wait Until Page Contains    ${LOGIN ERROR MESSAGE}
    Capture Page Screenshot    filename=sign-in-006.png

# SIGNIN TC007
[7] Invalid EMAIL
    Input Text    ${LOCATION EMAIL}    ${INVALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Click Button    ${LOCATION SIGNIN SUBMIT}
    Wait Until Page Contains    ${LOGIN ERROR MESSAGE}
    Capture Page Screenshot    filename=sign-in-007.png

# SIGNIN TC008
[8] Invalid PASSWORD
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${INVALID PASSWORD}
    Click Button    ${LOCATION SIGNIN SUBMIT}
    Wait Until Page Contains    ${LOGIN ERROR MESSAGE}
    Capture Page Screenshot    filename=sign-in-008.png

# SIGNIN TC009
[9] Valid Input
    Go To    ${WEB URL}
    Click Element    ${LOCATION SIGNIN MAIN}
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Click Element    ${LOCATION CAPTCHA}
    Sleep    ${SLEEP TIME}
    Click Button    ${LOCATION SIGNIN SUBMIT}
    Sleep    ${SLEEP TIME}
    Location Should Be    http://10.199.66.227/SoftEn2017/group5/index.php/Home
    Capture Page Screenshot    filename=sign-in-009.png
    [Teardown]    Close Browser