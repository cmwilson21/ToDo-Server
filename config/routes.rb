Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :user_todos
      resources :users do
        resources :todos
      end
      resources :todos
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
