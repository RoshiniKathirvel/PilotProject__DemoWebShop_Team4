'''
Test case for Information Module
@author: Jayasuriya P J(Expleo)
@date:23/05/2024
'''
*** Settings ***
Documentation    Test case for sitemap page
Resource    E:\\EXPLEO\\Automation Project\\PilotProject__DemoWebShop_Team4\\Resources\\Genericresource.robot    
Resource    E:\\EXPLEO\\Automation Project\\PilotProject__DemoWebShop_Team4\\Resources\\Informationmoduleresource.robot
Test Setup    Genericresource.Open a browser with url
Test Teardown    Genericresource.Close the browser

*** Test Cases ***
#Test case for about us page
Verifying for about us page
    To assert the about us page
    
*** Keywords ***
To assert the about us page
    #keyword to click the about us page
    Informationmoduleresource.To click on condition option
    
    #keyword to check whether goes to appropriate page
    Informationmoduleresource.To verify condtion page