Wec2::Application.routes.draw do
  resources :webinars

 resources :users do
   member do
     patch 'more'
   end
 end
  resources :contacts, only: [:new, :create]
  resources :visitors, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  root to: 'visitors#new'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
 match 'toggle', to: 'users#toggle',            via: 'patch' 
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
end