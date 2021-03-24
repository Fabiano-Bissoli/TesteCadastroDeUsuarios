*** Settings ***
Library             SeleniumLibrary
Library             String
Library             DateTime
*** Variables ***

*** Keywords ***

### Cenário 02: Cadastrar usuário com o campo Nome vazio ###
Que cadastrarei um usuário sem preencher o campo Nome
    Acessar tela de Cadastros de usuários

Limpo o campo Nome deixando vazio
    Limpar campo Nome    

Preencho os campos E-mail e Senha
    Preencher os campos E-mail e Senha

Clico no botão Cadastrar com o campo Nome vazio
    Clicar no botão Cadastrar

Exibi a mensagem de erro "O campo Nome é obrigatório.", logo abaixo do campo Nome e não ter cadastrado o usuário
    Mensagem de erro abaixo do campo Nome