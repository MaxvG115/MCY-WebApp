require "test_helper"

class SubjectTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subject_type = subject_types(:one)
  end

  test "should get index" do
    get subject_types_url
    assert_response :success
  end

  test "should get new" do
    get new_subject_type_url
    assert_response :success
  end

  test "should create subject_type" do
    assert_difference('SubjectType.count') do
      post subject_types_url, params: { subject_type: { name_subject_type: @subject_type.name_subject_type } }
    end

    assert_redirected_to subject_type_url(SubjectType.last)
  end

  test "should show subject_type" do
    get subject_type_url(@subject_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_subject_type_url(@subject_type)
    assert_response :success
  end

  test "should update subject_type" do
    patch subject_type_url(@subject_type), params: { subject_type: { name_subject_type: @subject_type.name_subject_type } }
    assert_redirected_to subject_type_url(@subject_type)
  end

  test "should destroy subject_type" do
    assert_difference('SubjectType.count', -1) do
      delete subject_type_url(@subject_type)
    end

    assert_redirected_to subject_types_url
  end
end
