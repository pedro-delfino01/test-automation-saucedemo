# Projeto de Automação de Testes Front-End

## 📋 Descrição do Projeto

Este projeto tem como objetivo automatizar os testes funcionais de interface do usuário (front-end) para a aplicação **SauceDemo** utilizando o **Robot Framework**. A automação visa garantir a qualidade e a estabilidade da aplicação através da execução de testes regressivos e de novas funcionalidades.

## 🚀 Tecnologias e Bibliotecas

As seguintes tecnologias e bibliotecas são utilizadas neste projeto:

* **Robot Framework:** Um framework de automação genérico para testes de aceitação e automação de aceitação de processos robóticos (RPA).
* **SeleniumLibrary:** Uma biblioteca do Robot Framework para testes de interface web, que utiliza o Selenium.

## 🛠️ Pré-requisitos

Certifique-se de que você tem as seguintes ferramentas instaladas na sua máquina:

* **Python 3.10.10:** (Recomendado)
* **pip:** Gerenciador de pacotes do Python.

## ⚙️ Instalação

Siga os passos abaixo para configurar o ambiente e rodar o projeto localmente:

1.  **Clone o repositório:**
    ```bash
    git clone https://github.com/pedro-delfino01/test-automation-saucedemo
    cd test-automation-saucedemo
    ```

2.  **Instale as dependências:**
    ```bash
    pip install -r requirements.txt
    ```

> *Nota: O arquivo `requirements.txt` presente no repositório listará todas as bibliotecas necessárias para a execução dos testes.*

## ▶️ Como Executar os Testes

Para executar todos os testes, use o seguinte comando no terminal, a partir da raiz do projeto:

```bash
robot tests/
```

Ou para rodar um teste específico:

```bash
robot tests/login_tests.robot
```

O navegador padrão pode ser definido no arquivo:

```bash
resources/browser/browser_variables.yaml
```

Exemplo de configuração:

```bash
browser: edge      # opções: edge, chrome, firefox
```

Ou você pode sobrescrever na execução:

```bash
robot --variable browser:chrome tests/
robot --variable browser:firefox tests/login_tests.robot
```

## 📂 Estrutura do Projeto

```bash
test-automation-saucedemo/
├── resources/ # Recursos reutilizáveis (keywords, variáveis e localizadores)
│ ├── browser/ # Configuração do navegador
│ ├── cart_page/ # Recursos da página de carrinho
│ ├── checkout_page/ # Recursos da página de checkout
│ ├── checkout_overview_page/ Recursos da página final de checkout
│ ├── login_page/ # Recursos da página de login
│ ├── main_page/ # Página principal
│ └── product_page/ # Página de produtos
├── tests/ # Casos de teste organizados por funcionalidade
│ ├── login_tests.robot
│ ├── shopping_cart_tests.robot
│ └── checkout_tests.robot
├── scenarios/ # Cenários de testes em formato texto
│ └── cenarios_saucedemo.txt
├── requirements.txt # Dependências do projeto
├── .gitignore
├── log.html # Relatório de execução (gerado automaticamente)
├── report.html # Relatório detalhado (gerado automaticamente)
└── output.xml # Arquivo de saída do Robot Framework
```


## 📄 Relatórios de Resultados

Após a execução dos testes, os relatórios serão gerados automaticamente na pasta do projeto:

* **log.html**
* **report.html**
* **output.xml**

Você pode abrir o arquivo **report.html** no seu navegador para visualizar um resumo detalhado dos resultados dos testes.

## 📦 Dependências Principais
As dependências completas estão em requirements.txt, mas as principais bibliotecas usadas são:
- robotframework → Framework base para automação de testes
- robotframework-seleniumlibrary → Suporte à automação de navegadores
- selenium → Driver de integração com navegadores (Chrome, Firefox, Edge)
- PyYAML → Manipulação de variáveis e dados em arquivos YAML

Essas dependências permitem rodar os testes em múltiplos navegadores sem configuração adicional de WebDriver.

## ✨ Funcionalidades Testadas
- Login: Sucesso e falha com credenciais inválidas
- Carrinho de compras: Adicionar, remover e validar produtos
- Checkout: Fluxo de compra até a tela de confirmação

## 🔧 Configuração
- Variáveis como usuários de teste e locators estão organizadas em arquivos .yaml dentro de resources/
- O navegador pode ser configurado via variável global browser ou diretamente no browser_variables.yaml
- Relatórios de execução são gerados automaticamente em log.html e report.html

## ❓ Troubleshooting
- Se os testes não abrirem o navegador, confirme:
  - Que o navegador escolhido está instalado e atualizado
  - Que as dependências foram instaladas corretamente:
    pip install --upgrade -r requirements.txt

- Para limpar relatórios antigos antes de rodar novamente:
  rm -f log.html report.html output.xml

## 👥 Contribuidores
- **Pedro Delfino** - https://github.com/pedro-delfino01/
