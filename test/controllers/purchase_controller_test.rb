require 'test_helper'

class PurchaseControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get purchase_new_url
    assert_response :success
  end

end
