*** Settings ***
Documentation    To validate Profile information
Library    SeleniumLibrary
Test Setup    Open the Browser with url
Task Teardown    Close Browser session
Resource    E:\\Project\\PilotProject__DemoWebShop_Team4\\Resources\\MyAccountResources.robot
Resource    E:\\Project\\PilotProject__DemoWebShop_Team4\\Resources\\GenericResources.robot
Library    DataDriver    file=../TestData/Customer_Information.xlsx     sheet_name=Sheet1
Test Template    Validate the MyAccount information


   

*** Variables ***
${firstname}    
${lastname}
${email}
${company}
${city}
${address}
${zip}
${phone}

*** Test Cases ***
Profile test template
    Validate the MyAccount information    ${firstname}    ${lastname}    ${email}
    Validate Customer Address    ${firstname}    ${lastname}    ${email}    ${company}    ${city}    ${address}    ${zip}    ${phone}
    Validate that edit the customer address    ${_address}
    Validate the order
    Validate the back in stock subscriptions
    Validate the Reward points 



*** Keywords ***

Validate the MyAccount information                                           #positive
    [Documentation]    This test case will validate the customer info
    [arguments]    ${_firstname}    ${_lastname}    ${_email}
    MyAccountResources.Fill login email
    MyAccountResources.Click the gender in checkbox field
    MyAccountResources.Enter first name in the firstname field    ${_firstname}
    MyAccountResources.Enter last name in the lastname field    ${_lastname}
    MyAccountResources.Enter email id in the email field    ${_email}
    MyAccountResources.Click save button

#Validate invalid the MyAccount information                                           #negative
    #[Documentation]    This test case will validate the customer info
    #MyAccountResources.Fill login email
    #MyAccountResources.Click the gender in checkbox field
    #MyAccountResources.Enter first name in the firstname field    ${firstname}
    #MyAccountResources.Enter email id in the email field    ${lastname}
    #MyAccountResources.Click save button


Validate the customer address
    [Documentation]    This test case will validate the customer address
    MyAccountResources.Fill login email
    MyAccountResources.Click the addresses button
    MyAccountResources.Click new address button in the address page
    MyAccountResources.Check whether the Add new address are visible
    [arguments]    ${_firstname}    ${_lastname}    ${_email}    ${_company}    ${_city}    ${_address}    ${_zip}    ${_phone}
    MyAccountResources.Enter first name in the firstname field    ${_firstname}
    MyAccountResources.Enter last name in the lastname field    ${_lastname}
    MyAccountResources.Enter email id in the email field    ${_email}
    MyAccountResources.Click company in the company field    ${_company}
    MyAccountResources.Click country in the dropdown 
    MyAccountResources.Select country in the dropdown
    MyAccountResources.Enter city in the city text field    ${_city}
    MyAccountResources.Enter address1 in the address field    ${_address}
    MyAccountResources.Enter zip or postal number in the field    ${_zip}
    MyAccountResources.Enter phone number in the phonenumber field    ${_phone}
    MyAccountResources.Click save button

Validate that edit the customer address
    [arguments]    ${_address}
    MyAccountResources.Fill login email
    MyAccountResources.Click the addresses button
    MyAccountResources.Click edit button in the address page
    MyAccountResources.Enter address1 in the address field    ${_address}
    MyAccountResources.Click save button





Validate the order
    MyAccountResources.Fill login email
    MyAccountResources.Click the order button
    MyAccountResources.Check Whether the No orders is visible





Validate the back in stock subscriptions
    MyAccountResources.Fill login email
    MyAccountResources.Click the back in stock subscriptions button
    MyAccountResources.Check Whether the You are not currently subscribed to any Back In Stock notification lists is visible





Validate the Reward points 
    MyAccountResources.Fill login email
    MyAccountResources.Click Reward points button
    MyAccountResources.Check whether Reward points are visible




Validate the change password
    MyAccountResources.Click change password button
    MyAccountResources.Check whether Change password are visible
    MyAccountResources.Enter old password in the old password field
    MyAccountResources.Enter new password in the new password field
    MyAccountResources.Enter confirm password in the confirm password field
    MyAccountResources.Click change password button
    MyAccountResources.Check whether Password was changed are visible                                #myaccounttest.robot