'''
Test case for Book Module
@author: Jayasuriya P J(Expleo)
@date:24/05/2024
'''
*** Settings ***
Documentation    Test case for Bookmodule to verify view mode of product
Resource    ../Resources/Genericresource.robot
Resource   ../Resources/bookmoduleresource.robot
Test Setup    Genericresource.Open a browser with url
Test Teardown    Genericresource.Close the browser

*** Test Cases ***
To verify view mode of product
    [Tags]    smoketest
    To verify view mode of product in list format

*** Keywords ***
To verify view mode of product in list format
#keyword to click book
    bookmoduleresource.To click book option

#keyword to select view mode
    bookmoduleresource.click on view option
