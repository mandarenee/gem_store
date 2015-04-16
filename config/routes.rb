Rails.application.routes.draw do

  # constraints subdomain: 'api' do
    resources :categories
    resources :products
  # end

  root 'store#index'

end
