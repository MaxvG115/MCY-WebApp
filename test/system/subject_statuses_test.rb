require "application_system_test_case"

class SubjectStatusesTest < ApplicationSystemTestCase
  setup do
    @subject_status = subject_statuses(:one)
  end

  test "visiting the index" do
    visit subject_statuses_url
    assert_selector "h1", text: "Subject Statuses"
  end

  test "creating a Subject status" do
    visit subject_statuses_url
    click_on "New Subject Status"

    fill_in "Status name", with: @subject_status.status_name
    click_on "Create Subject status"

    assert_text "Subject status was successfully created"
    click_on "Back"
  end

  test "updating a Subject status" do
    visit subject_statuses_url
    click_on "Edit", match: :first

    fill_in "Status name", with: @subject_status.status_name
    click_on "Update Subject status"

    assert_text "Subject status was successfully updated"
    click_on "Back"
  end

  test "destroying a Subject status" do
    visit subject_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Subject status was successfully destroyed"
  end
end
