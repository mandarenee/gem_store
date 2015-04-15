require 'test_helper'

class DeletingProductsTest < ActionDispatch::IntegrationTest
  setup do
    @product = Product.create!(name: 'Sapphire')
  end

  test "delete products" do
    delete "/products/#{@product.id}"
    assert_equal 204, response.status
  end
end
