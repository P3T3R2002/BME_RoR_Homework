require "test_helper"

class OrderTest < ActiveSupport::TestCase
  def setup
    @user = users(:user_1) # from fixtures
  end

  test "the truth" do
    assert true
  end

  test "cannot save without place" do
    o = Order.new(diameter: 160, depth: 10, user: @user)
    assert !o.save, "Saved the order without a place"
  end

  test "cannot save without diameter" do
    o = Order.new(place: "somewhere", depth: 10, user: @user)
    assert !o.save, "Saved the order without a diameter"
  end

  test "cannot save with too small depth" do
    o = Order.new(place: "somewhere", diameter: 160, depth: 0, user: @user)
    assert !o.save, "Saved with too small depth"
  end 

  test "cannot save with too large depth" do
    o = Order.new(place: "somewhere", diameter: 160, depth: 21, user: @user)
    assert !o.save, "Saved with too large depth"
  end

  test "cannot save invalid diameter order" do
    o = Order.new(place: "somewhere", diameter: 210, depth: 11, user: @user)
    assert !o.save, "Did save a invalid  diameter order"
  end

  test "can save valid 200 order" do
    o = Order.new(place: "somewhere", diameter: 200, depth: 11, user: @user)
    assert o.save, "Did not save a valid 200 order"
  end

  test "can save valid 160 order" do
    o = Order.new(place: "somewhere", diameter: 160, depth: 11, user: @user)
    assert o.save, "Did not save a valid 160 order"
  end

end
