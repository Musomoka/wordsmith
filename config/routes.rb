Rails.application.routes.draw do
  
  resources :categories
  root 'dictionaries#index'
  
  get 'dictionaries/index'

  resources :dictionaries
  resources :languages


 

  resources :dialects


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
