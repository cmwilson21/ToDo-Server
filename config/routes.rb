Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :user_todos
      resources :users do
        resources :todos
      end
      resources :todos

      get '/get-current-user', to: 'users#get_current_user'
      post '/signup', to: 'users#create'
      post '/login', to: 'sessions#create'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
