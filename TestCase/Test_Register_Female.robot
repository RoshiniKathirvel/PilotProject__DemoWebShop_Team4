*** Settings ***
Documentation        Test the invalid credentials to the login page
Library    SeleniumLibrary
Resource    ../Resources/GenericResources.robot
Resource    ../Resources/RegisterResources.robot
Test Setup    open the browser
Test Teardown    close browser session
Library    DataDriver    file=../TestData/Register_Data.xlsx    sheet_name=register
Test Template    Register test template

*** Variables ***
${firstname}  
${lastname}
${email}
${passw}
${confirm_pass}

*** Test Cases ***

Register fields    ${firstname}    ${lastname}    ${email}    ${passw}    ${confirm_pass}
    
*** Keywords ***
Register test template
    [Arguments]    ${firstname}    ${lastname}    ${email}    ${passw}    ${confirm_pass}
    RegisterResources.click the register list
    RegisterResources.Select the female radiobutton
    RegisterResources.Enter the value in the input field    ${firstname}    ${lastname}    ${email}    ${passw}    ${confirm_pass}
    RegisterResources.Click the register button
    RegisterResources.check for the success msg