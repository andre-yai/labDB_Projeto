require 'test_helper'

class FranquiaTemTipoCulinariosControllerTest < ActionController::TestCase
  setup do
    @franquia_tem_tipo_culinario = franquia_tem_tipo_culinarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:franquia_tem_tipo_culinarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create franquia_tem_tipo_culinario" do
    assert_difference('FranquiaTemTipoCulinario.count') do
      post :create, franquia_tem_tipo_culinario: { cnpj: @franquia_tem_tipo_culinario.cnpj, nome: @franquia_tem_tipo_culinario.nome }
    end

    assert_redirected_to franquia_tem_tipo_culinario_path(assigns(:franquia_tem_tipo_culinario))
  end

  test "should show franquia_tem_tipo_culinario" do
    get :show, id: @franquia_tem_tipo_culinario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @franquia_tem_tipo_culinario
    assert_response :success
  end

  test "should update franquia_tem_tipo_culinario" do
    patch :update, id: @franquia_tem_tipo_culinario, franquia_tem_tipo_culinario: { cnpj: @franquia_tem_tipo_culinario.cnpj, nome: @franquia_tem_tipo_culinario.nome }
    assert_redirected_to franquia_tem_tipo_culinario_path(assigns(:franquia_tem_tipo_culinario))
  end

  test "should destroy franquia_tem_tipo_culinario" do
    assert_difference('FranquiaTemTipoCulinario.count', -1) do
      delete :destroy, id: @franquia_tem_tipo_culinario
    end

    assert_redirected_to franquia_tem_tipo_culinarios_path
  end
end
