'''
Test case for Information Module
@author: Jayasuriya P J(Expleo)
@date:23/05/2024
'''
*** Settings ***
Documentation    Test case to click shipping and return page
Resource    E:\\EXPLEO\\Automation Project\\PilotProject__DemoWebShop_Team4\\Resources\\Genericresource.robot    
Resource    E:\\EXPLEO\\Automation Project\\PilotProject__DemoWebShop_Team4\\Resources\\Informationmoduleresource.robot
Test Setup    Genericresource.Open a browser with url
Test Teardown    Genericresource.Close the browser

*** Test Cases ***
Verifying for shipping and return page
#Test case for shipping page
    [Tags]    smoketest
    To assert the shipping and return page
    
*** Keywords ***
To assert the shipping and return page
#keyword to click shipping page
    
    Run Keyword And Ignore Error    Informationmoduleresource.To click on shipping option
    
#keyword to check whether shipping page has navigated
    Run Keyword And Ignore Error    Informationmoduleresource.To verify shipping page
