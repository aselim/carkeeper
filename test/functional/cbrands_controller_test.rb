require 'test_helper'

class CbrandsControllerTest < ActionController::TestCase
  setup do
    @cbrand = cbrands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cbrands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cbrand" do
    assert_difference('Cbrand.count') do
      post :create, cbrand: @cbrand.attributes
    end

    assert_redirected_to cbrand_path(assigns(:cbrand))
  end

  test "should show cbrand" do
    get :show, id: @cbrand.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cbrand.to_param
    assert_response :success
  end

  test "should update cbrand" do
    put :update, id: @cbrand.to_param, cbrand: @cbrand.attributes
    assert_redirected_to cbrand_path(assigns(:cbrand))
  end

  test "should destroy cbrand" do
    assert_difference('Cbrand.count', -1) do
      delete :destroy, id: @cbrand.to_param
    end

    assert_redirected_to cbrands_path
  end
end
