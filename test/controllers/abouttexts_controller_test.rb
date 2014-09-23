require 'test_helper'

class AbouttextsControllerTest < ActionController::TestCase
  setup do
    @abouttext = abouttexts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:abouttexts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create abouttext" do
    assert_difference('Abouttext.count') do
      post :create, abouttext: { content: @abouttext.content, title: @abouttext.title }
    end

    assert_redirected_to abouttext_path(assigns(:abouttext))
  end

  test "should show abouttext" do
    get :show, id: @abouttext
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @abouttext
    assert_response :success
  end

  test "should update abouttext" do
    patch :update, id: @abouttext, abouttext: { content: @abouttext.content, title: @abouttext.title }
    assert_redirected_to abouttext_path(assigns(:abouttext))
  end

  test "should destroy abouttext" do
    assert_difference('Abouttext.count', -1) do
      delete :destroy, id: @abouttext
    end

    assert_redirected_to abouttexts_path
  end
end
