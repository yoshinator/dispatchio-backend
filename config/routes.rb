Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :companies
    end 
  end 
  namespace :api do
    namespace :v1 do
      resources :locations
    end 
  end 
  namespace :api do
    namespace :v1 do
      resources :jobs
    end 
  end 
  namespace :api do
    namespace :v1 do
      resources :teams
    end 
  end 
  namespace :api do
    namespace :v1 do
      resources :users
    end 
  end 
  namespace :api do
    namespace :v1 do
      resources :customers
    end 
  end 
  namespace :api do
    namespace :v1 do
      resources :locations
    end 
  end 
end
