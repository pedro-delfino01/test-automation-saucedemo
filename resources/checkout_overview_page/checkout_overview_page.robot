***Settings***

Library    SeleniumLibrary
Variables    checkout_overview_page_locators.yaml

***Keywords***
Clicar em:
    [Arguments]    ${elemento}
    Wait Until Element Is Visible    locator=${elemento}
    Click Element    locator=${elemento}

Validar Elemento
    [Arguments]    ${elemento}
    Element Should Be Visible    locator=${elemento}

Validar Tela de Checkout Overview
    Element Should Be Visible    locator=${header_locator}
    Element Should Be Visible    locator=${menu_button_locator}
    Element Should Be Visible    locator=${shop_cart_link_locator}
    Element Should Be Visible    locator=${checkout_header_locator}
    Element Should Be Visible    locator=${sumary_info_locator}
    Element Should Be Visible    locator=${finish_button_locator}
    Element Should Be Visible    locator=${cancel_button_locator}

Finalizar Compra
    Wait Until Element Is Visible    locator=${finish_button_locator}
    Click Element    locator=${finish_button_locator}

Clicar em Cancelar
    Wait Until Element Is Visible    locator=${cancel_button_locator}
    Click Element    locator=${cancel_button_locator}

Validar Compra Finalizada
    Wait Until Element Is Visible    locator=//h2[contains(text(), "Thank you for your order!")]

# Validar Erro Ao Finalizar Compra