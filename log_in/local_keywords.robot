*** Settings ***
Resource        ./resource/keywords.robot
Variables       local_variables
*** Keywords ***

กรอก Username
    Input Text    ${USERNAME}    ${TXT_USERNAME}
กรอก Username ไม่ถูกต้อง
    Input Text    ${USERNAME}    ${TXT_INCORRECT_USERNAME}
กรอก Password
    Input Text    ${PASSWORD}    ${TXT_PASSWORD}
กรอก Password ไม่ถูกต้อง
    Input Text    ${PASSWORD}    ${TXT_INCORRECT_PASSWORD}

กดปุ่ม submit
    Click Element    ${BTN_SUBMIT}
กดปุ่ม register 
    Click Element    locator

กรอกข้อมูลโดยไม่กรอก Username
    กรอก Password
    กดปุ่ม submit
กรอกข้อมูลโดยไม่กรอก Password
    กรอก Username
    กดปุ่ม submit
กรอกข้อมูลโดยกรอก Username ผิด
    กรอก Username ไม่ถูกต้อง
    กรอก Password
    กดปุ่ม submit
กรอกข้อมูลโดยกรอก Password ผิด
    กรอก Username 
    กรอก Password ไม่ถูกต้อง
    กดปุ่ม submit
กรอกข้อมูลรายการครบถ้วน 
    กรอก Username
    กรอก Password
    กดปุ่ม submit
ตรวจสอบพบหน้าจอ member profile 
    Page Should Contain    Member
ตรวจสอบพบหน้าจอ log in 
    Page Should Contain    login page