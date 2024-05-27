'''
Test case for Information Module
@author: Jayasuriya P J(Expleo)
@date:23/05/2024
'''
*** Settings ***
Documentation    Test case for sitemap page
Resource    E:\\EXPLEO\\Automation Project\\PilotProject__DemoWebShop_Team4\\Resources\\Genericresource.robot    
Resource    E:\\EXPLEO\\Automation Project\\PilotProject__DemoWebShop_Team4\\Resources\\Informationmoduleresource.robot
Resource    E:\\EXPLEO\\Automation Project\\PilotProject__DemoWebShop_Team4\\Resources\\bookmoduleresource.robot
Test Setup    Genericresource.Open a browser with url
Test Teardown    Genericresource.Close the browser

*** Test Cases ***
Verifying for site map page'
#Test case for sitemap page
    To assert the site map page
    
*** Keywords ***
To assert the site map page
#Keyword to click sitemap option
    Informationmoduleresource.To click on sitemap option

#Keyword to verify whether navigated to sitemap page
    Informationmoduleresource.To verify sitepage

#Keyword to click Book option in sitemap page
    bookmoduleresource.To click book option

#Keyword to verify navigates to book page from sitemap page
    bookmoduleresource.To click book option
    
    
    