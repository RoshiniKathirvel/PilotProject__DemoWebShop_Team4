*** Settings ***
Documentation    To validate editing customer address
Library    SeleniumLibrary
Test Setup    Open the Browser with url
Test Teardown    Close Browser session
Resource    E:\\Project\\DemoWebShop\\Resources\\MyAccountResources.robot
Resource    E:\\Project\\DemoWebShop\\Resources\\GenericResources.robot
Library    DataDriver    file=../TestData/Customer_Information.xlsx    sheet_name=Sheet1
Test Template    Validate that edit the customer address

*** Variables ***
${address}

*** Test Cases ***
Validate that edit the customer address
    ${_address}

*** Keywords ***
Validate that edit the customer address
    [Arguments]    ${_address}
    MyAccountResources.Fill login email
    MyAccountResources.Click the addresses button
    MyAccountResources.Click edit button in the address page
    MyAccountResources.Enter address1 in the address field    ${_address}
    MyAccountResources.Click save button
