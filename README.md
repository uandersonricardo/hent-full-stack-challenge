# Full Stack Developer Challenge

Esse repositório contém o desafio técnico que faz parte do processo seletivo para a vaga de Full Stack Developer na Hent.

Demo: https://hent-test-app.herokuapp.com/

## Sobre o desafio

O projeto é um sistema de biblioteca para armazenar informações sobre livros e controlar empréstimos de livros.

O sistema já tem algumas telas prontas:

 - Listagem de livros
 - Adicionar livro
 - Editar livro
 - Listagem de empréstimos
 - Adicionar um novo empréstimos
 - Editar um empréstimos

Para essa avaliação, foram finalizados os casos de uso a seguir: 

### 1. Incluir telas para entidade `User`

Descrição: 

> Incluir no projeto as seguintes telas para a entidade de User (usuário):
>
> - Listagem de usuário
> - Adicionar usuário
>  - Editar usuário
>
>As novas telas devem respeitar o visual do sistema.

### 2. Adicionar propriedades nas entidades existentes

Descrição: 

> Algumas entidades já foram criadas com algumas propriedades, você deverá fazer a migração de dados para incluir as propriedades que estão faltando.
> 
> Abaixo você vai encontrar as propiedades obrigatórias para cada entidade
> 
> **Livros (Books)**
> 
> Devem ter as informações: título e autor
> 
> **Empréstimos (Lend)**
> 
> Devem ter as informações: livro emprestado, data de empréstimo, data de devolução, usuário que solicitou o empréstimo
> 
> **Usuários (User)**
> 
> Devem ter as informações: nome, e-mail e senha (encriptada)

### 3. Adicionar validações a todas entidades 

Descrição: 

> **Livros (Books)**
> 
> - Não pode haver mais de um livro com o mesmo título
> 
> **Empréstimos (Lend)**
> 
> - Data do empréstimo deve ser sempre menor que data de devolução
> - Data de devolução não pode ser maior do que 6 meses da data de empréstimo
> - Usuários só podem ter no máximo 2 empréstimos não-devolvidos
> 
> **Usuários (User)**
> 
> - Não pode haver mais de um usuário com o mesmo e-mail.

## Sobre a aplicação

- Ruby 2.7.4
- PostgreSQL

## Passo-a-passo do processo de desenvolvimento

https://buttered-blender-ca4.notion.site/Teste-da-Hent-262b70d7136d43298d2bcc4e643829e4
