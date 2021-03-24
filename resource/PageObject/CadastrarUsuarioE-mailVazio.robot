*** Settings ***
Library             SeleniumLibrary
Library             String
Library             DateTime
*** Variables ***

*** Keywords ***

### Cenário 03: Cadastrar usuário com o campo E-mail vazio ###
Que cadastrarei um usuário sem preencher o campo E-mail
    Acessar tela de Cadastros de usuários

Limpo o campo E-mail deixando vazio
    Limpar campo E-mail    

Preencho os campos Nome e Senha
    Preencher os campos Nome e Senha

Clico no botão Cadastrar com o campo E-mail vazio
    Clicar no botão Cadastrar

Exibi a mensagem de erro "O campo E-mail é obrigatório.", logo abaixo do campo E-mail e não ter cadastrado o usuário
    Mensagem de erro abaixo do campo E-mail