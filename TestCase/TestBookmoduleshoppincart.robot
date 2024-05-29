'''
Test case for Book Module
@author: Jayasuriya P J(Expleo)
@date:24/05/2024
'''
*** Settings ***
Documentation    Test case for Bookmodule to verify add to cart button by login
Resource    ../Resources/Genericresource.robot
Resource   ../Resources/bookmoduleresource.robot
Test Setup    Genericresource.Open a browser with url
Test Teardown    Genericresource.Close the browser

*** Test Cases ***
To verify add to cart button by login
    [Tags]    Regressiontest
   To click login and add to card

*** Keywords ***
To click login and add to card
    bookmoduleresource.To click book option
    bookmoduleresource.click on add to card button