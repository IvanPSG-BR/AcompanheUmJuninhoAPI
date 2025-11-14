# Regras de Negócio

## Gerenciamento de Usuário

- RN-U01: O endereço de e-mail deve ser único para cada usuário na plataforma.
- RN-U02: Um nome de usuário (apelido) deve ser único na plataforma.
- RN-U03: Para o cadastro, a senha deve obedecer a critérios mínimos de segurança (mínimo de 8 caracteres, letras maiúsculas e minúsculas, números e caracteres especiais).
- RN-U04: As ações de um usuário só pode afetar o seu próprio perfil.

## Matchmaking

- RN-M01: Um usuário deve ter o papel de 'Juninho' ou 'Mentor' definido para iniciar o processo de matchmaking.
- RN-M02: O matchmaking deve considerar critérios de compatibilidade (e.g., tecnologias, área de interesse) entre Juninho e Mentor.
- RN-M03: Um Mentor pode definir um limite de Juninhos que pode acompanhar ativamente.
- RN-M04: O pareamento só é considerado ativo após o Mentor aceitar o Juninho.
- RN-M05: Um Juninho pode ter múltiplos Mentores ativos, e um Mentor pode ter múltiplos Juninhos ativos.

## Hub de Mensagens

- RN-H01: A troca de mensagens é permitida apenas entre um Juninho e seus Mentores ativos.
- RN-H02: Todas as mensagens trocadas devem ser armazenadas de forma persistente e cronológica.
- RN-H03: O envio de mensagens deve ser autenticado e autorizado (apenas o Juninho ou o Mentor podem enviar).
- RN-H04: O sistema deve notificar o usuário (Juninho ou Mentor) sobre novas mensagens não lidas.
- RN-H05: Deve haver um limite de tamanho para o conteúdo das mensagens (e.g., 5000 caracteres).

## Diário de Bordo

- RN-D01: Apenas o Juninho e seus Mentores ativos podem visualizar e editar o Diário de Bordo.
- RN-D02: O Diário de Bordo deve registrar o progresso do Juninho (e.g., tarefas concluídas, aprendizados) através de entradas manuais em um formato pré-definido.
- RN-D03: O Mentor deve poder sugerir os "próximos passos" no Diário de Bordo através de entradas manuais em um formato pré-definido.
- RN-D04: Cada entrada no Diário de Bordo deve ter um carimbo de data/hora (timestamp) e o autor da entrada.
- RN-D05: O Diário de Bordo deve ser imutável após um período de tempo (e.g., 24 horas) ou após ser "commitado" pelo Juninho/Mentor, para servir como um registro de progresso.
