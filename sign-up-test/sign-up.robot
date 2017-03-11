*** Setting ***
Library    Selenium2Library

*** Variable ***
#VALID VARIABLE INPUT
${WEB URL}    http://localhost:7272/index.html
${BROWSER}    Chrome
${DELAY}    0
${VALID SSN}    1410400278230
${VALID FNAME}    รัตนพล
${VALID LNAME}    ชัยแสน
${ADDRESS}    123 ม.16 ต.ในเมือง อ.เมือง จ.ขอนแก่น 40002
${VALID PHONE}    0991163760
${VALID EMAIL}    tratta01@gmail.com
${VALID PASSWORD}    aA@12345
${VALID REPASSWORD}    aA@12345
${QUESTION VALUE}    1
${VALID ANSWER}    บ้านของฉัน

#INVALID VARIABLE INPUT
${INVALID SSN}    1410400278233
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

#HTML LOCATION NAME
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

#HTML BUTTON NAME
${BTN SIGNIN}    signin
${BTN SIGNUP}    signup
${BTN SIGNIN SAVE}    signin-save
${BTN SIGNUP SAVE}    signup-save

#ERROR MESSAGE
${EMPTY ERROR MESSAGE}    กรุณากรอกข้อมูลให้ครบถ้วน


*** Testcase ***
Open Start Page
    Open Browser    ${WEB URL}    ${BROWSER}
    Wait Until Page Contains    เริ่มตอนนี้ ,,

# SIGNUP TC001
Empty Input
    Click Element    ${BTN SIGNIN}
    Click Element    ${BTN SIGNUP}
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${EMPTY ERROR MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNUP TC002
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
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${EMPTY ERROR MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNUP TC003
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
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${EMPTY ERROR MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNUP TC004
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
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${EMPTY ERROR MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNUP TC005
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
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${EMPTY ERROR MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNUP TC006
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
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${EMPTY ERROR MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNUP TC007
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
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${EMPTY ERROR MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNUP TC008
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
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${EMPTY ERROR MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNUP TC009
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
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${EMPTY ERROR MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNUP TC010
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
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${EMPTY ERROR MESSAGE}
    Set Selenium Speed    ${DELAY}

# SIGNUP TC011
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
    Click Button    ${BTN SIGNUP SAVE}
    Wait Until Page Contains    ${EMPTY ERROR MESSAGE}
    Set Selenium Speed    ${DELAY}