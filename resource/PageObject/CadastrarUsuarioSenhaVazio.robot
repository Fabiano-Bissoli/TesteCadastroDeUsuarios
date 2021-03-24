*** Settings ***
Library             SeleniumLibrary
Library             String
Library             DateTime
*** Variables ***

*** Keywords ***

### Cenário 04: Cadastrar usuário com o campo Senha vazio ###
Que cadastrarei um usuário sem preencher o campo Senha
    Acessar tela de Cadastros de usuários

Limpo o campo Senha deixando vazio
    Limpar campo Senha    

Preencho os campos Nome e E-mail
    Preencher os campos Nome e E-mail

Clico no botão Cadastrar com o campo Senha vazio
    Clicar no botão Cadastrar

Exibi a mensagem de erro "O campo Senha é obrigatório.", logo abaixo do campo Senha e não ter cadastrado o usuário
    Mensagem de erro abaixo do campo Senha