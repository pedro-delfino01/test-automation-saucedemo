***Settings***

Library    SeleniumLibrary
Variables    product_page_locators.yaml

***Keywords***
Clicar em:
    [Arguments]    ${elemento}
    Wait Until Element Is Visible    locator=${elemento}
    Click Element    locator=${elemento}

Validar Elemento
    [Arguments]    ${elemento}
    Element Should Be Visible    locator=${elemento}

Validar Tela de Produto
    Element Should Be Visible    locator=${header_locator}
    Element Should Be Visible    locator=${menu_button_locator}
    Element Should Be Visible    locator=${shop_cart_link_locator}
    Element Should Be Visible    locator=${product_container_locator}
    Element Should Be Visible    locator=${image_container_locator}
    Element Should Be Visible    locator=${product_info_container_locator}
    Element Should Be Visible    locator=${name_product_locator}
    Element Should Be Visible    locator=${desc_product_locator}
    Element Should Be Visible    locator=${price_product_locator}
    Element Should Be Visible    locator=${button_add_to_cart_locator}

Adicionar ao Carrinho
    Click Element    locator=${button_add_to_cart_locator}

Retirar do Carrinho
    Click Element    locator=${button_remove_from_cart_locator}

Validar Produto no Carrinho
    [Arguments]    ${qtd_produtos_carrinho}
    Wait Until Element Is Visible    locator=${numer_products_cart_locator}
    ${numero_produtos}    Get Text    locator=${numer_products_cart_locator}
    Should Be Equal As Numbers    first=${qtd_produtos_carrinho}    second=${numero_produtos}

Validar Carrinho Vazio
    Element Should Not Be Visible    locator=${numer_products_cart_locator}
    
