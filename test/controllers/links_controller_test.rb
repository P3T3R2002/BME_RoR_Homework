require "test_helper"

class LinksControllerTest < ActionDispatch::IntegrationTest

  setup do
    @link = links(:link_1)
  end

  test "should get index" do
    get url_for(controller: "links") 
    assert_response :success
  end

  test "should get new" do
    get new_link_url
    assert_response :success
  end

  test "should create link" do
    assert_difference("Link.count") do
      post links_url, params: { link: { description: @link.description, link: @link.link, name: @link.name } }
    end

    assert_redirected_to link_url(Link.last)
  end

  test "should show link" do
    get link_url(@link)
    assert_response :success
  end

  test "should get edit" do
    get edit_link_url(@link)
    assert_response :success
  end

  test "should update link" do
    patch link_url(@link), params: { link: { description: @link.description, link: @link.link, name: @link.name } }
    assert_redirected_to link_url(@link)
  end

  test "should destroy link" do
    assert_difference("Link.count", -1) do
      delete link_url(@link)
    end

    assert_redirected_to links_url
  end
end
