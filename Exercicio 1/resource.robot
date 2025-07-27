*** Settings ***

Library    SeleniumLibrary
Library    DatabaseLibrary
Library    OperatingSystem


*** Variables ***
${NAME}      mundo
${GREET}     ola
${BROWSER}    chrome

*** Keywords ***

*** Test Cases ***    
constants 
    Log    Olá
    Log    Olá, mundo !!
variaveis
    Log    ${GREET}
    Log    ${GREET}, ${NAME} !!



