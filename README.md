legomni-web
===========

Manage your LEGO miniFigures from this web site

h2. Heroku

h3. La première fois

* Install CLI : https://toolbelt.herokuapp.com/
* ??? `heroku create --stack cedar`
* `heroku keys:add ~/.ssh/id_rsa.pub`

h3. Chaque fois

* `git push heroku master`


h3. Mise à jour de la base de données

* https://devcenter.heroku.com/articles/rake
* http://stackoverflow.com/questions/4820549/how-to-empty-db-in-heroku

* `heroku login`
* `heroku run rake`
* `heroku pg:reset DATABASE`
    * `heroku pg:reset DATABASE --confirm _my_database_`


h2. Tests

 rake test


h2. Rails

> bundle install --path vendor/bundle

> rake legomni:bootstrap



h2. Tips

> rails generate scaffold Device name:string udid:string user_id:integer

# http://guides.rubyonrails.org/command_line.html
> rails console --sandbox