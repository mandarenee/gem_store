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

  def create
    product = Product.new(product_params)
    if product.save
      render json: product, status: 201, location: product
    else
      render json: product.errors, status: 422
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :price)
  end
end
