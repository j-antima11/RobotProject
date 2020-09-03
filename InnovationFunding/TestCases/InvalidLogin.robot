*** Settings ***
Library    SeleniumLibrary    
Resource    ../Resources/Login_resources.robot

Suite Setup    Open a browser
Suite Teardown    Close browsers
Test Template    Invalid Login

*** Test Cases ***    

Incorrect email_id and password   testaccount@gmail.com   test1234
Incorrect email_id and empty password    aba@yahoo.com    ${EMPTY}
Empty email_id and wrong password    ${EMPTY}    abc123
Empty email_id and password    ${EMPTY}    ${EMPTY}    
 

*** Keywords ***

Invalid Login
    [Arguments]    ${email_id}    ${password}     
    Enter Email Address    ${email_id}
    Enter Password    ${password}
    Click Sign In
    Sleep    2  
