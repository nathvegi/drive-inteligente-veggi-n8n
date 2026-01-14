# 🤖 Drive Inteligente Veggi - Assistente Bia (n8n)

O **Drive Inteligente Veggi** é um ecossistema de automação profissional desenvolvido para gerenciar, indexar e distribuir ativos de marca (fotos, catálogos e documentos) via Telegram, utilizando Processamento de Linguagem Natural (PLN).

## 🌟 Principais Funcionalidades

* **Busca Inteligente:** A assistente (Bia) entende pedidos naturais como "Me mande o catálogo de Verão 25" ou "Fotos da linha Casual" utilizando IA.
* **Extração Híbrida:** Sistema otimizado que combina padrões REGEX para velocidade e o modelo LLM Google Gemini para extração de entidades complexas.
* **Coletor Automático:** Fluxo secundário que indexa automaticamente arquivos enviados a um canal monitorado, extraindo metadados diretamente para o banco de dados.
* **Deduplicação Inteligente:** Filtro que garante que o usuário receba apenas arquivos únicos, evitando repetições desnecessárias.
* **Memória de Contexto:** Integração com Redis para manter o histórico da conversa, permitindo perguntas de acompanhamento.

## 📸 Detalhes da Arquitetura (n8n)

### 1. Visão Geral do Fluxo Principal
![Fluxo Principal](./img/fluxo-principa-01.png)
*Arquitetura completa da Bia: desde a entrada da mensagem até a entrega do arquivo final.*

### 2. Camada de Inteligência e Extração
![Inteligência e Extração](./img/fluxo-principa-02.png)
*Destaque para o Agente Extrator e o esquema de memória (Redis) que permite conversas contextuais.*

### 3. Motor de Busca e Filtros
![Busca e Filtros](./img/fluxo-principa-03.png)
*Visualização da lógica de roteamento e busca inteligente no banco de dados PostgreSQL.*

### 4. Fluxo Auxiliar (Coletor de IDs)
![Fluxo Coletor](./img/fluxo-coletor.png)
*Sistema de ingestão de dados: validação de nomenclatura e registro automático.*

## 🛠️ Stack Tecnológica

| Tecnologia | Função |
| :--- | :--- |
| **n8n** | Orquestração de workflows e lógica de negócios. |
| **Google Gemini 2.5 Flash Lite** | IA para extração de dados estruturados e chat humano. |
| **PostgreSQL** | Banco de dados para armazenamento de metadados e file_ids. |
| **Redis** | Persistência de memória de curto prazo (Contexto). |
| **Telegram API** | Interface de comunicação e servidor de arquivos. |

## 📂 Estrutura do Repositório

* `/workflows`: Arquivos JSON para importação direta no n8n.
* `/sql`: Script de criação de tabelas e índices do PostgreSQL.
* `/img`: Documentação visual da arquitetura dos fluxos.

## ⚙️ Configuração e Instalação

1.  **Banco de Dados:** Execute o script em `sql/setup_database.sql` no seu PostgreSQL.
2.  **Importação:** Importe os JSONs da pasta `/workflows` no seu n8n.
3.  **Credenciais:** Configure as APIs do Telegram, Google Gemini, Redis e Postgres.
4.  **Dica Técnica:** Certifique-se de que o `chatId` está sendo tratado como String para garantir a persistência correta no Redis.

---
*Desenvolvido como uma solução escalável para gestão de ativos digitais.*
