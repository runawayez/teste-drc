*** Settings ***
Documentation      Essa suíte possui os testes relacionados a usuário
Resource           ../pageobject/utils/base.resource

Suite Setup       Abrir o navegador
Test Setup        Recarregar Homepage
Test Teardown     Capturar Tela
Suite Teardown    Fechar o navegador

*** Test Cases ***

Cenário de Teste 1: Validar cenário de sucesso na criação do usuário
    [Documentation]    Verifica o cenário onde as informações são preenchidas corretamente
    [Tags]             pipeline  user
    Dado que estou na página inicial
    E acesso o menu de login
    Quando o usuário preenche o formulário corretamente
    Então o sistema cria a conta do usuário

Cenário de Teste 2: Validar cenário de insucesso na criação do usuário
    [Documentation]    Verifica o cenário onde as informações não são preenchidas corretamente
    [Tags]             pipeline  user
    Dado que estou na página inicial
    E acesso o menu de login
    Quando o usuário não preenche o formulário corretamente
    Então o sistema não cria a conta do usuário