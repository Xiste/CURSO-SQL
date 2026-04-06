# 📊 Aprendendo SQL — Téo Me Why

Repositório com os estudos e exercícios realizados durante o curso **"Aprendendo SQL: Primeiras magias na linguagem dos dados"**, ministrado por **Téo Calvo** no Instituto Aaron Swartz (agosto de 2025).

---

## 🧠 Sobre o Curso

Curso gratuito voltado para quem tem pouco ou nenhum conhecimento em SQL e quer começar a acessar, analisar e consultar dados em bancos de dados relacionais. Todo o conteúdo foi trabalhado com **SQLite** como SGBD e **Visual Studio Code** como IDE, usando um dataset real do sistema de pontos do canal TeoMeWhy.

**Dataset:** [kaggle.com/datasets/teocalvo/teomewhy-loyalty-system](https://www.kaggle.com/datasets/teocalvo/teomewhy-loyalty-system)  
**Repositório do curso:** [github.com/TeoMeWhy/sql-2025](https://github.com/TeoMeWhy/sql-2025)

---

## 📚 Conteúdo Aprendido

### 1. Fundamentos de Banco de Dados

- O que é um banco de dados e por que dados são importantes
- Diferença entre SGBD (Sistema de Gerenciamento de Banco de Dados) e IDE
- Hierarquia: Instância → Database/Schema → Tabela → Registros
- Conceito de linhas/registros e colunas/campos
- Tipos de dados: `INT`, `FLOAT`, `STRING`, `BOOLEAN`, `DATE`, `TIMESTAMP`, `NULL`
- Chaves primárias (Primary Key) e chaves estrangeiras (Foreign Key)
- Constraints e Sequências

### 2. Primeiras Consultas — DQL (Data Query Language)

- `SELECT` — selecionar colunas e criar expressões
- `FROM` — definir a tabela de origem
- `WHERE` — filtrar registros com condições lógicas
- `CASE WHEN ... THEN ... END` — criar colunas condicionais
- Uso de `LIKE` para buscas de texto (começa com, termina com, contém)
- Uso de `BETWEEN` para intervalos numéricos

### 3. Agregações

- Funções de agregação: `COUNT(*)`, `COUNT(DISTINCT col)`, `SUM()`, `AVG()`, `MAX()`, `MIN()`
- `GROUP BY` — agrupar dados por categorias
- `ORDER BY` — ordenar resultados
- `HAVING` — filtrar resultados agregados

### 4. JOINs — Cruzando Tabelas

- `INNER JOIN` — apenas registros com correspondência em ambas as tabelas
- `LEFT JOIN` — todos os registros da tabela esquerda + correspondências da direita
- `RIGHT JOIN` — todos os registros da tabela direita + correspondências da esquerda
- Variações com `WHERE ... IS NULL` para encontrar registros sem correspondência

### 5. UNIONs

- Unir resultados de múltiplas queries em um único conjunto de dados

### 6. Subqueries e CTEs

- Subqueries aninhadas dentro de outras queries
- `WITH ... AS (...)` — Common Table Expressions (CTE) para organizar consultas complexas

### 7. Window Functions

- `OVER()` — definir a janela de cálculo
- `PARTITION BY` — particionar os dados dentro da window
- `LAG()` e `LEAD()` — acessar valores de linhas anteriores/posteriores
- `ROW_NUMBER()` — numerar registros dentro de partições

### 8. DDL — Data Definition Language

- `CREATE` — criar tabelas e estruturas
- `DROP` — remover tabelas
- `TRUNCATE` — limpar dados de uma tabela

### 9. DML — Data Manipulation Language

- `INSERT` — inserir registros
- `UPDATE` — atualizar registros existentes
- `DELETE` — remover registros

---

## 🗄️ Banco de Dados Utilizado

O dataset representa o **sistema de pontos do canal TeoMeWhy**, com três tabelas principais:

- `cliente` — dados dos usuários cadastrados
- `transacoes` — histórico de transações de pontos
- `transacao_produto` — produtos associados a cada transação
- `produto` — catálogo de produtos disponíveis

---

## 🏋️ Exercícios Praticados

Ao longo do curso foram resolvidos exercícios progressivos, como:

- Filtrar clientes por email, pontos e datas
- Identificar o produto mais transacionado
- Calcular saldo de pontos por cliente
- Analisar engajamento por dia da semana
- Construir curvas de churn e retenção
- Calcular métricas acumuladas ao longo do tempo (D7, D14, D28, D56)

---

## 🎯 Projeto Final

Construção de uma **tabela de perfil comportamental dos usuários**, contendo:

- Quantidade de transações históricas em diferentes janelas de tempo
- Dias desde a última transação
- Produto mais utilizado por período
- Saldo de pontos atual e acumulado
- Dias da semana e períodos do dia mais ativos
- Comparativo de engajamento recente vs. histórico

---

## 🛠️ Tecnologias

- **SQLite** — banco de dados
- **Visual Studio Code** — editor
- **Extensão SQLite para VSCode** — execução das queries

---

## 📖 Referências e Próximos Passos

- [Curso de Modelagem de Dados — ApoenaStack](https://www.youtube.com/watch?v=qjFWYi2csXA&list=PLshkB4NQEfC6KQH18stSMJ6-AJ2oYyrwq)
- [Exercícios SQL — Beecrowd](https://judge.beecrowd.com/pt/problems/index/9)
- [Exercícios SQL — HackerRank](https://www.hackerrank.com/domains/sql)
- [Comunidade TeoMeWhy](https://comunidade.teomewhy.org)

---

*Curso ministrado por Téo Calvo — Instituto Aaron Swartz | Agosto 2025*  
*Licença: CC BY-NC-SA 4.0*
