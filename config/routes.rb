Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :companies
      resources :locations
      post '/jobs/date', to: "jobs#jobs_by_date"
      post '/jobs/user_date', to: "jobs#users_job_by_date"
      resources :jobs
      get '/users/current', to: 'users#jwt_user'
      resources :users
      resources :teams
      resources :customers
      resources :locations
      post '/users/login', to: 'auth#create'
      post '/users/reset', to: 'users#change_pw'
      
    end 
  end 
end
