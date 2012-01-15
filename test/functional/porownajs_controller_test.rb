require 'test_helper'

class PorownajsControllerTest < ActionController::TestCase
  setup do
    @porownaj = porownajs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:porownajs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create porownaj" do
    assert_difference('Porownaj.count') do
      post :create, porownaj: @porownaj.attributes
    end

    assert_redirected_to porownaj_path(assigns(:porownaj))
  end

  test "should show porownaj" do
    get :show, id: @porownaj.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @porownaj.to_param
    assert_response :success
  end

  test "should update porownaj" do
    put :update, id: @porownaj.to_param, porownaj: @porownaj.attributes
    assert_redirected_to porownaj_path(assigns(:porownaj))
  end

  test "should destroy porownaj" do
    assert_difference('Porownaj.count', -1) do
      delete :destroy, id: @porownaj.to_param
    end

    assert_redirected_to porownajs_path
  end
end
