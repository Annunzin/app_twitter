# ======Installation de l'application======

## Prérequis
- Git
- Ruby
- Rails

## Mise en place
- Clôner le repository.
- Exécuter la commande : bundle install --path vendor/bundle
- Exécuter la commande : rails db setup
- Exécuter la commande : bundle exec rails s



## Gestion des utilisateurs
- Page d'accueil avec affichage des utilisateurs
- Possibilité d'ajouter des utilisateurs
- Possibilité de cliquer sur un utilisateur pour prendre sa place

## Un utilisateur peut créer des tweets
- Une fois un utilisateur choisi, on peut créer des tweets sur sa page

## Un utilisateur peut visualiser l'ensemble de ses tweets

## Un utilisateur peut commencer à suivre ou arrêter de suivre d'autres utilisateurs

## Un utilisateur peut visualiser les tweets des utilisateurs qu'il suit

## Un utilisateur peut visualiser les hashtags les plus populaires 



## Commandes pour lancer une application rails

- rails new nom_app -B
- cd nom_app
- bundle install --path vendor/bundle
- bundle exec rails s
## Montre les routes */
- bundle exec rake routes
## Create user
- rails generate scaffold User Username:string img_url:string

## Create tweet 
- rails generate scaffold Twaat Content:string img_url:string

## Create table 
- bundle exec rails db:migrate RAILS_ENV=development

## Réferences

- bin/rails g migration add_user_to_twaats user:references

## Recréer base 

- rails db:structure:load

## Commandes rails

### Lancer la console rails
- rails c

### Montrer toutes les commandes
- rails -T


LENGTH lol
