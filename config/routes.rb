Rails.application.routes.draw do

  namespace :admin do
    root to: "users#index"

    resources :users
    resources :transactions
    resources :accounts
  end

  root to: "admin/users#index"
  devise_for :users
end
