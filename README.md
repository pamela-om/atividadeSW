**Atividade prática 01 - Sistemas WEB**
# Sistema de doação de sangue 
Este projeto consiste no desenvolvimento de uma API RESTful para gerenciar informações de um sistema de doação de sangue, com as entidades: Cidade, Estado, Local de coleta, Pessoa, Tipo sanguíneo e Doação.

## Tecnologias utilizadas
- Node.js
- TypeScript
- Prisma como ORM
- MySQL como banco de dados
  
## Execução
1. clonar: git clone https://github.com/pamela-om/atividadeSW.git
2. instalar as dependências: npm install
3. configurar o DATABASE_URL em um arquivo .env (conexão com banco de dados)
4. executar as migrações para o banco: npx prisma migrate dev
para iniciar o servidor: npm start
