require "test_helper"

class ReferencesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @reference = references(:ref_1)
    sign_in users(:admin)
  end

  
  
  test "should get index_1" do
    get references_url
    assert_response :success
  end
  test "should get index_2" do
    get url_for(controller: "references") 
    assert_response :success
  end
  test "should get index_3" do
    get references_path
    assert_response :success
  end

  test "should get new" do
    get new_reference_url
    assert_response :success
  end

  test "should create reference" do
    assert_difference("Reference.count") do
      post references_url, params: { reference: { year: @reference.year, project_description: @reference.project_description, project_type: @reference.project_type} }
    end

    assert_redirected_to reference_url(Reference.last)
  end

  test "should show reference" do
    get reference_url(@reference)
    assert_response :success
  end

  test "should get edit" do
    get edit_reference_url(@reference)
    assert_response :success
  end

  test "should update reference" do
    patch reference_url(@reference), params: { reference: {  year: @reference.year, project_description: @reference.project_description, project_type: @reference.project_type } }
    assert_redirected_to reference_url(@reference)
  end

  test "should destroy reference" do
    assert_difference("Reference.count", -1) do
      delete reference_url(@reference)
    end

    assert_redirected_to references_url
  end
end
