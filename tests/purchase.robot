*** Settings ***
Documentation      Essa suíte possui os testes relacionado a compras 
Resource           ../pageobject/utils/base.resource

Test Setup         Abrir o navegador
Test Teardown      Fechar o navegador

*** Test Cases ***

Cenário de Teste 1: Validar cenário de inserir um produto no carrinho
    [Documentation]    Verifica se o módulo de Pedido de Compra está ok
    [Tags]             pipeline  purchase
    Dado que estou na página inicial
    E realizo o login
    Quando insiro um produto no carrinho
    Então o produto deve ser inserido corretamente
    
Cenário de Teste 2: Validar cenário de finalizar a compra
    [Documentation]    Verifica se o módulo de Pedido de Compra está ok
    [Tags]             pipeline  purchase
    Dado que estou na página inicial
    E realizo o login
    Quando insiro um produto no carrinho
    Então o produto deve ser inserido corretamente
    E deve ser possível finalizar a compra