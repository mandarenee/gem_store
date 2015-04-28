Rails.application.routes.draw do

  namespace :api do
    resources :categories
    resources :products
  end

  root 'store#index'

end
