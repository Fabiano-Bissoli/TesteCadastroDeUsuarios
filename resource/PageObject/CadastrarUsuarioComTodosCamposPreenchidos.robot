*** Settings ***
Library             SeleniumLibrary
Library             String
Library             DateTime
*** Variables ***

*** Keywords ***

### Cenário 09: Cadastrar usuário com todos campos Nome, E-mail e Senha preenchidos ###
Que cadastrarei um usuário com os campos Nome, E-mail e Senha preenchidos
    Acessar tela de Cadastros de usuários

Preencho os campos Nome, E-mail e Senha completamente
    Preencher os campos Nome, E-mail e Senha   

Clico no botão Cadastrar com os campos Nome, E-mail e Senha preenchidos
    Clicar no botão Cadastrar

Exibi a tabela Usuários cadastrados com o usuário cadastrado
    Tabela Usuários cadastrados com o usuário cadastrado