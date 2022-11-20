require "application_system_test_case"

class HistoricalStudentStatusesTest < ApplicationSystemTestCase
  setup do
    @historical_student_status = historical_student_statuses(:one)
  end

  test "visiting the index" do
    visit historical_student_statuses_url
    assert_selector "h1", text: "Historical Student Statuses"
  end

  test "creating a Historical student status" do
    visit historical_student_statuses_url
    click_on "New Historical Student Status"

    fill_in "Alumnos", with: @historical_student_status.alumnos_id
    fill_in "Studentstatus", with: @historical_student_status.studentstatus_id
    click_on "Create Historical student status"

    assert_text "Historical student status was successfully created"
    click_on "Back"
  end

  test "updating a Historical student status" do
    visit historical_student_statuses_url
    click_on "Edit", match: :first

    fill_in "Alumnos", with: @historical_student_status.alumnos_id
    fill_in "Studentstatus", with: @historical_student_status.studentstatus_id
    click_on "Update Historical student status"

    assert_text "Historical student status was successfully updated"
    click_on "Back"
  end

  test "destroying a Historical student status" do
    visit historical_student_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Historical student status was successfully destroyed"
  end
end
