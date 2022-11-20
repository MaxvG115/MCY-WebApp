require "application_system_test_case"

class StudentSubjectRelationsTest < ApplicationSystemTestCase
  setup do
    @student_subject_relation = student_subject_relations(:one)
  end

  test "visiting the index" do
    visit student_subject_relations_url
    assert_selector "h1", text: "Student Subject Relations"
  end

  test "creating a Student subject relation" do
    visit student_subject_relations_url
    click_on "New Student Subject Relation"

    fill_in "Alumnos", with: @student_subject_relation.alumnos_id
    fill_in "Finalscore", with: @student_subject_relation.finalscore
    fill_in "Period", with: @student_subject_relation.period
    fill_in "Subjects", with: @student_subject_relation.subjects_id
    click_on "Create Student subject relation"

    assert_text "Student subject relation was successfully created"
    click_on "Back"
  end

  test "updating a Student subject relation" do
    visit student_subject_relations_url
    click_on "Edit", match: :first

    fill_in "Alumnos", with: @student_subject_relation.alumnos_id
    fill_in "Finalscore", with: @student_subject_relation.finalscore
    fill_in "Period", with: @student_subject_relation.period
    fill_in "Subjects", with: @student_subject_relation.subjects_id
    click_on "Update Student subject relation"

    assert_text "Student subject relation was successfully updated"
    click_on "Back"
  end

  test "destroying a Student subject relation" do
    visit student_subject_relations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student subject relation was successfully destroyed"
  end
end
