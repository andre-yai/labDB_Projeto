require 'test_helper'

class PedidosControllerTest < ActionController::TestCase
  setup do
    @pedido = pedidos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pedidos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pedido" do
    assert_difference('Pedido.count') do
      post :create, pedido: { ID: @pedido.ID, atraso_aproximado: @pedido.atraso_aproximado, atualizado_em: @pedido.atualizado_em, cnpj: @pedido.cnpj, cpf: @pedido.cpf, data: @pedido.data, quantidade: @pedido.quantidade, status: @pedido.status, valor: @pedido.valor }
    end

    assert_redirected_to pedido_path(assigns(:pedido))
  end

  test "should show pedido" do
    get :show, id: @pedido
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pedido
    assert_response :success
  end

  test "should update pedido" do
    patch :update, id: @pedido, pedido: { ID: @pedido.ID, atraso_aproximado: @pedido.atraso_aproximado, atualizado_em: @pedido.atualizado_em, cnpj: @pedido.cnpj, cpf: @pedido.cpf, data: @pedido.data, quantidade: @pedido.quantidade, status: @pedido.status, valor: @pedido.valor }
    assert_redirected_to pedido_path(assigns(:pedido))
  end

  test "should destroy pedido" do
    assert_difference('Pedido.count', -1) do
      delete :destroy, id: @pedido
    end

    assert_redirected_to pedidos_path
  end
end
