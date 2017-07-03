Rails.application.routes.draw do
  resources :oders
  devise_for :users
  get 'coins/index'
  get 'coins/buy'
  get 'coins/coincap'
  get 'coins/coinmarketcap'
  get 'orders/index'

  get 'welcome/index'
  root 'welcome#index'

  resources :coins do
    get :autocomplete_coin_name, :on => :collection
  end
end
