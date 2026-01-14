---
layout: default
title: Drive Inteligente Veggi
---

# 🤖 Drive Inteligente Veggi - Documentação Técnica

Bem-vindo à documentação oficial da assistente **Bia**, uma solução de inteligência de dados para o ecossistema Veggi.

---

## 📸 Arquitetura Visual dos Fluxos (n8n)

Para facilitar a manutenção, o sistema foi desenhado seguindo uma hierarquia de cores e blocos funcionais.

### 1. Visão Geral do Fluxo Principal
![Fluxo Principal](./img/fluxo-fluxo-principa-01.png)
*Arquitetura de ponta a ponta: Entrada, Triagem, Inteligência e Entrega.*

### 2. Detalhe: Camada de Inteligência e Extração
![Inteligência e Extração](./img/fluxo-principa-02.png)
*Uso do Google Gemini 1.5 e Structured Output Parser para garantir dados limpos.*

### 3. Detalhe: Motor de Busca e Filtros
![Busca e Filtros](./img/fluxo-principa-03.png)
*Lógica de busca avançada no PostgreSQL com suporte a múltiplos critérios.*

### 4. Fluxo Auxiliar: Coletor de IDs
![Fluxo Coletor](./img/coletor-de-dados.png)
*Automação de back-office para alimentação rápida do banco de dados.*

---

## 🛠️ Especificações Técnicas

| Módulo | Tecnologia | Descrição |
| :--- | :--- | :--- |
| **Orquestrador** | n8n | Coordenação de todos os nós e Webhooks. |
| **IA / LLM** | Google Gemini | Processamento de linguagem natural e extração. |
| **Banco de Dados** | PostgreSQL | Armazenamento de metadados e File IDs. |
| **Memória** | Redis | Histórico de chat e persistência de contexto. |

---

## 📂 Repositório de Arquivos

Os arquivos de importação (`.json`) e os scripts de banco de dados (`.sql`) estão disponíveis nas pastas correspondentes deste repositório para facilitar o deploy em novos ambientes.

---
[Voltar para o código no GitHub](https://github.com/seu-usuario/drive-inteligente-veggi-n8n)
