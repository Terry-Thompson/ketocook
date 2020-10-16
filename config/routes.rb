Rails.application.routes.draw do
  root 'users#home'  
  get '/auth/facebook/callback' => 'sessions#create'
  post 'login' => 'sessions#create'
  post 'meal_plan' => 'users#meal_plan'
  get 'sessions/create'
  get '/logout' => 'sessions#destroy'
  get 'sessions/find_user'
  resources :users do
    resources :recipes do  
      resources :ingredients
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
