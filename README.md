# Acompanhe um Juninho API

## Índice

- [Acompanhe um Juninho API](#acompanhe-um-juninho-api)
  - [Índice](#índice)
  - [Descrição do Projeto](#descrição-do-projeto)
  - [Status do Projeto](#status-do-projeto)
  - [Funcionalidades](#funcionalidades)
  - [Tecnologias Utilizadas](#tecnologias-utilizadas)
  - [Licença](#licença)

## Descrição do Projeto

"Acompanhe um Juninho" é uma API projetada e pensada para ser consumida por uma aplicação de mentoria/tutoria, especificamente da área de desenvolvimento em TI.

Muitos programadores em início de carreira, ou até mesmo em tempos de estudo, se sentem sem direcionamento, ou paralisados por tantas coisas que devem estudar. Essas pessoas, grande parte das vezes autodidatas, não possuem um guia ou mentor, ou mesmo alguém que possa ter de referência como alguém experiente para auxiliá-las.

Essa API (sendo consumida por uma aplicação) vem para resolver esse problema, através de endpoints que:

- Faz o match, ou melhor, o "switch, case" entre Juninho (daí o nome) e mentor de forma que um não perca tempo procurando o outro;
- Cria um "repositório" (ou Hub) para que ambos possam trocar mensagens de texto, mídia, etc;
- Salva num diário de bordo, como os commits, os dados do progresso do Juninho, e o que ele deve fazer a seguir.

## Status do Projeto

O projeto AcompanheUmJuninho API encontra-se atualmente na fase de planejamento e design da arquitetura.

## Funcionalidades

As principais funcionalidades planejadas para a plataforma incluem:

**Funcionalidades de Usuário:**

- Cadastro, login, edição e exclusão de perfil de usuário.
- Visualização de dados do usuário.
- Escolha entre ser Juninho (mentorado) ou Mentor.

**Funcionalidades de Matchmaking:**

- Match automático para encontrar os mentores mais adequados para cada Juninho.
- Visualização dos Juninhos sugeridos pelo matchmaking para escolha do Mentor.
- Sistema de aceitação de pareamento entre Juninho e Mentor.
- Suporte para múltiplos pareamentos ativos (um Juninho pode ter vários Mentores e vice-versa).

**Hub de Mensagens:**

- Espaço de troca de mensagens entre Juninho e seus Mentores ativos.
- Suporte para mensagens de texto e mídia.
- Notificações de novas mensagens não lidas.
- Armazenamento persistente e cronológico das mensagens.

**Diário de Bordo:**

- Registro do progresso do Juninho (tarefas concluídas, aprendizados).
- Sugestão de próximos passos pelo Mentor.
- Entradas com carimbo de data/hora e identificação do autor.
- Sistema de "commit" para tornar entradas imutáveis após confirmação.

## Tecnologias Utilizadas

O desenvolvimento da Acompanhe um Juninho API utiliza as seguintes tecnologias:

- **Linguagem:** TypeScript
- **Build Tool:** npm
- **Framework Backend:** NestJS
- **Framework de Testes:** Jest
- **SGBD Relacional:** PostgreSQL
- **ORM:** Prisma
- **Autenticação:** jsonwebtoken
- **Hash de Senhas:** bcrypt
- **Configuração de Ambiente:** dotenv

## Licença

Este projeto está licenciado sob a [Licença MIT](LICENSE).
