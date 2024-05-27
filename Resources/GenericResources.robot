*** Settings ***
Documentation        A resource file with reusable variables and keywords
Library        SeleniumLibrary

*** Variables ***

${URL}    https://demowebshop.tricentis.com
${browser}    Chrome 
*** Keywords ***
open the browser
      Create Webdriver        ${browser}
      Go To     ${url}
      Maximize Browser Window
      Set Selenium Implicit Wait     5

close browser session
        Close Browser

