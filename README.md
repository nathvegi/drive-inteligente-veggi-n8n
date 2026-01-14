# 🤖 Drive Inteligente Veggi

Sistema de gestão de ativos digitais automatizado com **n8n**, **Google Gemini** e **PostgreSQL**.

O **Drive Inteligente Veggi** transforma um repositório de arquivos no Telegram num ecossistema inteligente, permitindo a recuperação de mídias via linguagem natural com memória de contexto.

## 🚀 Funcionalidades
- **Busca por IA:** Extração de intenção e parâmetros via LLM.
- **Memória de Curto Prazo:** Contexto de conversa gerido por Redis.
- **Coletor Automático:** Ingestão de dados via canal de repositório com validação de nomenclatura.
- **Arquitetura SQL:** Base de dados relacional para buscas rápidas e estruturadas.
- **Auditoria sob Demanda:** Geração de relatórios em Excel via Telegram com consultas SQL flexíveis. [ADICIONADO]

## 📊 Manutenção e Auditoria
Para garantir a integridade do banco de dados, o repositório inclui um fluxo auxiliar (`Auditoria de Dados - Postgres.json`):
- **Flexibilidade:** Permite a alteração da Query SQL no nó do Postgres antes da execução manual.
- **Processamento:** Converte os resultados do banco de dados em uma planilha `.xlsx`.
- **Entrega:** Envia o relatório final automaticamente para o Telegram administrativo.
*Configuração padrão: Identifica produtos (still/lookbook) sem referência cadastrada.*

## 📂 Organização do Repositório
- `/workflows`: Ficheiros JSON dos fluxos n8n (incluindo o fluxo de auditoria).
- `/sql`: Script de criação das tabelas no PostgreSQL.
- `/docs`: Diagramas e prints da interface.

## 📗 Documentação Completa
Acesse o manual detalhado com a explicação de cada nó e regras de operação em:
👉 **https://nathvegi.github.io/drive-inteligente-veggi-n8n/**

---
*Projeto desenvolvido para fins de automação de ativos e inteligência de dados.*
