require "test_helper"

class AcademicToSubjectRelationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @academic_to_subject_relation = academic_to_subject_relations(:one)
  end

  test "should get index" do
    get academic_to_subject_relations_url
    assert_response :success
  end

  test "should get new" do
    get new_academic_to_subject_relation_url
    assert_response :success
  end

  test "should create academic_to_subject_relation" do
    assert_difference('AcademicToSubjectRelation.count') do
      post academic_to_subject_relations_url, params: { academic_to_subject_relation: { academicprograms_idbody: @academic_to_subject_relation.academicprograms_idbody, subjects_id: @academic_to_subject_relation.subjects_id } }
    end

    assert_redirected_to academic_to_subject_relation_url(AcademicToSubjectRelation.last)
  end

  test "should show academic_to_subject_relation" do
    get academic_to_subject_relation_url(@academic_to_subject_relation)
    assert_response :success
  end

  test "should get edit" do
    get edit_academic_to_subject_relation_url(@academic_to_subject_relation)
    assert_response :success
  end

  test "should update academic_to_subject_relation" do
    patch academic_to_subject_relation_url(@academic_to_subject_relation), params: { academic_to_subject_relation: { academicprograms_idbody: @academic_to_subject_relation.academicprograms_idbody, subjects_id: @academic_to_subject_relation.subjects_id } }
    assert_redirected_to academic_to_subject_relation_url(@academic_to_subject_relation)
  end

  test "should destroy academic_to_subject_relation" do
    assert_difference('AcademicToSubjectRelation.count', -1) do
      delete academic_to_subject_relation_url(@academic_to_subject_relation)
    end

    assert_redirected_to academic_to_subject_relations_url
  end
end
