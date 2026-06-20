*** Settings ***
Documentation     Suite de testes BDD (Behavior Driven Development) para validar a UI do cliente TAVARDT.
...               Este teste utiliza a biblioteca Browser (baseada em Playwright) para alta performance.
Library           Browser

*** Variables ***
${URL}            https://ag.tavardt.com
${BROWSER}        chromium
${HEADLESS}       True

*** Test Cases ***
Validar Redirecionamento de Idioma para Português (Brasil)
    [Documentation]    Garante que o acesso via um navegador com locale em português brasileiro renderiza o conteúdo correto.
    [Tags]             UI    Acessibilidade    Caminho Feliz
    Dado que o usuário acessa o sistema com o navegador em português
    Quando a página principal carregar
    Então a linguagem da página deve estar configurada para português pt-BR

*** Keywords ***
Dado que o usuário acessa o sistema com o navegador em português
    New Browser    browser=${BROWSER}    headless=${HEADLESS}
    New Context    locale=pt-BR
    New Page       ${URL}

Quando a página principal carregar
    Wait For Elements State    html    attached

Então a linguagem da página deve estar configurada para português
    ${lang_attr}=    Get Attribute    html    lang
    Should Contain    ${lang_attr}    pt-BR   ignore_case=True
