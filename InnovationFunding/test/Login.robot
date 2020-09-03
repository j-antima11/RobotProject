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
    Set Browser Implicit Wait    2
    Login
    Sleep    3        
    Close Browser
    Log    This test is run by %{username}% on %{os}%
     

*** Variables ***
${URL}    https://apply-for-innovation-funding.service.gov.uk/  #Scalar
@{ID_PSWD}    testaccount@gmail.com    test123    #List
&{Key_Value}    username=testaccount@gmail.com    password=test123  #Dictionary

*** Keywords ***
Login
    Input Text    id=username    ${ID_PSWD}[0]
    Input Password    id=password    ${Key_Value}[password]
    Click Button    id=sign-in-cta