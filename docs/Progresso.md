# Progresso do Projeto

## O que Funciona

- ✅ Configuração inicial do projeto NestJS
- ✅ Conexão com banco de dados PostgreSQL via Prisma (`src/Database/Conn.ts`)
- ✅ Schema do banco de dados completo com todas as tabelas:
  - Tabela `User` (usuários base)
  - Tabela `Juninho` (perfil de mentorado)
  - Tabela `Mentor` (perfil de mentor)
  - Tabela `Match` (pareamentos)
  - Tabela `Message` (mensagens)
  - Tabela `Journal` (diário de bordo)
- ✅ Enums definidos (ROLE, AGE, GENDER, STATUS)
- ✅ Configuração de ambiente (.env.example)

## O que Resta Construir

### Módulo de Usuário e Autenticação (Em Desenvolvimento)

- [ ] Repository de User
- [ ] Service de User
- [ ] Controller de User
- [ ] DTOs de User (Create, Update, Response)
- [ ] Service de Autenticação (JWT)
- [ ] Middleware de Autenticação
- [ ] Hash de senhas com bcrypt
- [ ] Validação de dados de entrada

### Módulos Futuros

- [ ] Módulo de Juninho (CRUD e lógica específica)
- [ ] Módulo de Mentor (CRUD e lógica específica)
- [ ] Módulo de Matchmaking
- [ ] Módulo de Mensagens (Hub)
- [ ] Módulo de Diário de Bordo (Journal)
- [ ] Testes unitários e de integração
- [ ] Documentação da API (Swagger)

## Status Atual

**Fase:** Desenvolvimento - Módulo de Usuário e Autenticação (Camadas Baixas)

**Última atualização:** 2025-11-15

Atualmente trabalhando na implementação do módulo de usuário e autenticação, começando pelas camadas mais baixas da arquitetura (Repository → Service → Controller). A infraestrutura base (conexão com BD e schema) já está estabelecida.

## Problemas Conhecidos

- Nenhum problema conhecido no momento.

## Evolução das Decisões do Projeto

### Decisões de Arquitetura

- **Adotado:** Layered Architecture com NestJS (Routes → Controllers → Services → Repositories → Models)
- **Adotado:** Prisma como ORM para PostgreSQL
- **Adotado:** JWT para autenticação
- **Adotado:** bcrypt para hash de senhas

### Decisões de Modelagem

- **Adotado:** Separação de perfis (User base + Juninho/Mentor específicos)
- **Adotado:** Relacionamento 1:1 entre User e Juninho/Mentor
- **Adotado:** Sistema de status para matches (PENDING, ACCEPTED, REFUSED)
