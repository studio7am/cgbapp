require 'test_helper'

class OtdsControllerTest < ActionController::TestCase
  setup do
    @otd = otds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:otds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create otd" do
    assert_difference('Otd.count') do
      post :create, otd: { content: @otd.content, name: @otd.name }
    end

    assert_redirected_to otd_path(assigns(:otd))
  end

  test "should show otd" do
    get :show, id: @otd
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @otd
    assert_response :success
  end

  test "should update otd" do
    patch :update, id: @otd, otd: { content: @otd.content, name: @otd.name }
    assert_redirected_to otd_path(assigns(:otd))
  end

  test "should destroy otd" do
    assert_difference('Otd.count', -1) do
      delete :destroy, id: @otd
    end

    assert_redirected_to otds_path
  end
end
