class ProductsController < ApplicationController
  respond_to :json

  def index
    # respond_with Product.all
    products = Product.all

    if price = params[:price]
      products = products.where(price: price)
    end
    render json: products, status: 200
  end

end
