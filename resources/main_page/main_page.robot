***Settings***

Library    SeleniumLibrary
Variables    main_page_locators.yaml

***Keywords***
Clicar em:
    [Arguments]    ${elemento}
    Wait Until Element Is Visible    locator=${elemento}
    Click Element    locator=${elemento}

Validar Elemento
    [Arguments]    ${elemento}
    Element Should Be Visible    locator=${elemento}

Validar Tela Após Login
    Element Should Be Visible    locator=${header_locator}
    Element Should Be Visible    locator=${menu_button_locator}
    Element Should Be Visible    locator=${shop_cart_link_locator}
    Element Should Be Visible    locator=${inventory_container_locator}

Procurar por Produto
    [Arguments]    ${nome}
    ${is_visible}    Wait Until Element Is Visible    locator=//div[contains(text(), "${nome}")]//parent::a

Clicar no Produto
    [Arguments]    ${nome}
    Click Element    locator=//div[contains(text(), "${nome}")]//parent::a

Coletar Preço do Produto
    [Arguments]    ${nome}
    ${is_visible}    Wait Until Element Is Visible    locator=//div[contains(text(),"${nome}")]/ancestor::div[@class="inventory_item"]//div[@class="inventory_item_price"]
    ${price}    Get Text    //div[contains(text(),"${nome}")]/ancestor::div[@class="inventory_item"]//div[@class="inventory_item_price"]
    RETURN    ${price}

Clicar em Carrinho
    Wait Until Element Is Visible    locator=${shop_cart_link_locator}
    Click Element    locator=${shop_cart_link_locator}

    
