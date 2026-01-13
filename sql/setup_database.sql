-- Script de configuração da base de dados do Drive Inteligente Veggi
-- Este script cria a tabela necessária para armazenar os metadados dos arquivos enviados via Telegram

CREATE TABLE IF NOT EXISTS arquivos_veggi (
    id SERIAL PRIMARY KEY,
    file_id TEXT NOT NULL,           -- ID de envio do Telegram (usado para reenviar o arquivo)
    file_unique_id TEXT UNIQUE,      -- ID único universal do arquivo no Telegram (evita duplicidade)
    nome_arquivo TEXT,               -- Nome original do ficheiro/arquivo
    referencia TEXT,                 -- Código de referência do produto (ex: 1234)
    linha TEXT,                      -- Categoria/Linha (ex: Casual, Noite, Fitness)
    tipo TEXT,                       -- Tipo de material (ex: Still, Lookbook, Vídeo, Conceito)
    colecao TEXT,                    -- Nome da Coleção/Estação (ex: Inverno 25, Verão 24)
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Criação de Índices para garantir que as buscas da Bia sejam ultra rápidas
CREATE INDEX idx_referencia ON arquivos_veggi(referencia);
CREATE INDEX idx_busca_composta ON arquivos_veggi(linha, tipo, colecao);
CREATE INDEX idx_nome_busca ON arquivos_veggi(nome_arquivo);
