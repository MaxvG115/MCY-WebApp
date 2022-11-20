require "application_system_test_case"

class UniversitaryCentersTest < ApplicationSystemTestCase
  setup do
    @universitary_center = universitary_centers(:one)
  end

  test "visiting the index" do
    visit universitary_centers_url
    assert_selector "h1", text: "Universitary Centers"
  end

  test "creating a Universitary center" do
    visit universitary_centers_url
    click_on "New Universitary Center"

    fill_in "Sede", with: @universitary_center.sede_id
    fill_in "Universitary center name", with: @universitary_center.universitary_center_name
    click_on "Create Universitary center"

    assert_text "Universitary center was successfully created"
    click_on "Back"
  end

  test "updating a Universitary center" do
    visit universitary_centers_url
    click_on "Edit", match: :first

    fill_in "Sede", with: @universitary_center.sede_id
    fill_in "Universitary center name", with: @universitary_center.universitary_center_name
    click_on "Update Universitary center"

    assert_text "Universitary center was successfully updated"
    click_on "Back"
  end

  test "destroying a Universitary center" do
    visit universitary_centers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Universitary center was successfully destroyed"
  end
end
