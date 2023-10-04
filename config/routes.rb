Rails.application.routes.draw do
  devise_for :users
  root to: "cookbook#index"
  resources :cookbook
end
