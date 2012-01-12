require 'test_helper'

class ProducentsControllerTest < ActionController::TestCase
  setup do
    @producent = producents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:producents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create producent" do
    assert_difference('Producent.count') do
      post :create, producent: @producent.attributes
    end

    assert_redirected_to producent_path(assigns(:producent))
  end

  test "should show producent" do
    get :show, id: @producent.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @producent.to_param
    assert_response :success
  end

  test "should update producent" do
    put :update, id: @producent.to_param, producent: @producent.attributes
    assert_redirected_to producent_path(assigns(:producent))
  end

  test "should destroy producent" do
    assert_difference('Producent.count', -1) do
      delete :destroy, id: @producent.to_param
    end

    assert_redirected_to producents_path
  end
end
