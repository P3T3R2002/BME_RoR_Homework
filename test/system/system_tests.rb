require "application_system_test_case"

class SystemTests < ApplicationSystemTestCase
  setup do
    @order = orders(:order_1)
  end

  test "register, order, edit order, edit profile, log out" do
    visit 'http://localhost:3000/home/index'
    # home/index
    assert_selector 'a.btn.btn-danger', text: 'Register'
    assert_selector 'a.btn.btn-success', text: 'Login'
    assert_selector 'a.btn.btn-danger', text: 'Logout', count: 0
    click_on 'Register'
    # users/sign_up
    fill_in "Email", with: "testuser@example.com"
    fill_in "Password", with: "012345678"
    fill_in "Password confirmation", with: "012345678"
    click_button "Sign up"
    # home/index
    assert_selector 'a.btn.btn-danger', text: 'Logout'
    assert_selector 'a.nav-link', text: 'Add order'
    assert_selector 'a.nav-link', text: 'Profile'
    assert_selector 'a.btn.btn-danger', text: 'Register', count: 0
    assert_selector 'a.btn.btn-success', text: 'Login', count: 0
    click_on "Add order"
    # orders/new  
    assert_selector "label[for='order_place']", text: "Place"
    assert_selector "input[type='text'][name='order[place]'][required][placeholder='47.154407 : 16.584029']"

    # depth input 
    assert_selector "label[for='order_depth']", text: "Depth"
    assert_selector "input[type='range']#depth-range.form-range"

    # diameter select
    assert_selector "label[for='order_diameter']", text: "Diameter"
    assert_selector "select[name='order[diameter]'][required]"
    assert_selector "option", text: "--0--"
    assert_selector "option", text: "160"
    assert_selector "option", text: "200"

    
    fill_in "Place", with: @order.place
    find("#depth-range").set(@order.depth)
    select @order.diameter, from: "Diameter"

    click_button "Create Order" 

    # orders/??
    assert_text "Place: #{@order.place}"
    assert_text "Diameter: #{@order.diameter} mm"
    assert_text "Depth: #{@order.depth} m"
    assert_selector 'form button', text: 'Destroy this order'
    assert_selector 'a', text: 'Edit this order'
    assert_selector 'a', text: 'Back to orders'
    click_on 'Edit this order'
    # orders/??/edit
    assert_selector 'input[type=submit]'
    assert_selector 'a', text: 'Show this order'
    assert_selector 'a', text: 'Back to orders'
    find("#depth-range").set("20")
    click_button "Update Order"
    # orders/??
    assert_text "Place: #{@order.place}"
    assert_text "Diameter: #{@order.diameter} mm"
    assert_text "Depth: 20 m"
    assert_selector 'form button', text: 'Destroy this order'
    assert_selector 'a', text: 'Edit this order'
    assert_selector 'a', text: 'Back to orders'
    click_on 'Back to orders'
    # orders
    assert_selector 'a', text: 'Show'
    click_on 'Show'
    # orders/??
    assert_selector 'form button', text: 'Destroy this order'
    assert_selector 'a', text: 'Edit this order'
    assert_selector 'a', text: 'Back to orders'
    click_on 'Profile'
    # profiles/show/??
    assert_text "Name:"
    assert_text "Email: testuser@example.com"
    assert_text "Phone:"
    assert_selector 'a', text: 'Edit profile'
    click_on 'Edit profile'
    # users/edit
    assert_selector 'input[type=submit]'
    fill_in "Name", with: 'ÉN'
    fill_in "Phone", with: '+3630223344'
    fill_in "Current password", with: "012345678"
    click_button "Update"
    # home/index
    click_on 'Profile'
    # profiles/show/??  
    assert_text "Name: ÉN"
    assert_text "Email: testuser@example.com"
    assert_text "Phone: +3630223344"
    assert_selector 'a', text: 'Edit profile'
    click_on "Logout"
    # home/index
    assert_selector 'a.btn.btn-danger', text: 'Register'
    assert_selector 'a.btn.btn-success', text: 'Login'
    assert_selector 'a.btn.btn-danger', text: 'Logout', count: 0
  end
end