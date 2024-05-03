*** Settings ***
Resource           ../utils/base.resource

*** Variables ***

${CODIGOPOSTALFAKE}                      FakerLibrary.Postalcode

*** Keywords ***

Dado que estou na página inicial
    Wait Until Element Is Visible        ${homepageLogo}              timeout=10s

E acesso o menu de login
    Click Element                        ${homepageSignIn}
    Wait Until Element Is Visible        ${loginLogo}
    ${USER_FAKER}                        FakerLibrary.Pystr           min_chars=5    max_chars=20
    Input Text                           ${loginCreateEmail}          ${USER_FAKER}@testedrc.com
    

Quando o usuário preenche o formulário corretamente
    
Então o sistema cria a conta do usuário

Quando o usuário não preenche o formulário corretamente

Então o sistema não cria a conta do usuário
 