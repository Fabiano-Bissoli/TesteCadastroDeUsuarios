*** Settings ***
Library             SeleniumLibrary
Library             String
Library             DateTime
*** Variables ***

*** Keywords ***

### Cenário 08: Cadastrar usuário com o campo Senha incompleto ###
Que cadastrarei um usuário com o campo Senha incompleto
    Acessar tela de Cadastros de usuários

Preencho o campo Senha deixando incompleto
    Preencher campo Senha incompleto    

Preencho os campos Nome e E-mail completamente
    Preencher os campos Nome e E-mail

Clico no botão Cadastrar com o campo Senha incompleto
    Clicar no botão Cadastrar

Exibi a mensagem de erro "A senha deve conter ao menos 8 caracteres.", logo abaixo do campo Senha e não ter cadastrado o usuário
    Mensagem de senha incompleto abaixo do campo Senha