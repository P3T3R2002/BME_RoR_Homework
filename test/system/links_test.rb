require "application_system_test_case"

class LinksTest < ApplicationSystemTestCase
  setup do
    @link = links(:one)
  end

  test "visiting the index" do
    visit links_url
    assert_selector "h1", text: "links"
  end

  test "should create link" do
    visit links_url
    click_on "New link"

    fill_in "Description", with: @link.description
    fill_in "Link", with: @link.link
    fill_in "Name", with: @link.name
    click_on "Create link"

    assert_text "link was successfully created"
    click_on "Back"
  end

  test "should update link" do
    visit link_url(@link)
    click_on "Edit this link", match: :first

    fill_in "Description", with: @link.description
    fill_in "Link", with: @link.link
    fill_in "Name", with: @link.name
    click_on "Update link"

    assert_text "link was successfully updated"
    click_on "Back"
  end

  test "should destroy link" do
    visit link_url(@link)
    click_on "Destroy this link", match: :first

    assert_text "link was successfully destroyed"
  end
end
