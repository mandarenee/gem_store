require 'test_helper'

class CreatingProductsTest < ActionDispatch::IntegrationTest
  test "creates new products" do
    post '/products',  {product: {
      name: 'Emerald',
      price: 345,
      description: 'super green',
      category: 'gem',
      canPurchase: true,
      soldOut: false
      } }.to_json,
      { 'Accept' => 'application/json',
        'Content-Type' => 'application/json' }

    assert_equal 201, response.status
    assert_equal Mime::JSON, response.content_type
    product = json(response.body)[:product]
    assert_equal product_url(product[:id]), response.location
    assert_equal 'Emerald', product[:name]
    assert_equal 345, product[:price].to_i
    assert_equal 'super green', product[:description]
    assert_equal 'gem', product[:category]
    assert_equal true, product[:canPurchase]
    assert_equal false, product[:soldOut]
  end

  test 'does not create product with invalid data' do
    post '/products',  {product: {
      price: 345
      } }.to_json,
      { 'Accept' => 'application/json',
        'Content-Type' => 'application/json' }
    assert_equal 422, response.status
  end
end
