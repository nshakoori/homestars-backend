Rails.application.routes.draw do
  resources :rooms, only: [:index]
  resources :users, only: [:index]
  resources :messages, only: [:index]
end
