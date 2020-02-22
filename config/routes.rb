Rails.application.routes.draw do
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
end
