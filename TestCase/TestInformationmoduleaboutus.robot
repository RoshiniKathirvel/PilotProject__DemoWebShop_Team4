'''
Test case for Information Module
@author: Jayasuriya P J(Expleo)
@date:23/05/2024
'''
*** Settings ***
Documentation    Test case for sitemap page for Verifying for about us page
Resource    ../Resources/Genericresource.robot
Resource   ../Resources/Informationmoduleresource.robot
Test Setup    Genericresource.Open a browser with url
Test Teardown    Genericresource.Close the browser

*** Test Cases ***
#Test case for about us page
Verifying for about us page
    [Tags]    smoketest
    To assert the about us page
    
*** Keywords ***
To assert the about us page
    #keyword to click the about us page
   Run Keyword And Ignore Error     Informationmoduleresource.To click on condition option
    
    #keyword to check whether goes to appropriate page
   Run Keyword And Ignore Error     Informationmoduleresource.To verify condtion page