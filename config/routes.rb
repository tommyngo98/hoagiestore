Rails.application.routes.draw do
  resources :orders
  resources :selfies
  resources :sauces
  resources :ingredients
  resources :breads
  root 'welcome#index'

  resources :hoagies do
  resources :comments
end

  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
