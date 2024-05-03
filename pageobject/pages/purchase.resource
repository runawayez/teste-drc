*** Settings ***
Resource           ../utils/base.resource

*** Variables ***

*** Keywords ***

Quando insiro um produto no carrinho
    Go To                                        url=${URL}?id_product=2&controller=product
    Wait Until Element Is Enabled                ${womenBlouseSize}            
    Select From List By Label                    ${womenBlouseSize}            M
    Wait Until Element Is Visible                ${womenBlouseCart}            
    Click Element                                ${womenBlouseCart}
    Wait Until Element Is Visible                ${womenBlouseContinue}        
    Click Element                                ${womenBlouseContinue}

Então o produto deve ser inserido corretamente
    Go To                                        url=${URL}?controller=order
    Wait Until Element Is Visible                ${cartSummary}

E deve ser possível finalizar a compra
    Click Element                                ${cartCheckoutButton}
    Wait Until Element Is Visible                ${cartCheckoutButton}
    Click Element                                ${cartCheckoutButton}
    Wait Until Element Is Visible                ${cartShippingLogo}
    Press Keys                                   None                           PAGE_DOWN
    Wait Until Element Is Enabled                ${cartTermsAccept}            
    Click Element                                ${cartTermsAccept}
    Click Element                                ${cartCheckoutButton}
    Wait Until Element Is Visible                ${cartPaymentOption}
    Click Element                                ${cartPaymentOption}
    Wait Until Element Is Visible                ${cartOrderSummary}
    Wait Until Element Is Enabled                ${cartConfirmOrder}            
    Click Element                                ${cartConfirmOrder}
    Wait Until Element Is Visible                ${cartSuccessToast}            timeout=10s