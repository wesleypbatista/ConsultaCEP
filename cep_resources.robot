*** Settings ***
Library            SeleniumLibrary


*** Keywords ***
Abrir o navegador
    Open Browser    browser=firefox  
    Maximize Browser Window
Fechar o navegador   
    Close Browser 


#Cenário 01

Dado que acesso o cep correios
    Go To    url= https://buscacepinter.correios.com.br/app/endereco/index.php

E realizo a busca do CEP “38400046”
    Input Text       //input[contains(@name,'endereco')]   38400046

E clico em pesquisar
    Click Element    //button[@name='btn_pesquisar'][contains(@id,'pesquisar')][contains(.,'Buscar')]
        
Então deverá listar o endereço Logradouro/Nome Bairro/Distrito Localidade/UF CEP
    Wait Until Element Is Enabled    //h5[contains(.,'Resultado da Busca por Endereço ou CEP')]
    Element Text Should Be           //td[contains(@data-th,'Logradouro/Nome')]    Rua Adelino Franco
