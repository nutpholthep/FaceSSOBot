*** Settings ***
Library    SeleniumLibrary
Resource    ./Resource/Resource.robot
*** Variables ***
${URL}   
${username}    
${password}    
${SEARCH_TERM}    ภาพคอกี
${BROWSER}    Chrome


*** Test Cases ***
Login
    [Documentation]    เข้าสู่ระบบ
    LogIn

Login And Click Top Menu
    [Documentation]    เลือกเมนูหน้าหลัก
    LogIn
    Click Top Menu
    Close Browser
  
ClickToUpload
    [Documentation]    เข้าหน้าอัปโหลด
    LogIn
    Click SideBar
    Go to Upload

  
ClickToScan
    [Documentation]    เข้าหน้าสแกน
    LogIn
    Click SideBar
    Go to Scan
    Close Browser

ClickToDocumentDownload
    [Documentation]    ระบบงานเอกสาร Download
    LogIn
    Click SideBar
    Go To DocumentDownload
    Close Browser

ClickToDocumentComparison
    [Documentation]    ระบบงานเอกสาร เปรียบเทียบเอกสาร
    LogIn
    Click SideBar
    Go To DocumentComparison
    Close Browser
    
ClickToDocumentUpdate
    [Documentation]    ระบบงานเอกสาร อัพเดท
    LogIn
    Click SideBar
    Go To DocumentUpdate
    Close Browser

ClickToDocument Letter to
    [Documentation]    ระบบงานเอกสาร จดหมายถึง
    LogIn
    Click SideBar
    Go To Document Letter to
    Close Browser

Click To MoveFile
    [Documentation]    ระบบงานเอกสาร ย้ายไฟล์
    LogIn
    Click SideBar
    Go to Document Move File
    Close Browser

Click to Generate QrCode
    [Documentation]    ระบบงานเอกสาร สร้างQrCode
    LogIn
    Click SideBar
    Go To Generate QR Code
    Close Browser
    
Click to Delete
    [Documentation]    ระบบงานเอกสาร ลบไฟล์
    LogIn
    Click SideBar
    Go to Delete
    Close Browser
