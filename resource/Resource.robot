*** Settings ***
Library             SeleniumLibrary
Library             String
Library             DateTime

*** Variables ***

${TEMPO}                             3s

### VARIÁVEIS TELA CADSTRO DE USUÁRIOS
${BROWSER}                           chrome
${HOME_URL}                          http://prova.stefanini-jgr.com.br/teste/qa/
${TEMPO}                             2s
${TEMPO_LONGO}                       4S
${TITULO_HOME}                       xpath=//*[@id="root"]/div/div/div[1]/h1
${INSTRUCAO_HOME}                    xpath=//*[@id="root"]/div/div/div[1]/p

${MENSAGEM_ERRO_NOME}                xpath=//*[@id="root"]/div/div/div[2]/form/div[1]/p
${MENSAGEM_ERRO_E-MAIL}              xpath=//*[@id="root"]/div/div/div[2]/form/div[2]/p
${MENSAGEM_ERRO_SENHA}               xpath=//*[@id="root"]/div/div/div[2]/form/div[3]/p

${INCOMPLETO_NOME}                   xpath=//*[@id="root"]/div/div/div[2]/form/div[1]/p
${INCOMPLETO_E-MAIL}                 xpath=//*[@id="root"]/div/div/div[2]/form/div[2]/p
${INCOMPLETO_SENHA}                  xpath=//*[@id="root"]/div/div/div[2]/form/div[3]/p

### PARÂMETROS E BOTÕES DA TELA CADSTRO DE USUÁRIOS 
${TAB_FORMULARIO}                    xpath=//*[@id="root"]/div/div/div[2]/h2
${CAMPO_NOME}                        xpath=//*[@id="name"]
${CAMPO_E-MAIL}                      xpath=//*[@id="email"]
${CAMPO_SENHA}                       xpath=//*[@id="password"]
${BTN_CADASTRAR}                     xpath=//*[@id="register"]
${TAB_USU_CADASTRADO}                xpath=//*[@id="root"]/div/div/div[2]/h2[2]
${OPC_EXCLUIR}                       xpath=//*[@id="removeUser2"]

${TITULO_C_NOME}                     xpath=//*[@id="root"]/div/div/div[2]/form/div[1]/label
${TITULO_C_E-MAIL}                   xpath=//*[@id="root"]/div/div/div[2]/form/div[2]/label   
${TITULO_C_SENHA}                    xpath=//*[@id="root"]/div/div/div[2]/form/div[3]/label

${PRIMEIRO_USUARIO}                  xpath=//*[@id="tdUserName1"]
${SEGUNDO_USUARIO}                   xpath=//*[@id="tdUserName2"]

@{TEXT_TITULO}                       Cadastro de usuários
@{TEXT_INSTRUCAO}                    Para realizar o cadastro de um usuário insira dados válidos no formulário                            
@{TEXT_FORMULARIO}                   Formulário
@{TEXT_USUARIO_USU}                  Usuários cadastrados
@{TEXT_NOME}                         Nome
@{TEXT_E-MAIL}                       E-mail
@{TEXT_SENHA}                        Senha
@{TEXT_BTN_CADASTRAR}                Cadastrar
@{TEXT_ERRO_NOME}                    O campo Nome é obrigatório.
@{TEXT_ERRO_E-MAIL}                  O campo E-mail é obrigatório.
@{TEXT_ERRO_SENHA}                   O campo Senha é obrigatório.
@{TEXT_INCOMPLETO_NOME}              Por favor, insira um nome completo.
@{TEXT_INCOMPLETO_E-MAIL}            Por favor, insira um e-mail válido.
@{TEXT_INCOMPLETO_SENHA}             A senha deve conter ao menos 8 caracteres.

@{USER_UM_NOME_COMPLETO}             Fabiano Bernardo Bissoli
@{USER_DOIS_NOME_COMPLETO}           Jeseus de Nazaré
@{NOME_INCOMPLETO}                   Fabiano
@{E-MAIL_COMPLETO}                   fabiano.bissoli@email.com
@{E-MAIL_COMPLETO_DOIS}              teste.automatico@email.com
@{E-MAIL_INCOMPLETO}                 fabiano.bissoli.com
@{SENHA_COMPLETA}                    12345678
@{SENHA_INCOMPLETA}                  1234567

*** Keywords ***
### Setup e Teardown

### Início das funções do Cenário: 01 ###
Acessar tela de Cadastros de usuários
    Sleep                            ${TEMPO}
    Go To                            ${HOME_URL}
    Capture Page Screenshot          CT_01_Tela_Cadastro_de_usuários_01.png

Verificar tela de Cadastro de usuários
    ### Conferindo se carregou a tela de Cadastro de Usuários
    Element Should Be Visible        ${TITULO_HOME}
    Element Text Should Be           ${TITULO_HOME}                     @{TEXT_TITULO}
    Sleep                            ${TEMPO}

Verificar campos da tela de Cadastro de usuários
    ### Conferindo se é está sendo exibido todos os parâmetros e campos da tela

    #Conferindo a tabela "Formulário"
    Element Should Be Visible        ${TAB_FORMULARIO}
    Element Text Should Be           ${TAB_FORMULARIO}                  @{TEXT_FORMULARIO}

    #Conferindo o campo "Nome"
    Element Should Be Visible        ${CAMPO_NOME}
    Element Text Should Be           ${TITULO_C_NOME}                   @{TEXT_NOME}

    #Conferindo o campo "E-mail"
    Element Should Be Visible        ${CAMPO_E-MAIL}
    Element Text Should Be           ${TITULO_C_E-MAIL}                 @{TEXT_E-MAIL}

    #Conferindo o campo "Senha"
    Element Should Be Visible        ${CAMPO_SENHA}
    Element Text Should Be           ${TITULO_C_SENHA}                  @{TEXT_SENHA}

    #Conferindo o Botão "Cadastrar"
    Element Should Be Visible        ${BTN_CADASTRAR}
    Element Text Should Be           ${BTN_CADASTRAR}                   @{TEXT_BTN_CADASTRAR}

### Início das funções do Cenário: 02 ###
Limpar campo Nome
    Clear Element Text               ${CAMPO_NOME}    

Preencher os campos E-mail e Senha
    Input Text                       ${CAMPO_E-MAIL}                    @{E-MAIL_COMPLETO}
    Input Text                       ${CAMPO_SENHA}                     @{SENHA_COMPLETA}

Clicar no botão Cadastrar
    Click Element                    ${BTN_CADASTRAR}

Mensagem de erro abaixo do campo Nome
    Element Text Should Be           ${MENSAGEM_ERRO_NOME}              @{TEXT_ERRO_NOME}
    Capture Page Screenshot          CT_02_Mensagem_de_Erro_Nome_02.png

### Início das funções do Cenário: 03 ###
Limpar campo E-mail
    Clear Element Text               ${CAMPO_E-MAIL}    

Preencher os campos Nome e Senha
    Input Text                       ${CAMPO_NOME}                      @{USER_UM_NOME_COMPLETO}
    Input Text                       ${CAMPO_SENHA}                     @{SENHA_COMPLETA}

Mensagem de erro abaixo do campo E-mail
    Element Text Should Be           ${MENSAGEM_ERRO_E-MAIL}            @{TEXT_ERRO_E-MAIL}
    Capture Page Screenshot          CT_03_Mensagem_de_Erro_E-mail_03.png

### Início das funções do Cenário: 04 ###
Limpar campo Senha
    Clear Element Text               ${CAMPO_SENHA}    

Preencher os campos Nome e E-mail
    Input Text                       ${CAMPO_NOME}                      @{USER_UM_NOME_COMPLETO}
    Input Text                       ${CAMPO_E-MAIL}                    @{E-MAIL_COMPLETO}

Mensagem de erro abaixo do campo Senha
    Element Text Should Be           ${MENSAGEM_ERRO_SENHA}             @{TEXT_ERRO_SENHA}
    Capture Page Screenshot          CT_04_Mensagem_de_Erro_Senha_04.png

### Início das funções do Cenário: 05 ###
Limpar campos Nome,E-mail e Senha
    Clear Element Text               ${CAMPO_NOME}
    Clear Element Text               ${CAMPO_E-MAIL}
    Clear Element Text               ${CAMPO_SENHA}    

Mensagens de erro abaixo dos campos Nome, E-mail e Senha
    Element Text Should Be           ${MENSAGEM_ERRO_NOME}              @{TEXT_ERRO_NOME}
    Element Text Should Be           ${MENSAGEM_ERRO_E-MAIL}            @{TEXT_ERRO_E-MAIL}
    Element Text Should Be           ${MENSAGEM_ERRO_SENHA}             @{TEXT_ERRO_SENHA}
    Capture Page Screenshot          CT_05_Mensagem_de_Erro_Todos_os_Campos_05.png

### Início das funções do Cenário: 06 ###
Preencher campo Nome incompleto
    Input Text                       ${CAMPO_NOME}                      @{NOME_INCOMPLETO}                      

Mensagem de nome incompleto abaixo do campo Nome
    Element Text Should Be           ${INCOMPLETO_NOME}                 @{TEXT_INCOMPLETO_NOME}
    Capture Page Screenshot          CT_06_Mensagem_de_Nome_Incompleto_06.png

### Início das funções do Cenário: 07 ###
Preencher campo E-mail incompleto
    Input Text                       ${CAMPO_E-MAIL}                    @{E-MAIL_INCOMPLETO}                      

Mensagem de insira um e-mail válido abaixo do campo E-mail
    Element Text Should Be           ${INCOMPLETO_E-MAIL}               @{TEXT_INCOMPLETO_E-MAIL}
    Capture Page Screenshot          CT_07_Mensagem_de_E-mail_Inválido_07.png

### Início das funções do Cenário: 08 ###
Preencher campo Senha incompleto
    Input Text                       ${CAMPO_SENHA}                     @{SENHA_INCOMPLETA}                      

Mensagem de senha incompleto abaixo do campo Senha
    Element Text Should Be           ${INCOMPLETO_SENHA}                @{TEXT_INCOMPLETO_SENHA}
    Capture Page Screenshot          CT_08_Mensagem_de_Senha_Inválida_08.png

### Início das funções do Cenário: 09 ###
Preencher os campos Nome, E-mail e Senha 
    Input Text                       ${CAMPO_NOME}                      @{USER_UM_NOME_COMPLETO}                      
    Input Text                       ${CAMPO_E-MAIL}                    @{E-MAIL_COMPLETO}
    Input Text                       ${CAMPO_SENHA}                     @{SENHA_COMPLETA} 

Tabela Usuários cadastrados com o usuário cadastrado
    Element Text Should Be           ${TAB_USU_CADASTRADO}              @{TEXT_USUARIO_USU}
    Element Text Should Be           ${PRIMEIRO_USUARIO}                @{USER_UM_NOME_COMPLETO}    
    Scroll Element Into View         ${PRIMEIRO_USUARIO}        
    Capture Page Screenshot          CT_09_Cadastro_de_usuário_09.png
    Sleep                            ${TEMPO}

### Início das funções do Cenário: 10 ###
Preencher todos os campos Nome, E-mail e Senha para cadastrar outro usuário 
    Input Text                       ${CAMPO_NOME}                      @{USER_DOIS_NOME_COMPLETO}                      
    Input Text                       ${CAMPO_E-MAIL}                    @{E-MAIL_COMPLETO_DOIS}
    Input Text                       ${CAMPO_SENHA}                     @{SENHA_COMPLETA} 

Tabela Usuários cadastrados com mais de um usuário cadastrado 
    Element Text Should Be           ${TAB_USU_CADASTRADO}              @{TEXT_USUARIO_USU}
    Element Text Should Be           ${PRIMEIRO_USUARIO}                @{USER_UM_NOME_COMPLETO} 
    Element Text Should Be           ${SEGUNDO_USUARIO}                 @{USER_DOIS_NOME_COMPLETO}     
    Scroll Element Into View         ${SEGUNDO_USUARIO}
    Capture Page Screenshot          CT_10_Cadastro_de_outro_usuário_10.png
    Sleep                            ${TEMPO}

### Início das funções do Cenário: 11 ###
Excluir um usuário cadastrado 
    Click Element                    ${OPC_EXCLUIR}
                    

Tabela Usuários cadastrados com um usuário cadastrado excluído
    Element Text Should Be           ${TAB_USU_CADASTRADO}              @{TEXT_USUARIO_USU}
    Element Text Should Be           ${PRIMEIRO_USUARIO}                @{USER_UM_NOME_COMPLETO} 
    Element Should Not Be Visible    ${SEGUNDO_USUARIO}     
    Scroll Element Into View         ${PRIMEIRO_USUARIO}
    Capture Page Screenshot          CT_11_Exclusão_de_um_usuário_11.png
    Sleep                            ${TEMPO}

Abrir navegador
    Open Browser  about:blank        ${BROWSER}
    Maximize Browser Window 
    
Fechar navegador
    Close Browser