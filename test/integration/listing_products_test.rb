require 'test_helper'

class ListingProductsTest < ActionDispatch::IntegrationTest
  setup do
    Product.create!(name: 'Pentagonal Gem', price: 3.45, description: "shiny with five sides")
    Product.create!(name: 'Dodecahedron', price: 1.65, description: "lots of sides")
  end

  test "listing products" do
    get '/products'

    assert_equal 200, response.status
    assert_equal Mime::JSON, response.content_type

    assert_equal Product.count, JSON.parse(response.body).size
  end
end
