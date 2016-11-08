Rails.application.routes.draw do
  resources :breweries
  resources :beercolours
  resources :beerposts

  get 'dod/index'
  root 'dod#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
