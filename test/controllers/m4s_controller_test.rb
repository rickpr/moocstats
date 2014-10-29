require 'test_helper'

class M4sControllerTest < ActionController::TestCase
  setup do
    @m4 = m4s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m4s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m4" do
    assert_difference('M4.count') do
      post :create, m4: { one: @m4.one, quiz_id: @m4.quiz_id, three: @m4.three, two: @m4.two }
    end

    assert_redirected_to m4_path(assigns(:m4))
  end

  test "should show m4" do
    get :show, id: @m4
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @m4
    assert_response :success
  end

  test "should update m4" do
    patch :update, id: @m4, m4: { one: @m4.one, quiz_id: @m4.quiz_id, three: @m4.three, two: @m4.two }
    assert_redirected_to m4_path(assigns(:m4))
  end

  test "should destroy m4" do
    assert_difference('M4.count', -1) do
      delete :destroy, id: @m4
    end

    assert_redirected_to m4s_path
  end
end
