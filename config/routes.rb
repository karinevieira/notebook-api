Rails.application.routes.draw do
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
