Rails.application.routes.draw do
  resources :recipes
  resources :ingredients
  resources :users

get '/recipes/search', to: 'recipes#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
