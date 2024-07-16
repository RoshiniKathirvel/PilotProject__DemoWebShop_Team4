*** Settings ***
Documentation    To validate order information
Library    SeleniumLibrary
Test Setup    Open the Browser with url
Test Teardown    Close Browser session
Resource    E:\\Project\\DemoWebShop\\Resources\\MyAccountResources.robot
Resource    E:\\Project\\DemoWebShop\\Resources\\GenericResources.robot

*** Variables ***

*** Test Cases ***
Validate the order
    MyAccountResources.Fill login email
    MyAccountResources.Click order button
