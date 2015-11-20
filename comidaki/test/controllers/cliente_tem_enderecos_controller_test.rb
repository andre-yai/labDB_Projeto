require 'test_helper'

class ClienteTemEnderecosControllerTest < ActionController::TestCase
  setup do
    @cliente_tem_endereco = cliente_tem_enderecos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cliente_tem_enderecos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cliente_tem_endereco" do
    assert_difference('ClienteTemEndereco.count') do
      post :create, cliente_tem_endereco: {  }
    end

    assert_redirected_to cliente_tem_endereco_path(assigns(:cliente_tem_endereco))
  end

  test "should show cliente_tem_endereco" do
    get :show, id: @cliente_tem_endereco
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cliente_tem_endereco
    assert_response :success
  end

  test "should update cliente_tem_endereco" do
    patch :update, id: @cliente_tem_endereco, cliente_tem_endereco: {  }
    assert_redirected_to cliente_tem_endereco_path(assigns(:cliente_tem_endereco))
  end

  test "should destroy cliente_tem_endereco" do
    assert_difference('ClienteTemEndereco.count', -1) do
      delete :destroy, id: @cliente_tem_endereco
    end

    assert_redirected_to cliente_tem_enderecos_path
  end
end
