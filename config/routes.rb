Rails.application.routes.draw do
  get 'properties/index'

  root 'properties#index'
  resources :properties
end