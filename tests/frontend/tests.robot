***Settings***

Documentation    UI Scenario Tests

Library          SeleniumLibrary


***Test Cases***
1. Login válido
[Tags]    login-page
# - Dado que o usuário acessa a página inicial do SauceDemo
# - Quando insere usuário 'standard_user' e senha 'secret_sauce'
# - Então deve ser redirecionado para a página de produtos



2. Login inválido (usuário bloqueado)
[Tags]    login-page
# - Dado que o usuário acessa a página inicial
# - Quando insere usuário 'locked_out_user' e senha 'secret_sauce'
# - Então deve visualizar mensagem de erro: "Epic sadface: Sorry, this user has been locked out."

3. Login com credenciais vazias
[Tags]    login-page
# - Dado que o usuário acessa a página inicial
# - Quando clica em “Login” sem preencher os campos
# - Então deve visualizar a mensagem de erro correspondente