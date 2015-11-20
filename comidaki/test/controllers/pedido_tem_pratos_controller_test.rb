require 'test_helper'

class PedidoTemPratosControllerTest < ActionController::TestCase
  setup do
    @pedido_tem_prato = pedido_tem_pratos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pedido_tem_pratos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pedido_tem_prato" do
    assert_difference('PedidoTemPrato.count') do
      post :create, pedido_tem_prato: { id_pedido: @pedido_tem_prato.id_pedido, id_prato: @pedido_tem_prato.id_prato, quantidade: @pedido_tem_prato.quantidade }
    end

    assert_redirected_to pedido_tem_prato_path(assigns(:pedido_tem_prato))
  end

  test "should show pedido_tem_prato" do
    get :show, id: @pedido_tem_prato
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pedido_tem_prato
    assert_response :success
  end

  test "should update pedido_tem_prato" do
    patch :update, id: @pedido_tem_prato, pedido_tem_prato: { id_pedido: @pedido_tem_prato.id_pedido, id_prato: @pedido_tem_prato.id_prato, quantidade: @pedido_tem_prato.quantidade }
    assert_redirected_to pedido_tem_prato_path(assigns(:pedido_tem_prato))
  end

  test "should destroy pedido_tem_prato" do
    assert_difference('PedidoTemPrato.count', -1) do
      delete :destroy, id: @pedido_tem_prato
    end

    assert_redirected_to pedido_tem_pratos_path
  end
end
