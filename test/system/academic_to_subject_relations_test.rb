require "application_system_test_case"

class AcademicToSubjectRelationsTest < ApplicationSystemTestCase
  setup do
    @academic_to_subject_relation = academic_to_subject_relations(:one)
  end

  test "visiting the index" do
    visit academic_to_subject_relations_url
    assert_selector "h1", text: "Academic To Subject Relations"
  end

  test "creating a Academic to subject relation" do
    visit academic_to_subject_relations_url
    click_on "New Academic To Subject Relation"

    fill_in "Academicprograms idbody", with: @academic_to_subject_relation.academicprograms_idbody
    fill_in "Subjects", with: @academic_to_subject_relation.subjects_id
    click_on "Create Academic to subject relation"

    assert_text "Academic to subject relation was successfully created"
    click_on "Back"
  end

  test "updating a Academic to subject relation" do
    visit academic_to_subject_relations_url
    click_on "Edit", match: :first

    fill_in "Academicprograms idbody", with: @academic_to_subject_relation.academicprograms_idbody
    fill_in "Subjects", with: @academic_to_subject_relation.subjects_id
    click_on "Update Academic to subject relation"

    assert_text "Academic to subject relation was successfully updated"
    click_on "Back"
  end

  test "destroying a Academic to subject relation" do
    visit academic_to_subject_relations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Academic to subject relation was successfully destroyed"
  end
end
