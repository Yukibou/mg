Rails.application.routes.draw do
  resources :packing_lists
  resources :gears
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
