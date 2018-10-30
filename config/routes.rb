Rails.application.routes.draw do
  get 'store/index'
  resources :products
  root 'store#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
