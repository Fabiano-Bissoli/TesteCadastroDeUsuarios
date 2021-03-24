*** Settings ***
Documentation    Web system Cadastro de usuários 
...              Suite de teste do sistema Cadastro de usuários
...              Verficação da funcionalidade de cadastramento de usuários 
Resource         ../resource/Resource.robot
Resource         ../resource/BDDpt-br.robot
Resource         ../resource/PageObject/TelaCadastroDeUsuarios.robot
Resource         ../resource/PageObject/CadastrarUsuarioNomeVazio.robot
Resource         ../resource/PageObject/CadastrarUsuarioE-mailVazio.robot
Resource         ../resource/PageObject/CadastrarUsuarioSenhaVazio.robot
Resource         ../resource/PageObject/CadastrarUsuarioTodosCamposVazios.robot
Resource         ../resource/PageObject/CadastrarUsuarioNomeIncompleto.robot
Resource         ../resource/PageObject/CadastrarUsuarioE-mailIncompleto.robot
Resource         ../resource/PageObject/CadastrarUsuarioSenhaIncompleta.robot
Resource         ../resource/PageObject/CadastrarUsuarioComTodosCamposPreenchidos.robot
Resource         ../resource/PageObject/CadastrarOutroUsuarioComTodosCamposPreenchidos.robot
Resource         ../resource/PageObject/ExcluirUsuarioCadastrado.robot
Test Setup       Abrir navegador  
Test Teardown    Fechar navegador   

###    EU COMO usuário do sistema.
###    DESEJO realizar o cadastro de novos usuários.
###    PARA QUE seja possível armazenar e gerenciar seus dados.

*** Test Case ***
Cenário 01: Acessar tela de Cadastro de usuários
    Dado que estou na tela de Cadastros de usuários
    Quando navego na tela
    Então exibe a tabela Formulário com os campos Nome, E-mail, Senha e o botão Cadastrar

Cenário 02: Cadastrar usuário com o campo Nome vazio
    Dado que cadastrarei um usuário sem preencher o campo Nome
    Quando limpo o campo Nome deixando vazio
    E preencho os campos E-mail e Senha
    E clico no botão Cadastrar com o campo Nome vazio 
    Então exibi a mensagem de erro "O campo Nome é obrigatório.", logo abaixo do campo Nome e não ter cadastrado o usuário

Cenário 03: Cadastrar usuário com o campo E-mail vazio
    Dado que cadastrarei um usuário sem preencher o campo E-mail
    Quando limpo o campo E-mail deixando vazio
    E preencho os campos Nome e Senha
    E clico no botão Cadastrar com o campo E-mail vazio 
    Então exibi a mensagem de erro "O campo E-mail é obrigatório.", logo abaixo do campo E-mail e não ter cadastrado o usuário

Cenário 04: Cadastrar usuário com o campo Senha vazio
    Dado que cadastrarei um usuário sem preencher o campo Senha
    Quando limpo o campo Senha deixando vazio
    E preencho os campos Nome e E-mail
    E clico no botão Cadastrar com o campo Senha vazio 
    Então exibi a mensagem de erro "O campo Senha é obrigatório.", logo abaixo do campo Senha e não ter cadastrado o usuário

Cenário 05: Cadastrar usuário com todos campos vazio
    Dado que cadastrarei um usuário sem preencher os campos Nome, E-mail e Senha
    Quando limpo os campos Nome, E-mail e Senha deixando todos vazios
    E clico no botão Cadastrar com os campos Nome, E-mail e Senha vazios
    Então exibi mensagens de erro logo abaixo dos campos Nome, E-mail e Senha

Cenário 06: Cadastrar usuário com o campo Nome incompleto
    Dado que cadastrarei um usuário com o campo Nome incompleto
    Quando preencho o campo Nome deixando incompleto
    E preencho os campos E-mail e Senha completamente
    E clico no botão Cadastrar com o campo Nome incompleto
    Então exibi a mensagem de erro "Por favor, insira um nome completo.", logo abaixo do campo Nome e não ter cadastrado o usuário

Cenário 07: Cadastrar usuário com o campo E-mail incompleto
    Dado que cadastrarei um usuário com o campo E-mail incompleto
    Quando preencho o campo E-mail deixando incompleto
    E preencho os campos Nome e Senha completamente
    E clico no botão Cadastrar com o campo E-mail incompleto
    Então exibi a mensagem de erro "Por favor, insira um e-mail válido.", logo abaixo do campo E-mail e não ter cadastrado o usuário

Cenário 08: Cadastrar usuário com o campo Senha incompleto
    Dado que cadastrarei um usuário com o campo Senha incompleto
    Quando preencho o campo Senha deixando incompleto
    E preencho os campos Nome e E-mail completamente
    E clico no botão Cadastrar com o campo Senha incompleto
    Então exibi a mensagem de erro "A senha deve conter ao menos 8 caracteres.", logo abaixo do campo Senha e não ter cadastrado o usuário

Cenário 09: Cadastrar usuário com todos campos Nome, E-mail e Senha preenchidos
    Dado que cadastrarei um usuário com os campos Nome, E-mail e Senha preenchidos
    Quando preencho os campos Nome, E-mail e Senha completamente
    E clico no botão Cadastrar com os campos Nome, E-mail e Senha preenchidos
    Então exibi a tabela Usuários cadastrados com o usuário cadastrado

Cenário 10: Cadastrar mais um usuário com os campos preenchidos
    Dado que cadastrarei mais de um usuário com os campos Nome, E-mail e Senha preenchidos
    Quando preencho todos os campos Nome, E-mail e Senha completamente
    E clico no botão Cadastrar com todos campos Nome, E-mail e Senha preenchidos
    E preencho novamente os campos Nome, E-mail e Senha completamente com outro usuário
    E clico no botão Cadastrar com todos campos Nome, E-mail e Senha preenchidos para cadastrar outro usuário
    Então exibi a tabela Usuários cadastrados com os dois usuários cadastrados

Cenário 11: Excluir um usuário cadastrado
    Dado que cadastrarei dois usuários
    Quando cadastro o primeiro usuário
    E clico no botão Cadastrar para realizar o primeiro cadastro 
    E cadastro o segundo usuário
    E clico no botão Cadastrar para realizar o segundo cadastro
    E clico na opção Excluir em um usuário cadastrado
    Então a tabela Usuários cadastrados deixa de exibir o usuário excluído     





    

