*** Settings ***
Resource        ./resource/keywords.robot
Resource        member_keywords.robot
Resource    ../log_in /local_keywords.robot
Resource    ../sidebar/sidebar_keywords.robot
Variables       member_variables.py
Suite Setup        เปิดบราวเซอร์และRegister
Suite Teardown     ปิดบราวเซอร์
*** Tasks ***
ทดสอบเพิ่ม member สำเร็จ
    กรอกข้อมูลครบถ้วน
    ตรวจพบหน้าจอ register success

ทดสอบเพิ่ม member ไม่สำเร็จ โดยไม่กรอก firstname
    กรอกข้อมูล แต่ไม่กรอก firstname
    ตรวจสอบพบหน้าจอ register

ทดสอบเพิ่ม member ไม่สำเร็จ โดยไม่กรอก lastname
    กรอกข้อมูล แต่ไม่กรอก lastname
    ตรวจสอบพบหน้าจอ register

ทดสอบเพิ่ม member ไม่สำเร็จ โดยไม่กรอก username
    กรอกข้อมูล แต่ไม่กรอก username
    ตรวจสอบพบหน้าจอ register

ทดสอบเพิ่ม member ไม่สำเร็จ โดยไม่กรอก password
    กรอกข้อมูล แต่ไม่กรอก password
    ตรวจสอบพบหน้าจอ register

ทดสอบเพิ่ม member ไม่สำเร็จ โดยไม่กรอก confirm password
    กรอกข้อมูล แต่ไม่กรอก confirm password
    ตรวจสอบพบหน้าจอ register

ทดสอบเพิ่ม member ไม่สำเร็จ โดยไม่กรอก telephone
    กรอกข้อมูล แต่ไม่กรอก telephone
    ตรวจสอบพบหน้าจอ register

ทดสอบเพิ่ม member ไม่สำเร็จ โดยไม่กรอก email
    กรอกข้อมูล แต่ไม่กรอก email
    ตรวจสอบพบหน้าจอ register

ทดสอบเพิ่ม member ไม่สำเร็จ โดยไม่กรอก birhday
    กรอกข้อมูล แต่ไม่กรอก birthday
    ตรวจสอบพบหน้าจอ register

ทดสอบกรอก password และ Confirm Password ไม่ตรงกัน 
    กรอก password และ Confirm Password ไม่ตรงกัน 
    ตรวจสอบพบหน้าจอ register
ทดสอบกรอก email addressโดยไม่ใส่ @
    กรอก email address โดยไม่ใส่@
    ตรวจสอบพบหน้าจอ register  
    