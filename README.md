[🇺🇸 English](#english) | [🇧🇷 Português](#português)

<a id="english"></a>
# QA Robot Framework & Python

This is my secondary QA portfolio, dedicated specifically to test automation using **Python** and **Robot Framework**. I use this repository to demonstrate how I write BDD (Behavior Driven Development) test scripts for different projects.

## Multi-Client Architecture
Following the same structure as my main QA portfolio, the test scripts here are organized by client folders. This allows me to scale the repository while keeping everything organized.

```text
qa-robot-framework-python/
├── .github/workflows/        # GitHub Actions (CI Pipeline)
├── tavardt/                  # [Client 1]
│   └── tests/
│       └── tavardt_ui.robot  # BDD UI Test Script
├── client2/                  # [Client 2]
│   └── tests/
```

## Tech Stack
- **Python** (Core language)
- **Robot Framework** (Test runner and Keyword-driven framework)
- **Browser Library** (High-performance UI testing)

## Running the Tests
```bash
pip install -r requirements.txt
rfbrowser init
robot -d results */tests/
```

<br><br>

<a id="português"></a>
# QA Robot Framework & Python

Este é o meu portfólio secundário de QA, focado especificamente em automação com **Python** e **Robot Framework**. Utilizo este repositório para demonstrar como escrevo scripts de teste baseados em BDD (Behavior Driven Development) na prática.

## Arquitetura Multi-Cliente
Seguindo o mesmo padrão do meu portfólio principal, os testes aqui são organizados por pastas de clientes. Isso me permite escalar o repositório mantendo a organização de um projeto real.

```text
qa-robot-framework-python/
├── .github/workflows/        # Pipeline de CI (GitHub Actions)
├── tavardt/                  # [Cliente 1]
│   └── tests/
│       └── tavardt_ui.robot  # Script de Teste UI (BDD)
├── client2/                  # [Cliente 2]
│   └── tests/
```

## Stack Técnica
- **Python** (Linguagem base)
- **Robot Framework** (Framework de execução e Keywords)
- **Browser Library** (Testes de UI de alta performance)

## Executando os Testes
```bash
pip install -r requirements.txt
rfbrowser init
robot -d results */tests/
```
