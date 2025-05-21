require "test_helper"

class OrdersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  
  setup do
    sign_in users(:user_1) # from fixtures
    @user = users(:user_1)
    @order = orders(:order_1)
  end

  test "should get index" do
    get orders_url
    puts request.url  # or something that returns HTML

    assert_response :success
  end

  test "should get new" do
    get order_url(@order)
    assert_response :success
  end

  test "should create order" do
    assert_difference("Order.count") do
      post orders_url, params: { order: { depth: @order.depth, diameter: @order.diameter, place: @order.place, user_id: @user.id } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { depth: @order.depth, diameter: @order.diameter, place: @order.place } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference("Order.count", -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end
