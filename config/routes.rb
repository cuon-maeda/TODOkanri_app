Rails.application.routes.draw do
  root 'task#index'
  resources :task, only: [:index, :show, :new]
end
