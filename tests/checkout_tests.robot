***Settings***

Documentation    UI Scenario Tests - SauceDemo

Library          SeleniumLibrary

Resource    ../resources/browser/browser.robot
Resource    ../resources/login_page/login.robot
Resource    ../resources/main_page/main_page.robot
Resource    ../resources/product_page/product_page.robot
Resource    ../resources/cart_page/cart_page.robot
Resource    ../resources/checkout_page/checkout_page.robot
Resource    ../resources/checkout_overview_page/checkout_overview_page.robot


***Test Cases***
7. Fluxo completo de compra
    [Tags]    checkout
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
    Clicar em Carrinho
    Validar Tela de Carrinho
    Clicar em Checkout
    Validar Tela de Checkout
    Inserir Nome - Checkout    nome=Teste
    Inserir Sobrenome - Checkout    sobrenome=Teste
    Inserir "CEP"    postal_code=23456
    Clicar em Continuar
    Validar Tela de Checkout Overview
    Finalizar Compra
    Validar Compra Finalizada

8. Checkout com dados incompletos
    [Tags]    checkout
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
    Clicar em Carrinho
    Validar Tela de Carrinho
    Clicar em Checkout
    Validar Tela de Checkout
    Inserir Nome - Checkout    nome=Teste
    Inserir Sobrenome - Checkout    sobrenome=Teste
    Clicar em Continuar
    Validar Erro Ao Preencher Dados - Checkout
