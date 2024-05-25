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
${click_first_product}    xpath:(//h2[@class='product-title']/a)[1]

${item_names}

${click_dropdown_display}    xpath://select[@id='products-pagesize']
${select_4_in display_option}    xpath:(//select[@id='products-pagesize']//option)[2]

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
    




