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
Verifying for Privacy notice page
#Test case for privacy notice page
    [Tags]    smoketest
    To assert the Privacy notice page
    
*** Keywords ***
To assert the Privacy notice page
#keyword to click privacy notice option
    Run Keyword And Ignore Error    Informationmoduleresource.To click on privacy option
    
#keyword to check whether goes to privacy notice page or not
    Run Keyword And Ignore Error    Informationmoduleresource.To verify privacy page
