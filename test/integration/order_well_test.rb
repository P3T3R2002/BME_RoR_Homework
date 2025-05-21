require "test_helper"

class OrderWellTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @order = orders(:order_1)
    @user = users(:user_1)
  end
  
  test "order correct well" do
    get home_index_url
    assert_response :success

    sign_in users(:user_1)
    get home_index_url
    assert_response :success

    assert_select 'a.nav-link', "Add order"
    get new_order_path
    assert_response :success

    assert_select 'input[type=submit]'
    assert_difference("Order.count") do
      post orders_url, params: { order: { depth: @order.depth, diameter: @order.diameter, place: @order.place, user_id: @user.id } }
    end
    assert_redirected_to order_url(Order.last)
  end

  test "order wrong well" do
    get home_index_url
    assert_response :success

    sign_in users(:user_1)
    get home_index_url
    assert_response :success

    assert_select 'a.nav-link', "Add order"
    get new_order_path
    assert_response :success

    assert_select 'input[type=submit]'
    assert_no_difference("Order.count") do
      post orders_url, params: { order: { depth: @order.depth, diameter: orders(:wrong_order).diameter, place: @order.place, user_id: @user.id } }
    end
  end
end
