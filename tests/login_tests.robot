***Settings***

Documentation    UI Scenario Tests - SauceDemo

Library          SeleniumLibrary

Resource    ../resources/browser/browser.robot
Resource    ../resources/login_page/login.robot
Resource    ../resources/main_page/main_page.robot


***Test Cases***
1. Login válido
    [Tags]    login-page
    [Teardown]    Fechar Navegador
    Abrir Navegador
    Inserir Usuário Válido
    Inserir Senha
    Fazer Login
    Validar Tela Após Login

2. Login inválido (usuário bloqueado)
    [Tags]    login-page
    [Teardown]    Fechar Navegador
    Abrir Navegador
    Inserir Usuário Inválido
    Inserir Senha
    Fazer Login
    Validar Mensagem de Erro no Login - Credenciais Erradas

3. Login com credenciais vazias
    [Tags]    login-page
    [Teardown]    Fechar Navegador
    Abrir Navegador
    Fazer Login
    Validar Mensagem de Erro no Login - Sem Credenciais
