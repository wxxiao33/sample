Rails.application.routes.draw do
  get 'sessions/new'
  resources :enrollments
  get 'users/new'
  resources :parts
  resources :courses
  get 'static_pages/home'
  resources :subjects
  resources :instructors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get '/instructors', to: 'instructors#index'
  get '/courses', to: 'courses#index'
  get '/subjects', to: 'instructors#index'
  get '/signup', to: 'users#new'
  # work around for refreshing invalid sign up
  get '/users', to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'

  # work around for jquery and turbolink not working
  get '/logout',  to: 'sessions#destroy'
  resources :users
end
