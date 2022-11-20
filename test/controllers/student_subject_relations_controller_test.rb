require "test_helper"

class StudentSubjectRelationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_subject_relation = student_subject_relations(:one)
  end

  test "should get index" do
    get student_subject_relations_url
    assert_response :success
  end

  test "should get new" do
    get new_student_subject_relation_url
    assert_response :success
  end

  test "should create student_subject_relation" do
    assert_difference('StudentSubjectRelation.count') do
      post student_subject_relations_url, params: { student_subject_relation: { alumnos_id: @student_subject_relation.alumnos_id, finalscore: @student_subject_relation.finalscore, period: @student_subject_relation.period, subjects_id: @student_subject_relation.subjects_id } }
    end

    assert_redirected_to student_subject_relation_url(StudentSubjectRelation.last)
  end

  test "should show student_subject_relation" do
    get student_subject_relation_url(@student_subject_relation)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_subject_relation_url(@student_subject_relation)
    assert_response :success
  end

  test "should update student_subject_relation" do
    patch student_subject_relation_url(@student_subject_relation), params: { student_subject_relation: { alumnos_id: @student_subject_relation.alumnos_id, finalscore: @student_subject_relation.finalscore, period: @student_subject_relation.period, subjects_id: @student_subject_relation.subjects_id } }
    assert_redirected_to student_subject_relation_url(@student_subject_relation)
  end

  test "should destroy student_subject_relation" do
    assert_difference('StudentSubjectRelation.count', -1) do
      delete student_subject_relation_url(@student_subject_relation)
    end

    assert_redirected_to student_subject_relations_url
  end
end
