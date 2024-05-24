*** Settings ***
Documentation    A resource with reusable variables and keywords for contact us
Library    SeleniumLibrary

*** Variables ***
${facebook}    xpath=//a[text()='Facebook']
${twitter}    xpath=//a[text()='Twitter']
${rss}    xpath=//a[text()='RSS']
${youtube}    xpath=//a[text()='YouTube']
${google}    xpath=//a[text()='Google+']

*** Keywords ***
click for the facebook
    Click Link    ${facebook}

click for the twitter
    Click Link    ${twitter}

click for the rss
    Click Link    ${rss}

click for the youtube
    Click Link    ${youtube}

click for the google
    Click Link    ${google}