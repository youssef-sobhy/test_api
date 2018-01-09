Rails.application.routes.draw do
  resources :users
  resources :todos
  post '/login', to: 'sessions#create'
  mount ActionCable.server => '/cable'
end
