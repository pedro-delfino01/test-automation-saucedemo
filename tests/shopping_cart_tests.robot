***Settings***

Documentation    UI Scenario Tests - SauceDemo

Library          SeleniumLibrary

Resource    ../resources/browser/browser.robot
Resource    ../resources/login_page/login.robot
Resource    ../resources/main_page/main_page.robot
Resource    ../resources/product_page/product_page.robot
Resource    ../resources/cart_page/cart_page.robot


***Test Cases***
4. Adicionar item ao carrinho
    # - Dado que o usuário está logado
    # - Quando adiciona o produto "Sauce Labs Backpack"
    # - Então o ícone do carrinho deve exibir quantidade 1
    [Tags]    login-page    shopping-cart
    [Teardown]    Fechar Navegador
    Abrir Navegador
    Inserir Usuário Válido
    Inserir Senha
    Fazer Login
    Validar Tela Após Login
    Procurar por Produto    nome=Sauce Labs Backpack
    Clicar no Produto    nome=Sauce Labs Backpack
    Validar Tela de Produto
    Adicionar ao Carrinho
    Validar Produto no Carrinho    qtd_produtos_carrinho=1

5. Remover item do carrinho
    # - Dado que o usuário adicionou um item ao carrinho
    # - Quando remove o item
    # - Então o carrinho deve ficar vazio
    [Tags]    login-page    shopping-cart
    [Teardown]    Fechar Navegador
    Abrir Navegador
    Inserir Usuário Válido
    Inserir Senha
    Fazer Login
    Validar Tela Após Login
    Procurar por Produto    nome=Sauce Labs Backpack
    Clicar no Produto    nome=Sauce Labs Backpack
    Validar Tela de Produto
    Adicionar ao Carrinho
    Validar Produto no Carrinho    qtd_produtos_carrinho=1
    Retirar do Carrinho
    Validar Carrinho Vazio

6. Verificar preço no carrinho
    # - Dado que o usuário adicionou o produto "Sauce Labs Bike Light"
    # - Quando acessa o carrinho
    # - Então o preço exibido deve ser igual ao preço da listagem
    [Tags]    login-page    shopping-cart
    [Teardown]    Fechar Navegador
    Abrir Navegador
    Inserir Usuário Válido
    Inserir Senha
    Fazer Login
    Validar Tela Após Login
    Procurar por Produto    nome=Sauce Labs Backpack
    ${price}    Coletar Preço do Produto    nome=Sauce Labs Backpack
    Clicar no Produto    nome=Sauce Labs Backpack
    Validar Tela de Produto
    Adicionar ao Carrinho
    Validar Produto no Carrinho    qtd_produtos_carrinho=1
    Clicar em Carrinho
    Validar Preço do Produto Selecionado    nome=Sauce Labs Backpack    preco_anterior=${price}
