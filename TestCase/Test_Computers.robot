*** Settings ***
Documentation       Tests to validate Computer dropdowns
Library    SeleniumLibrary
Test Setup       open the browser
Test Teardown    close browser session
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
