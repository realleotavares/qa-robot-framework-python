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
    New Browser    chromium    headless=True
    New Context    viewport={'width': 1920, 'height': 1080}
    New Page       ${COMPTIA_URL}
    Get Title      contains    CompTIA

When ele realiza a busca pela certificacao Security+
    # Como é um teste de portfólio, podemos usar mock de navegação ou interagir com a UI se acessível.
    # Se o botão de busca estiver sob um ícone:
    Click    css=a[aria-label="Search"]
    Type Text    css=input[name="q"]    ${SEARCH_TERM}
    Click    css=button[type="submit"]

Then o sistema deve exibir resultados relacionados a certificacao buscada
    Wait For Elements State    text="Search Results"    visible    timeout=10s
    Get Text    css=.search-results    contains    ${SEARCH_TERM}
