require 'test_helper'

class FilialsControllerTest < ActionController::TestCase
  setup do
    @filial = filials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:filials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create filial" do
    assert_difference('Filial.count') do
      post :create, filial: { ch: @filial.ch, name: @filial.name, pn: @filial.pn, pt: @filial.pt, sb: @filial.sb, sr: @filial.sr, vs: @filial.vs, vt: @filial.vt }
    end

    assert_redirected_to filial_path(assigns(:filial))
  end

  test "should show filial" do
    get :show, id: @filial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @filial
    assert_response :success
  end

  test "should update filial" do
    patch :update, id: @filial, filial: { ch: @filial.ch, name: @filial.name, pn: @filial.pn, pt: @filial.pt, sb: @filial.sb, sr: @filial.sr, vs: @filial.vs, vt: @filial.vt }
    assert_redirected_to filial_path(assigns(:filial))
  end

  test "should destroy filial" do
    assert_difference('Filial.count', -1) do
      delete :destroy, id: @filial
    end

    assert_redirected_to filials_path
  end
end
