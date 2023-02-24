*** Settings ***
Resource        ./resource/keywords.robot
Resource        ./log_in /local_keywords.robot
# Resource        log_in_keywords.robot
Variables        sidebar_variables.py    


*** Keywords ***

ตรวจสอบพบหน้าจอ member
    Page Should Contain    programer

ตรวจสอบพบปุ่มกด Logout
    Element Should Be Visible    ${BTN_Logout}

กดปุ่ม log out
    Click Element    ${BTN_Logout}

พบหน้าจอ log in
    Wait Until Element Is Enabled    //html/body/div/h1

พบหน้าจอ member และ sidebar
    ตรวจสอบพบหน้าจอ member
    ตรวจสอบพบปุ่มกด Logout

    