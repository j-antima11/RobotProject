*** Settings ***
Library    SeleniumLibrary  
Library    DataDriver   ../TestData/loginData.xlsx    sheet_name=loginData   
Resource    ../Resources/Login_resources.robot
Test Template    LoginTest  

Suite Setup    Open a browser
Suite Teardown    Close browsers


*** Test Cases ***    

Login Test    Default     Default      

*** Keywords ***

LoginTest
    [Arguments]    ${email_id}    ${password}     
    Enter Email Address    ${email_id}
    Enter Password    ${password}
    Click Sign In
    Sleep    2  
