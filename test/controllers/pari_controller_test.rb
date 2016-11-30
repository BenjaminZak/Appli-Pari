require 'test_helper'

class PariControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pari_index_url
    assert_response :success
  end

  test "should get show" do
    get pari_show_url
    assert_response :success
  end

end
