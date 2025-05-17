require "test_helper"

class DrillingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @drilling = drillings(:one)
  end

  test "should get index" do
    get drillings_url
    assert_response :success
  end

  test "should get new" do
    get new_drilling_url
    assert_response :success
  end

  test "should create drilling" do
    assert_difference("Drilling.count") do
      post drillings_url, params: { drilling: { amount: @drilling.amount, drilled_depth: @drilling.drilled_depth, name: @drilling.name, place: @drilling.place, type: @drilling.type, year: @drilling.year } }
    end

    assert_redirected_to drilling_url(Drilling.last)
  end

  test "should show drilling" do
    get drilling_url(@drilling)
    assert_response :success
  end

  test "should get edit" do
    get edit_drilling_url(@drilling)
    assert_response :success
  end

  test "should update drilling" do
    patch drilling_url(@drilling), params: { drilling: { amount: @drilling.amount, drilled_depth: @drilling.drilled_depth, name: @drilling.name, place: @drilling.place, type: @drilling.type, year: @drilling.year } }
    assert_redirected_to drilling_url(@drilling)
  end

  test "should destroy drilling" do
    assert_difference("Drilling.count", -1) do
      delete drilling_url(@drilling)
    end

    assert_redirected_to drillings_url
  end
end
