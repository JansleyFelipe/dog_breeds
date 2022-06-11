# Installing a new website
## LOCAL SETUP
### Requirements
1. GIT, DOCKER, DOCKER-COMPOSE, COMPOSER and LANDO

### GET STARTED
1. Start the lando server:
  * Once you have installed lando and downloaded the project run the command below.
  * cd `<PROJECT>`
  * `lando start`

1. Once started:
  * Run `lando composer install`

2. [Recommended] Export the database or create a new one:
  * There's a dump file in 'dump-db' folder
  * To export you can run 'lando drush sqlc <  ~/path/to/db-file.sql'
  * Admin user credentials: username: admin and password: admin

3. Or create a new database and import the configs:
  * If you choose this option run 'lando config:import'
