*** Setting ***
Library    Selenium2Library

*** Variable ***
# SETUP VARIABLE INPUT
${WEB URL}    http://10.199.66.227/SoftEn2017/group5/
${SIGNUP URL}    http://10.199.66.227/SoftEn2017/group5/index.php/home/signUp
${BROWSER}    Chrome
${DELAY}    0
${SLEEP TIME}    3

# VALID VARIABLE INPUT
${VALID SSN}    1410400278230
${VALID FNAME}    Rattanaphon
${VALID LNAME}    Chaisaen
${ADDRESS}    123 ม.16 ต.ในเมือง อ.เมือง จ.ขอนแก่น 40002
${VALID PHONE}    0991163760
${VALID EMAIL}    tratta01@gmail.com
${VALID PASSWORD}    aA+12345
${VALID REPASSWORD}    aA+12345
${QUESTION VALUE}    1
${VALID ANSWER}    เหมียว

# INVALID VARIABLE INPUT
${INVALID SSN}    1234567899876
${INVALID FNAME}    สมชัย
${INVALID LNAME}    ใจดี
${INVALID EMAIL}    somchaigmail.com
${INVALID PHONE}    099116376
${INVALID PASSWORD LESS THAN 8}    aA+123        #less Than 8 digit

${PW LOWERCASE ONLY}    aaaaaaaa
${PW UPPERCASE ONLY}    AAAAAAAA
${PW SPECIAL CHAR ONLY}    ++++++++
${PW NUMBER ONLY}    11111111
${PW LOWERCASE UPPERCASE}    aAAAAAAA
${PW LOWERCASE SPECIAL}    a+++++++
${PW LOWERCASE NUMBER}    a1111111
${PW UPPERCASE SPECIAL}    A+++++++
${PW UPPERCASE NUMBER}    A1111111
${PW SPECIAL NUMBER}    +1111111
${PW LOWERCASE UPPERCASE SPECIAL}    aA++++++
${PW LOWERCASE UPPERCASE NUMBER}    aA111111
${PW UPPERCASE SPECIAL NUMBER}    A+111111

${INVALID REPASSWORD}    aA+12345cssc
${INVALID ANSWER}    บ้านของคุณ

#DUPLICATE VARIABLE
${DUPLICATE EMAIL}    kamonwan294@gmail.com
${DUPLICATE SSN}    1409901363513

# HTML LOCATION NAME
${LOCATION EMAIL}    name=email
${LOCATION PASSWORD}    id=confirmPassword
${LOCATION REPASSWORD}    name=password
${LOCATION SSN}    name=ssn
${LOCATION FNAME}    name=fname
${LOCATION LNAME}    name=lname
${LOCATION PHONE}    name=phone
${LOCATION ADDRESS}    name=address
${LOCATION QUESTION}    name=question
${LOCATION ANSWER}    name=answer
${LOCATION ACCEPT TERMS}    name=accept
${LOCATION CAPTCHA}    recaptcha1
${LOCATION FILE}    name=imgssn
${FILE PATH}    C://Users//TopPhon//Desktop//testcase//ssn.jpg

# HTML BUTTON NAME
${LOCATION SIGNIN MAIN}    name=signin-main
${LOCATION SIGNIN SUBMAIN}    name=signin-submain
${LOCATION SIGNUP}    name=signup
${LOCATION SIGNIN SUBMIT}    name=signin-submit
${LOCATION SIGNUP SUBMIT}    name=signup-submit

# MESSAGE
${PASSWORD ERROR MESSAGE}    รหัสผ่านไม่ตรงกัน !
${PASSWORD EMPTY MESSAGE}    กรุณากรอกรหัสผ่าน !
${REPASSWORD EMPTY MESSAGE}    กรุณายืนยันรหัสผ่าน !
${SSN ERROR MESSAGE}    เลขบัตรประชาชนไม่ถูกต้อง !
${DUPLICATE SSN MESSAGE}    เลขบัตรประชาชนนี้ถูกใช้แล้ว !
${EMPTY EMAIL ERROR MESSAGE}    กรุณากรอกอีเมล !
${DUPLICATE EMAIL MESSAGE}    อีเมลนี้ถูกใช้แล้ว !
${ALERT ROBOT}    กรุณายืนยันว่าไม่ใช่โปรแกรมอัตโนมัติ

${FNAME EMPTY MESSAGE}    กรุณากรอกชื่อจริง !
${LNAME EMPTY MESSAGE}    กรุณากรอกนามสกุล !
${PHONE EMPTY MESSAGE}    กรุณากรอกเบอร์โทรศัพท์ !
${ADDRESS EMPTY MESSAGE}    กรุณากรอกที่อยู่ !
${ANSWER EMPTY MESSAGE}    กรุณากรอกคำตอบ !

${SIGNUP SUCCESS}    สมัครสมาชิกสำเร็จ


*** Testcase ***
[1] Open Start Page
    Open Browser    ${WEB URL}    ${BROWSER}
    Location Should Be    ${WEB URL}
    Capture Page Screenshot    filename=sign-up-001.png
    Set Selenium Speed    ${DELAY}

[2] Empty Input
    #Click Element    ${LOCATION SIGNUP}
    Go To    ${SIGNUP URL}
    Input Text    ${LOCATION EMAIL}    ${EMPTY}
    Input Text    ${LOCATION PASSWORD}    ${EMPTY}
    Input Text    ${LOCATION REPASSWORD}    ${EMPTY}
    Input Text    ${LOCATION SSN}    ${EMPTY}
    Input Text    ${LOCATION FNAME}    ${EMPTY}
    Input Text    ${LOCATION LNAME}    ${EMPTY}
    Input Text    ${LOCATION PHONE}    ${EMPTY}
    Capture Page Screenshot    filename=sign-up-002-1.png
    Input Text    ${LOCATION ADDRESS}    ${EMPTY}
    Input Text    ${LOCATION ANSWER}    ${EMPTY}
    Sleep    ${SLEEP TIME}
    Unselect Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Wait Until Page Contains    ${EMPTY EMAIL ERROR MESSAGE}
    Wait Until Page Contains    ${PASSWORD EMPTY MESSAGE}
    Wait Until Page Contains    ${REPASSWORD EMPTY MESSAGE}
    Wait Until Page Contains    ${SSN ERROR MESSAGE}
    Wait Until Page Contains    ${FNAME EMPTY MESSAGE}
    Wait Until Page Contains    ${LNAME EMPTY MESSAGE}
    Wait Until Page Contains    ${PHONE EMPTY MESSAGE}
    Wait Until Page Contains    ${ADDRESS EMPTY MESSAGE}
    Wait Until Page Contains    ${ANSWER EMPTY MESSAGE}
    Capture Page Screenshot    filename=sign-up-002-2.png
    Location Should Be    ${SIGNUP URL}

[3] Valid Input Unselect Question Input
    Go To    ${SIGNUP URL}
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Choose File    ${LOCATION FILE}    ${FILE PATH}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Capture Page Screenshot    filename=sign-up-003-1.png
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Click Element    ${LOCATION CAPTCHA}
    Sleep    ${SLEEP TIME}
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Capture Page Screenshot    filename=sign-up-003-2.png
    Location Should Be    ${SIGNUP URL}


[4] Valid Input Unselect Checkbox
    Go To    ${SIGNUP URL}
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Choose File    ${LOCATION FILE}    ${FILE PATH}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Capture Page Screenshot    filename=sign-up-004-1.png
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Click Element    ${LOCATION CAPTCHA}
    Sleep    ${SLEEP TIME}
    Unselect Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Capture Page Screenshot    filename=sign-up-004-2.png
    Location Should Be    ${SIGNUP URL}

[5] Empty Email Input
    Go To    ${SIGNUP URL}
    Input Text    ${LOCATION EMAIL}    ${EMPTY}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Choose File    ${LOCATION FILE}    ${FILE PATH}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Capture Page Screenshot    filename=sign-up-005-1.png
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Click Element    ${LOCATION CAPTCHA}
    Sleep    ${SLEEP TIME}
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Capture Page Screenshot    filename=sign-up-005-2.png
    Wait Until Page Contains    ${EMPTY EMAIL ERROR MESSAGE}
    Location Should Be    ${SIGNUP URL}

[6] Empty Password Input
    Go To    ${SIGNUP URL}
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${EMPTY}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Choose File    ${LOCATION FILE}    ${FILE PATH}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Capture Page Screenshot    filename=sign-up-006-1.png
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Click Element    ${LOCATION CAPTCHA}
    Sleep    ${SLEEP TIME}
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Capture Page Screenshot    filename=sign-up-006-2.png
    Wait Until Page Contains    ${PASSWORD EMPTY MESSAGE}
    Location Should Be    ${SIGNUP URL}

[7] Empty Re-Password Input
    Go To    ${SIGNUP URL}
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${EMPTY}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Choose File    ${LOCATION FILE}    ${FILE PATH}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Capture Page Screenshot    filename=sign-up-007-1.png
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Click Element    ${LOCATION CAPTCHA}
    Sleep    ${SLEEP TIME}
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Capture Page Screenshot    filename=sign-up-007-2.png
    Wait Until Page Contains    ${PASSWORD ERROR MESSAGE}
    Location Should Be    ${SIGNUP URL}

[8] Empty SSN Input
    Go To    ${SIGNUP URL}
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${EMPTY}
    Choose File    ${LOCATION FILE}    ${FILE PATH}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Capture Page Screenshot    filename=sign-up-008-1.png
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Click Element    ${LOCATION CAPTCHA}
    Sleep    ${SLEEP TIME}
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Capture Page Screenshot    filename=sign-up-008-2.png
    Wait Until Page Contains    ${SSN ERROR MESSAGE}
    Location Should Be    ${SIGNUP URL}

[9] Empty FNAME Input
    Go To    ${SIGNUP URL}
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Choose File    ${LOCATION FILE}    ${FILE PATH}
    Input Text    ${LOCATION FNAME}    ${EMPTY}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Capture Page Screenshot    filename=sign-up-009-1.png
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Click Element    ${LOCATION CAPTCHA}
    Sleep    ${SLEEP TIME}
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Wait Until Page Contains    ${FNAME EMPTY MESSAGE}
    Capture Page Screenshot    filename=sign-up-009-2.png
    Location Should Be    ${SIGNUP URL}

[10] Empty LNAME Input
    Go To    ${SIGNUP URL}
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Choose File    ${LOCATION FILE}    ${FILE PATH}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${EMPTY}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Capture Page Screenshot    filename=sign-up-010-1.png
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Click Element    ${LOCATION CAPTCHA}
    Sleep    ${SLEEP TIME}
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Wait Until Page Contains    ${LNAME EMPTY MESSAGE}
    Capture Page Screenshot    filename=sign-up-010-2.png
    Location Should Be    ${SIGNUP URL}

[11] Empty PHONE Input
    Go To    ${SIGNUP URL}
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Choose File    ${LOCATION FILE}    ${FILE PATH}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${EMPTY}
    Capture Page Screenshot    filename=sign-up-011-1.png
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Click Element    ${LOCATION CAPTCHA}
    Sleep    ${SLEEP TIME}
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Wait Until Page Contains    ${PHONE EMPTY MESSAGE}
    Capture Page Screenshot    filename=sign-up-011-2.png
    Location Should Be    ${SIGNUP URL}

[12] Empty ADDRESS Input
    Go To    ${SIGNUP URL}
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Choose File    ${LOCATION FILE}    ${FILE PATH}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Capture Page Screenshot    filename=sign-up-012-1.png
    Input Text    ${LOCATION ADDRESS}    ${EMPTY}
    Select From List    ${LOCATION QUESTION}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Click Element    ${LOCATION CAPTCHA}
    Sleep    ${SLEEP TIME}
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Wait Until Page Contains    ${ADDRESS EMPTY MESSAGE}
    Capture Page Screenshot    filename=sign-up-012-2.png
    Location Should Be    ${SIGNUP URL}

[13] Empty ANSWER Input
    Go To    ${SIGNUP URL}
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Choose File    ${LOCATION FILE}    ${FILE PATH}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Capture Page Screenshot    filename=sign-up-013-1.png
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    Input Text    ${LOCATION ANSWER}    ${EMPTY}
    Click Element    ${LOCATION CAPTCHA}
    Sleep    ${SLEEP TIME}
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Wait Until Page Contains    ${ANSWER EMPTY MESSAGE}
    Capture Page Screenshot    filename=sign-up-013-2.png
    Location Should Be    ${SIGNUP URL}

[13] Invalid EMAIL
    Go To    ${SIGNUP URL}
    Input Text    ${LOCATION EMAIL}    ${INVALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Choose File    ${LOCATION FILE}    ${FILE PATH}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Capture Page Screenshot    filename=sign-up-014-1.png
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Click Element    ${LOCATION CAPTCHA}
    Sleep    ${SLEEP TIME}
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Capture Page Screenshot    filename=sign-up-014-2.png
    Location Should Be    ${SIGNUP URL}

[15] Invalid Re-Password
    Go To    ${SIGNUP URL}
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${INVALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Choose File    ${LOCATION FILE}    ${FILE PATH}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Capture Page Screenshot    filename=sign-up-015-1.png
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Click Element    ${LOCATION CAPTCHA}
    Sleep    ${SLEEP TIME}
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Capture Page Screenshot    filename=sign-up-015-2.png
    Wait Until Page Contains    ${PASSWORD ERROR MESSAGE}
    Location Should Be    ${SIGNUP URL}

[16] Invalid Password Less Than 8 digit
    Go To    ${SIGNUP URL}
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${INVALID PASSWORD LESS THAN 8}
    Input Text    ${LOCATION REPASSWORD}    ${INVALID PASSWORD LESS THAN 8}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Choose File    ${LOCATION FILE}    ${FILE PATH}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Capture Page Screenshot    filename=sign-up-016-1.png
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Click Element    ${LOCATION CAPTCHA}
    Sleep    ${SLEEP TIME}
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Capture Page Screenshot    filename=sign-up-016-2.png
    Location Should Be    ${SIGNUP URL}

[17] Invalid Password Lowercase Only
    Go To    ${SIGNUP URL}
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${PW LOWERCASE ONLY}
    Input Text    ${LOCATION REPASSWORD}    ${PW LOWERCASE ONLY}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Choose File    ${LOCATION FILE}    ${FILE PATH}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Capture Page Screenshot    filename=sign-up-017-1.png
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Click Element    ${LOCATION CAPTCHA}
    Sleep    ${SLEEP TIME}
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Capture Page Screenshot    filename=sign-up-017-2.png
    Location Should Be    ${SIGNUP URL}

[18] Invalid Password Uppercase Only
    Go To    ${SIGNUP URL}
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${PW UPPERCASE ONLY}
    Input Text    ${LOCATION REPASSWORD}    ${PW UPPERCASE ONLY}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Choose File    ${LOCATION FILE}    ${FILE PATH}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Capture Page Screenshot    filename=sign-up-018-1.png
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Click Element    ${LOCATION CAPTCHA}
    Sleep    ${SLEEP TIME}
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Capture Page Screenshot    filename=sign-up-018-2.png
    Location Should Be    ${SIGNUP URL}

[19] Invalid Password Special Character Only
    Go To    ${SIGNUP URL}
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${PW SPECIAL CHAR ONLY}
    Input Text    ${LOCATION REPASSWORD}    ${PW SPECIAL CHAR ONLY}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Choose File    ${LOCATION FILE}    ${FILE PATH}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Capture Page Screenshot    filename=sign-up-019-1.png
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Click Element    ${LOCATION CAPTCHA}
    Sleep    ${SLEEP TIME}
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Capture Page Screenshot    filename=sign-up-019-2.png
    Location Should Be    ${SIGNUP URL}

[20] Invalid Password Number Only
    Go To    ${SIGNUP URL}
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${PW NUMBER ONLY}
    Input Text    ${LOCATION REPASSWORD}    ${PW NUMBER ONLY}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Choose File    ${LOCATION FILE}    ${FILE PATH}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Capture Page Screenshot    filename=sign-up-020-1.png
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Click Element    ${LOCATION CAPTCHA}
    Sleep    ${SLEEP TIME}
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Capture Page Screenshot    filename=sign-up-020-2.png
    Location Should Be    ${SIGNUP URL}

[21] Invalid Password Lowercase Uppercase
    Go To    ${SIGNUP URL}
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${PW LOWERCASE UPPERCASE}
    Input Text    ${LOCATION REPASSWORD}    ${PW LOWERCASE UPPERCASE}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Choose File    ${LOCATION FILE}    ${FILE PATH}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Capture Page Screenshot    filename=sign-up-021-1.png
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Click Element    ${LOCATION CAPTCHA}
    Sleep    ${SLEEP TIME}
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Capture Page Screenshot    filename=sign-up-021-2.png
    Location Should Be    ${SIGNUP URL}

[22] Invalid Password Lowercase Special
    Go To    ${SIGNUP URL}
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${PW LOWERCASE SPECIAL}
    Input Text    ${LOCATION REPASSWORD}    ${PW LOWERCASE SPECIAL}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Choose File    ${LOCATION FILE}    ${FILE PATH}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Capture Page Screenshot    filename=sign-up-022-1.png
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Click Element    ${LOCATION CAPTCHA}
    Sleep    ${SLEEP TIME}
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Capture Page Screenshot    filename=sign-up-022-2.png
    Location Should Be    ${SIGNUP URL}

[23] Invalid Password Lowercase Number
    Go To    ${SIGNUP URL}
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${PW LOWERCASE NUMBER}
    Input Text    ${LOCATION REPASSWORD}    ${PW LOWERCASE NUMBER}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Choose File    ${LOCATION FILE}    ${FILE PATH}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Capture Page Screenshot    filename=sign-up-023-1.png
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Click Element    ${LOCATION CAPTCHA}
    Sleep    ${SLEEP TIME}
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Capture Page Screenshot    filename=sign-up-023-2.png
    Location Should Be    ${SIGNUP URL}

[24] Invalid Password Uppercase Special
    Go To    ${SIGNUP URL}
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${PW UPPERCASE SPECIAL}
    Input Text    ${LOCATION REPASSWORD}    ${PW UPPERCASE SPECIAL}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Choose File    ${LOCATION FILE}    ${FILE PATH}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Capture Page Screenshot    filename=sign-up-024-1.png
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Click Element    ${LOCATION CAPTCHA}
    Sleep    ${SLEEP TIME}
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Capture Page Screenshot    filename=sign-up-024-2.png
    Location Should Be    ${SIGNUP URL}

[25] Invalid Password Uppercase Number
    Go To    ${SIGNUP URL}
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${PW UPPERCASE NUMBER}
    Input Text    ${LOCATION REPASSWORD}    ${PW UPPERCASE NUMBER}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Choose File    ${LOCATION FILE}    ${FILE PATH}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Capture Page Screenshot    filename=sign-up-025-1.png
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Click Element    ${LOCATION CAPTCHA}
    Sleep    ${SLEEP TIME}
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Capture Page Screenshot    filename=sign-up-025-2.png
    Location Should Be    ${SIGNUP URL}

[26] Invalid Password Special Number
    Go To    ${SIGNUP URL}
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${PW SPECIAL NUMBER}
    Input Text    ${LOCATION REPASSWORD}    ${PW SPECIAL NUMBER}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Choose File    ${LOCATION FILE}    ${FILE PATH}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Capture Page Screenshot    filename=sign-up-026-1.png
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Click Element    ${LOCATION CAPTCHA}
    Sleep    ${SLEEP TIME}
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Capture Page Screenshot    filename=sign-up-026-2.png
    Location Should Be    ${SIGNUP URL}

[27] Invalid Password Lowercase Uppercase Special
    Go To    ${SIGNUP URL}
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${PW LOWERCASE UPPERCASE SPECIAL}
    Input Text    ${LOCATION REPASSWORD}    ${PW LOWERCASE UPPERCASE SPECIAL}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Choose File    ${LOCATION FILE}    ${FILE PATH}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Capture Page Screenshot    filename=sign-up-027-1.png
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Click Element    ${LOCATION CAPTCHA}
    Sleep    ${SLEEP TIME}
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Capture Page Screenshot    filename=sign-up-027-2.png
    Location Should Be    ${SIGNUP URL}

[28] Invalid Password Lowercase Uppercase Number
    Go To    ${SIGNUP URL}
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${PW LOWERCASE UPPERCASE NUMBER}
    Input Text    ${LOCATION REPASSWORD}    ${PW LOWERCASE UPPERCASE NUMBER}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Choose File    ${LOCATION FILE}    ${FILE PATH}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Capture Page Screenshot    filename=sign-up-028-1.png
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Click Element    ${LOCATION CAPTCHA}
    Sleep    ${SLEEP TIME}
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Capture Page Screenshot    filename=sign-up-028-2.png
    Location Should Be    ${SIGNUP URL}

[29] Invalid Password Uppercase Special Number
    Go To    ${SIGNUP URL}
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${PW UPPERCASE SPECIAL NUMBER}
    Input Text    ${LOCATION REPASSWORD}    ${PW UPPERCASE SPECIAL NUMBER}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Choose File    ${LOCATION FILE}    ${FILE PATH}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Capture Page Screenshot    filename=sign-up-029-1.png
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Click Element    ${LOCATION CAPTCHA}
    Sleep    ${SLEEP TIME}
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Capture Page Screenshot    filename=sign-up-029-2.png
    Location Should Be    ${SIGNUP URL}

[30] Invalid SSN
    Go To    ${SIGNUP URL}
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${INVALID SSN}
    Choose File    ${LOCATION FILE}    ${FILE PATH}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Capture Page Screenshot    filename=sign-up-030-1.png
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Click Element    ${LOCATION CAPTCHA}
    Sleep    ${SLEEP TIME}
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Capture Page Screenshot    filename=sign-up-030-2.png
    Wait Until Page Contains    ${SSN ERROR MESSAGE}
    Location Should Be    ${SIGNUP URL}

[31] Valid Input Unselect Captchar
    Go To    ${SIGNUP URL}
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Choose File    ${LOCATION FILE}    ${FILE PATH}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Capture Page Screenshot    filename=sign-up-031-1.png
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Capture Page Screenshot    filename=sign-up-031-2.png
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Alert Should Be Present    text=${ALERT ROBOT}
    Location Should Be    ${SIGNUP URL}

[32] Valid Input
    Go To    ${SIGNUP URL}
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Choose File    ${LOCATION FILE}    ${FILE PATH}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Capture Page Screenshot    filename=sign-up-032-1.png
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Click Element    ${LOCATION CAPTCHA}
    Sleep    ${SLEEP TIME}
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Wait Until Page Contains    ${SIGNUP SUCCESS}
    Capture Page Screenshot    filename=sign-up-032-2.png

[33] Duplicate EMAIL
    Go To    ${SIGNUP URL}
    Input Text    ${LOCATION EMAIL}    ${DUPLICATE EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Choose File    ${LOCATION FILE}    ${FILE PATH}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Capture Page Screenshot    filename=sign-up-033-1.png
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Click Element    ${LOCATION CAPTCHA}
    Sleep    ${SLEEP TIME}
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Capture Page Screenshot    filename=sign-up-033-2.png
    Wait Until Page Contains    ${DUPLICATE EMAIL MESSAGE}
    Location Should Be    ${SIGNUP URL}

[34] Duplicate SSN
    Go To    ${SIGNUP URL}
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${DUPLICATE SSN}
    Choose File    ${LOCATION FILE}    ${FILE PATH}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Capture Page Screenshot    filename=sign-up-034-1.png
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Click Element    ${LOCATION CAPTCHA}
    Sleep    ${SLEEP TIME}
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Capture Page Screenshot    filename=sign-up-034-2.png
    Wait Until Page Contains    ${DUPLICATE SSN MESSAGE}
    Location Should Be    ${SIGNUP URL}
    [Teardown]    Close Browser