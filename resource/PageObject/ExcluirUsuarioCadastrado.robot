*** Settings ***
Library             SeleniumLibrary
Library             String
Library             DateTime
*** Variables ***

*** Keywords ***

### Cenário 11: Excluir um usuário cadastrado ###
Que cadastrarei dois usuários
    Acessar tela de Cadastros de usuários

Cadastro o primeiro usuário
    Preencher os campos Nome, E-mail e Senha

Clico no botão Cadastrar para realizar o primeiro cadastro 
    Clicar no botão Cadastrar

Cadastro o segundo usuário
    Preencher todos os campos Nome, E-mail e Senha para cadastrar outro usuário

Clico no botão Cadastrar para realizar o segundo cadastro
    Clicar no botão Cadastrar

Clico na opção Excluir em um usuário cadastrado
    Excluir um usuário cadastrado

A tabela Usuários cadastrados deixa de exibir o usuário excluído
    Tabela Usuários cadastrados com um usuário cadastrado excluído