require 'test_helper'

class CmodelsControllerTest < ActionController::TestCase
  setup do
    @cmodel = cmodels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cmodels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cmodel" do
    assert_difference('Cmodel.count') do
      post :create, cmodel: @cmodel.attributes
    end

    assert_redirected_to cmodel_path(assigns(:cmodel))
  end

  test "should show cmodel" do
    get :show, id: @cmodel.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cmodel.to_param
    assert_response :success
  end

  test "should update cmodel" do
    put :update, id: @cmodel.to_param, cmodel: @cmodel.attributes
    assert_redirected_to cmodel_path(assigns(:cmodel))
  end

  test "should destroy cmodel" do
    assert_difference('Cmodel.count', -1) do
      delete :destroy, id: @cmodel.to_param
    end

    assert_redirected_to cmodels_path
  end
end
