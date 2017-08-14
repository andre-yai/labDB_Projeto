# labDB_Projeto

This is a project for the database lab 2015 IME/USP.

How to Run:

-Instalar o rails usando o rvm; seguir as instrucoes do site:rvm.io/rvm/install seguir a 3a opcao “installing with rails”.

-Instalar o postgres, postgres-server-dev.

-Editar o arquivo: `/etc/postgresql/9.4/main/pg_hba.conf` e mudar a linha: ` local all all peer` para `local all all md5`

-Rodar o `bundle install`.

–Na pasta [Git/comidaki]:

-Rodar `bundle install`

-Copiar arquivo `database_sample.yml` para a pasta `config`.

–Na pasta [Git/comidaki/config]:

-Renomear o arquivo `database_sample.yml` para `database.yml` -Editar `database.yml` com usuario e senha do postgres local.

–No postgres: -Criar uma database chamada `comidaki`, conectando no psql e rodando `create database comidaki`. -Executar o script sql para criar as tabelas no database com

`psql -U [username] -d comidaki -f modelofisicoREDUZIDO.sql.
