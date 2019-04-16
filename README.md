# Registro Unico


URL: http://previsora.herokuapp.com/users/sign_in

Aplicación desarrollada para la unificación de bases de datos "satélite" en la **Previsora S.A**. La aplicación cuenta con:

* Autenticación de usuarios
* Backup de la base de datos cada 2 semanas
* Formularios con reglas de negocio
* Filtros de bsqueda básicos y avanzados 
* Reasignación de registros
* Roles de usuario
* Administración de usuarios


Desarrollada bajo Ruby on Rails.
Motor de Base de Datos: PostgresQL, producción. SQLite3, desarrollo.


* Dependencies
  * Ruby 2.4
  * Docker
  * Docker-compose

* Build & Run
  * Production Environment
    * Run the command shell: 
      * `docker-compose build`
      * `docker-compose up`
      * `docker exec -it previsora_ms /bin/bash`
      * `rails db:migrate`
      * `rails db:seed`
  * Development Environment
    * Run the command shell: 
      * `rails s`
