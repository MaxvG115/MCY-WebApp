require "test_helper"

class HistoricalStudentStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @historical_student_status = historical_student_statuses(:one)
  end

  test "should get index" do
    get historical_student_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_historical_student_status_url
    assert_response :success
  end

  test "should create historical_student_status" do
    assert_difference('HistoricalStudentStatus.count') do
      post historical_student_statuses_url, params: { historical_student_status: { alumnos_id: @historical_student_status.alumnos_id, studentstatus_id: @historical_student_status.studentstatus_id } }
    end

    assert_redirected_to historical_student_status_url(HistoricalStudentStatus.last)
  end

  test "should show historical_student_status" do
    get historical_student_status_url(@historical_student_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_historical_student_status_url(@historical_student_status)
    assert_response :success
  end

  test "should update historical_student_status" do
    patch historical_student_status_url(@historical_student_status), params: { historical_student_status: { alumnos_id: @historical_student_status.alumnos_id, studentstatus_id: @historical_student_status.studentstatus_id } }
    assert_redirected_to historical_student_status_url(@historical_student_status)
  end

  test "should destroy historical_student_status" do
    assert_difference('HistoricalStudentStatus.count', -1) do
      delete historical_student_status_url(@historical_student_status)
    end

    assert_redirected_to historical_student_statuses_url
  end
end
