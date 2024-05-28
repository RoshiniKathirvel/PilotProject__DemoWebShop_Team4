
'''
Test case for Book Module
@author: Jayasuriya P J(Expleo)
@date:24/05/2024
'''
*** Settings ***
Documentation    Test case for Bookmodule
Resource    E:\\EXPLEO\\Automation Project\\PilotProject__DemoWebShop_Team4\\Resources\\Genericresource.robot    
Resource    E:\\EXPLEO\\Automation Project\\PilotProject__DemoWebShop_Team4\\Resources\\bookmoduleresource.robot
Test Setup    Genericresource.Open a browser with url
Test Teardown    Genericresource.Close the browser

*** Test Cases ***
# Test case for clicking product
To verify product page
    [Tags]    smoketest
    To click on product and verify it shows product details

*** Keywords ***
To click on product and verify it shows product details
    bookmoduleresource.To click book option
    bookmoduleresource.click on product
    bookmoduleresource.Asserting product page