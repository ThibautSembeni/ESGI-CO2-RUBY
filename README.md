# Commandes

Si vous avez des erreurs de droits quand vous voullez save vos fichier

```
sudo chown -R $USER:$USER .
```

Si vous avez la base de données vide :

```ruby
docker compose run web rake db:create
```

Pour créer un controller et toutes ces dépendances :

```ruby
docker compose run web rails generate controller controller_name action1 action2 etc
```

Par exemple:
Si je veux créer un controller home avec une fonction index

```ruby
docker compose run web rails generate controller Home index
```

Je modifie après mon fichier config/routes.rb:
passant de

```ruby
get 'home/index'
```

à

```ruby
get "/home", to: "home#index"
```

On donne l'url après le get, suivit du nom du controller (home) et l'action qu'on veut exéctuer au même moment (index)
