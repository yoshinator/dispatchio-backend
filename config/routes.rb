Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :companies
      post '/jobs/date', to: "jobs#jobs_by_date"
      post '/jobs/user_date', to: "jobs#users_job_by_date"
      post '/jobs/week', to: "jobs#jobs_by_week"
      resources :jobs
      post '/users/location', to: 'users#get_by_location'
      get '/users/current', to: 'users#jwt_user'
      resources :users
      post '/teams/location', to: 'teams#by_location'
      resources :teams
      post '/customers/location', to: 'customers#by_location'
      resources :customers
      resources :locations
      post '/users/login', to: 'auth#create'
      post '/users/reset', to: 'users#change_pw'

      post '/team_users', to: 'team_users#create'
      
    end 
  end 
end
