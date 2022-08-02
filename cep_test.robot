*** Settings ***
Documentation    Este cenários de testes visa a buscar um produto chamado PlayStation 5 e deve retornar na página todos os produtos descrito.
Resource         cep_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***

Cenário 1 : Realizar a busca do Cep no site correios
    Dado que acesso o cep correios
    E realizo a busca do CEP “38400046”
    E clico em pesquisar
    Então deverá listar o endereço Logradouro/Nome Bairro/Distrito Localidade/UF CEP