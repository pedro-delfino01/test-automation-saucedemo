***Settings***

Library    SeleniumLibrary
Variables    login_credentials.yaml
Variables    login_locators.yaml

***Keywords***
Inserir Usuário Válido
    Wait Until Element Is Visible    locator=${user_login}
    Input Text    locator=${user_login}    text=${usuario_valido}

Inserir Usuário Inválido
    Wait Until Element Is Visible    locator=${user_login}
    Input Text    locator=${user_login}    text=${usuario_invalido}

Inserir Senha
    Wait Until Element Is Visible    locator=${user_password}
    Input Text    locator=${user_password}    text=${senha_geral}

Fazer Login
    Wait Until Element Is Visible    locator=${login_submit}
    Click Element    locator=${login_submit}

Validar Mensagem de Erro no Login - Credenciais Erradas
    Wait Until Element Is Visible    locator=${error_login}
    ${error_msg}    Get Text    locator=${error_login}
    Should Be Equal As Strings    first=${error_msg}    second=Epic sadface: Sorry, this user has been locked out.

Validar Mensagem de Erro no Login - Sem Credenciais
    Wait Until Element Is Visible    locator=${error_login}
    ${error_msg}    Get Text    locator=${error_login}
    Should Be Equal As Strings    first=${error_msg}    second=Epic sadface: Username is required
    