*** Settings ***
Documentation    A resource file with reusable Keywords and variables
Library    SeleniumLibrary

*** Variables ***
${URL}    https://demowebshop.tricentis.com/customer/info
${browser}    Chrome 

*** Keywords ***
Open the Browser with url
    Create Webdriver    Chrome
    Go To     ${URL}    
    Maximize Browser Window
    Set Selenium Implicit Wait    5

Close Browser session
    Close Browser