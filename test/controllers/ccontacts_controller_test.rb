require 'test_helper'

class CcontactsControllerTest < ActionController::TestCase
  setup do
    @ccontact = ccontacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ccontacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ccontact" do
    assert_difference('Ccontact.count') do
      post :create, ccontact: { email: @ccontact.email, message: @ccontact.message, name: @ccontact.name, subject: @ccontact.subject }
    end

    assert_redirected_to ccontact_path(assigns(:ccontact))
  end

  test "should show ccontact" do
    get :show, id: @ccontact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ccontact
    assert_response :success
  end

  test "should update ccontact" do
    patch :update, id: @ccontact, ccontact: { email: @ccontact.email, message: @ccontact.message, name: @ccontact.name, subject: @ccontact.subject }
    assert_redirected_to ccontact_path(assigns(:ccontact))
  end

  test "should destroy ccontact" do
    assert_difference('Ccontact.count', -1) do
      delete :destroy, id: @ccontact
    end

    assert_redirected_to ccontacts_path
  end
end
