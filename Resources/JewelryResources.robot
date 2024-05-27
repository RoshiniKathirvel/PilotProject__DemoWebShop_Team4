*** Settings ***
Documentation    To validate MyAccount
Library    SeleniumLibrary
Library  Collections

*** Variables ***
${jewelry_button}    xpath:(//a[@href='/jewelry'])[1]
${visible_jewelry}    xpath://div[@class='page-title']//h1
${click_dropdown}    xpath://select[@id='products-orderby']
${click_A_to_Z_product}    xpath:(//select[@id='products-orderby']//option)[2]
#${product_sorted_list}    xpath://div[@class='item-box']//h2[@class='product-title']/a
${visible_product}    xpath://h2[@class='product-title']/a
${click_first_product}    xpath://h2[@class='product-title']/a

${item_names}

${click_dropdown_display}    xpath://select[@id='products-pagesize']
${select_4_in display_option}    xpath:(//select[@id='products-pagesize']//option)[2]

${move_next_element_visible}    xpath://a[text()='Next']
${click_previous}    xpath://a[text()='Previous']

${click_view_as}    xpath://select[@id='products-viewmode']
${select_view_as}    xpath://select[@id='products-viewmode']/option[text()='List']
${list_visible}    xpath://div[contains(@class, 'product-list')]


${click_low_to_high}    xpath:(//select[@id='products-orderby']//option)[4]
${click_product_inLowToHigh}    xpath://a[text()='Black & White Diamond Heart']
${click_add_to_cart}    xpath://input[@id='add-to-cart-button-14']
${click_shopping_cart}    xpath://span[text()='Shopping cart']
${add_to_cart_notifi}    xpath://p[@class='content']

${click_first_range_price}    xpath://a[contains(@href, 'price=0-500')]

*** Keywords ***

Click the jewelry element
    Click Element    ${jewelry_button}

Check whether the jewelry is visible
    Element Text Should Be    ${visible_jewelry}    Jewelry

Click the sort by dropdown button
    Click Element    ${click_dropdown}

Click A to Z option in the dropdown list
    Click Element    ${click_A_to_Z_product}


#Verify Sorting Order A to Z
    #${item_names}=    get text    xpath=//div[@class='item-box']//h2[@class='product-title']/a
    #${sorted_item_names}=  Copy List  ${item_names}
    #${sorted_item_names}=  Sort List  ${sorted_item_names}
    #Should Be Equal  ${item_names}  ${sorted_item_names}

#Verify whether Sorting Order in A to D
    #${item_names}=    Get Text    ${product_sorted_list}
    #${first_letters}=    Evaluate    [item[0] for item in $item_names]
    #Should Contain Any    A    ${first_letters}
    #Should Contain Any    B    ${first_letters}
    #Should Contain Any    C    ${first_letters}
    #Should Contain Any    D    ${first_letters}

Verify whether Sorting Order in A to Z
    Element Should Be Visible    ${visible_product}    Black & White Diamond Heart

Click the first product
    Click Element    ${click_first_product}



Click dropdown display
    Click Element    ${click_dropdown_display}

Select the option in the display dropdown
    Click Element    ${select_4_in display_option}

Check whether move next element are visible
    Element Text Should Be    ${move_next_element_visible}    //a[text()='Next']

Click next element
    Click Element    ${move_next_element_visible}

Click previous element
    Click Element    ${click_previous}

Click view as option
    Click Element    ${click_view_as}

Select list in the view as option
    Click Element    ${select_view_as}

Check whether product are listed in one by one
    Element Should Be Visible    ${list_visible}

Click low to high option in the dropdown list
    Click Element    ${click_low_to_high}

Click second product in low to high
    Click Link    ${click_product_inLowToHigh}

Click add to cart button
    Click Element    ${click_add_to_cart}

Click shopping cart in top
    Click Element    ${click_shopping_cart}

Check whether selected product in cart
    Element Text Should Be    ${add_to_cart_notifi}    The product has been added to your shopping cart

Click between 0 to 500 range
    Click Link    ${click_first_range_price}




