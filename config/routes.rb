Rails.application.routes.draw do

  resources :paris

  devise_for :users
  get "index" => "paris#index"
  root to: "home#index"
  
end
