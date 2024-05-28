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
To verify display option
    [Tags]    smoketest
    To verify 4 books display by selecting 4 option in the field

*** Keywords ***
#keywords to select 4 option in field
To verify 4 books display by selecting 4 option in the field
    bookmoduleresource.To click book option
    bookmoduleresource.click on display
    bookmoduleresource.Count Products and Verify Display Limit

