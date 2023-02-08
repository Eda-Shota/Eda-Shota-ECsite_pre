require "test_helper"

class Public::RegisteredAddressesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_registered_addresses_index_url
    assert_response :success
  end

  test "should get edit" do
    get public_registered_addresses_edit_url
    assert_response :success
  end
end
