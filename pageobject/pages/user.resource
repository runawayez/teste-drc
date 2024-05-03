*** Settings ***
Resource           ../utils/base.resource


*** Keywords ***

Dado que estou na página inicial
    Wait Until Element Is Visible        ${homepageLogo}              timeout=10s

E acesso o menu de login
    Click Element                        ${homepageSignIn}
    Wait Until Element Is Visible        ${loginLogo}   

Quando o usuário preenche o formulário corretamente
    Quando o usuário não preenche o formulário corretamente
    ${PASSWORDFAKE}                      FakerLibrary.Password
    Input Text                           ${loginPasswordInput}        ${PASSWORDFAKE}
    
Então o sistema cria a conta do usuário
    Click Element                        ${loginRegisterButton}
    Wait Until Element Is Visible        ${loginSuccessToast}         timeout=20s

Quando o usuário não preenche o formulário corretamente
    ${USER_FAKER}                        FakerLibrary.Pystr           min_chars=5    max_chars=20
    Input Text                           ${loginCreateEmail}          ${USER_FAKER}@testedrc.com
    Click Element                        ${loginCreateButton}
    Wait Until Element Is Visible        ${loginNameInput}
    Input Text                           ${loginNameInput}            ${USER_FAKER}
    Input Text                           ${loginLastNameInput}        ${USER_FAKER}

Então o sistema não cria a conta do usuário
    Click Element                        ${loginRegisterButton}
    Wait Until Element Is Visible        ${loginRequiredInfo}
 