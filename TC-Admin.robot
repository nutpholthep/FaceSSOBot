*** Settings ***
Library    SeleniumLibrary
Resource    ./Resource/Admin.robot
Suite Teardown    Close All Browsers

*** Variables ***
${URL}    
${UserName}    
${PassWord}    
${LANGUAGE}    --lang=th
${TIMEZONE}    --timezone=Asia/Bangkok

*** Test Cases ***

Admin Assign 
    [Documentation]    HR หางานให้ทำ
    User LogIn    Username=${UserName}    Password=${PassWord}    URL=${URL}
    HR Assign
    

HR Add To Worker
    [Documentation]    HR ใส่คุณในงาน
    User LogIn    Username=${UserName}    Password=${PassWord}    URL=${URL}
    Assign To Op
    