*** Settings ***
Documentation    A resource with reusable variables and keywords for contact us
Library    SeleniumLibrary

*** Variables ***
${facebook}    xpath=//a[text()='Facebook']
${twitter}    xpath=//a[text()='Twitter']
${rss}    xpath=//a[text()='RSS']
${youtube}    xpath=//a[text()='YouTube']
${google}    xpath=//a[text()='Google+']
${text_goog}    xpath=//div[@class='header-title']
${text_you}    xpath=//yt-dynamic-text-view-model[@class='dynamic-text-view-model-wiz page-header-view-model-wiz__page-header-title page-header-view-model-wiz__page-header-title--page-header-title-large']


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

verify the facebook page is open
    ${store}    Get Title  
    sleep     5s
    Should Be Equal As Strings       ${store}    NopCommerce 

verify the twitter page is open
    ${twit_stor}    Get Title
    Log To Console    ${twit_stor}
    Should Be Equal As Strings    ${twit_stor}    nopCommerce (@nopCommerce) / X

verify the youtube page is open
    ${you_store}    Get Title
    Log To Console    ${you_store}
    Should Be Equal As Strings    ${you_store}    nopCommerce - YouTube

verify the google page is open
    Element Text Should Be    ${text_goog}     Google Workspace Updates