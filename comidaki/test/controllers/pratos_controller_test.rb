require 'test_helper'

class PratosControllerTest < ActionController::TestCase
  setup do
    @prato = pratos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pratos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prato" do
    assert_difference('Prato.count') do
      post :create, prato: { Valor_calorico: @prato.Valor_calorico, cnpj: @prato.cnpj, descricao: @prato.descricao, imagem: @prato.imagem, nome: @prato.nome, preco: @prato.preco }
    end

    assert_redirected_to prato_path(assigns(:prato))
  end

  test "should show prato" do
    get :show, id: @prato
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prato
    assert_response :success
  end

  test "should update prato" do
    patch :update, id: @prato, prato: { Valor_calorico: @prato.Valor_calorico, cnpj: @prato.cnpj, descricao: @prato.descricao, imagem: @prato.imagem, nome: @prato.nome, preco: @prato.preco }
    assert_redirected_to prato_path(assigns(:prato))
  end

  test "should destroy prato" do
    assert_difference('Prato.count', -1) do
      delete :destroy, id: @prato
    end

    assert_redirected_to pratos_path
  end
end
