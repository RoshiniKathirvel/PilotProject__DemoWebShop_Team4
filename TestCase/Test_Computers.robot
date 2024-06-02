*** Settings ***
Documentation       Tests to validate Computer dropdowns
Library    SeleniumLibrary
Resource    ../Resources/GenericResources.robot
Test Setup       open the browser
Test Teardown    close browser session
Library     SeleniumLibrary
Test Setup      Open the Browser 
Test Teardown   Close Browser Session
Resource       ../Resources/GenericResources.robot
Resource       ../Resources/computer.robot


*** Test Cases ***
Select the Desktops from computers
    [Tags]    smoke 
    computer.Click the Desktops option


Select the Notebooks from computers
    [Tags]    reggression
    computer.Click the Notebooks option


Select the Accessories from computers
    [Tags]    smoke 
    computer.Click the Accessories option
