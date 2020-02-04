cd Envision_api
bundle install
rake db:create
rake db:schema:load
rails s -p 3001
