require 'test_helper'

class TelefonsControllerTest < ActionController::TestCase
  setup do
    @telefon = telefons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:telefons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create telefon" do
    assert_difference('Telefon.count') do
      post :create, telefon: @telefon.attributes
    end

    assert_redirected_to telefon_path(assigns(:telefon))
  end

  test "should show telefon" do
    get :show, id: @telefon.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @telefon.to_param
    assert_response :success
  end

  test "should update telefon" do
    put :update, id: @telefon.to_param, telefon: @telefon.attributes
    assert_redirected_to telefon_path(assigns(:telefon))
  end

  test "should destroy telefon" do
    assert_difference('Telefon.count', -1) do
      delete :destroy, id: @telefon.to_param
    end

    assert_redirected_to telefons_path
  end
end
