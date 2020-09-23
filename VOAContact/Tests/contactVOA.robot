*** Settings ***
Library    SeleniumLibrary    
Resource    ../Resources/resources.robot

Suite Setup    Open a browser
Suite Teardown    Close browsers


*** Variables ***
${contactForm}    Contact Form
${startNow}      Start now
${groupName}    value
${councilTaxId}    enquiryCategory.council_tax
${continue}    Continue
${councilTaxSub}    councilTaxSubcategory.council_tax_other
${firstname}    Testadmin
${lastname}    lastname    
${email}    admintest@abc.com
${phoneNumber}    07535432435
${idfn}    firstName
${idln}    lastName
${idemail}    email
${idphone}    contactNumber


*** Test Cases ***
Contact VOA
    Click contact VOA    ${contactForm}
   
Start Now
    Click contact VOA    ${startNow}
    
Council Tax
    Select Radio   ${groupName}    ${councilTaxId}      
    
SubmitContinue
     Submit      ${continue}  
     Click contact VOA     ${continue} 
     
Council Tax Sub
    Select Radio   ${groupName}    ${councilTaxSub}      
    Submit      ${continue}      

Enter Details
    Enter Text    ${idfn}    ${firstname}    
    Enter Text    ${idln}    ${lastname}
    Enter Text    ${idemail}    ${email}
    Enter Text    ${idphone}    ${phoneNumber}
    Submit      ${continue} 

    
