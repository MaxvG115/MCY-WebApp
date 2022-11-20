require "test_helper"

class StudentSubjectStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_subject_status = student_subject_statuses(:one)
  end

  test "should get index" do
    get student_subject_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_student_subject_status_url
    assert_response :success
  end

  test "should create student_subject_status" do
    assert_difference('StudentSubjectStatus.count') do
      post student_subject_statuses_url, params: { student_subject_status: { student_subject_relation_id: @student_subject_status.student_subject_relation_id, subject_statuses_id: @student_subject_status.subject_statuses_id } }
    end

    assert_redirected_to student_subject_status_url(StudentSubjectStatus.last)
  end

  test "should show student_subject_status" do
    get student_subject_status_url(@student_subject_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_subject_status_url(@student_subject_status)
    assert_response :success
  end

  test "should update student_subject_status" do
    patch student_subject_status_url(@student_subject_status), params: { student_subject_status: { student_subject_relation_id: @student_subject_status.student_subject_relation_id, subject_statuses_id: @student_subject_status.subject_statuses_id } }
    assert_redirected_to student_subject_status_url(@student_subject_status)
  end

  test "should destroy student_subject_status" do
    assert_difference('StudentSubjectStatus.count', -1) do
      delete student_subject_status_url(@student_subject_status)
    end

    assert_redirected_to student_subject_statuses_url
  end
end
