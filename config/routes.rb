Rails.application.routes.draw do
  resources :books
  resources :authors
  resources :customers
  resources :loans
end
