*** Settings ***
Library             SeleniumLibrary
Library             String
Library             DateTime
*** Variables ***

*** Keywords ***

### Cenário 01: Acessar tela de Cadastro de usuários ###
Que estou na tela de Cadastros de usuários
    Acessar tela de Cadastros de usuários
        
Navego na tela
    Verificar tela de Cadastro de usuários
                         
Exibe a tabela Formulário com os campos Nome, E-mail, Senha e o botão Cadastrar
    Verificar campos da tela de Cadastro de usuários