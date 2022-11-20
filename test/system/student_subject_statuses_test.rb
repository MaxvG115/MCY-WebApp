require "application_system_test_case"

class StudentSubjectStatusesTest < ApplicationSystemTestCase
  setup do
    @student_subject_status = student_subject_statuses(:one)
  end

  test "visiting the index" do
    visit student_subject_statuses_url
    assert_selector "h1", text: "Student Subject Statuses"
  end

  test "creating a Student subject status" do
    visit student_subject_statuses_url
    click_on "New Student Subject Status"

    fill_in "Student subject relation", with: @student_subject_status.student_subject_relation_id
    fill_in "Subject statuses", with: @student_subject_status.subject_statuses_id
    click_on "Create Student subject status"

    assert_text "Student subject status was successfully created"
    click_on "Back"
  end

  test "updating a Student subject status" do
    visit student_subject_statuses_url
    click_on "Edit", match: :first

    fill_in "Student subject relation", with: @student_subject_status.student_subject_relation_id
    fill_in "Subject statuses", with: @student_subject_status.subject_statuses_id
    click_on "Update Student subject status"

    assert_text "Student subject status was successfully updated"
    click_on "Back"
  end

  test "destroying a Student subject status" do
    visit student_subject_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student subject status was successfully destroyed"
  end
end
