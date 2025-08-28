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
    ${qtd_produtos}    Get Element Count    locator=//div[@class="inventory_container"]/div/div[@class="inventory_item"]//div[@class="inventory_item_label"]
    FOR    ${produto}    IN RANGE    1    ${qtd_produtos}+1
        ${nome_produto}    Get Text    locator=//div[@class="inventory_container"]/div/div[@class="inventory_item"][${produto}]//div[@class="inventory_item_label"]
        IF    $nome in $nome_produto 
            ${result_number_produto}    Set Variable    ${produto}
        END
    END

    IF    $result_number_produto is not $None
        RETURN    ${result_number_produto}
    ELSE
        Fail    msg=Produto não foi encontrado.
    END

Adicionar ao Carrinho
    [Arguments]    ${num_produto}
    ${add_to_cart_locator}    Set Variable    //div[@class="inventory_container"]/div/div[@class="inventory_item"][${num_produto}]//div[@class="pricebar"]/button[@id="add-to-cart-sauce-labs-backpack"]
    Wait Until Element Is Visible    locator=${add_to_cart_locator}
    Click Element    locator=${add_to_cart_locator}

Retirar do Carrinho
    [Arguments]    ${num_produto}
    ${remove_to_cart_locator}    Set Variable    //div[@class="inventory_container"]/div/div[@class="inventory_item"][${num_produto}]//div[@class="pricebar"]/button[@id="remove-sauce-labs-backpack"]
    Wait Until Element Is Visible    locator=${remove_to_cart_locator}
    Click Element    locator=${remove_to_cart_locator}


Validar Produto no Carrinho
    [Arguments]    ${qtd_produtos_carrinho}
    Element Should Be Visible    locator=${number_products_cart}
    ${numero_produtos}    Get Text    locator=${number_products_cart}
    Should Be Equal As Numbers    first=${qtd_produtos_carrinho}    second=${numero_produtos}

Validar Carrinho Vazio
    Element Should Not Be Visible    locator=${number_products_cart}
    
