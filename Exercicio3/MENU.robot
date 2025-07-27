
    - DESCRIÇÃO DO CHAMADO - ERP-3455
___________________________________________________________________
restruturedText - Aqui pode ser feita uma descrição do teste 
o código aqui será ignorado, então pode-se digitar qualquer coisa 
que não será considerado.
___________________________________________________________________

.. code::    robotframework

#### seção de dados de teste || cabeçalho de seção   ####
*** Settings ***
Documentation     Exemplo utilizando espaços.
Library           DateTime
Library           SeleniumLibrary
Library           DatabaseLibrary


*** Variable ***
${LOGINS}     HAMILTONVR
${SENHAS}     HVR275
${URL}        Endereco Site
${BROWSER}    Chrome

${NAME}       mundo
${GREET}      ola
${BROWSER}    chrome
${DATA}       2018-01-16
@{LISTA}      ARROZ   FEIJAO   BOLA CRAVO        
&{PESSOA}     nome= joao das neves    email=anethingjhon@gmail.com        idade=23

${user}       Usuario
${SENHA}      SenhaEscolhida
${db_host}    Edenteco Banco de dados
${db_sid}     Nome Banco de dados

*** Test Cases ***    
caso de teste 01 : pesquisar um produto    
    Log    ${GREET}
    Log    ${GREET}, ${NAME} !!

caso de teste 02 : executar     
    Log    ${DATA}

caso de teste 03 : lista 
    log    aqui é um dos produtos da lista: ${LISTA[0]} 
    log    aqui é o segundo produto da lista: ${LISTA[1]} 
    log    aqui é o segundo produto da lista: ${LISTA[2]}

caso de teste 04 : dicionário
    Log    O nome do personagem: ${PESSOA.nome} e email: ${PESSOA.email} e idade: ${PESSOA.idade}

Acessar a pagina Home da loja 
    Open BROWSER    url=${URL}    browser=${BROWSER}


digitar o login "${LOGINS}" e senha "${SENHAS}"
    Input Text    id=j_idt233    ${LOGINS}
    Input Text    id=j_idt237    ${SENHAS}
    
caso de teste 06 : clicar no botao Logar
    Click Element     id=j_idt263
    Click Element     id=j_idt263

caso de teste 07
    #Click Element      name=j_idt69
    #${elem}            Get WebElement  id:j_idt69
    #Click Element      ${elem}
    #Mouse Over         name=j_idt69
    Click Element       class=fb-button-inner
             

Teste DatabaseLibrary
    Connect To Database Using Custom Params    cx_Oracle    '${user}/${SENHA}@${db_host}:${1521}/${db_sid}'
    log    conectado com sucesso!

Teste consulta
   #Check If Exists In Database	select id from SBR_PRODUTO where ID >100
    @{queryResults}	Query	select * from SBR_PRODUTO where CODIGO_BARRA = 'OD1507ZZZ220V'
    Log Many	@{queryResults}	



Teste desconectar     
    Disconnect from Database
