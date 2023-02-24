*** Settings ***
Resource        ./resource/keywords.robot
Resource        sidebar_keywords.robot
Variables       sidebar_variables.py

Suite Setup        เปิดบราวเซอร์และlog in  
Suite Teardown     ปิดบราวเซอร์

*** Tasks ***
ทดสอบแสดงข้อมูล member       
    #expect output
    พบหน้าจอ member และ sidebar

ทดสอบ log out ไม่สำเร็จ
    พบหน้าจอ member และ sidebar
    
ทดสอบ log out สำเร็จ
    กดปุ่ม Logout
    #expect output
    พบหน้าจอ log in

