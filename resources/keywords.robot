*** Settings ***
Library    SeleniumLibrary
Library    String
Library    ../libraries/custom_library.py

*** Variables ***
${BROWSER}                chrome
${BTN_ACEITAR_COOKIES}    //button[contains(@class, 'button-controller')]

*** Keywords ***
Abrir o navegador
    Open Browser    browser=${BROWSER}

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site "${URL}"
    Go To    url=${URL}

Fechar o modal de cookies
    Wait Until Element Is Visible    locator=${BTN_ACEITAR_COOKIES}
    Click Element    ${BTN_ACEITAR_COOKIES}  

Coletar o valor da "${EMPRESA_OU_INDICE}" no site
    ${LBL_VALOR} =    Set Variable    //p[contains(@class, 'jaCeyU') and contains(text(),'${EMPRESA_OU_INDICE}')]/..//p[contains(@class, 'quote-value-text')]
    Scroll Element Into View    locator=${LBL_VALOR}
    ${VALOR_COLETADO_COMPLETO}=    Execute Javascript    return document.evaluate("${LBL_VALOR}/text()", document, null, XPathResult.STRING_TYPE, null).stringValue.trim();
    Log    ${VALOR_COLETADO_COMPLETO}
    ${INICIO_INDICE} =    Evaluate    '${VALOR_COLETADO_COMPLETO}'.index('$')
    ${INICIO_INDICE} =    Evaluate    ${INICIO_INDICE} + 1
    ${VALOR_COLETADO} =    Get Substring    ${VALOR_COLETADO_COMPLETO}    ${INICIO_INDICE}
    ${VALOR_COLETADO} =    Strip String    ${VALOR_COLETADO}
    ${VALOR_COLETADO} =    Evaluate    '${VALOR_COLETADO}'.replace('.', '').replace(',', '.')
    Log    ${VALOR_COLETADO}
    Set Global Variable    ${VALOR_COLETADO}

Coletar o valor da sigla "${SIGLA}" na API do Yahoo Finanças
    ${PRECO_FECHAMENTO} =    Pegar Preco Fechamento    sigla=${SIGLA}
    Log    ${PRECO_FECHAMENTO}
    Set Global Variable    ${PRECO_FECHAMENTO}

Comparar valores obtidos
    Should Be Equal    first=${VALOR_COLETADO}    second=${PRECO_FECHAMENTO}    msg=O valor obtido no site não está atualizado com o último fechamento do mercado
