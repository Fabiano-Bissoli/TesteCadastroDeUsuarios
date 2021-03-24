*** Settings ***
Library             SeleniumLibrary
Library             String
Library             DateTime
*** Variables ***

*** Keywords ***

### Cenário 07: Cadastrar usuário com o campo E-mail incompleto ###
Que cadastrarei um usuário com o campo E-mail incompleto
    Acessar tela de Cadastros de usuários

Preencho o campo E-mail deixando incompleto
    Preencher campo E-mail incompleto    

Preencho os campos Nome e Senha completamente
    Preencher os campos Nome e Senha

Clico no botão Cadastrar com o campo E-mail incompleto
    Clicar no botão Cadastrar

Exibi a mensagem de erro "Por favor, insira um e-mail válido.", logo abaixo do campo E-mail e não ter cadastrado o usuário
    Mensagem de insira um e-mail válido abaixo do campo E-mail