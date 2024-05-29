'''
Test case for Book Module
@author: Jayasuriya P J(Expleo)
@date:24/05/2024
'''
*** Settings ***
Documentation    Test case for Bookmodule To remove the product from shopping cart
Resource    ../Resources/Genericresource.robot
Resource   ../Resources/bookmoduleresource.robot
Test Setup    Genericresource.Open a browser with url
Test Teardown    Genericresource.Close the browser

*** Test Cases ***
To remove the product from shopping cart
    [Tags]    Regressiontest
    To remove the product from the shopping cart

*** Keywords ***
To remove the product from the shopping cart
#keyword to click book option
    bookmoduleresource.To click book option

#keyword to click add to cart button
    bookmoduleresource.click on add to card button
