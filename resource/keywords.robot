*** Settings ***
Library    RPA.Browser
Variables    variables.py
*** Keywords ***
เปิดบราวเซอร์ 
  Open Available Browser  ${URL}
  Set Selenium Speed    0.3
  Sleep    3
ปิดบราวเซอร์ 
  Close All Browsers
  Sleep    2 

ตรวจสอบพบช่องกรอก Username
    Element Should Be Visible    ${LOCATER_USERNAME}
ตรวจสอบพบช่องกรอก Password
    Element Should Be Visible    ${LOCATER_PASSWORD}
ตรวจสอบพบปุ่มกด submit
    Element Should Be Visible    ${BTN_SUBMIT}
ตรวจสอบพบปุ่มกด register
    Element Should Be Visible    ${BTN_REGISTER}
แสดงรายการช่องกรอกข้อมูลครบถ้วน 
    ตรวจสอบพบช่องกรอก Username
    ตรวจสอบพบช่องกรอก Password
    ตรวจสอบพบปุ่มกด submit
    ตรวจสอบพบปุ่มกด register

กรอกข้อมูล user test log in
  Clear Element Text    //*[@id="username"]   
  Input Text    ${LOCATER_USERNAME}    ${TXT_USERNAME}
  Input Text    ${LOCATER_PASSWORD}    ${TXT_PASSWORD}
กดปุ่มเพื่อ log in 
  Click Element    ${BTN_SUBMIT}

กดปุ่มเพื่อ register
  Click Element    //html/body/div/form[2]/input 

เปิดบราวเซอร์และlog in
  เปิดบราวเซอร์
  แสดงรายการช่องกรอกข้อมูลครบถ้วน   
  กรอกข้อมูล user test log in
  กดปุ่มเพื่อ log in 

เปิดบราวเซอร์และRegister
  เปิดบราวเซอร์ 
  กดปุ่มเพื่อ register


 
    