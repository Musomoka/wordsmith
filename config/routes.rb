Rails.application.routes.draw do
  root 'languages#index'
  resources :categories
  resources :dictionaries
  

  resources :languages do
   resources :dialects
  end
 


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
