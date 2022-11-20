require "test_helper"

class SubjectStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subject_status = subject_statuses(:one)
  end

  test "should get index" do
    get subject_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_subject_status_url
    assert_response :success
  end

  test "should create subject_status" do
    assert_difference('SubjectStatus.count') do
      post subject_statuses_url, params: { subject_status: { status_name: @subject_status.status_name } }
    end

    assert_redirected_to subject_status_url(SubjectStatus.last)
  end

  test "should show subject_status" do
    get subject_status_url(@subject_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_subject_status_url(@subject_status)
    assert_response :success
  end

  test "should update subject_status" do
    patch subject_status_url(@subject_status), params: { subject_status: { status_name: @subject_status.status_name } }
    assert_redirected_to subject_status_url(@subject_status)
  end

  test "should destroy subject_status" do
    assert_difference('SubjectStatus.count', -1) do
      delete subject_status_url(@subject_status)
    end

    assert_redirected_to subject_statuses_url
  end
end
