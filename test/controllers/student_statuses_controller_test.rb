require "test_helper"

class StudentStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_status = student_statuses(:one)
  end

  test "should get index" do
    get student_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_student_status_url
    assert_response :success
  end

  test "should create student_status" do
    assert_difference('StudentStatus.count') do
      post student_statuses_url, params: { student_status: { status_name: @student_status.status_name } }
    end

    assert_redirected_to student_status_url(StudentStatus.last)
  end

  test "should show student_status" do
    get student_status_url(@student_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_status_url(@student_status)
    assert_response :success
  end

  test "should update student_status" do
    patch student_status_url(@student_status), params: { student_status: { status_name: @student_status.status_name } }
    assert_redirected_to student_status_url(@student_status)
  end

  test "should destroy student_status" do
    assert_difference('StudentStatus.count', -1) do
      delete student_status_url(@student_status)
    end

    assert_redirected_to student_statuses_url
  end
end
