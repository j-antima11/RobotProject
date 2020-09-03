*** Settings ***
Library    SeleniumLibrary    

Suite Setup   Log    I am in Test Suite setup 
Suite Teardown    Log    I am in Test Suite teardown
Test Setup    Log    I am in Test Case setup
Test Teardown    Log    I am in Test Case teardown

Default Tags    LoginCheck

*** Test Cases ***
LoginTest
    [Tags]    NegativeTest
    Open Browser    ${URL}     Chrome
    Maximize Browser Window
    Set Browser Implicit Wait    2
    Login
    Sleep    5        
    Close Browser
    Log    This test is run by %{username}% on %{os}%

*** Variables ***
${URL}    https://apply-for-innovation-funding.service.gov.uk/  #Scalar
@{ID}    testaccount@gmail.com    aba@yahoo.com     #List 
@{PSWD}    test1234    abc123    #list
&{Key_Value}    username=testaccount@gmail.com    password=test1234  #Dictionary

*** Keywords ***
Login
    Input Text    id=username    ${ID}[0]
    Input Password    id=password    ${Key_Value}[password]
    Click Button    id=sign-in-cta