*** Settings ***
Resource           ../utils/base.resource

*** Variables ***
${BROWSER}                                    headlessfirefox
${URL}                                        http://www.automationpractice.pl/index.php

*** Keywords ***
Abrir o navegador   
    Open Browser                                        browser=${BROWSER} 
    Set Window Size                                     width=1366    height=768                  
    Go To                                               url=${URL}

E realizo o login
    Click Element                                       ${homepageSignIn}
    Wait Until Element Is Visible                       ${loginEmailInput}
    Input Text                                          ${loginEmailInput}         ${USERNAME}
    Input Text                                          ${loginPasswordInput}      ${PASSWORD}
    Wait Until Element Is Visible                       ${loginSignInButton}
    Click Element                                       ${loginSignInButton}
    Wait Until Element Is Visible                       ${loginSuccess}            timeout=10s
    Go To                                               url=${URL}
    Wait Until Element Is Visible                       ${homepageLogo}            timeout=10s

Fechar o navegador
    Capture Page Screenshot
    Close Browser