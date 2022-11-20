require "test_helper"

class UniversitaryCentersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @universitary_center = universitary_centers(:one)
  end

  test "should get index" do
    get universitary_centers_url
    assert_response :success
  end

  test "should get new" do
    get new_universitary_center_url
    assert_response :success
  end

  test "should create universitary_center" do
    assert_difference('UniversitaryCenter.count') do
      post universitary_centers_url, params: { universitary_center: { sede_id: @universitary_center.sede_id, universitary_center_name: @universitary_center.universitary_center_name } }
    end

    assert_redirected_to universitary_center_url(UniversitaryCenter.last)
  end

  test "should show universitary_center" do
    get universitary_center_url(@universitary_center)
    assert_response :success
  end

  test "should get edit" do
    get edit_universitary_center_url(@universitary_center)
    assert_response :success
  end

  test "should update universitary_center" do
    patch universitary_center_url(@universitary_center), params: { universitary_center: { sede_id: @universitary_center.sede_id, universitary_center_name: @universitary_center.universitary_center_name } }
    assert_redirected_to universitary_center_url(@universitary_center)
  end

  test "should destroy universitary_center" do
    assert_difference('UniversitaryCenter.count', -1) do
      delete universitary_center_url(@universitary_center)
    end

    assert_redirected_to universitary_centers_url
  end
end
