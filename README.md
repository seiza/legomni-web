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

* `heroku login`
* `heroku run rake`



h2. Rails

> bundle install --path vendor/bundle

> rake legomni:bootstrap



h2. Tips

> rails generate scaffold Device name:string udid:string user_id:integer

# http://guides.rubyonrails.org/command_line.html
> rails console --sandbox