require 'test_helper'

class ListingCategoriesTest < ActionDispatch::IntegrationTest

  test "listing categories" do
    get '/api/categories', {}, { 'Accept' => 'application/json' }
    assert_equal 200, response.status
    assert_equal Mime::JSON, response.content_type
  end
end
