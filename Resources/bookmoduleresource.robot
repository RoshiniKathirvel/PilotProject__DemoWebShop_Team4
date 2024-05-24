'''
Resource page for Book module 
@Author- Jayasuriya P J(Expleo)
@Date-23/05/2024
'''
*** Settings ***
Documentation    Here contains keyword and variable for book moduleresource
Library    SeleniumLibrary
Library    Collections

*** Variables ***
#variables for Book module resource page
${book_l}    xpath:(//li/a)[5] 
${position_l}    id:products-orderby
${product_l}    xpath:(//h2/a)[1]
${view_l}    id:products-viewmode
${addtocard_l}    xpath:(//input[@class="button-2 product-box-add-to-cart-button"])[1]
${shopping_cardbutton_l}    xpath://span[text()="Shopping cart"]
${display_l}    id:products-pagesize
${pricefilter_l}    (//span[text()="50.00"])[2]
${actualprice_l}    xpath://span[@class="price actual-price"]
${removefilter_l}    xpath://a[text()="Remove Filter"]
${assertremove_l}    xpath:(//div/strong)[4]
${continueshoppint_l}    xpath://input[@class="button-2 continue-shopping-button"]
${verifyalert_l}    xpath://p[@class="content"]
${productitle_l}    xpath://h2[@class="product-title"]/a
${verify_shopping}    xpath://div[@class="page-title"]/h1
${asserting_product}    xpath://div/h1


*** Keywords ***
#Keyword to click book option
To click book option
    Click Link    ${book_l}

#Keyword to verifying navigation to book page
Verifiying in book page
    Element Text Should Be   ${book_l}    BOOKS

#click on product
click on product
    Click Link   ${product_l}

#click on shopping cart button
click on shopping cart button
    Scroll Element Into View    ${shopping_cardbutton_l}
    Click Element    ${shopping_cardbutton_l}

#click on display option 
click on display
    Select From List By Index   ${display_l}     0

#click on view option
click on view option
    Select From List By Index    ${view_l}    1

#click on sortby option
click on sortbyoption
    Select From List By Index    ${position_l}    1

#click on add to card button
click on add to card button
    Click Element   ${addtocard_l}

#click on filter button
click on filter button
    Click Element   ${pricefilter_l}

#click on remove filter
click on remove filter
    Click Element    ${removefilter_l}

#verify on shows product list
verify for showing product list
    Element Text Should Be     ${product_l}    Computing and Internet

#verify product added
verify product added in shopping cart
    Element Text Should Be    ${verifyalert_l}    ${EMPTY}  

Verify Sorting Functionality
    ${product_elements}=    Get WebElements    ${productitle_l}
    Log    ${product_elements}   # Check if product elements are retrieved

    # Wait for the elements to be present (if necessary)
    Wait Until Page Contains Element    ${productitle_l}

    ${product_titles}=    Create List
    FOR    ${product_title_text}    IN    @{product_elements}
        ${title_text}=    Get Text    ${product_title_text}
        Append To List    ${product_titles}    ${title_text}
    END
    ${sorted_titles}=    Copy List    ${product_titles}
    ${sorted_titles}=    Sort List    ${sorted_titles}
    Lists Should Be Equal    ${product_titles}    ${sorted_titles}

#count product and verify display limit
Count Products and Verify Display Limit
    ${product_count}=    Get Element Count    ${productitle_l}
    Should Be True    ${product_count} <= 4

Assert Filter Price Option Over 50
    Wait Until Page Contains Element    ${productitle_l}    10s    # Wait for products to be displayed with a timeout of 10 seconds
    @{product_elements}=    Get WebElements    ${actualprice_l}   # Get all product elements
    FOR    ${element}    IN    @{product_elements}
        ${price}=    Get Text    ${element}   # Get text of each product element
        Run Keyword If    '${price}' <= '$50.00'    Fail    Product price '${price}' is not over $50.00
    END

#Asserting remove filter option
Asserting remove filter option
    Element Text Should Be    ${pricefilter_l}    50.00

#Verifying shopping cart page
Asserting shopping cart page
    Element Text Should Be    ${verify_shopping}   Shopping cart  

Asserting product page
    Element Text Should Be    ${addtocard_l}     Computing and Internet 
