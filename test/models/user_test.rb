require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "cannot save user without email" do
    u = User.new( password: "012345678",
                  password_confirmation: "012345678"
                )
    assert !u.save, "We have a problem."
  end

  test "cannot save user with existing email" do
    u = User.new( email: users(:nem_admin_1).email,
                  password: "012345678",
                  password_confirmation: "012345678"
                )
    assert !u.save, "We have a problem."
  end

  test "can save user with password and email" do
    u = User.new( email: "unique@example.com",
                  password: "012345678",
                  password_confirmation: "012345678"
                )
    assert u.save, "We have a problem."
  end

  test "cannot save user without password confirmation" do
    u = User.new( email: "unique@example.com",
                  password: "012345678",
                  password_confirmation: "wrong"
                )
    assert !u.save, "We have a problem."
  end
end
