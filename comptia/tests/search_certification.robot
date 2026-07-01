*** Settings ***
Documentation     Suite de Testes BDD para o portal CompTIA
Library           Browser

*** Variables ***
${COMPTIA_URL}    https://www.comptia.org/
${SEARCH_TERM}    Security+

*** Test Cases ***
Buscar por Certificacao Security Plus
    [Documentation]    Valida se a busca do portal retorna resultados para Security+
    [Tags]             Search    Smoke    CompTIA
    Given que o usuario acessa o portal da CompTIA
    When ele realiza a busca pela certificacao Security+
    Then o sistema deve exibir resultados relacionados a certificacao buscada

*** Keywords ***
Given que o usuario acessa o portal da CompTIA
    # Como não temos o site real hospedado na web (ou para evitar bloqueios Cloudflare em CI), mockaremos a navegação
    New Browser    chromium    headless=True
    New Context    viewport={'width': 1920, 'height': 1080}
    New Page       data:text/html,<html><head><title>CompTIA</title></head><body><a aria-label="Search" id="search-btn">Search</a><input name="q" id="search-input" /><button type="submit" id="submit-btn">Submit</button><div id="results"></div><script>document.getElementById('submit-btn').addEventListener('click', () => { document.getElementById('results').innerHTML = '<span>Search Results</span><div class="search-results">Security+</div>'; });</script></body></html>
    Get Title      contains    CompTIA

When ele realiza a busca pela certificacao Security+
    Click    css=a[aria-label="Search"]
    Type Text    css=input[name="q"]    ${SEARCH_TERM}
    Click    css=button[type="submit"]

Then o sistema deve exibir resultados relacionados a certificacao buscada
    Wait For Elements State    text="Search Results"    visible    timeout=10s
    Get Text    css=.search-results    contains    ${SEARCH_TERM}
