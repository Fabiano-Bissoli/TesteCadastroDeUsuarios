*** Settings ***
Library             SeleniumLibrary
Library             String
Library             DateTime
*** Variables ***

*** Keywords ***

### Cenário 10: Cadastrar mais um usuário com os campos preenchidos ###
Que cadastrarei mais de um usuário com os campos Nome, E-mail e Senha preenchidos
    Acessar tela de Cadastros de usuários

Preencho todos os campos Nome, E-mail e Senha completamente
    Preencher os campos Nome, E-mail e Senha   

Clico no botão Cadastrar com todos campos Nome, E-mail e Senha preenchidos
    Clicar no botão Cadastrar

Preencho novamente os campos Nome, E-mail e Senha completamente com outro usuário
    Preencher todos os campos Nome, E-mail e Senha para cadastrar outro usuário 

Clico no botão Cadastrar com todos campos Nome, E-mail e Senha preenchidos para cadastrar outro usuário
    Clicar no botão Cadastrar

Exibi a tabela Usuários cadastrados com os dois usuários cadastrados
    Tabela Usuários cadastrados com mais de um usuário cadastrado