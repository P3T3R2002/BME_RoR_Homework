require "test_helper"

class RoutesTest < ActionDispatch::IntegrationTest
     test "route paths resolve correctly" do
          d = Drilling.first
          l = Link.first
          o = Order.first
          r = Reference.first
          u = User.first

          assert_equal drillings_path ,                "/drillings" 
          assert_equal new_drilling_path ,             "/drillings/new"
          assert_equal edit_drilling_path(d) ,         "/drillings/#{d.id}/edit" 
          assert_equal drilling_path(d) ,              "/drillings/#{d.id}" 
          assert_equal references_path ,               "/references" 
          assert_equal new_reference_path ,            "/references/new"
          assert_equal edit_reference_path(r) ,        "/references/#{r.id}/edit" 
          assert_equal reference_path(r) ,             "/references/#{r.id}"
          assert_equal links_path ,                    "/links" 
          assert_equal new_link_path ,                 "/links/new" 
          assert_equal edit_link_path(l) ,             "/links/#{l.id}/edit"
          assert_equal link_path(l) ,                  "/links/#{l.id}" 
          assert_equal orders_path ,                   "/orders" 
          assert_equal new_order_path ,                "/orders/new" 
          assert_equal edit_order_path(o) ,            "/orders/#{o.id}/edit" 
          assert_equal order_path(o) ,                 "/orders/#{o.id}" 
          assert_equal new_user_session_path ,         "/users/sign_in"
          assert_equal user_session_path ,             "/users/sign_in"
          assert_equal destroy_user_session_path ,     "/users/sign_out"
          assert_equal new_user_password_path ,        "/users/password/new" 
          assert_equal edit_user_password_path ,       "/users/password/edit" 
          assert_equal user_password_path ,            "/users/password"
          assert_equal cancel_user_registration_path,  "/users/cancel"
          assert_equal new_user_registration_path ,    "/users/sign_up"
          assert_equal edit_user_registration_path ,   "/users/edit"
          assert_equal user_registration_path ,        "/users"
          assert_equal profiles_show_path(u) ,         "/profiles/show/#{u.id}" 
          assert_equal home_price_calculator_path ,    "/home/price_calculator" 
          assert_equal home_index_path ,               "/home/index"
          assert_equal home_references_path ,          "/home/references"
          assert_equal home_questions_path ,           "/home/questions"
          assert_equal home_authorization_path ,       "/home/authorization" 
          assert_equal home_CV_path ,                  "/home/CV" 
          assert_equal home_VH_auth_path ,             "/home/VH_auth" 
          assert_equal home_indastrial_wells_path ,    "/home/indastrial_wells" 
          assert_equal home_compensating_wells_path ,  "/home/compensating_wells" 
          assert_equal home_watering_well_path ,       "/home/watering_well" 
          assert_equal home_compensation_path ,        "/home/compensation" 
          assert_equal home_drilling_path ,            "/home/drilling"
          assert_equal home_about_path ,               "/home/about"
          assert_equal home_price_path ,               "/home/price" 
          assert_equal root_path ,                     "/" 
     end
end