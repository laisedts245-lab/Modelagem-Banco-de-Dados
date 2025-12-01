# 🍷 EventTable Manager

**Sistema de Gestão de Mesas e Convidados para Eventos**

Este repositório contém o projeto prático de modelagem e implementação de um Banco de Dados Relacional utilizando **SQL**. O objetivo do sistema é otimizar a logística de alocação de convidados em mesas (*Seating Plan*), gerenciando confirmações de presença e restrições alimentares.

## 🚀 Funcionalidades do Banco de Dados
O sistema é capaz de armazenar e relacionar:
- **Eventos:** Datas, locais e capacidades.
- **Convidados:** Dados pessoais, grupos sociais (família, trabalho) e status de RSVP.
- **Mesas:** Numeração, localização no salão e capacidade.
- **Restrições:** Controle de dietas (vegano, sem glúten) e necessidades especiais.
- **Alocação:** Vínculo final entre Convidado x Mesa x Evento.

## 🛠 Tecnologias Utilizadas
- **Linguagem:** SQL (Structured Query Language)
- **Modelagem:** Conceitual (DER) e Lógica (Normalização até 3FN)
- **Ferramenta:** MySQL Workbench / VS Code

## 📂 Estrutura do Repositório
1. `tabelas.sql`: Script DDL para criação da estrutura do banco.
2. `dados.sql`: Script DML para população inicial de dados.
3. `consultas.sql`: Scripts de relatórios usando `SELECT` e `JOIN`.
4. `up_del.sql`: Scripts de manipulação e atualização de dados.

---
*Desenvolvido como parte da disciplina de Banco de Dados.*
