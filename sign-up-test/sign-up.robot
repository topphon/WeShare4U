*** Setting ***
Library    Selenium2Library

*** Variable ***
# SETUP VARIABLE INPUT
${WEB URL}    http://10.199.66.227/SoftEn2017/group5/
${BROWSER}    Chrome
${DELAY}    0
${SLEEP TIME}    0

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
${INVALID EMAIL}    somchaigmail.com
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
${DUPLICATE EMAIL}    tratta01@gmail.com
${DUPLICATE SSN}    #HIDE

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
${LOCATION SIGNIN MAIN}    name=signin-main
${LOCATION SIGNIN SUBMAIN}    name=signin-submain
${LOCATION SIGNUP}    name=signup
${LOCATION SIGNIN SUBMIT}    name=signin-submit
${LOCATION SIGNUP SUBMIT}    name=signup-submit
${LOCATION ACCEPT TERMS}    name=accept

# MESSAGE
${UNSELECT QUESTION ERROR MESSAGE}
${UNSELECT CHECKBOX MESSAGE}
${PASSWORD ERROR MESSAGE}    รหัสผ่านไม่ตรงกัน !
${EMAIL ERROR MESSAGE}
${SSN ERROR MESSAGE}    เลขบัตรประชาชนไม่ถูกต้อง !
${EMPTY FNAME ERROR MESSAGE}
${EMPTY LNAME ERROR MESSAGE}
${EMPTY PHONE ERROR MESSAGE}
${EMPTY ADDRESS ERROR MESSAGE}
${EMPTY ANSWER ERROR MESSAGE}
${INVALID EMAIL MESSAGE}
${INVALID PASSWORD MESSAGE}
${INVALID PHONE MESSAGE}
${SIGNUP SUCCESS MESSAGE}    เริ่มตอนนี้
${DUPLICATE EMAIL MESSAGE}
${DUPLICATE SSN MESSAGE}


*** Testcase ***

Open Start Page
    Open Browser    ${WEB URL}    ${BROWSER}
    Location Should Be    ${WEB URL}
    Capture Page Screenshot    filename=000.png
    Set Selenium Speed    ${DELAY}

Empty Input
    Click Element    ${LOCATION SIGNIN MAIN}
    Click Element    ${LOCATION SIGNUP}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Wait Until Page Contains    ${EMAIL ERROR MESSAGE}
    Capture Page Screenshot    filename=001.png
    Location Should Be    ${WEB URL}#0

Valid Input Unselect Question Input
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    #Select From List By Value    ${LOCATION QUESTION}    0
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Wait Until Page Contains    ${UNSELECT QUESTION ERROR MESSAGE}
    Capture Page Screenshot    filename=002.png


Valid Input Unselect Checkbox
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Unselect Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Wait Until Page Contains    ${UNSELECT CHECKBOX MESSAGE}
    Capture Page Screenshot    filename=003.png


Empty Email Input
    Input Text    ${LOCATION EMAIL}    ${EMPTY}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    #Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Wait Until Page Contains    ${EMAIL ERROR MESSAGE}
    Capture Page Screenshot    filename=004.png


Empty Password Input
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${EMPTY}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    #Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Wait Until Page Contains    ${PASSWORD ERROR MESSAGE}
    Capture Page Screenshot    filename=005.png


Empty Re-Password Input
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${EMPTY}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    #Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Wait Until Page Contains    ${PASSWORD ERROR MESSAGE}
    Capture Page Screenshot    filename=006.png


Empty SSN Input
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${EMPTY}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    #Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Wait Until Page Contains    ${SSN ERROR MESSAGE}
    Capture Page Screenshot    filename=007.png


Empty FNAME Input
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${EMPTY}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    #Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Wait Until Page Contains    ${EMPTY FNAME ERROR MESSAGE}
    Capture Page Screenshot    filename=008.png


Empty LNAME Input
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${EMPTY}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    #Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Wait Until Page Contains    ${EMPTY LNAME ERROR MESSAGE}
    Capture Page Screenshot    filename=009.png


Empty PHONE Input
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${EMPTY}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    #Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Wait Until Page Contains    ${EMPTY PHONE ERROR MESSAGE}
    Capture Page Screenshot    filename=010.png


Empty ADDRESS Input
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${EMPTY}
    Select From List    ${LOCATION QUESTION}
    #Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Wait Until Page Contains    ${EMPTY ADDRESS ERROR MESSAGE}
    Capture Page Screenshot    filename=011.png


Empty ANSWER Input
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    #Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${EMPTY}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Wait Until Page Contains    ${EMPTY ANSWER ERROR MESSAGE}
    Capture Page Screenshot    filename=012.png


Invalid EMAIL
    Input Text    ${LOCATION EMAIL}    ${INVALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    #Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Wait Until Page Contains    ${INVALID EMAIL MESSAGE}
    Capture Page Screenshot    filename=013.png


Invalid Re-Password
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${INVALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    #Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Wait Until Page Contains    ${PASSWORD ERROR MESSAGE}
    Capture Page Screenshot    filename=014.png


Invalid Password Less Than 8 digit C1
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${INVALID PASSWORD C1}
    Input Text    ${LOCATION REPASSWORD}    ${INVALID PASSWORD C1}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    #Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Wait Until Page Contains    ${INVALID PASSWORD MESSAGE}
    Capture Page Screenshot    filename=015.png


Invalid Password more Than 16 digit C2
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${INVALID PASSWORD C2}
    Input Text    ${LOCATION REPASSWORD}    ${INVALID PASSWORD C2}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    #Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Wait Until Page Contains    ${INVALID PASSWORD MESSAGE}
    Capture Page Screenshot    filename=016.png


Invalid Password Lowercase C3
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${INVALID PASSWORD C3}
    Input Text    ${LOCATION REPASSWORD}    ${INVALID PASSWORD C3}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    #Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Wait Until Page Contains    ${INVALID PASSWORD MESSAGE}
    Capture Page Screenshot    filename=017.png


Invalid Password Uppercase C4
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${INVALID PASSWORD C4}
    Input Text    ${LOCATION REPASSWORD}    ${INVALID PASSWORD C4}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    #Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Wait Until Page Contains    ${INVALID PASSWORD MESSAGE}
    Capture Page Screenshot    filename=018.png


Invalid Password Special Character C5
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${INVALID PASSWORD C5}
    Input Text    ${LOCATION REPASSWORD}    ${INVALID PASSWORD C5}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    #Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Wait Until Page Contains    ${INVALID PASSWORD MESSAGE}
    Capture Page Screenshot    filename=019.png


Invalid Password Number C6
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${INVALID PASSWORD C6}
    Input Text    ${LOCATION REPASSWORD}    ${INVALID PASSWORD C6}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    #Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Wait Until Page Contains    ${INVALID PASSWORD MESSAGE}
    Capture Page Screenshot    filename=020.png


Invalid SSN
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${INVALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    #Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Wait Until Page Contains    ${SSN ERROR MESSAGE}
    Capture Page Screenshot    filename=021.png


Invalid Phone
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${INVALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    #Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Wait Until Page Contains    ${INVALID PHONE MESSAGE}
    Capture Page Screenshot    filename=022.png


Valid Input
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    #Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    30   # XXX input CAPTCHA manually here!
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Wait Until Page Contains    ${SIGNUP SUCCESS MESSAGE}
    Capture Page Screenshot    filename=023.png


Duplicate EMAIL
    Location Should Be    ${WEB URL}#0
    Click Element    ${LOCATION SIGNIN MAIN}
    Click Element    ${LOCATION SIGNUP}
    Input Text    ${LOCATION EMAIL}    ${DUPLICATE EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${VALID SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    #Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Wait Until Page Contains    ${DUPLICATE EMAIL MESSAGE}
    Capture Page Screenshot    filename=024.png


Duplicate SSN
    Input Text    ${LOCATION EMAIL}    ${VALID EMAIL}
    Input Text    ${LOCATION PASSWORD}    ${VALID PASSWORD}
    Input Text    ${LOCATION REPASSWORD}    ${VALID REPASSWORD}
    Input Text    ${LOCATION SSN}    ${DUPLICATE SSN}
    Input Text    ${LOCATION FNAME}    ${VALID FNAME}
    Input Text    ${LOCATION LNAME}    ${VALID LNAME}
    Input Text    ${LOCATION PHONE}    ${VALID PHONE}
    Input Text    ${LOCATION ADDRESS}    ${ADDRESS}
    Select From List    ${LOCATION QUESTION}
    #Select From List By Value    ${LOCATION QUESTION}    ${QUESTION VALUE}
    Input Text    ${LOCATION ANSWER}    ${VALID ANSWER}
    Sleep    ${SLEEP TIME}    # XXX input CAPTCHA manually here!
    Select Checkbox    ${LOCATION ACCEPT TERMS}
    Click Button    ${LOCATION SIGNUP SUBMIT}
    Wait Until Page Contains    ${DUPLICATE SSN MESSAGE}
    Capture Page Screenshot    filename=025.png
    Close Browser