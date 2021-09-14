# Full Stack Developer Chanllege

Essa é uma atividade parte do processo de contratação da Hent. 

Para eventuais dúvidas entre em contato com o recrutador da Hent.

## Como utilizar esse projeto

Esse é um projeto exemplo feito em ruby on rails. Para enviar sua proposta de projeto, deve feito um fork desse projeto no github e compartilhado a equipe da Hent.

Além de compartilhar o código no github, o projeto deverá ser apresentado em uma aplicação no Heroku.

Para mais informações sobre o framework acesse: https://guides.rubyonrails.org/

## Sobre a aplicação

* Ruby

Preferencialmente utilizar a versão mais recente do ruby (2.7.4). Sugiro fazer a instalação do ruby via o rbenv (https://github.com/rbenv/rbenv).


* Database

 É sugerido utilizar postgreSQL como database, por que é o que será utilizado na aplicação no heroku, porém localmente qualquer outro banco de dados relacional pode ser utilizado. 

 Ao configurar o banco de dados, existem alguns dados no arquivo: `db/seed.rb`

Para popular o banco de dados, use o comando:

`rails db:seed`

Mais informações em https://guides.rubyonrails.org/active_record_migrations.html#migrations-and-seed-data

## O Desafio

Esse é sistema de biblioteca para armazenar informações sobre os livros e controlar os emprestimos.

O sistema já tem algumas telas prontas:

 - Listagem de livros
 - Adicionar livro
 - Editar livro
 - Listagem de emprestimos
 - Adicionar um novo emprestimo
 - Editar um emprestimo

Para essa avaliação você deve finalizar o sistema desenvolvendo os casos de uso a seguir: 

1. Incluir telas para entidade `User`
2. Adicionar propriedades nas entidades existentes
3. Adicionar validações a todas entidades 


### 1. Incluir telas para entidade `User`

Incluir no as seguintes telas para o modelo de Usuário:

 - Listagem de usuário
 - Adicionar usuário
 - Editar usuário

 As novas telas devem respeitar o visual do sistema.

### 2. Adicionar propriedades nas entidades existentes

Algumas entidades já foram criadas com algumas propriedades, você deverá fazer a migração de dados para incluir as que estão faltando.

Abaixo você vai encontrar as propiedades obrigatórias para cada entidade

**Livros (Books)**

Devem ter as informações: titulo e autor

**Empréstimos (Lend)**

Devem ter as informações: livro emprestado, data de emprestimo, data de devolução, usuário que solicitou o emprestimo

**Usuários (User)**

Devem ter as informações: nome, e-mail, senha (encriptada)

### 3. Adicionar validações a todas entidades 

**Livros (Books)**

- Não pode haver mais de um livro com o mesmo título

**Empréstimos (Lend)**

- Data do empréstimo deve ser sempre menor que data de devolução
- Data de devolução não pode ser maior do que 6 meses da data de empréstimo
- Usuários só podem ter no máximo 2 empréstimos não-devolvidos

**Usuários (User)**

Não pode haver mais de um usuário com o mesmo e-mail. 
_Essa validação já está implementada no sistema. Se tiver curiosidade sobre a biblioteca (gem), acesse: https://github.com/heartcombo/devise#getting-started_


## Considerações finais

O código do projeto deve ser todo em inglês.
É permitido utilizar outra linguagem para essa prova, no entanto todo o código deve ser implementado do zero.

Qualquer dúvida entrar em contato com a equipe da hent.