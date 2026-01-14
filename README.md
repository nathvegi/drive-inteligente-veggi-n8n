# 🤖 Drive Inteligente Veggi

Sistema de gestão de ativos digitais automatizado com **n8n**, **Google Gemini** e **PostgreSQL**.

O **Drive Inteligente Veggi** transforma um repositório de arquivos no Telegram num ecossistema inteligente, permitindo a recuperação de mídias via linguagem natural com memória de contexto.

## 🚀 Funcionalidades
- **Busca por IA:** Extração de intenção e parâmetros via LLM.
- **Memória de Curto Prazo:** Contexto de conversa gerido por Redis.
- **Coletor Automático:** Ingestão de dados via canal de repositório com validação de nomenclatura.
- **Arquitetura SQL:** Base de dados relacional para buscas rápidas e estruturadas.

## 📂 Organização do Repositório
- `/workflows`: Ficheiros JSON dos fluxos n8n.
- `/sql`: Script de criação das tabelas no PostgreSQL.
- `/docs`: Diagramas e prints da interface.

## 📗 Documentação Completa
Acesse o manual detalhado com a explicação de cada nó e regras de operação em:
👉 **https://nathvegi.github.io/drive-inteligente-veggi-n8n/**

---
*Projeto desenvolvido para fins de automação de ativos e inteligência de dados.*
