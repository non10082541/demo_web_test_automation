*** Settings ***
Resource        ./resource/keywords.robot
Variables        local_variables.py
Resource         local_keywords.robot
Suite Setup        เปิดบราวเซอร์และlog in
Suite Teardown     ปิดบราวเซอร์

*** Tasks ***

ทดสอบ log in สำเร็จ
    #test step 
    กรอกข้อมูลรายการครบถ้วน 
    # expect output
    ตรวจสอบพบหน้าจอ member profile

ทดสอบ log in ไม่สำเร็จ โดยไม่ใส่ Username
    #test step 
    กรอกข้อมูลโดยไม่กรอก Username
    # expect output
    ตรวจสอบพบหน้าจอ log in
ทดสอบ log in ไม่สำเร็จ โดยไม่ใส่ Password
    #test step 
    กรอกข้อมูลโดยไม่กรอก Password
    # expect output
    ตรวจสอบพบหน้าจอ log in
ทดสอบ log in ไม่สำเร็จ โดยใส่ Username ไม่ถูกต้อง 
    #test step 
    กรอกข้อมูลโดยกรอก Username ผิด
    # expect output
    ตรวจสอบพบหน้าจอ log in
ทดสอบ log in ไม่สำเร็จ โดยใส่ Password ไม่ถูกต้อง
    #test step 
    กรอกข้อมูลโดยกรอก Password ผิด
    # expect output
    ตรวจสอบพบหน้าจอ log in