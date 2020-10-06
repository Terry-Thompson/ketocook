Rails.application.routes.draw do
  root 'users#home'  
  get '/auth/facebook/callback' => 'sessions#create'
  post 'login' => 'sessions#create'
  get 'sessions/create'
  get '/logout' => 'sessions#destroy'
  get 'sessions/find_user'
  resources :users
  resources :recipes do  
    :ingredients
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
