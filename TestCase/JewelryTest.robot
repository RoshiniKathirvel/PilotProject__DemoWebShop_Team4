*** Settings ***
Documentation    To validate Profile information
Library    SeleniumLibrary
Test Setup    Open the Browser with url
Task Teardown    Close Browser session
Resource    E:\\Project\\PilotProject__DemoWebShop_Team4\\Resources\\GenericResources.robot
Resource    E:\\Project\\PilotProject__DemoWebShop_Team4\\Resources\\JewelryResources.robot


*** Test Cases ***
Validate the jewelry functionality
    [Documentation]    This test case will validate the sort by functionality
    JewelryResources.Click the jewelry element
    JewelryResources.Check whether the jewelry is visible
    JewelryResources.Click the sort by dropdown button
    JewelryResources.Click A to Z option in the dropdown list
    JewelryResources.Verify whether Sorting Order in A to Z
    JewelryResources.Click the first product

Validate the jewelry functionality without filtering
    [Documentation]    This test case will validate that without sort by product
    JewelryResources.Click the jewelry element
    JewelryResources.Check whether the jewelry is visible
    JewelryResources.Click the first product
