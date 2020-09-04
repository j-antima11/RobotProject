*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${url}  https://apply-for-innovation-funding.service.gov.uk/  #Scalar
${browser}    Chrome

*** Keywords ***
Open a browser
    Open Browser  ${url}    ${browser}
    Maximize Browser Window
    
Close browsers
    Close All Browsers
    
Enter Email Address
    [Arguments]    ${email_id}
    Input Text    id=username    ${email_id}
    
Enter Password
    [Arguments]    ${password}
    Input Password    id=password    ${password}    
    
Click Sign In
    Click Button    id=sign-in-cta    
    
    
    
    