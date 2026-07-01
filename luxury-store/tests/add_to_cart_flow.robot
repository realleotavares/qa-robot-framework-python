*** Settings ***
Documentation     Suite de Testes BDD para a loja de Luxo
Library           Browser

*** Variables ***
${LUXURY_STORE_URL}    https://luxurystore.example.com/
${PRODUCT_NAME}        Bolsa de Couro Premium

*** Test Cases ***
Adicionar Item de Luxo ao Carrinho
    [Documentation]    Valida se o contador do carrinho e atualizado apos clicar em Adicionar
    [Tags]             Cart    Checkout    LuxuryStore
    Given que o cliente esta na pagina de detalhes do produto de luxo
    When ele clica no botao Adicionar ao Carrinho
    Then o contador de itens no carrinho deve mudar de 0 para 1

*** Keywords ***
Given que o cliente esta na pagina de detalhes do produto de luxo
    # Como não temos o site real hospedado na web, mockaremos a navegação
    # para fim de demonstração de framework BDD
    New Browser    chromium    headless=True
    New Context    
    # Criamos um HTML embutido para simular a página sem depender de rede
    New Page       data:text/html,<html><body><h1>${PRODUCT_NAME}</h1><button id="add-to-cart">Adicionar ao Carrinho</button><span id="cart-count">0</span><script>document.getElementById('add-to-cart').addEventListener('click', () => document.getElementById('cart-count').innerText = '1');</script></body></html>
    Get Text       h1    ==    ${PRODUCT_NAME}

When ele clica no botao Adicionar ao Carrinho
    Click    id=add-to-cart

Then o contador de itens no carrinho deve mudar de 0 para 1
    Get Text    id=cart-count    ==    1
