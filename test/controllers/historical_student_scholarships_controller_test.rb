require "test_helper"

class HistoricalStudentScholarshipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @historical_student_scholarship = historical_student_scholarships(:one)
  end

  test "should get index" do
    get historical_student_scholarships_url
    assert_response :success
  end

  test "should get new" do
    get new_historical_student_scholarship_url
    assert_response :success
  end

  test "should create historical_student_scholarship" do
    assert_difference('HistoricalStudentScholarship.count') do
      post historical_student_scholarships_url, params: { historical_student_scholarship: { alumnos_id: @historical_student_scholarship.alumnos_id, scholarships_id: @historical_student_scholarship.scholarships_id } }
    end

    assert_redirected_to historical_student_scholarship_url(HistoricalStudentScholarship.last)
  end

  test "should show historical_student_scholarship" do
    get historical_student_scholarship_url(@historical_student_scholarship)
    assert_response :success
  end

  test "should get edit" do
    get edit_historical_student_scholarship_url(@historical_student_scholarship)
    assert_response :success
  end

  test "should update historical_student_scholarship" do
    patch historical_student_scholarship_url(@historical_student_scholarship), params: { historical_student_scholarship: { alumnos_id: @historical_student_scholarship.alumnos_id, scholarships_id: @historical_student_scholarship.scholarships_id } }
    assert_redirected_to historical_student_scholarship_url(@historical_student_scholarship)
  end

  test "should destroy historical_student_scholarship" do
    assert_difference('HistoricalStudentScholarship.count', -1) do
      delete historical_student_scholarship_url(@historical_student_scholarship)
    end

    assert_redirected_to historical_student_scholarships_url
  end
end
