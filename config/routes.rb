Rails.application.routes.draw do
  resources :users
  resources :logins, only: [:new, :create]
  resources :subcontractors
  resources :sub_bids
  resources :sub_contracts
  resources :general_contractors
  resources :bids
  resources :contracts
  resources :owners

end
