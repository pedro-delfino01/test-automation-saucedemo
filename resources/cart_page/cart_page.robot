***Settings***

Library    SeleniumLibrary
Variables    cart_page_locators.yaml

***Keywords***
Clicar em:
    [Arguments]    ${elemento}
    Wait Until Element Is Visible    locator=${elemento}
    Click Element    locator=${elemento}

Validar Elemento
    [Arguments]    ${elemento}
    Element Should Be Visible    locator=${elemento}

Validar Tela de Carrinho
    Element Should Be Visible    locator=${header_locator}
    Element Should Be Visible    locator=${footer_locator}
    Element Should Be Visible    locator=${menu_button_locator}
    Element Should Be Visible    locator=${shop_cart_link_locator}
    Element Should Be Visible    locator=${cart_list_locator}
    Element Should Be Visible    locator=${cart_itens_locators}
    Element Should Be Visible    locator=${qtd_item_product_locator}
    Element Should Be Visible    locator=${price_item_locator}
    Element Should Be Visible    locator=${continue_shopping_button_locator}
    Element Should Be Visible    locator=${checkout_button_locator}

Validar Preço do Produto Selecionado
    [Arguments]    ${nome}    ${preco_anterior}
    Wait Until Element Is Visible    locator=//div[@class="inventory_item_name" and text()="${nome}"]/ancestor::div[@class="cart_item_label"]//div[@class="item_pricebar"]/div[@class="inventory_item_price"]
    ${preço_produto}    Get Text    locator=//div[@class="inventory_item_name" and text()="${nome}"]/ancestor::div[@class="cart_item_label"]//div[@class="item_pricebar"]/div[@class="inventory_item_price"]
    Should Be Equal As Strings    first=${preço_produto}    second=${preco_anterior}

Clicar em Voltar às Compras
    Wait Until Element Is Visible    locator=${continue_shopping_button_locator}
    Click Element    locator=${continue_shopping_button_locator}

Clicar em Checkout
    Wait Until Element Is Visible    locator=${checkout_button_locator}
    Click Element    locator=${checkout_button_locator}