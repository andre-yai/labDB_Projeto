require 'test_helper'

class FranquiaTemEnderecosControllerTest < ActionController::TestCase
  setup do
    @franquia_tem_endereco = franquia_tem_enderecos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:franquia_tem_enderecos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create franquia_tem_endereco" do
    assert_difference('FranquiaTemEndereco.count') do
      post :create, franquia_tem_endereco: {  }
    end

    assert_redirected_to franquia_tem_endereco_path(assigns(:franquia_tem_endereco))
  end

  test "should show franquia_tem_endereco" do
    get :show, id: @franquia_tem_endereco
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @franquia_tem_endereco
    assert_response :success
  end

  test "should update franquia_tem_endereco" do
    patch :update, id: @franquia_tem_endereco, franquia_tem_endereco: {  }
    assert_redirected_to franquia_tem_endereco_path(assigns(:franquia_tem_endereco))
  end

  test "should destroy franquia_tem_endereco" do
    assert_difference('FranquiaTemEndereco.count', -1) do
      delete :destroy, id: @franquia_tem_endereco
    end

    assert_redirected_to franquia_tem_enderecos_path
  end
end
