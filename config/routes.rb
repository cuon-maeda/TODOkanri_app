Rails.application.routes.draw do
  root 'tasks#index'
  resources :tasks
  resources :categories, only: [:index, :create, :new]
end
