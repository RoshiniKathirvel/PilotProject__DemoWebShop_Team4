*** Settings ***
Documentation    To validate back in stock subscriptions
Library    SeleniumLibrary
Test Setup    Open the Browser with url
Test Teardown    Close Browser session
Resource    E:\\Project\\DemoWebShop\\Resources\\MyAccountResources.robot
Resource    E:\\Project\\DemoWebShop\\Resources\\GenericResources.robot

*** Test Cases ***
Validate the back in stock subscriptions
    MyAccountResources.Fill login email
    MyAccountResources.Click the back in stock subscriptions button
    MyAccountResources.Check whether Back in stock subscriptions is visible
