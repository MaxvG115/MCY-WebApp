require "application_system_test_case"

class HistoricalStudentScholarshipsTest < ApplicationSystemTestCase
  setup do
    @historical_student_scholarship = historical_student_scholarships(:one)
  end

  test "visiting the index" do
    visit historical_student_scholarships_url
    assert_selector "h1", text: "Historical Student Scholarships"
  end

  test "creating a Historical student scholarship" do
    visit historical_student_scholarships_url
    click_on "New Historical Student Scholarship"

    fill_in "Alumnos", with: @historical_student_scholarship.alumnos_id
    fill_in "Scholarships", with: @historical_student_scholarship.scholarships_id
    click_on "Create Historical student scholarship"

    assert_text "Historical student scholarship was successfully created"
    click_on "Back"
  end

  test "updating a Historical student scholarship" do
    visit historical_student_scholarships_url
    click_on "Edit", match: :first

    fill_in "Alumnos", with: @historical_student_scholarship.alumnos_id
    fill_in "Scholarships", with: @historical_student_scholarship.scholarships_id
    click_on "Update Historical student scholarship"

    assert_text "Historical student scholarship was successfully updated"
    click_on "Back"
  end

  test "destroying a Historical student scholarship" do
    visit historical_student_scholarships_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Historical student scholarship was successfully destroyed"
  end
end
