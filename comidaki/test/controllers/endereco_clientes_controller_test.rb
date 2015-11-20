require 'test_helper'

class EnderecoClientesControllerTest < ActionController::TestCase
  setup do
    @endereco_cliente = endereco_clientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:endereco_clientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create endereco_cliente" do
    assert_difference('EnderecoCliente.count') do
      post :create, endereco_cliente: { cpf: @endereco_cliente.cpf }
    end

    assert_redirected_to endereco_cliente_path(assigns(:endereco_cliente))
  end

  test "should show endereco_cliente" do
    get :show, id: @endereco_cliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @endereco_cliente
    assert_response :success
  end

  test "should update endereco_cliente" do
    patch :update, id: @endereco_cliente, endereco_cliente: { cpf: @endereco_cliente.cpf }
    assert_redirected_to endereco_cliente_path(assigns(:endereco_cliente))
  end

  test "should destroy endereco_cliente" do
    assert_difference('EnderecoCliente.count', -1) do
      delete :destroy, id: @endereco_cliente
    end

    assert_redirected_to endereco_clientes_path
  end
end
