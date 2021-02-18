Rails.application.routes.draw do
  resources :users
  resources :sessions do
    # /sessions/login
    collection do
      get :login
    end
    # /users/1/login
    member do
      get :profile
    end
  end
  resources :subcontractors
  resources :sub_bids
  resources :sub_contracts
  resources :general_contractors
  resources :bids
  resources :contracts
  resources :owners

  # root 'users#login'
end
