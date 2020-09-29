Rails.application.routes.draw do
  root 'users#home'  
  get '/auth/facebook/callback' => 'sessions#create'
  post 'signin' => 'sessions#create'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'sessions/find_user'
  resources :users
  resources :recipes
  resources :ingredients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
