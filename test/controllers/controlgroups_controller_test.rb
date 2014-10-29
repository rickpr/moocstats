require 'test_helper'

class ControlgroupsControllerTest < ActionController::TestCase
  setup do
    @controlgroup = controlgroups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:controlgroups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create controlgroup" do
    assert_difference('Controlgroup.count') do
      post :create, controlgroup: { student_id: @controlgroup.student_id }
    end

    assert_redirected_to controlgroup_path(assigns(:controlgroup))
  end

  test "should show controlgroup" do
    get :show, id: @controlgroup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @controlgroup
    assert_response :success
  end

  test "should update controlgroup" do
    patch :update, id: @controlgroup, controlgroup: { student_id: @controlgroup.student_id }
    assert_redirected_to controlgroup_path(assigns(:controlgroup))
  end

  test "should destroy controlgroup" do
    assert_difference('Controlgroup.count', -1) do
      delete :destroy, id: @controlgroup
    end

    assert_redirected_to controlgroups_path
  end
end
