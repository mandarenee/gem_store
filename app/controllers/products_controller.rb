class ProductsController < ApplicationController
  respond_to :json

  def index
    # respond_with Product.all
    products = Product.all
    render json: products, status: 200
  end

end
