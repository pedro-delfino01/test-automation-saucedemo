***Settings***

Library    SeleniumLibrary
Variables   browser_variables.yaml

***Keywords***
Abrir Navegador
    Open Browser    url=${url}    browser=${browser}
    Maximize Browser Window
    Set Selenium Timeout    value=15s
    Set Selenium Page Load Timeout    value=15s

Fechar Navegador
    Close Browser

