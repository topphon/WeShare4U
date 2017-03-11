*** Setting ***
Library    Selenium2Library

*** Variable ***
# SETUP VARIABLE INPUT
${WEB URL}    http://localhost:7272/index.html
${BROWSER}    Chrome
${DELAY}    0
${SLEEP TIME}    10

# VALID VARIABLE INPUT
${VALID SSN}    #HIDE
${VALID FNAME}    รัตนพล
${VALID LNAME}    ชัยแสน
${ADDRESS}    123 ม.16 ต.ในเมือง อ.เมือง จ.ขอนแก่น 40002
${VALID PHONE}    0991163760
${VALID EMAIL}    tratta01@gmail.com
${VALID PASSWORD}    aA@12345
${VALID REPASSWORD}    aA@12345
${QUESTION VALUE}    1
${VALID ANSWER}    บ้านของฉัน

# INVALID VARIABLE INPUT
${INVALID SSN}    1234567899876
${INVALID FNAME}    สมชัย
${INVALID LNAME}    ใจดี
${INVALID EMAIL}    somchai@gmail.com
${INVALID PHONE}    099116376
${INVALID PASSWORD C1}    aA@123
${INVALID PASSWORD C2}    aA@12345678909876
${INVALID PASSWORD C3}    1A@12345
${INVALID PASSWORD C4}    a1@12345
${INVALID PASSWORD C5}    aA112345
${INVALID PASSWORD C6}    aA@aA@aa
${INVALID REPASSWORD}    aA@12345cssc
${INVALID ANSWER}    บ้านของคุณ

#DUPLICATE VARIABLE
${DUPLICATE EMAIL}      #HIDE
${DUPLICATE SSN}        #HIDE

# HTML LOCATION NAME
${LOCATION EMAIL}    email
${LOCATION PASSWORD}    password
${LOCATION REPASSWORD}    repassword
${LOCATION SSN}    ssn
${LOCATION FNAME}    fname
${LOCATION LNAME}    lname
${LOCATION PHONE}    phone
${LOCATION ADDRESS}    address
${LOCATION QUESTION}    question
${LOCATION ANSWER}    answer

# HTML BUTTON NAME
${BTN SIGNIN}    signin
${BTN SIGNUP}    signup
${BTN SIGNIN SAVE}    signin-save
${BTN SIGNUP SAVE}    signup-save

# MESSAGE
${EMPTY ERROR MESSAGE}    กรุณากรอกข้อมูลให้ครบถ้วน
${SIGNUP SUCCESS MESSAGE}    สมัครสมาชิกสำเร็จ
${INVALID EMAIL MESSAGE}    กรุณากรอกอีเมลให้ถูกต้อง
${INVALID REPASSWORD MESSAGE}    รหัสผ่านไม่ตรงกัน
${INVALID PASSWORD MESSAGE}    รหัสผ่านต้องมีความยาว 8-16 ตัวอักษร
${INVALID SSN MESSAGE}    ชื่อและรหัสบัตรประชาชนไม่ตรงกัน
${INVALID PHONE MESSAGE}    หมายเลขโทรศัพท์ไม่ถูกต้อง
${DUPLICATE EMAIL MESSAGE}    ท่านมีบัญชีอยู่แล้ว
${DUPLICATE SSN MESSAGE}    ท่านมีบัญชีอยู่แล้ว


*** Testcase ***
# SIGNUP TC001
Open Start Page
    Open Browser    ${WEB URL}    ${BROWSER}
    Wait Until Page Contains    เริ่มตอนนี้ ,,

# SIGNUP TC002
Empty Input
    Click Element    ${BTN SIGNIN}
    Click Element    ${BTN SIGNUP}
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${EMPTY ERROR MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNUP TC003
Empty Email Input
    Input Text    ${LOCATION EMAIL}    ${EMPTY}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${EMPTY ERROR MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNUP TC004
Empty Password Input
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${EMPTY}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${EMPTY ERROR MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNUP TC005
Empty Re-Password Input
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${EMPTY}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${EMPTY ERROR MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNUP TC006
Empty SSN Input
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${EMPTY}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${EMPTY ERROR MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNUP TC007
Empty FNAME Input
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${EMPTY}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${EMPTY ERROR MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNUP TC008
Empty LNAME Input
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${EMPTY}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${EMPTY ERROR MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNUP TC009
Empty PHONE Input
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${EMPTY}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${EMPTY ERROR MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNUP TC0010
Empty ADDRESS Input
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${EMPTY}
    Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${EMPTY ERROR MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNUP TC011
Empty Select Question Input
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List By Value    ${LOCATION QUESTION}    0
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${EMPTY ERROR MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNUP TC012
Empty ANSWER Input
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${EMPTY}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${EMPTY ERROR MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNUP TC013
Invalid EMAIL
    Input Text    ${LOCATION EMAIL}    ${INVALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${INVALID EMAIL MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNUP TC014
Invalid Re-Password
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${INVALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${INVALID REPASSWORD MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNUP TC015
Invalid Password Less Than 8 digit C1
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${INVALID PASSWORD C1}
    Input Text    ${LOCATION REPASSWORD}    ${INVALID PASSWORD C1}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${INVALID PASSWORD MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNUP TC016
Invalid Password more Than 16 digit C2
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${INVALID PASSWORD C2}
    Input Text    ${LOCATION REPASSWORD}    ${INVALID PASSWORD C2}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${INVALID PASSWORD MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNUP TC017
Invalid Password Lowercase C3
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${INVALID PASSWORD C3}
    Input Text    ${LOCATION REPASSWORD}    ${INVALID PASSWORD C3}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${INVALID PASSWORD MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNUP TC018
Invalid Password Uppercase C4
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${INVALID PASSWORD C4}
    Input Text    ${LOCATION REPASSWORD}    ${INVALID PASSWORD C4}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${INVALID PASSWORD MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNUP TC019
Invalid Password Special Character C5
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${INVALID PASSWORD C5}
    Input Text    ${LOCATION REPASSWORD}    ${INVALID PASSWORD C5}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${INVALID PASSWORD MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNUP TC020
Invalid Password Number C6
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${INVALID PASSWORD C6}
    Input Text    ${LOCATION REPASSWORD}    ${INVALID PASSWORD C6}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${INVALID PASSWORD MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNUP TC021
Invalid SSN Not Match Wait Name
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${INVALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${INVALID SSN MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNUP TC022
Invalid Name Not Match SSN Name
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${INVALID FNAME}
    Input Text    ${LOCATION LNAME}    ${INVALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${INVALID SSN MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNUP TC023
Invalid Phone
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${INVALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${INVALID PHONE MESSAGE}
    Set Selenium Speed    ${DELAY}
    Close Browser

# SIGNUP TC024
Duplicate EMAIL
    Input Text    ${LOCATION EMAIL}    ${DUPLICATE EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${DUPLICATE EMAIL MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNUP TC025
Duplicate SSN
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${DUPLICATE SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${DUPLICATE SSN MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNUP TC026
Valid Input
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${SIGNUP SUCCESS MESSAGE}
    Set Selenium Speed    ${DELAY}
    Close Browser