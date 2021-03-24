*** Settings ***
Library             SeleniumLibrary
Library             String
Library             DateTime
*** Variables ***

*** Keywords ***

### Cenário 06: Cadastrar usuário com o campo Nome incompleto ###
Que cadastrarei um usuário com o campo Nome incompleto
    Acessar tela de Cadastros de usuários

Preencho o campo Nome deixando incompleto
    Preencher campo Nome incompleto    

Preencho os campos E-mail e Senha completamente
    Preencher os campos E-mail e Senha

Clico no botão Cadastrar com o campo Nome incompleto
    Clicar no botão Cadastrar

Exibi a mensagem de erro "Por favor, insira um nome completo.", logo abaixo do campo Nome e não ter cadastrado o usuário
    Mensagem de nome incompleto abaixo do campo Nome