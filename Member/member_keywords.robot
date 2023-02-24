*** Settings ***
Resource        ./resource/keywords.robot
Variables       ./Member/member_variables.py
Library    RPA.FTP
Library    OperatingSystem
Library    RPA.Cloud.Azure

*** Keywords ***
พบช่องกรอก Firstname
    Element Should Be Visible    //*[@id="fname"]
พบช่องกรอก Lastname
    Element Should Be Visible    //*[@id="lname"]
พบช่องกรอก Nickname
    Element Should Be Visible    //*[@id="nname"]
พบช่องกรอก Username
    Element Should Be Visible    //*[@id="user"]
พบช่องกรอก Password
    Element Should Be Visible    //*[@id="psw"]
พบช่องกรอก Confirm Password
    Element Should Be Visible    //*[@id="psw_re"]
พบช่องกรอก Telephone
    Element Should Be Visible    //*[@id="telephone"]
พบช่องกรอก Address
    Element Should Be Visible    //*[@id="address"]
พบช่องกรอก Email
    Element Should Be Visible    //*[@id="email"]
พบช่องกรอก Birthday
    Element Should Be Visible    //*[@id="birthday"]
พบช่อง Rule
    Element Should Be Visible    //*[@id="rule"]
แสดงช่องกรอกข้อมูลครบถ้วน 
    พบช่องกรอก Firstname
    พบช่องกรอก Lastname
    พบช่องกรอก Nickname
    พบช่องกรอก Username
    พบช่องกรอก Password
    พบช่องกรอก Confirm Password
    พบช่องกรอก Telephone
    พบช่องกรอก Address
    พบช่องกรอก Email
    พบช่องกรอก Birthday
    พบช่อง Rule
กรอก Firstname
    Input Text    ${FIRSTNAME}   ${TXT_FIRSTNAME}    

กรอก Lastname
    Input Text    ${LASTNAME}    ${TXT_LASTNAME}  

กรอก Nickname
    Input Text    ${NICKNAME}    ${TXT_NICKNAME}

ใส่ Username
    Input Text    ${USERNAME}    ${TEXT_USERNAME} 

ใส่ Password
    Input Text    ${PASSWORD}    ${TEXT_PASSWORD} 

กรอก Confirm Password
    Input Text    ${CONFIRM_PASSWORD}    ${TEXT}
กรอก Confirm Password ผิด
    Input Text    ${CONFIRM_PASSWORD}    ${TEXT_INCORRECT}

กรอก Telephone
    Input Text    ${TELEPHONE}    ${TXT_TELEPHONE} 


กรอก Address
    Input Text    ${ADDRESS}    ${TXT_ADDRESS} 

กรอก Email
    Input Text    ${EMAIL}    ${TXT_EMAIL}
กรอก Email ไม่ถูกต้อง
    Input Text    ${EMAIL}    ${TEXT_INCORRECT_EMAIL}


กรอก Birthday
    Input Text    ${BIRTHDAY}   ${TXT_BIRTHDAY}
    Sleep    ${SLEEP}
คลิกช่อง rule
    Click Element    //*[@id="rule"]
คลิกปุ่ม register
    Click Element    ${REGISTER}

ตรวจสอบพบหน้าจอ register
    Page Should Contain    Register
    Sleep    ${SLEEP}
ตรวจพบหน้าจอ register success
    Page Should Contain    success
    Sleep    ${SLEEP}
กรอกข้อมูลครบถ้วน
    กรอก Firstname
    กรอก Lastname
    กรอก Nickname
    ใส่ Username
    ใส่ Password
    กรอก Confirm Password
    กรอก Telephone
    กรอก Address
    กรอก Email
    กรอก Birthday
    คลิกปุ่ม register
    
กรอกข้อมูล แต่ไม่กรอก firstname
    
    กรอก Lastname
    กรอก Nickname
    ใส่ Username
    ใส่ Password
    กรอก Confirm Password
    กรอก Telephone
    กรอก Address
    กรอก Email
    กรอก Birthday
    คลิกปุ่ม register    

กรอกข้อมูล แต่ไม่กรอก lastname
    กรอก Firstname
    กรอก Nickname
    ใส่ Username
    ใส่ Password
    กรอก Confirm Password
    กรอก Telephone
    กรอก Address
    กรอก Email
    กรอก Birthday
    คลิกปุ่ม register    

กรอกข้อมูล แต่ไม่กรอก username
    กรอก Firstname
    กรอก Lastname
    กรอก Nickname
    ใส่ Password
    กรอก Confirm Password
    กรอก Telephone
    กรอก Address
    กรอก Email
    กรอก Birthday
    คลิกปุ่ม register
    
กรอกข้อมูล แต่ไม่กรอก password
    กรอก Firstname
    กรอก Lastname
    กรอก Nickname
    ใส่ Username
    # กรอก Confirm Password
    กรอก Telephone
    กรอก Address
    กรอก Email
    กรอก Birthday
    คลิกปุ่ม register
        
กรอกข้อมูล แต่ไม่กรอก confirm password
    กรอก Firstname
    กรอก Lastname
    กรอก Nickname
    ใส่ Username
    ใส่ Password
    กรอก Telephone
    กรอก Address
    กรอก Email
    กรอก Birthday
    คลิกปุ่ม register
   
กรอกข้อมูล แต่ไม่กรอก telephone
    กรอก Firstname
    กรอก Lastname
    กรอก Nickname
    ใส่ Username
    ใส่ Password
    กรอก Confirm Password
    กรอก Address
    กรอก Email
    กรอก Birthday
    คลิกปุ่ม register
   
กรอกข้อมูล แต่ไม่กรอก email
    กรอก Firstname
    กรอก Lastname
    กรอก Nickname
    ใส่ Username
    ใส่ Password
    กรอก Confirm Password
    กรอก Telephone
    กรอก Address
    กรอก Birthday
    คลิกปุ่ม register
    
กรอกข้อมูล แต่ไม่กรอก birthday
    กรอก Firstname
    กรอก Lastname
    กรอก Nickname
    ใส่ Username
    ใส่ Password
    กรอก Confirm Password
    กรอก Telephone
    กรอก Address
    กรอก Email
    คลิกปุ่ม register

กรอก password และ Confirm Password ไม่ตรงกัน 
    กรอก Firstname
    กรอก Lastname
    กรอก Nickname
    ใส่ Username
    ใส่ Password
    กรอก Confirm Password ผิด
    กรอก Telephone
    กรอก Address
    กรอก Email
    กรอก Birthday
    คลิกปุ่ม register

กรอก email address โดยไม่ใส่@
    กรอก Firstname
    กรอก Lastname
    กรอก Nickname
    ใส่ Username
    ใส่ Password
    กรอก Confirm Password
    กรอก Telephone
    กรอก Address
    กรอก Email ไม่ถูกต้อง
    กรอก Birthday
    คลิกปุ่ม register

    