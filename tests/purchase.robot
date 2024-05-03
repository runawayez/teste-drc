*** Settings ***
Documentation      Essa suíte possui os testes relacionado a compras 
Resource           ../pageobject/utils/base.resource

Test Setup         Abrir o navegador
Test Teardown      Fechar o navegador

*** Test Cases ***

Cenário de Teste 1: Validar cenário de inserir um produto no carrinho
    [Documentation]    Verifica a funcionalidade de inserir um produto no carrinho corretamente
    [Tags]             pipeline  purchase
    Dado que estou na página inicial
    E realizo o login
    Quando insiro um produto no carrinho
    Então o produto deve ser inserido corretamente
    
Cenário de Teste 2: Validar cenário de finalizar a compra
    [Documentation]    Verifica a funcionalidade de realizar um fluxo completo de compra
    [Tags]             pipeline  purchase
    Dado que estou na página inicial
    E realizo o login
    Quando insiro um produto no carrinho
    Então o produto deve ser inserido corretamente
    E deve ser possível finalizar a compra