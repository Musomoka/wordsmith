Rails.application.routes.draw do
  
  root 'dictionary#index'
  
  get 'dictionary/index'

 

  get 'dictionary/new'
  resources :dictionary

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
