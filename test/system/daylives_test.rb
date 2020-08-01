require "application_system_test_case"

class DaylivesTest < ApplicationSystemTestCase
  setup do
    @daylife = daylives(:one)
  end

  test "visiting the index" do
    visit daylives_url
    assert_selector "h1", text: "Daylives"
  end

  test "creating a Daylife" do
    visit daylives_url
    click_on "New Daylife"

    fill_in "Body", with: @daylife.body
    fill_in "Title", with: @daylife.title
    click_on "Create Daylife"

    assert_text "Daylife was successfully created"
    click_on "Back"
  end

  test "updating a Daylife" do
    visit daylives_url
    click_on "Edit", match: :first

    fill_in "Body", with: @daylife.body
    fill_in "Title", with: @daylife.title
    click_on "Update Daylife"

    assert_text "Daylife was successfully updated"
    click_on "Back"
  end

  test "destroying a Daylife" do
    visit daylives_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Daylife was successfully destroyed"
  end
end
