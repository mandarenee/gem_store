require 'test_helper'

class ListingProductsTest < ActionDispatch::IntegrationTest
  setup do
    Product.create!(name: 'Pentagonal Gem', price: 345, description: "shiny with five sides")
    Product.create!(name: 'Dodecahedron', price: 165, description: "lots of sides")
  end

  test "listing products" do
    get '/products'

    assert_equal 200, response.status
    assert_equal Mime::JSON, response.content_type

    assert_equal Product.count, json(response.body).size
  end

  test 'lists most expensive products' do
    get '/products?price=345'

    assert_equal 200, response.status
    assert_equal Mime::JSON, response.content_type

    assert_equal 1, json(response.body).size
  end
end
