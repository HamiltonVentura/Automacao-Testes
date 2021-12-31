# ROBOTFRAMEWORK
Utilização do Robot Framework  

Fiz diversas pesquisas e cursos complementares que me ajudaram a desenvolver um projeto na antiga empresa que eu estava trabalhando. Como era algo novo na empresa me obriguei a aprender e desenvolver as habilidade necessárias, em ambiente Linux.

![image](https://user-images.githubusercontent.com/16406050/147835594-db26d48b-43ea-4125-8831-f24d5c3c07d8.png)


ROBOT FRAMEWORK
Segundo o site oficial : ”Robot Framework é um framework de automação extensível
baseado em palavras-chave baseado em Python para teste de aceitação, desenvolvimento
baseado em teste de aceitação (ATDD), desenvolvimento baseado em comportamento (BDD) e
automação de processos robóticos (RPA). Pode ser usado em ambientes distribuídos e
heterogêneos, onde a automação requer o uso de diferentes tecnologias e interfaces.”
PRINCIPAIS VANTAGENS
1. Permite sintaxe fácil.
2. Permite Criação de palavras chave.
3. fornecimento de relatórios.
4. É independente de plataforma e aplicativo.
5. Fornece API simples para criação de Bibliotecas (Python e Java)
6. Fornece Suporte ao Selenium, Teste GUI java, Telnet e SSH
7. Suporte a Criação de casos de testes baseados em casos
8. Consultas automáticas


PREPARANDO O AMBIENTE
OBS: Os códigos descritos a baixo para instalação já estão na pasta “INSTALAÇÕES” no
arquivo instalar.sh, onde será executado auitomaticamente.
1º Copie os arquivos para sua máquina local
2º Execute o comando “SUDO CHMOD 777 instacao.sh
3º execute o comando sudo ./ instalacao.sh
Em seguida aguar a instalação, e tecle S quando pedir autorização para executar as
instalações;
OBS: o Cliente Oracle e o Driver do Navegador de escolha precisam ser instalados
manualmente. Caso algumas das instalações não dê certo procure códigos mais
atualizados.

Antes da instalação de qualquer programa instale o TIMESHIFT, ele criará ponto de restauração,
que evitará problemas, caso seja alterado variáveis do sistema ou diretórios que não devem ser
alterados.
sudo add-apt-repository -y ppa:teejee2008/ppa
sudo apt-get update
sudo apt-get install timeshift
referência :
https://www.edivaldobrito.com.br/aplicativo-de-restauracao-do-sistema/

1 - O Python é a linguagem responsável para rodar o framework Robot, algumas bibliotecas
utilizam o python na versão 3 por isso é importante instalar a versão mais recente.
Sudo apt-get install pip3
Sudo pat-get install pip
sudo pip install python

sudo pip install python3

2 – Execute a instalação do robot e as bibliotecas externas, do Selenium e da
databaselibrary para conexão com banco de dados.
2.1 pip install robotframework
verifique se foi instalado corretamente robot --version
2.2 pip3 install robotframework-seleniumlibrary
2.3 pip3 install robotframework-databaselibrary
Não instale : pacote opcional caso apareça erro relacionado a bibliotecas tk
2.4 sudo apt-get install python-tk python3-tk tk-dev
3 - Acesse a pasta instalações/ cliente oracle /
e execute o arquivo : oracle-instantclient-basic_21.1.0.0.0-2_amd64.DEB
Após a instalação pule o passo 3.1 para o 4
3 – Instale o cliente Oracle para conexão com banco de dados via Python, na base
HOMOLOG. Lembrando que esse mesmo tipo de conexão servirá para as base DESENV e
PROD:
python3 -m pip install cx_Oracle
3.1 – Estabeleça a conexão com o banco de dados, Digite Python no Terminal

![image](https://user-images.githubusercontent.com/16406050/147835609-62b5af8c-d2e1-4dc4-84c7-5397a07f5dfe.png)

3.2 - Digite import cx_Oracle e na sequencia
bd = cx_Oracle.connect("OCEAN/p1nc3l@192.168.200.4/HOMOLOG")

![image](https://user-images.githubusercontent.com/16406050/147835613-7240bc71-854a-480e-911c-a86637159a44.png)
Caso de algum erro na biblioteca libaio basta instalar sudo apt install libaio1
Normalmente esse erro ocorre por causa de incompatibilidades com relação as aplicações dependentes, 32 com 64 bits
Após a instalação os código do robot framework podem ser usados diretamente no terminal.

4 - Instale o webdriver do navegador desejado, e coloque na pasta determinada :
Faça o Download do driver do google chrome: através do endereço:
https://chromedriver.chromium.org/downloads

![image](https://user-images.githubusercontent.com/16406050/147835626-c564ad8c-52ee-4e02-bc41-03f3e8ee0cc6.png)


Após o download e extração do arquivo, acessar a pasta e digitar os seguintes
comandos :
1 – Movimente o arquivo para o diretório usrlocal/bin
sudo mv chromedriver /usr/local/bin
2 - Atribua validação para que o sistema possa executar o arquivo digitando:
sudo chmod +x /usr/local/bin/chromedriver
5 – Faça download do appium server para testes no Android studio:
https://github.com/appium/appium-desktop/releases/tag/v1.21.0
Dentro do diretório que estiver o arquivo baixado valide ele digitando o comando:


![image](https://user-images.githubusercontent.com/16406050/147835636-0a43c4ac-108d-4c52-901c-3ab787cf0453.png)

Resumo: instalação do Python, Robot e suas bibliotecas, instalação do webdriver do
ChromeDriver, caso alguns dos passos descritos tiver algum erro revise os passos
anteriores.
FERRAMENTAS
As seguinte ferramentas
Aplicativo Teste Plugins/ app
Android studio APPIUM -
Visual Studio Code Ocean/ Coletor/ API Robot intellisense /run
1 A instalação do android studio pode ser feito pela loja do Linux acessando através do
aplicativo loja.
Para rodar a aplicação avd MANAGER – digite no terminal
sudo chmod 777 -R /dev/kvm



#!/bin/bash
#autor Hamilton Ventura

echo "#################################################"
echo "########### INSTALAÇÃO AMBIENTE ROBOT ###########"
echo "#################################################"

sudo apt-get update
sudo apt-get upgrade

sudo add-apt-repository -y ppa:teejee2008/ppa
sudo apt-get update
sudo apt-get install timeshift

sudo apt-get install pip3
sudo pip3 install python3

##bibliotecas do robot framework 
sudo pip3 install robotframework
sudo pip3 install robotframework-seleniumlibrary
sudo pip3 install robotframework-databaselibrary

##executar caso de algum erro 
##sudo apt-get install python-tk python3-tk tk-dev

sudo python3 -m pip3 install cx_Oracle
sudo snap install code --classic

##acesso a pasta de instalação 
cd clienteOracle

##validacao para execucao do arquivo 
sudo chmod 777 oracle-instantclient-basic_21.1.0.0.0-2_amd64.deb

##instalação do arquivo 
sudo dpkg -i oracle-instantclient-basic_21.1.0.0.0-2_amd64.deb





