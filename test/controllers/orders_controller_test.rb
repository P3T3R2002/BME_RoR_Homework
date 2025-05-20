require "test_helper"

class OrdersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  
  setup do
    @user = users(:user_1) # from fixtures
    sign_in @user
    @order = orders(:order_1)
  end

  test "should get index" do
    host! "localhost:3000"
    get orders_path
    puts request.url  # or something that returns HTML

    assert_response :success
  end

  test "should get new" do
    get order_path(@order)
    assert_response :success
  end

  test "should create order" do
    assert_difference("Order.count") do
      post new_order_path, params: { order: { depth: @order.depth, diameter: @order.diameter, place: @order.place } }
    end

    assert_redirected_to order_path(Order.last)
  end

  test "should show order" do
    get order_path(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_path(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_path(@order), params: { order: { depth: @order.depth, diameter: @order.diameter, place: @order.place } }
    assert_redirected_to order_path(@order)
  end

  test "should destroy order" do
    assert_difference("Order.count", -1) do
      delete order_path(@order)
    end

    assert_redirected_to orders_url
  end
end
