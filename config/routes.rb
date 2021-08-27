Rails.application.routes.draw do
  root 'top#index'
  get '/ditail/:id' => 'top#ditail'
end
