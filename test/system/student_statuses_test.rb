require "application_system_test_case"

class StudentStatusesTest < ApplicationSystemTestCase
  setup do
    @student_status = student_statuses(:one)
  end

  test "visiting the index" do
    visit student_statuses_url
    assert_selector "h1", text: "Student Statuses"
  end

  test "creating a Student status" do
    visit student_statuses_url
    click_on "New Student Status"

    fill_in "Status name", with: @student_status.status_name
    click_on "Create Student status"

    assert_text "Student status was successfully created"
    click_on "Back"
  end

  test "updating a Student status" do
    visit student_statuses_url
    click_on "Edit", match: :first

    fill_in "Status name", with: @student_status.status_name
    click_on "Update Student status"

    assert_text "Student status was successfully updated"
    click_on "Back"
  end

  test "destroying a Student status" do
    visit student_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student status was successfully destroyed"
  end
end
