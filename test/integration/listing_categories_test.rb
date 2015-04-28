require 'test_helper'

class ListingCategoriesTest < ActionDispatch::IntegrationTest
  setup do
    Product.create!(name: 'Ruby', category: 'gem')
    Product.create!(name: 'Diamond')
  end

  test "listing categories" do
    get '/categories', {}, { 'Accept' => 'application/json' }
    assert_equal 200, response.status
    assert_equal Mime::JSON, response.content_type

    assert_equal 1, json(response.body).size
  end

  test 'lists categories in XML' do
    get '/categories', {}, { 'Accept' => 'application/xml' }
    assert_equal 200, response.status
    assert_equal Mime::XML, response.content_type

    assert_equal 1, Hash.from_xml(response.body).size
  end
end
