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
To remove the product from shopping cart
    To remove the product from the shopping cart

*** Keywords ***
To remove the product from the shopping cart
#keyword to click book option
    bookmoduleresource.To click book option

#keyword to click add to cart button
    bookmoduleresource.click on add to card button

#keyword to click shopping card
    bookmoduleresource.click on shopping cart button