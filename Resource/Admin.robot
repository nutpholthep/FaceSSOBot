# robotcode: ignore
*** Keywords ***
Open Chrome In Thai
    [Arguments]    ${URL}
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    ${LANGUAGE}
    Call Method    ${chrome_options}    add_argument    ${TIMEZONE}
    Create WebDriver    Chrome    options=${chrome_options}
    Go To    ${URL}
    # ตรวจสอบว่าภาษาและเวลาตั้งค่าแล้ว

User LogIn
    [Arguments]    ${Username}    ${Password}    ${URL}
    Open Chrome In Thai    ${URL}        
    Maximize Browser Window
    Input Text    name:username    ${Username}    
    Input Password    name:password    ${Password}
    Wait Until Element Is Visible    xpath=//button[@type='submit' and normalize-space(text())='เข้าสู่ระบบ']    30s
    Click Element   xpath=//button[@type='submit' and normalize-space(text())='เข้าสู่ระบบ']
    # Sleep    10s


HR Assign
    Wait Until Element Is Visible    //section[@class='content-body px-0 full-content']    30s
    Click Element    //i[@class='fas fa-bars']
    Click Element    //li[@ng-reflect-router-link='/report']
    Click Element    //div[@class='row']//div[@class='div-btn-icon'][1]/button
    Input Text    //input[@formcontrolname='EmpName']    ทดสอบสร้าง03
    Select From List By Index    //select[@formcontrolname='ProjectId']    1
    Select From List By Index    //select[@formcontrolname='ProjectTypeId']    2
    Select From List By Index    //select[@formcontrolname='ModuleId']    2
    Select From List By Index    //select[@formcontrolname='IssueTypeId']    5
    Select From List By Index    //select[@formcontrolname='ProblemTypeId']    1
    Select From List By Index    //select[@formcontrolname='Location']    1
    Select From List By Index    //select[@formcontrolname='NotificationChannelId']    1
    Select From List By Index    //select[@formcontrolname='PriorityProblemId']    2
    Input Text    //textarea[@formcontrolname='Description']    ทดสอบๆ03    
    Input Text    //textarea[@formcontrolname='IssueMesse']    ทดสอบๆ03
    Click Element    //i[@class='fa fa-paperclip']
    Wait Until Element Is Visible    //input[@id='file']    10s
    Choose File    //input[@id='file']    C:/Users/User/Downloads/export (2).pdf
    Click Element    //button[@type='button' and normalize-space(text())='บันทึก']
    Click Element    //button[@type='submit' and normalize-space(text())='บันทึก']
    Sleep    3s
    Click Element    //button[text()='Ok']
    


Assign To Op
     Wait Until Element Is Visible    //section[@class='content-body px-0 full-content']    30s
    Click Element    //i[@class='fas fa-bars']
    Click Element    //i[@class='fas fa-tasks']
    Wait Until Element Is Visible    //div[@class='container col-12']    30s
    Click Element    //tbody/tr[1]//button[text()='จัดการปัญหา']
    Click Element    //button[contains(.,'เพิ่มผู้รับผิดชอบ')]
     Wait Until Element Is Visible    //div[@class='modal-body']    30s
    Select From List By Index    //select[@class="form-control"]    1
    Wait Until Element Is Visible    xpath=//div[text()='ผู้รับผิดชอบ']/following-sibling::div/select    30s
    Select From List By Index    xpath=//div[text()='ผู้รับผิดชอบ']/following-sibling::div/select    11 
    # Input Text    xpath=//div[text()='วันที่เริ่ม']/following-sibling::div/input    2024-10-03T13:37
    # Input Text    xpath=//div[text()='วันที่เริ่ม']/following-sibling::div/input    03/10/2024 14:55
    Input Text    xpath=//div[text()='วันที่เริ่ม']/following-sibling::div/input    03/10/2024 
    Input Text    xpath=//div[text()='วันที่สิ้นสุด']/following-sibling::div/input    03/10/2024 
    Sleep    8s
    Click Element    xpath=//button[text()='คำนวณ']
    Select From List By Index    xpath=//div[text()='การติดตามงาน']/following-sibling::div/select    1
    Input Text    xpath=//textarea[@rows='3']    -
    Click Element    xpath=//button[text()='ส่งต่อ']
    Sleep    20s
    