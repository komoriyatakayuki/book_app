Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :authors
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
