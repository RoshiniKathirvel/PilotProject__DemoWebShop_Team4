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
To verify for removing filter price option 
    To verify remove filter option

*** Keywords ***
To verify remove filter option
#keyword for clicking book
    bookmoduleresource.To click book option
    
#keyword for clicking price filter
    bookmoduleresource.click on filter button

#keyword for clicking remove filter button
    bookmoduleresource.click on remove filter

#keyword to check filter option has removed
    bookmoduleresource.Asserting remove filter option
