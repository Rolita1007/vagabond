Rails.application.routes.draw do
  devise_for :users
  
  resources :users

  resources :cities do
    resources :posts
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
end
