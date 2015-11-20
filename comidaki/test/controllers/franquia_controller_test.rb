require 'test_helper'

class FranquiaControllerTest < ActionController::TestCase
  setup do
    @franquium = franquia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:franquia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create franquium" do
    assert_difference('Franquium.count') do
      post :create, franquium: { cnpj: @franquium.cnpj, custo_entrega_km: @franquium.custo_entrega_km, faixa_preco: @franquium.faixa_preco, nome: @franquium.nome, nota: @franquium.nota, raio_entrega: @franquium.raio_entrega, tempo_entrega_estimado: @franquium.tempo_entrega_estimado }
    end

    assert_redirected_to franquium_path(assigns(:franquium))
  end

  test "should show franquium" do
    get :show, id: @franquium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @franquium
    assert_response :success
  end

  test "should update franquium" do
    patch :update, id: @franquium, franquium: { cnpj: @franquium.cnpj, custo_entrega_km: @franquium.custo_entrega_km, faixa_preco: @franquium.faixa_preco, nome: @franquium.nome, nota: @franquium.nota, raio_entrega: @franquium.raio_entrega, tempo_entrega_estimado: @franquium.tempo_entrega_estimado }
    assert_redirected_to franquium_path(assigns(:franquium))
  end

  test "should destroy franquium" do
    assert_difference('Franquium.count', -1) do
      delete :destroy, id: @franquium
    end

    assert_redirected_to franquia_path
  end
end
