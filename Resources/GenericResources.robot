*** Settings ***
Documentation        A resource file with reusable variables and keywords
Library        SeleniumLibrary

*** Variables ***

${URL}    https://demowebshop.tricentis.com
${browser}    Chrome 
*** Keywords ***
open the browser
      Create Webdriver        ${browser_name}
      Go To     ${url}
      Maximize Browser Window
      Set Selenium Implicit Wait     5

close browser session
        Close Browser

*** Settings ***
Documentation        A resource file with reusable variables and keywords
Library        SeleniumLibrary

*** Variables ***

${URL}    https://demowebshop.tricentis.com
${browser}    Chrome 
*** Keywords ***

Open the Browser with url
    Create Webdriver    Chrome
    Go To     ${URL}    
    Maximize Browser Window
    Set Selenium Implicit Wait    5

Close Browser session
    Close Browser


Close Browser session
    Close Browser
