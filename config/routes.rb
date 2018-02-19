Rails.application.routes.draw do
  devise_for :users
  resources :orders, only: [:index, :show, :create, :destroy]
  resources :products do
  resources :comments
end
resources :users
 

  get 'static_pages/about'
  get 'static_pages/contact'
  get 'static_pages/index'
  get 'static_pages/landing_page'
  get 'static_pages/users/index'
  
  #root 'products#index'

  root 'static_pages#index'


  post 'static_pages/thank_you'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


