*** Settings ***
Documentation    To validate reward points
Library    SeleniumLibrary
Test Setup    Open the Browser with url
Test Teardown    Close Browser session
Resource    E:\\Project\\DemoWebShop\\Resources\\MyAccountResources.robot
Resource    E:\\Project\\DemoWebShop\\Resources\\GenericResources.robot

*** Test Cases ***
Validate the Reward points 
    MyAccountResources.Fill login email
    MyAccountResources.Click Reward points button
