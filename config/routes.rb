Rails.application.routes.draw do

  # constraints subdomain: 'api' do
    resources :categories, only: :index
    resources :products
  # end

  root 'store#index'

end
