require 'test_helper'

class ListingProductsTest < ActionDispatch::IntegrationTest
  setup do
    Product.create(name: 'Pentegonal Gem', price: 345, description: "Shiny with five sides")
    Product.create(name: 'Diamond Ring', price: 1235, description: "Princess cut")
  end

  test "listing products" do
    # binding.pry
    get('/api/products')

    assert_equal 200, response.status
    # assert_equal Mime::JSON, response.content_type

    # products = json(response.body)[:products]
    # assert_equal Product.count, products.size
    # product = Product.find(products.first[:id])
  end

  test 'lists most expensive products' do
    get '/api/products?price=345'

    assert_equal 200, response.status
    assert_equal Mime::JSON, response.content_type

    assert_equal 1, json(response.body)[:products].size
  end
end
