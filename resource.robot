*** Settings ***

Library    SeleniumLibrary
Library    DatabaseLibrary
Library    OperatingSystem


*** Variables ***
${NAME}      mundo
${GREET}     ola
${BROWSER}    chrome
${URL}        http://localhost:8080/....
${DB_CONNECT_STRING}    'HOMOLOG/p1nc3l@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST="endereco host")(PORT=1521))(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=Nome Banco)))'

*** Keywords ***

constants 
    Log    Olá
    Log    Olá, mundo !!
variaveis
    Log    ${GREET}
    Log    ${GREET}, ${NAME} !!



