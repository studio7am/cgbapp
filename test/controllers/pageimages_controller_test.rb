require 'test_helper'

class PageimagesControllerTest < ActionController::TestCase
  setup do
    @pageimage = pageimages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pageimages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pageimage" do
    assert_difference('Pageimage.count') do
      post :create, pageimage: { name: @pageimage.name, pgimg: @pageimage.pgimg }
    end

    assert_redirected_to pageimage_path(assigns(:pageimage))
  end

  test "should show pageimage" do
    get :show, id: @pageimage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pageimage
    assert_response :success
  end

  test "should update pageimage" do
    patch :update, id: @pageimage, pageimage: { name: @pageimage.name, pgimg: @pageimage.pgimg }
    assert_redirected_to pageimage_path(assigns(:pageimage))
  end

  test "should destroy pageimage" do
    assert_difference('Pageimage.count', -1) do
      delete :destroy, id: @pageimage
    end

    assert_redirected_to pageimages_path
  end
end
