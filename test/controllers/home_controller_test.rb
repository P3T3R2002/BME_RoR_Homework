require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  
  setup do
    @user = users(:user_1)
    @order = orders(:order_1)
  end

  test "should get index non admin logged in" do
    sign_in users(:nem_admin_1)
    get home_index_url
    assert_select 'a.navbar-brand', text: "Vasi Drill"
    assert_select 'a.nav-link', "About Us"
    assert_select 'a.nav-link', "Drilling"
    assert_select 'a.nav-link', "Authorization"
    assert_select 'a.nav-link', "Compensation"
    assert_select 'a.nav-link', "Questions"
    assert_select 'a.nav-link', "References"
    assert_select 'a.nav-link', "Prices"
    
    assert_select 'a.nav-link', "Profile"
    assert_select 'a.nav-link', "My orders"
    assert_select 'a.nav-link', "Add order"
    assert_select 'a.btn.btn-danger', 'Logout'
    
    assert_select 'a.nav-link', text: "Links", count: 0
    assert_select 'a.nav-link', text: "Orders", count: 0
    assert_select 'a.btn.btn-success', text: 'Login', count: 0
    assert_response :success
  end

  test "should get index admin logged in" do
    sign_in users(:admin)
    get home_index_url
    assert_select 'a.navbar-brand', text: "Vasi Drill"
    assert_select 'a.nav-link', "About Us"
    assert_select 'a.nav-link', "Drilling"
    assert_select 'a.nav-link', "Authorization"
    assert_select 'a.nav-link', "Compensation"
    assert_select 'a.nav-link', "Questions"
    assert_select 'a.nav-link', "References"
    assert_select 'a.nav-link', "Prices"

    assert_select 'a.nav-link', "Links"
    assert_select 'a.nav-link', "Orders"
    assert_select 'a.nav-link', "Profile"

    assert_select 'a.btn.btn-danger', 'Logout'

    assert_select 'a.nav-link', text: "My orders", count: 0
    assert_select 'a.nav-link', text: "Add order", count: 0
    assert_select 'a.btn.btn-success', text: 'Login', count: 0
    assert_response :success
  end

  test "should get index not logged in" do
    get home_index_url
    assert_select 'a.navbar-brand', text: "Vasi Drill"
    assert_select 'a.nav-link', "About Us"
    assert_select 'a.nav-link', "Drilling"
    assert_select 'a.nav-link', "Authorization"
    assert_select 'a.nav-link', "Compensation"
    assert_select 'a.nav-link', "Questions"
    assert_select 'a.nav-link', "References"
    assert_select 'a.nav-link', "Prices"

    assert_select 'a.btn.btn-danger', 'Register'
    assert_select 'a.btn.btn-success', 'Login'
    
    assert_select 'a.nav-link', text: "My orders", count: 0
    assert_select 'a.nav-link', text: "Add order", count: 0
    assert_select 'a.nav-link', text: "Links", count: 0
    assert_select 'a.nav-link', text: "Orders", count: 0
    assert_select 'a.btn.btn-danger', text: 'Logout', count: 0
    assert_response :success
  end

  test "should get about" do
    get home_about_url
    assert_response :success
  end

  test "should get authorization" do
    get home_authorization_url
    assert_response :success
  end

  test "should get VH_auth" do
    get home_VH_auth_url
    assert_response :success
  end

  test "should get drilling" do
    get home_drilling_url
    assert_response :success
  end

  test "should get watering_well" do
    get home_watering_well_url
    assert_response :success
  end

  test "should get compensating_wells" do
    get home_compensating_wells_url
    assert_response :success
  end

  test "should get compensation" do
    get home_compensation_url
    assert_response :success
  end

  test "should get price" do
    get home_price_url
    assert_response :success
  end

  test "should get price_calculator" do
    get home_price_calculator_url
    assert_response :success
  end

  test "should get questions" do
    get home_questions_url
    assert_response :success
  end

  test "should get references" do
    get home_references_url
    assert_response :success
  end

  test "should get indastrial_wells" do
    get home_indastrial_wells_url
    assert_response :success
  end

  test "should get CV" do
    get home_CV_url
    assert_response :success
  end
end
