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
      post :create, franquium: { Custo_de_entrega_km: @franquium.Custo_de_entrega_km, Faixa_de_preco: @franquium.Faixa_de_preco, Nota: @franquium.Nota, Raio_de_entrega: @franquium.Raio_de_entrega, Tempo_de_entrega_estimada: @franquium.Tempo_de_entrega_estimada, cnpj: @franquium.cnpj, nome: @franquium.nome }
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
    patch :update, id: @franquium, franquium: { Custo_de_entrega_km: @franquium.Custo_de_entrega_km, Faixa_de_preco: @franquium.Faixa_de_preco, Nota: @franquium.Nota, Raio_de_entrega: @franquium.Raio_de_entrega, Tempo_de_entrega_estimada: @franquium.Tempo_de_entrega_estimada, cnpj: @franquium.cnpj, nome: @franquium.nome }
    assert_redirected_to franquium_path(assigns(:franquium))
  end

  test "should destroy franquium" do
    assert_difference('Franquium.count', -1) do
      delete :destroy, id: @franquium
    end

    assert_redirected_to franquia_path
  end
end
