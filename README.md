# Pokédex App com Ruby on Rails e Hotwire 🚀

<img width="1576" height="528" alt="image" src="https://github.com/user-attachments/assets/8c7afa6d-5625-4786-b14c-7c812efb90f3" />

## 📖 Sobre o Projeto

Este é um projeto **CRUD** completo de uma Pokédex, desenvolvido com **Ruby on Rails 7**. O objetivo foi construir uma aplicação web moderna e interativa, demonstrando o poder do ecossistema Rails junto com tecnologias de frontend atuais como **Hotwire** e **Tailwind CSS**.

A aplicação permite ao usuário gerenciar uma coleção de Pokémons, com uma interface fluida que utiliza modais e atualizações em tempo real (via Turbo Streams), e busca automaticamente as imagens oficiais dos Pokémons de uma API externa ao criar um novo registro.

## ✨ Funcionalidades Principais

* **Listagem de Pokémons:** Dashboard principal com um grid responsivo de cards.
* **CRUD Completo:** Funcionalidades para Criar, Visualizar, Editar e Excluir Pokémons.
* **Interface Moderna com Hotwire:** Formulários de criação e edição são renderizados em modais utilizando Turbo Frames, proporcionando uma experiência de usuário rápida e sem recarregamentos de página.
* **Atualizações em Tempo Real:** Ao criar um novo Pokémon, a lista é atualizada instantaneamente na página via Turbo Streams.
* **Integração com API Externa:** Busca automática de imagens oficiais da **PokéAPI** ao salvar um novo Pokémon.
* **Design Responsivo:** Interface estilizada com **Tailwind CSS**, adaptável a diferentes tamanhos de tela.

## 🛠️ Tecnologias Utilizadas

Este projeto foi construído com um conjunto de ferramentas modernas para desenvolvimento web:

* **Backend:** Ruby 3.2.2, Ruby on Rails 7
* **Frontend:** Hotwire (Turbo + Stimulus), Tailwind CSS, SASS
* **Banco de Dados:** PostgreSQL
* **API Externa:** [PokéAPI (pokeapi.co)](https://pokeapi.co/)
* **Gems Notáveis:**
    * `tailwindcss-rails` - Para integração com o Tailwind CSS.
    * `httparty` - Para consumir a PokéAPI de forma simples.
* **Ambiente de Desenvolvimento:** WSL 2 (Ubuntu)

## ⚙️ Instalação e Execução Local

Para rodar este projeto na sua máquina local, siga os passos abaixo.

### Pré-requisitos

* Ruby (recomendo usar `rbenv`)
* Rails 7
* Node.js e Yarn
* PostgreSQL

### Passos

1.  **Clone o repositório:**
    ```bash
    git clone https://github.com/saraivajv/RubyOnRailsPokedex
    cd pokedex
    ```

2.  **Instale as dependências do Ruby e do JavaScript:**
    ```bash
    bundle install
    yarn install
    ```

3.  **Configure o banco de dados:**
    ```bash
    # Cria o banco de dados de desenvolvimento e teste
    rails db:create

    # Roda as migrações para criar a tabela de pokémons
    rails db:migrate
    ```

4.  **Inicie o servidor de desenvolvimento:**
    > **Importante:** Use `bin/dev` para iniciar tanto o servidor Rails quanto o processo do Tailwind CSS.

    ```bash
    bin/dev
    ```

5.  Abra seu navegador e acesse `http://localhost:3000`.


## 👨‍💻 Autor

Feito por **João Victor Saraiva**.

* GitHub: [@saraivajv](https://github.com/saraivajv)
* LinkedIn: [João Victor](https://www.linkedin.com/in/saraivajv/)
