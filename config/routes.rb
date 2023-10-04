Rails.application.routes.draw do
  devise_for :users
  # root_to "home#index"
  resources :cookbook
end
