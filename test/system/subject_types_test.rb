require "application_system_test_case"

class SubjectTypesTest < ApplicationSystemTestCase
  setup do
    @subject_type = subject_types(:one)
  end

  test "visiting the index" do
    visit subject_types_url
    assert_selector "h1", text: "Subject Types"
  end

  test "creating a Subject type" do
    visit subject_types_url
    click_on "New Subject Type"

    fill_in "Name subject type", with: @subject_type.name_subject_type
    click_on "Create Subject type"

    assert_text "Subject type was successfully created"
    click_on "Back"
  end

  test "updating a Subject type" do
    visit subject_types_url
    click_on "Edit", match: :first

    fill_in "Name subject type", with: @subject_type.name_subject_type
    click_on "Update Subject type"

    assert_text "Subject type was successfully updated"
    click_on "Back"
  end

  test "destroying a Subject type" do
    visit subject_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Subject type was successfully destroyed"
  end
end
