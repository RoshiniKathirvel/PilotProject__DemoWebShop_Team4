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
#Test case to click product and select add to cart option
To click product and select add to cart option
    To click on book option
    To verify shows book details
    To select add to cart
    To verify product added

*** Keywords ***
#Keyword to click on book
To click on book option
    bookmoduleresource.To click book option

#Keyword to verify book page
To verify shows book details
    bookmoduleresource.Verifiying in book page

#Keyword to click on product
To click on product
    bookmoduleresource.click on product

#Keyword to select all to cart button
To select add to cart
    bookmoduleresource.click on add to card button

#Keyword to verify product added
To verify product added
    bookmoduleresource.verify product added in shopping cart
