require 'test_helper'

class M6sControllerTest < ActionController::TestCase
  setup do
    @m6 = m6s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m6s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m6" do
    assert_difference('M6.count') do
      post :create, m6: { four: @m6.four, one: @m6.one, quiz_id: @m6.quiz_id, three: @m6.three, two: @m6.two }
    end

    assert_redirected_to m6_path(assigns(:m6))
  end

  test "should show m6" do
    get :show, id: @m6
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @m6
    assert_response :success
  end

  test "should update m6" do
    patch :update, id: @m6, m6: { four: @m6.four, one: @m6.one, quiz_id: @m6.quiz_id, three: @m6.three, two: @m6.two }
    assert_redirected_to m6_path(assigns(:m6))
  end

  test "should destroy m6" do
    assert_difference('M6.count', -1) do
      delete :destroy, id: @m6
    end

    assert_redirected_to m6s_path
  end
end
