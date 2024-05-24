*** Settings ***
Documentation     Test the link available in the page
Library    SeleniumLibrary
Resource    ../Resources/ContactResources.robot
Resource    ../Resources/GenericResources.robot
Test Setup    open the browser
Test Teardown    close browser session

*** Test Cases ***
Click the facebook link
    ContactResources.click for the facebook
    Switch Window     new

Click the twitter link
    ContactResources.click for the twitter
    Switch Window    new

Click the Rss link
    ContactResources.click for the rss

Click the youtube link
    ContactResources.click for the youtube
    Switch Window    new

Click the google link
    ContactResources.click for the google
    Switch Window    new

