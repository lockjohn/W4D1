Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users
  
  get 'users/:id', to: 'users#show', as: 'user_show'
  get 'users/', to: 'users#index', as: 'users'
  patch 'users/:id', to: 'users#update', as: 'user_update'
  post 'users/', to: 'users#create', as: 'user_new'
  get 'users/new', to: 'users#new', as: 'user_new_page'
  delete 'users/:id', to: 'users#destroy', as: 'user_delete'
end