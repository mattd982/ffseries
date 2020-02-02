Rails.application.routes.draw do
  root 'reviews#index'
  resources :reviews
  get 'overview', to: 'reviews#overview'
end
