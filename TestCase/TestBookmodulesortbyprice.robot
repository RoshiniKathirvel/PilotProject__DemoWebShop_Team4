'''
Test case for Book Module
@author: Jayasuriya P J(Expleo)
@date:26/05/2024
'''
*** Settings ***
Documentation    Test case for Bookmodule
Resource    E:\\EXPLEO\\Automation Project\\PilotProject__DemoWebShop_Team4\\Resources\\Genericresource.robot    
Resource    E:\\EXPLEO\\Automation Project\\PilotProject__DemoWebShop_Team4\\Resources\\bookmoduleresource.robot
Test Setup    Genericresource.Open a browser with url
Test Teardown    Genericresource.Close the browser

*** Test Cases ***
To verify sort the product by price
    [Tags]    Regressiontest
    To sort the product by low to high price option

*** Keywords ***
To sort the product by low to high price option
    #To click book option
    bookmoduleresource.To click book option
    bookmoduleresource.click on sortbypricelowtohighoption
    