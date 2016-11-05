Rails.application.routes.draw do
  resources :packing_lists do
    member do
      get 'copy'
    end
  end
  resources :gears
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
