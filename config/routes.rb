require 'api_constraints'

Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      mount_devise_token_auth_for 'User', at: 'auth'
      resources :kinds
      
      resources :contacts do
        resource :kind, only: [:show]
        resource :kind, only: [:show], path: 'relationships/kind'
    
        resource :phones, only: [:show]
        resource :phones, only: [:show], path: 'relationships/phones'
        
        resource :phone, only: [:create, :update, :destroy]
        resource :phone, only: [:create, :update, :destroy], path: 'relationships/phones'
    
        resource :address, only: [:show, :create, :update, :destroy]
        resource :address, only: [:show, :create, :update, :destroy], path: 'relationships/address'
      end
    end
  end
end
