# Full Stack Developer Chanllege

Essa é uma atividade parte do processo de contratação da Hent. 

Para eventuais dúvidas entre em contato com o recrutador.

## Como utilizar esse projeto

Este é um projeto exemplo feito em Ruby on Rails. Para enviar sua proposta de projeto, você deverá realizar um fork desse projeto no GitHub e compartilhar o mesmo com a equipe da Hent.

Além de compartilhar o código no GitHub, o projeto deverá ser apresentado em uma aplicação no Heroku (https://devcenter.heroku.com/articles/getting-started-with-rails6).

Para mais informações sobre o framework acesse: https://guides.rubyonrails.org/

## Sobre a aplicação

* Ruby

Preferencialmente utilizar a versão mais recente do ruby (2.7.4). Sugerimos realizar a instalação do ruby via o rbenv (https://github.com/rbenv/rbenv).


* Database

 Também sugerimos usar o PostgreSQL como database porque é o que será utilizado na aplicação no Heroku, locamente, no entanto, qualquer outro banco de dados relacional pode ser utilizado. 

Já existem alguns dados no arquivo: `db/seed.rb`. Para popular o banco de dados, use o comando:

`rails db:seed`

Mais informações em https://guides.rubyonrails.org/active_record_migrations.html#migrations-and-seed-data

## O Desafio

Este é um sistema de biblioteca para armazenar informações sobre livros e controlar empréstimos de livros.

O sistema já tem algumas telas prontas:

 - Listagem de livros
 - Adicionar livro
 - Editar livro
 - Listagem de empréstimos
 - Adicionar um novo empréstimos
 - Editar um empréstimos

Para essa avaliação, você deve finalizar o sistema desenvolvendo os casos de uso a seguir: 

1. [Incluir telas para entidade: `User`](https://github.com/hent-dev/full-stack-challenge#1-incluir-telas-para-entidade-user)
2. [Adicionar propriedades nas entidades existentes](https://github.com/hent-dev/full-stack-challenge#2-adicionar-propriedades-nas-entidades-existentes)
3. [Adicionar validações a todas entidades](https://github.com/hent-dev/full-stack-challenge#3-adicionar-valida%C3%A7%C3%B5es-a-todas-entidades)


### 1. Incluir telas para entidade `User`

Incluir no projeto as seguintes telas para a entidade de User (usuário):

 - Listagem de usuário
 - Adicionar usuário
 - Editar usuário

 As novas telas devem respeitar o visual do sistema.

### 2. Adicionar propriedades nas entidades existentes

Algumas entidades já foram criadas com algumas propriedades, você deverá fazer a migração de dados para incluir as propriedades que estão faltando.

Abaixo você vai encontrar as propiedades obrigatórias para cada entidade

**Livros (Books)**

Devem ter as informações: título e autor

**Empréstimos (Lend)**

Devem ter as informações: livro emprestado, data de empréstimo, data de devolução, usuário que solicitou o empréstimo

**Usuários (User)**

Devem ter as informações: nome, e-mail e senha (encriptada)

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

O código fonte do projeto deve ser feito totalmente em inglês.


A rápida assimilação de um novo framework é um dos pontos avaliados nessa prova por isso apresentamos um projeto em Ruby on Rails, no entanto vamos permitir a utilização de outra linguagem para essa prova desde que:
 - Todas funcionalidades já existentes sejam atendidas
 - Faça uso de um banco de dados relacional
 - Seja um projeto utilizando um framework web
 - Deploy do proejto feito no heroku ou alguma outra plataforma com deploy em git

Qualquer dúvida entrar em contato com a equipe da Hent.
