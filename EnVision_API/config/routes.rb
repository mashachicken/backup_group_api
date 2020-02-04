Rails.application.routes.draw do
  get '/diets/search' => 'diets#get_by_name'
  resources :diets
end
