[🇺🇸 English](#english) | [🇧🇷 Português](#português)

<a id="english"></a>
# QA Robot Framework & Python

This repository demonstrates the power of **Behavior Driven Development (BDD)** and keyword-driven testing using Python and Robot Framework. It bridges the gap between business requirements and technical test automation.

## Stack & Libraries
- **Language:** Python 3.10+
- **Framework:** Robot Framework
- **Libraries:**
  - `robotframework-browser`: High-performance UI testing powered by Playwright underneath.
  - `robotframework-requests`: Backend API validation.

## Purpose
While UI automation scripts (like Playwright with TypeScript) are incredibly fast and developer-friendly, **Robot Framework** excels in readability. By abstracting complex logic into natural language keywords, QA engineers can create test suites that Product Owners and Stakeholders can actually read and validate.

## How to Run
```bash
pip install -r requirements.txt
rfbrowser init
robot -d results tests/
```

<br><br>

<a id="português"></a>
# QA Robot Framework & Python

Este repositório demonstra o poder do **Behavior Driven Development (BDD)** e testes orientados a palavras-chave (keyword-driven) utilizando Python e Robot Framework. Ele atua como uma ponte entre os requisitos de negócio e a automação técnica de testes.

## Stack e Bibliotecas
- **Linguagem:** Python 3.10+
- **Framework:** Robot Framework
- **Bibliotecas:**
  - `robotframework-browser`: Testes de UI de alta performance utilizando a engine do Playwright por baixo dos panos.
  - `robotframework-requests`: Validação de Backend/API.

## Propósito
Enquanto scripts de automação de UI (como Playwright com TypeScript) são incrivelmente rápidos e voltados para o desenvolvedor, o **Robot Framework** brilha na legibilidade. Ao abstrair lógicas complexas em palavras-chave (Keywords) de linguagem natural, Analistas de QA podem criar suítes de teste que Product Owners e Stakeholders conseguem ler e validar.

## Como Executar
```bash
pip install -r requirements.txt
rfbrowser init
robot -d results tests/
```
