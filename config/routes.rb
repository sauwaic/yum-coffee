
Rails.application.routes.draw do
  devise_for :users
  root to: 'coffee_shops#index'
  mount Attachinary::Engine => "/attachinary"

  resources :coffee_shops
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
