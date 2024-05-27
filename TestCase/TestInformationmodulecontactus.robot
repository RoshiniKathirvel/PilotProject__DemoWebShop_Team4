'''
Test case for Information Module
@author: Jayasuriya P J(Expleo)
@date:23/05/2024
'''
*** Settings ***
Documentation    Test case for sitemap page
Library    SeleniumLibrary
Resource    E:\\EXPLEO\\Automation Project\\PilotProject__DemoWebShop_Team4\\Resources\\Genericresource.robot    
Resource    E:\\EXPLEO\\Automation Project\\PilotProject__DemoWebShop_Team4\\Resources\\Informationmoduleresource.robot
Test Setup    Genericresource.Open a browser with url
Test Teardown    Genericresource.Close the browser

*** Test Cases ***
#Test case for contact us page
Verifying for contact us page
    To assert the contact us page
    
*** Keywords ***
To assert the contact us page
    #keyword to click the contact us page
    Informationmoduleresource.To click on condition option
    
    #keyword to check whether goes to appropriate page
    Informationmoduleresource.To verify condtion page