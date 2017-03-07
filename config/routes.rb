Rails.application.routes.draw do
  root 'dictionaries#index'
  resources :categories
  resources :dictionaries
  resources :languages
  resources :dialects


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
