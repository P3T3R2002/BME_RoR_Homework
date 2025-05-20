require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:nem_admin_1)
  end

  test "login" do
    get new_user_session_path
    assert_response :success
  end 
  
  test "should get create" do
    get sessions_create_url
    assert_response :success
  end

  test "should get destroy" do
    get sessions_destroy_url
    assert_response :success
  end
end
