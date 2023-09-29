require "application_system_test_case"

class IndividualsTest < ApplicationSystemTestCase
  setup do
    @individual = individuals(:one)
  end

  test "visiting the index" do
    visit individuals_url
    assert_selector "h1", text: "Individuals"
  end

  test "should create individual" do
    visit individuals_url
    click_on "New individual"

    fill_in "Name", with: @individual.name
    fill_in "Tz", with: @individual.tz
    click_on "Create Individual"

    assert_text "Individual was successfully created"
    click_on "Back"
  end

  test "should update Individual" do
    visit individual_url(@individual)
    click_on "Edit this individual", match: :first

    fill_in "Name", with: @individual.name
    fill_in "Tz", with: @individual.tz
    click_on "Update Individual"

    assert_text "Individual was successfully updated"
    click_on "Back"
  end

  test "should destroy Individual" do
    visit individual_url(@individual)
    click_on "Destroy this individual", match: :first

    assert_text "Individual was successfully destroyed"
  end
end
