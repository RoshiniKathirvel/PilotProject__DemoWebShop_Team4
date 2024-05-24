*** Settings ***
Documentation        A resource file with reusable variables and keywords
Library        SeleniumLibrary

*** Variables ***
${url}    https://demowebshop.tricentis.com/
${browser_name}    Chrome

*** Keywords ***

open the browser
      Create Webdriver        ${browser_name}
      Go To     ${url}
      Maximize Browser Window
      Set Selenium Implicit Wait     5

close browser session
        Close Browser


