require 'test_helper'

class ArtykulsControllerTest < ActionController::TestCase
  setup do
    @artykul = artykuls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artykuls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artykul" do
    assert_difference('Artykul.count') do
      post :create, artykul: @artykul.attributes
    end

    assert_redirected_to artykul_path(assigns(:artykul))
  end

  test "should show artykul" do
    get :show, id: @artykul.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artykul.to_param
    assert_response :success
  end

  test "should update artykul" do
    put :update, id: @artykul.to_param, artykul: @artykul.attributes
    assert_redirected_to artykul_path(assigns(:artykul))
  end

  test "should destroy artykul" do
    assert_difference('Artykul.count', -1) do
      delete :destroy, id: @artykul.to_param
    end

    assert_redirected_to artykuls_path
  end
end
