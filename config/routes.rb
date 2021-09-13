Rails.application.routes.draw do
  root 'users#login_form'
  resources :users, only: [:create, :new] do
    collection do
      get 'login' => 'users#login_form'
      post 'login'
      post 'logout'
    end
  end
  resources :tasks
  resources :categories
end
