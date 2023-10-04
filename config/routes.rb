Rails.application.routes.draw do
  devise_for :users
  root_to 
  resources :cookbook
end
