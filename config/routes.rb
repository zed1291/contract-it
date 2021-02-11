Rails.application.routes.draw do
  resources :subcontractors
  resources :sub_bids
  resources :sub_contracts
  resources :general_contractors
  resources :bids
  resources :contracts
  resources :owners
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
