require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get treino" do
    get pages_treino_url
    assert_response :success
  end

end
