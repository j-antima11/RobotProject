*** Settings ***

Library    SeleniumLibrary

*** Variables ***

${url}  https://www.gov.uk/government/organisations/valuation-office-agency  #Scalar
${browser}    Chrome


*** Keywords ***

Open a browser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window 
    
Close browsers
    SeleniumLibrary.Close All Browsers
    
Click contact VOA
    [Arguments]    ${partialLink}
    Click Link    partiallink:${partialLink} 
    Sleep    2s   
    
Submit
    [Arguments]     ${continue}
    Click Button   ${continue}
    Sleep    2s
    
Select Radio
    [Arguments]      ${groupName}    ${councilTaxId}
    Select Radio Button    ${groupName}    ${councilTaxId}      
    Sleep    2s
    
Enter Text
    [Arguments]    ${id}     ${text}
    Input Text    id=${id}    ${text}
    Sleep   1s       