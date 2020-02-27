Rails.application.routes.draw do
  devise_for :users
  root to: 'restaurants#show'
  resources :restaurants, only: [:show] do
    resources :inventory_items, only: [:index]
    resources :orders, only: [:index, :show, :new, :create]
  end
  resources :orders, only: [:update]

  resources :supplier_items, only: [] do
    resource :order_items, only: :create
  end

   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
