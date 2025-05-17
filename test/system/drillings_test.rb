require "application_system_test_case"

class DrillingsTest < ApplicationSystemTestCase
  setup do
    @drilling = drillings(:one)
  end

  test "visiting the index" do
    visit drillings_url
    assert_selector "h1", text: "Drillings"
  end

  test "should create drilling" do
    visit drillings_url
    click_on "New drilling"

    fill_in "Amount", with: @drilling.amount
    fill_in "Drilled depth", with: @drilling.drilled_depth
    fill_in "Name", with: @drilling.name
    fill_in "Place", with: @drilling.place
    fill_in "Type", with: @drilling.type
    fill_in "Year", with: @drilling.year
    click_on "Create Drilling"

    assert_text "Drilling was successfully created"
    click_on "Back"
  end

  test "should update Drilling" do
    visit drilling_url(@drilling)
    click_on "Edit this drilling", match: :first

    fill_in "Amount", with: @drilling.amount
    fill_in "Drilled depth", with: @drilling.drilled_depth
    fill_in "Name", with: @drilling.name
    fill_in "Place", with: @drilling.place
    fill_in "Type", with: @drilling.type
    fill_in "Year", with: @drilling.year
    click_on "Update Drilling"

    assert_text "Drilling was successfully updated"
    click_on "Back"
  end

  test "should destroy Drilling" do
    visit drilling_url(@drilling)
    click_on "Destroy this drilling", match: :first

    assert_text "Drilling was successfully destroyed"
  end
end
