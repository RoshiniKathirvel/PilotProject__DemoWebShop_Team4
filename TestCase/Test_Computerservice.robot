*** Settings ***
Documentation       Tests to validate Computer service
Library    SeleniumLibrary
Resource    ../Resources/GenericResources.robot
Test Setup       open the browser
Test Teardown    close browser session
Resource       ../Resources/computer.robot
Resource       ../Resources/ComputerService.robot

*** Test Cases ***
Validate Search Field
    ComputerService.Click the Search field
    ComputerService.Enter the product 
    ComputerService.Click Search Button
    ComputerService.Enter product in search keyword
    ComputerService.Select the checkbox options Advance Search
    ComputerService.Fill the details of Advance Search
    ComputerService.Click search 
    ComputerService.List the Computers
Validate for news field
    ComputerService.click the news field
    ComputerService.click details in news
    ComputerService.Fill the title
    ComputerService.Fill the Comment
    ComputerService.Click new comment
Validate the blog field
    ComputerService.Click the blog field
    ComputerService.Blog Title
    ComputerService.Blog Links
Validate recently viewed products
    ComputerService.Validate Recently viewed products
Validate for compare product list
    ComputerService.Validate for comparing product
Validate for new product list
    ComputerService.Validate for new products
Validate for empty search
    ComputerService.Validate for empty search product
Validate for minimum search
    ComputerService.Click the Search field
    ComputerService.Enter the product for minimum 
    ComputerService.Click Search Button
    ComputerService.Assert for minimum search
Validate for the invalid search
    [Tags]    smoke
    ComputerService.Click the Search field
    ComputerService.Enter the product for invalid 
    ComputerService.Click Search Button
    ComputerService.Assert for invalid search
Documentation     A computer files with the submenu with it
Library           SeleniumLibrary
Test Setup      Open the Browser 
Test Teardown   Close Browser Session
Resource       ../Resources/GenericResources.robot
Resource       ../Resources/ComputerService.robot

*** Variables ***
${search}    css:div[class='column customer-service'] a[href='/search']
${input_search}    css:input[name='q']
${search_button}    css:input[type='submit']
${product_list}    xpath://div[@class="product-grid"]//div[@class="item-box"]
${search_assert}    xpath://strong[@class='warning']
${input_search}   xpath:text = xpath://input[@id='Q']
${news}           css:a[href='/news']
${news_assert}    xpath://div[@class='page-title']//child::h1
${blogs}         css:a[href='/blog']
${blog_assert}   xpath://div[@class='page-title']//child::h1
${blog_title}    xpath://a[text()='Customer Service - Client Service']
${blog_link}    xpath://div[@class='page-title']//child::h1
${compare_product}    xpath://a[text()='Compare products list'] 
${compare_assert}    xpath://div[@class='page-title']//child::h1   
${RECENTLY_VIEWED_LINK}       //a[@href='/recentlyviewedproducts']
${recently_viewed_assert}    //div[@class='page-title']//child::h1
${new_products}    xpath://a[text()='New products']
${new_products_assert}    xpath://div[@class='page-title']//child::h1
${button_empty_search}    xpath://input[@value='Search']
${warning_minimum}          xpath://div[@class='search-results']//child::strong
${warning_invalid}        xpath://strong[@class='result']
${log_out_button}         xpath://a[@class='ico-logout']
${logout_assert}          xpath://a[@class='ico-register']

*** Keywords ***
Click the Search field
    Run Keyword And Ignore Error    Click Link    ${search}

Enter the product
    Run Keyword And Ignore Error    Input Text    ${input_search}    computer

Click Search Button
    Run Keyword And Ignore Error    Click Element    ${search_button}

Enter product in search keyword
    Run Keyword And Ignore Error    Input Text    css:input[class='search-text']   computer

Select the checkbox options Advance Search
    Run Keyword And Ignore Error    Select Checkbox    id:As
    Run Keyword And Ignore Error    Checkbox Should Be Selected    id:As

Fill the details of Advance Search
    Run Keyword And Ignore Error    Select From List By Value    id:Cid    2
    Run Keyword And Ignore Error    Select Checkbox    id:Isc
    Run Keyword And Ignore Error    Select From List By Value    id:Mid    0
    Run Keyword And Ignore Error    Input Text    css:input[class='price-from']    500
    Run Keyword And Ignore Error    Input Text    css:input[class='price-to']    2000

Click search 
    Run Keyword And Ignore Error    Click button    css:input[class='button-1 search-button']

List the Computers 
    ${count}    Run Keyword And Ignore Error    Get Element Count    ${product_list}
    Run Keyword And Ignore Error    Should Be Equal As Integers     ${count}    4

Clear text for search
    Run Keyword And Ignore Error   Clear Element Text    ${input_search}

Error for empty search
    Run Keyword And Ignore Error    Wait Until Element Is Enabled    ${search_assert}
    Run Keyword And Ignore Error    Should Contain    ${search_assert}      Search term minimum length is 3 characters
                      
click the news field
    Run Keyword And Ignore Error    Click Link    ${news}
    Run Keyword And Ignore Error    Element Text Should Be     ${news_assert}    News

click details in news
    Run Keyword And Ignore Error   Click Link    //a[normalize-space()='details' and @href='/new-online-store-is-open']

Fill the title
    Run Keyword And Ignore Error    Input Text    //input[@id='AddNewComment_CommentTitle']    hai

Fill the Comment
    Run Keyword And Ignore Error     Input Text     //textarea[@id='AddNewComment_CommentText']      I love red color,yercaurd and my home

Click new comment
    Run Keyword And Ignore Error    Click Element    //input[@class='button-1 news-item-add-comment-button'] 

Click the blog field
    Run Keyword And Ignore Error    Click Link    ${blogs}
    Run Keyword And Ignore Error    Element Text Should Be    ${blog_assert}    Blog

Blog Title 
    Run Keyword And Ignore Error    Element Text Should Be    ${blog_title}    Customer Service - Client Service

Blog Links
    Run Keyword And Ignore Error    Click Link    //ul[@class='tags']//a[text()='e-commerce']
    Run Keyword And Ignore Error    Element Text Should Be     ${blog_link}     Blog posts tagged with 'e-commerce'

Validate Recently viewed products
    Run Keyword And Ignore Error     Click Link    ${RECENTLY_VIEWED_LINK}
    Run Keyword And Ignore Error     Element Text Should Be   ${recently_viewed_assert}    Recently viewed products

Validate for comparing product
    Run Keyword And Ignore Error    Click Link    ${compare_product}
    Run Keyword And Ignore Error    Element Text Should Be    ${compare_assert}     Compare products

Validate for new products
    Run Keyword And Ignore Error    Click Link    ${new_products}
    Run Keyword And Ignore Error    Element Text Should Be    ${new_products_assert}    New products

Validate for empty search product
    Run Keyword And Ignore Error    Click Button  ${button_empty_search} 
    Run Keyword And Ignore Error    Alert Should Be Present    

Enter the product for minimum
    Run Keyword And Ignore Error    Input Text    ${input_search}    12 

Assert for minimum search
    Run Keyword And Ignore Error    Element Text Should Be    ${warning_minimum}   Search term minimum length is 3 characters

Enter the product for invalid 
    Run Keyword And Ignore Error    Input Text    ${input_search}    chocho         

Assert for invalid search  
    Run Keyword And Ignore Error     Element Text Should Be    ${warning_invalid}     No products were found that matched your criteria.
