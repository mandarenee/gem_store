class CategoriesController < ApplicationController
  def index
    products = Product.gem
    respond_to do |format|
      format.json { render json: products, status: 200 }
      format.xml { render xml: products, status: 200 }
    end
  end
end
