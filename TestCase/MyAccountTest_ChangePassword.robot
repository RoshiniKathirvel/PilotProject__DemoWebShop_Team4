*** Settings ***
Documentation    To validate change password functionality
Library    SeleniumLibrary
Test Setup    Open the Browser with url
Test Teardown    Close Browser session
Resource    E:\\Project\\DemoWebShop\\Resources\\MyAccountResources.robot
Resource    E:\\Project\\DemoWebShop\\Resources\\GenericResources.robot


*** Test Cases ***
Validate the change password
    MyAccountResources.Fill login email
    MyAccountResources.Click change password button
    MyAccountResources.Check whether Change password is visible
    MyAccountResources.Enter old password in the old password field
    MyAccountResources.Enter new password in the new password field
    MyAccountResources.Enter confirm password in the confirm password field
    MyAccountResources.Click change password button
    MyAccountResources.Check whether Password was changed is visible
