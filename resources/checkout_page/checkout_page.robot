***Settings***

Library    SeleniumLibrary
Variables    checkout_page_locators.yaml

***Keywords***
Clicar em:
    [Arguments]    ${elemento}
    Wait Until Element Is Visible    locator=${elemento}
    Click Element    locator=${elemento}

Validar Elemento
    [Arguments]    ${elemento}
    Element Should Be Visible    locator=${elemento}

Validar Tela de Checkout
    Element Should Be Visible    locator=${header_locator}
    Element Should Be Visible    locator=${footer_buttons_locator}
    Element Should Be Visible    locator=${menu_button_locator}
    Element Should Be Visible    locator=${shop_cart_link_locator}
    Element Should Be Visible    locator=${checkout_header_locator}
    Element Should Be Visible    locator=${checkout_info_locator}
    Element Should Be Visible    locator=${first_name_locator}
    Element Should Be Visible    locator=${last_name_locator}
    Element Should Be Visible    locator=${postal_code_locator}
    Element Should Be Visible    locator=${cancel_button_locator}
    Element Should Be Visible    locator=${continue_button_locator}

Inserir Nome - Checkout
    [Arguments]    ${nome}
    Input Text    locator=${first_name_locator}    text=${nome}

Inserir Sobrenome - Checkout
    [Arguments]    ${sobrenome}
    Input Text    locator=${last_name_locator}    text=${sobrenome}

Inserir "CEP"
    [Arguments]    ${postal_code}
    Input Text    locator=${postal_code_locator}    text=${postal_code}

Clicar em Continuar
    Wait Until Element Is Visible    locator=${continue_button_locator}
    Click Element    locator=${continue_button_locator}

Clicar em Cancelar
    Wait Until Element Is Visible    locator=${cancel_button_locator}
    Click Element    locator=${cancel_button_locator}

Validar Erro Ao Preencher Dados - Checkout
    Element Should Be Visible    locator=${error_info_required_locator}