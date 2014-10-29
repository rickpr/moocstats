require 'test_helper'

class M3sControllerTest < ActionController::TestCase
  setup do
    @m3 = m3s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m3s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m3" do
    assert_difference('M3.count') do
      post :create, m3: { one: @m3.one, quiz_id: @m3.quiz_id, two: @m3.two }
    end

    assert_redirected_to m3_path(assigns(:m3))
  end

  test "should show m3" do
    get :show, id: @m3
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @m3
    assert_response :success
  end

  test "should update m3" do
    patch :update, id: @m3, m3: { one: @m3.one, quiz_id: @m3.quiz_id, two: @m3.two }
    assert_redirected_to m3_path(assigns(:m3))
  end

  test "should destroy m3" do
    assert_difference('M3.count', -1) do
      delete :destroy, id: @m3
    end

    assert_redirected_to m3s_path
  end
end
