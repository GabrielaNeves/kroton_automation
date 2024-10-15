*** Settings ***
Documentation    Essa suíte de testes automatiza a verificação e comparação dos valores de ações das empresas Cogna (COGN3), Vasta (VSTA), e o índice Ibovespa com os valores fornecidos pela API do Yahoo Finanças.
...              O objetivo é garantir que os dados apresentados no site correspondem com os valores do último fechamento.
Resource         ../resources/keywords.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador
    
*** Test Cases ***
Caso de Teste 01 - Validar valor de ação da Cogna
    Acessar a home page do site "https://www.kroton.com.br/"
    Fechar o modal de cookies
    Coletar o valor da "Cogna" no site
    Coletar o valor da sigla "COGN3.SA" na API do Yahoo Finanças
    Comparar valores obtidos

Caso de Teste 02 - Validar valor de ação da Vasta
    Acessar a home page do site "https://www.kroton.com.br/"
    Fechar o modal de cookies
    Coletar o valor da "Vasta" no site
    Coletar o valor da sigla "VSTA" na API do Yahoo Finanças
    Comparar valores obtidos

Caso de Teste 03 - Validar valor do índice Ibovespa
    Acessar a home page do site "https://www.kroton.com.br/"
    Fechar o modal de cookies
    Coletar o valor da "Ibovespa" no site
    Coletar o valor da sigla "^BVSP" na API do Yahoo Finanças
    Comparar valores obtidos