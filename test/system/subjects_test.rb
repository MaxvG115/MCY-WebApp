require "application_system_test_case"

class SubjectsTest < ApplicationSystemTestCase
  setup do
    @subject = subjects(:one)
  end

  test "visiting the index" do
    visit subjects_url
    assert_selector "h1", text: "Subjects"
  end

  test "creating a Subject" do
    visit subjects_url
    click_on "New Subject"

    fill_in "Class key", with: @subject.class_key
    fill_in "Classname", with: @subject.classname
    fill_in "Duration of weeks", with: @subject.duration_of_weeks
    fill_in "Subject type", with: @subject.subject_type_id
    click_on "Create Subject"

    assert_text "Subject was successfully created"
    click_on "Back"
  end

  test "updating a Subject" do
    visit subjects_url
    click_on "Edit", match: :first

    fill_in "Class key", with: @subject.class_key
    fill_in "Classname", with: @subject.classname
    fill_in "Duration of weeks", with: @subject.duration_of_weeks
    fill_in "Subject type", with: @subject.subject_type_id
    click_on "Update Subject"

    assert_text "Subject was successfully updated"
    click_on "Back"
  end

  test "destroying a Subject" do
    visit subjects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Subject was successfully destroyed"
  end
end
