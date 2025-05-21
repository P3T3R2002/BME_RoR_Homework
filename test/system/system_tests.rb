require "application_system_test_case"

class SystemTests < ApplicationSystemTestCase
  test "visiting the index" do
    visit 'http://localhost:3000/home/index'

    assert_select 'a.navbar-brand', text: "Vasi Drill"
    assert_select 'a.nav-link', text: "About Us"
    assert_select 'a.nav-link', text: "Drilling"
    assert_select 'a.nav-link', text: "Authorization"
    assert_select 'a.nav-link', text: "Compensation"
    assert_select 'a.nav-link', text: "Questions"
    assert_select 'a.nav-link', text: "References"
    assert_select 'a.nav-link', text: "Prices"

    assert_select 'a.btn.btn-danger', text: 'Register'
    assert_select 'a.btn.btn-success', text: 'Login'
    
    assert_select 'a.nav-link', text: "My orders", count: 0
    assert_select 'a.nav-link', text: "Add order", count: 0
    assert_select 'a.nav-link', text: "Links", count: 0
    assert_select 'a.nav-link', text: "Orders", count: 0
    assert_select 'a.btn.btn-danger', text: 'Logout', count: 0
  end
end
