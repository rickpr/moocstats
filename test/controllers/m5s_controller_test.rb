require 'test_helper'

class M5sControllerTest < ActionController::TestCase
  setup do
    @m5 = m5s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m5s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m5" do
    assert_difference('M5.count') do
      post :create, m5: { one: @m5.one, quiz_id: @m5.quiz_id, three: @m5.three, two: @m5.two }
    end

    assert_redirected_to m5_path(assigns(:m5))
  end

  test "should show m5" do
    get :show, id: @m5
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @m5
    assert_response :success
  end

  test "should update m5" do
    patch :update, id: @m5, m5: { one: @m5.one, quiz_id: @m5.quiz_id, three: @m5.three, two: @m5.two }
    assert_redirected_to m5_path(assigns(:m5))
  end

  test "should destroy m5" do
    assert_difference('M5.count', -1) do
      delete :destroy, id: @m5
    end

    assert_redirected_to m5s_path
  end
end
