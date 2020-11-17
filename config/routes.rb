Rails.application.routes.draw do
  root 'users#home', as: 'home'  
  
  #Omiauth routes
    get '/auth/:provider/callback' => 'sessions#omniauth'
    get 'auth/failure', to: redirect('/')


  post 'login' => 'sessions#create'
  post 'meal_plan' => 'users#meal_plan'
  get 'sessions/create'
  get '/logout' => 'sessions#destroy'
  get 'sessions/find_user'
  post '/recipes/count' => 'recipes#count', as: 'ingredient_count'
  get '/recipes/reset' => 'recipes#reset', as: 'reset'
  post '/users/:user_id/recipes' => 'recipes#create', as: 'create_recipe'

  resources :ingredients

  resources :users, only: [:home, :show, :new, :edit, :destroy, :update] do
    resources :recipes do  
      resources :ingredients
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
