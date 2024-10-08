*** Settings ***
Library    SeleniumLibrary
Library    Process
# robotcode: ignore

*** Keywords ***
LogIn
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text    id:user    ${username}
    Input Text    id:pass    ${password}
    Sleep    2s
    Click Element    id:login-btn
    Wait Until Element Is Visible    xpath=//div[contains(@class,"style-scope ko-home")]    30s

Click Top Menu
    Wait Until Element Is Visible    //li[@class='style-scope ko-home']//a[@id='btn_shareme']    60s
    Click Element    xpath=//li[@class='style-scope ko-home']//a[@id='btn_shareme']

    Wait Until Element Is Visible    //li[@class='style-scope ko-home']//a[@id='btn_shareto']    60s
    Click Element    xpath=//li[@class='style-scope ko-home']//a[@id='btn_shareto']

    Wait Until Element Is Visible    //li[@class='style-scope ko-home']//a[@id='btn_sharerecent']    60s
    Click Element    xpath=//li[@class='style-scope ko-home']//a[@id='btn_sharerecent']

Click SideBar
    Wait Until Element Is Visible    id:collapse    30s
    Click Element    id:collapse
    
Go to Upload
    Wait Until Element Is Visible    id:myupload    30s
    Click Element    id:myupload
    Wait Until Element Is Visible    id:Uploadfile    40s
    Click Element    id:Uploadfile
    Sleep    20s
    # Wait Until Element Is Not Visible    xpath=//div[contains(@class="loading-panel opacity")]    30s
    Wait Until Element Is Visible    id=DocLv1    30s
    Select From List By Label  id=DocLv1  document
    Wait Until Element Is Visible    id=topicName    15s
    Scroll Element Into View    id=topicName
    Input Text  id=topicName  งบประมาณ
    Wait Until Element Is Visible    id=documentNumber    15s
    Scroll Element Into View    id=documentNumber
    Input Text  id=documentNumber  0002
    Wait Until Element Is Visible    id=dateDocument    15s
    Scroll Element Into View    id=dateDocument
    Input Text  id=dateDocument  30/09/2024
    Wait Until Element Is Visible    id=dateExpire   15s    
    Scroll Element Into View    id=dateExpire
    Input Text  id=dateExpire  01/10/2024
    Wait Until Element Is Visible    id=dateDocument    15s   

    Scroll Element Into View    xpath=//button[contains(text(), 'เพิ่มข้อมูล')]
    Click Element  xpath=//button[contains(text(), 'เพิ่มข้อมูล')]
    Scroll Element Into View    xpath=//button[contains(text(), 'อัปโหลด')]  
    Click Element   xpath=//button[contains(text(), 'อัปโหลด')]
    Sleep    10s

Go to Scan
    Wait Until Element Is Visible    id:myupload    30s
    Click Element    id:myupload
    Wait Until Element Is Visible    id:Uploadscan    30s
    Click Element    id:Uploadscan
    Sleep    20s


Go To DocumentDownload
    Sleep    5s
    Wait Until Element Is Visible    id:repo    30s
    Click Element    id:repo
    Sleep    5s
    Wait Until Element Is Visible    xpath=//label[text()='document']    30s
    Click Element    xpath=//label[text()='document']
    Sleep    5s
    Wait Until Element Is Visible    xpath=//a[contains(text(), 'ความรู้พื้นฐานเกี่ยวกับธุรกิจ.pdf')]    30s
    Click Element    xpath=//a[contains(text(), 'ความรู้พื้นฐานเกี่ยวกับธุรกิจ.pdf')]
    Sleep    10s
    Wait Until Element Is Visible    id=download    30s
    Click Element    id=download
    Sleep    10s


Go To DocumentComparison
    Sleep    10s
    Wait Until Element Is Visible    id:repo    30s
    Click Element    id:repo
    Sleep    5s
    Wait Until Element Is Visible    xpath=//label[text()='document']    30s
    Click Element    xpath=//label[text()='document']
    Sleep    5s
    Wait Until Element Is Visible    xpath=//a[contains(text(), 'ความรู้พื้นฐานเกี่ยวกับธุรกิจ.pdf')]    30s
    Click Element    xpath=//a[contains(text(), 'ความรู้พื้นฐานเกี่ยวกับธุรกิจ.pdf')]
    Sleep    10s
    Wait Until Element Is Visible    id=compare    30s
    Click Element    id=compare
    # Sleep    5s
    # Wait Until Element Exists    xpath=//div[@id='modal']    30s
    # Wait Until Element Is Visible    xpath=//div[@id='modal']    30s

    # รอให้ popup ปิดถ้ามี
    Wait Until Element Is Not Visible    xpath=//div[contains(@class, 'style-scope ko-treeview')]    timeout=10
    # รอจนกว่า label ที่ต้องการจะมองเห็น
    Wait Until Element Is Visible    xpath=//label[text()='AI Summary']    timeout=10
    Double Click Element    xpath=//label[text()='AI Summary']
    Sleep    5s
    Scroll Element Into View    xpath=//label[contains(text(), 'ทดสอบการนำเข้าข้อมูล')]
    Double Click Element  xpath=//label[contains(text(), 'ทดสอบการนำเข้าข้อมูล')]
    Sleep    5s
    Scroll Element Into View    xpath=//label[contains(text(), 'ขั้นตอนการเขียนโปรแกรม.pdf')]
    Click Element    xpath=//label[contains(text(), 'ขั้นตอนการเขียนโปรแกรม.pdf')]
    Sleep    5s
    # รอให้โหลดหน้าเว็บ
    # Scroll Element Into View    xpath=//footer[@class='modal-card-foot style-scope ko-dialog']//button[contains(text(), 'ยืนยัน')]

    # คลิกปุ่ม 'ยืนยัน'
    Click Element    xpath=(//div[@id='content']/footer/div/button)[9]
    # Click Element    xpath=//div[@class='modal-card-foot style-scope ko-dialog']//button[contains(text(), 'ยืนยัน')]



    Sleep    10s

Go To DocumentUpdate
    Sleep    10s
    Wait Until Element Is Visible    id:repo    30s
    Click Element    id:repo
    Sleep    5s
    Wait Until Element Is Visible    xpath=//label[text()='document']    30s
    Click Element    xpath=//label[text()='document']
    Sleep    5s
    Wait Until Element Is Visible    xpath=//a[contains(text(), 'รายงานผลการฝึกอบรมการใช้งาน สำนักงบประมาณ.pdf')]    30s
    Click Element    xpath=//a[contains(text(), 'รายงานผลการฝึกอบรมการใช้งาน สำนักงบประมาณ.pdf')]
    Sleep    10s
    Wait Until Element Is Visible    id=update    30s
    Click Element    id=update
    Sleep    10s  
    Choose File    locator=//input[@id='file']    file_path=C:/Users/ko/Documents/เอกสารสำหรับทดสอบ/(G4-3) จัดสรรงบประมาณ.pdf
    Sleep    5s
    # รอให้โหลดหน้าเว็บ
    Wait Until Element Is Visible    xpath=//button[contains(text(), 'Update')]
    # คลิกที่ปุ่ม "Update"
    Click Element    xpath=//button[contains(text(), 'Update')]
    Sleep    10s

Go To Document Letter to
    Sleep    10sSleep    10s
    Wait Until Element Is Visible    id:repo    30s
    Click Element    id:repo
    Sleep    5s
    Wait Until Element Is Visible    xpath=//label[text()='document']    30s
    Click Element    xpath=//label[text()='document']
    Sleep    5s
    Wait Until Element Is Visible    xpath=//a[contains(text(), 'รายงานผลการฝึกอบรมการใช้งาน สำนักงบประมาณ.pdf')]    30s
    Click Element    xpath=//a[contains(text(), 'รายงานผลการฝึกอบรมการใช้งาน สำนักงบประมาณ.pdf')]
    Sleep    10s
    Wait Until Element Is Visible    id=mailto    30s
    Click Element    id=mailto
    Sleep    10s
    Wait Until Element Is Visible    id=recipientmailto    15s
    Scroll Element Into View    id=recipientmailto
    Input Text    id=recipientmailto    User4@gmail.com
    Sleep    5s
    # รอให้โหลดหน้าเว็บ
    Wait Until Element Is Visible    xpath=//button[contains(text(), 'ส่ง')]
    # คลิกที่ปุ่ม "ส่ง"
    Click Element    xpath=//button[contains(text(), 'ส่ง')]
    Sleep    10s


Go to Document Move File
    Sleep    10s
    Wait Until Element Is Visible    id:repo    20s
    Click Element    id:repo
    Wait Until Element Is Visible    //label[text()='document']    30s
    Click Element    //label[text()='document'] 
    Wait Until Element Is Visible    //a[text()='export (2).pdf']    20s
    Click Element    //a[text()='export (2).pdf']
    Sleep    10s
    Click Element    xpath=//div[@id='moveto']   
    Wait Until Element Is Not Visible    xpath=//div[contains(@class, 'style-scope ko-treeview')]    timeout=10
    Wait Until Element Is Visible    //label[text()='document']    30s
    Sleep    5s
    Wait Until Element Is Visible    xpath=//div[@id='content']//ko-treeview[@id='treeview']//div[@title='document']/label    30s
    Sleep    2s
    Double Click Element    xpath=//div[@id='content']//ko-treeview[@id='treeview']//div[@title='document']/label
    Sleep    2s
    Click Element    xpath=//div[@id='content']//ko-treeview[@id='treeview']//div[@id='children']//div[@title='TestNo1']/label
    Click Element    xpath=(//div[@id='content']/footer/div/button)[9]
    Sleep    15s   

Go To Generate QR Code
    Sleep    10s
    Wait Until Element Is Visible    id:repo    20s
    Click Element    id:repo
    Wait Until Element Is Visible    //label[text()='document']    30s
    Click Element    //label[text()='document'] 
    Wait Until Element Is Visible    xpath=//tr[.//a[text()='export.pdf']]//input[@type='checkbox']    30s
    Click Element    xpath=//tr[contains(@class, 'table-body') and .//a[text()='export.pdf']]//input[@type='checkbox' and not(@disabled)]
    Sleep    5s
    Click Element    xpath=//div[@id='qrcode']   
    Wait Until Element Is Visible    //ko-dialog[@dialog-title='สร้าง QR Code']    30s
    Click Button    xpath=//button[text()='ถัดไป']
    Sleep    15s   


Go to Delete
    Sleep    10s
    Wait Until Element Is Visible    id:repo    20s
    Click Element    id:repo
    Wait Until Element Is Visible    //label[text()='document']    30s
    Click Element    //label[text()='document'] 
    wait Until Element Is Visible    xpath=//tr[.//a[text()='export.pdf']]//input[@type='checkbox']    30s
    Click Element    xpath=//tr[contains(@class, 'table-body') and .//a[text()='export.pdf']]//input[@type='checkbox' and not(@disabled)]
    Sleep    5s
    Click Element    xpath=//div[@id='delete']   
    Handle Alert    action=Accept 

Go to View All Detail
    Sleep    10s
    Wait Until Element Is Visible    id:repo    20s
    Click Element    id:repo
    Wait Until Element Is Visible    //label[text()='document']    30s
    Click Element    //label[text()='document'] 
    Wait Until Element Is Visible    xpath=//tr[.//a[text()='export.pdf']]//input[@type='checkbox']    30s 
    Sleep    3s   
    Click Element    xpath=//tr[contains(@class, 'table-body') and .//a[text()='export.pdf']]//input[@type='checkbox' and not(@disabled)]
    Sleep    5s
    Click Element    xpath=//div[@id='vieweallfile']
    Wait Until Element Is Visible   xpath=//iframe[@id='pdfjs']   30s
    Sleep    10s   

Go to Export ZIP
    Sleep    10s
    Wait Until Element Is Visible    id:repo    20s
    Click Element    id:repo
    Wait Until Element Is Visible    //label[text()='document']    30s
    Click Element    //label[text()='document'] 
    Wait Until Element Is Visible    xpath=//tr[.//a[text()='export.pdf']]//input[@type='checkbox']    30s 
    Sleep    3s   
    Click Element    xpath=//tr[contains(@class, 'table-body') and .//a[text()='export.pdf']]//input[@type='checkbox' and not(@disabled)]
    Sleep    5s
    Click Element    xpath=//div[@id='exportzip']
    Sleep    2s
    Start Process    ./Script/save.exe
    Sleep    10s   


Go to Edit PDF
    Sleep    10s
    Wait Until Element Is Visible    id:repo    20s
    Click Element    id:repo
    Wait Until Element Is Visible    //label[text()='document']    30s
    Click Element    //label[text()='document'] 
    Wait Until Element Is Visible    xpath=//tr[.//a[text()='Template.pdf']]//input[@type='checkbox']    30s 
    Sleep    3s   
    Click Element    xpath=//tr[contains(@class, 'table-body') and .//a[text()='Template.pdf']]//input[@type='checkbox' and not(@disabled)]
    Sleep    5s
    Click Element    xpath=//div[@id='checkout-and-edit']
    Sleep    2s
    Wait Until Page Contains Element    xpath=//iframe[contains(@src, 'https://demo-doc.ecm.in.th')]    60s
    Select Frame    xpath=//iframe[contains(@src, 'https://demo-doc.ecm.in.th')]
    Wait Until Element Is Not Visible    //app-loader    2m
    Wait Until Element Is Not Visible    //ngx-spinner    2m
    Wait Until Element Is Not Visible    //dialog[@class='dynamsoft-dwt-dialogProgress']    2m
    Wait Until Element Is Visible    xpath=//div[@id='page-content-wrapper']    2m
    Wait Until Element Is Not Visible    //app-loader    2m
    Choose File    //*[@id="uploadFileInput"]    C:/Users/User/Downloads/2024-08-30 10144933_หนังสือภายใน(บันทึกข้อความ).pdf 
    Wait Until Element Is Not Visible    //app-loader    2m   
    Wait Until Element Is Not Visible    //dialog[@class='dynamsoft-dwt-dialogProgress']    2m
    Wait Until Element Is Not Visible    //app-loader    2m   
    Click Element    //*[@id="scan-form"]/div/button/i
    Wait Until Element Is Not Visible    //app-loader    2m  
    Sleep    10s   