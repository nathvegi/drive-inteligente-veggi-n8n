<style>
  /* Fundo da página e texto */
  body { background-color: #121212 !important; color: #e0e0e0 !important; }
  
  /* Ajuste do Header (Topo do Cayman) */
  .page-header {
    background-color: #1a1a1a !important;
    background-image: linear-gradient(120deg, #155799, #1a1a1a) !important;
  }

  /* Ajuste dos links e botões */
  a { color: #1e90ff !important; }
  .btn { background-color: rgba(255, 255, 255, 0.05) !important; border-color: rgba(255, 255, 255, 0.2) !important; color: #fff !important; }

  /* Ajuste dos blocos de código e tabelas */
  code, pre { background-color: #1e1e1e !important; color: #ff7b72 !important; border: 1px solid #333 !important; }
  table { background-color: #1e1e1e !important; border: 1px solid #444 !important; }
  th, td { border: 1px solid #444 !important; color: #e0e0e0 !important; }

  /* Títulos */
  h1, h2, h3, h4, h5, h6 { color: #ffffff !important; }
</style>

---
layout: default
title: Drive Inteligente Veggi
---

# 🤖 Drive Inteligente Veggi - Documentação Técnica

Bem-vindo à documentação oficial do assistente **Drive Inteligente Veggi**, uma solução de inteligência de dados para o ecossistema Veggi.

---

## 📸 Arquitetura Visual dos Fluxos (n8n)

Para facilitar a manutenção, o sistema foi desenhado seguindo uma hierarquia de cores e blocos funcionais.

### 1. Visão Geral do Fluxo Principal
![Fluxo Principal](./img/fluxo-principa-01.png)
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
