Rails.application.routes.draw do
  root 'top#index'
  resources :top, only: [:index, :show, :new]
end
