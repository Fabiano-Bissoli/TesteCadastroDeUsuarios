*** Settings ***
Library             SeleniumLibrary
Library             String
Library             DateTime
*** Variables ***

*** Keywords ***

### Cenário 05: Cadastrar usuário com todos campos vazio ###
Que cadastrarei um usuário sem preencher os campos Nome, E-mail e Senha
    Acessar tela de Cadastros de usuários

Limpo os campos Nome, E-mail e Senha deixando todos vazios
    Limpar campos Nome,E-mail e Senha

Clico no botão Cadastrar com os campos Nome, E-mail e Senha vazios
    Clicar no botão Cadastrar

Exibi mensagens de erro logo abaixo dos campos Nome, E-mail e Senha
    Mensagens de erro abaixo dos campos Nome, E-mail e Senha