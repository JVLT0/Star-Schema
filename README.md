# 📊 Análise de Dados de Professores - Star Schema

## 🏫 Descrição do Projeto
Este projeto faz parte do Desafio da DIO e tem como objetivo modelar um esquema dimensional (Star Schema) focado na análise de dados dos professores. A modelagem foi desenvolvida para permitir a exploração de informações sobre cursos ministrados, carga horária e departamentos, possibilitando uma análise mais eficiente para a tomada de decisões acadêmicas.

## 🎯 Objetivos

- 🔹 📊 Criar um modelo dimensional baseado na técnica de esquema em estrela (Star Schema).

- 🔹 🎓 Analisar os professores e os cursos que ministram.

- 🔹 ⏳ Avaliar a carga horária total dos professores.

- 🔹 📚 Identificar os cursos mais ministrados.

- 🔹 🏢 Relacionar professores com seus respectivos departamentos.

- 🔹 📅 Permitir análises temporais através da Dimensão Data.

## 🛠️ Estrutura do Modelo

🔹 Tabela Fato: F_Cursos_Professores

    Contém as métricas e relaciona-se com as tabelas dimensão:
    Quantidade de cursos ministrados
    Carga horária total

Relacionamentos com as dimensões: Professores, Cursos, Departamento e Data

🔹 Tabelas Dimensão:

    D_Professor: Informações sobre os professores (Nome, ID, etc.).
    D_Curso: Informações dos cursos (Nome, Área de estudo, Nível).
    D_Departamento: Detalhes dos departamentos (Nome, Coordenador, Localização).
    D_Data: Permite análises temporais (Ano, Mês, Dia, Trimestre, etc.).

## 📌 Diagrama do Star Schema

![Star Schema](/Star_Schema.png)

## 📌 Benefícios do Modelo

- 🔹 🔍 Facilita a análise de desempenho dos professores.

- 🔹 📈 Permite insights sobre a distribuição de carga horária.

- 🔹 🏫 Ajuda a entender a relação entre professores e departamentos.

- 🔹 📆 Possibilita comparações temporais dos cursos ministrados.

## 🚀 Como Implementar
1. 📥 Clone ou baixe o projeto SQL.  
2. 🖥️ Execute os scripts SQL no MySQL para criar as tabelas.  
3. 📊 Utilize ferramentas de BI (Power BI, Tableau) para explorar os dados.

## 🔄 Conclusão
Este modelo proporciona uma visão clara e estruturada dos dados dos professores, facilitando a análise acadêmica e contribuindo para melhores decisões institucionais.