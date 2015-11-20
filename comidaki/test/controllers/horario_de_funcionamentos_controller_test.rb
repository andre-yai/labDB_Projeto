require 'test_helper'

class HorarioDeFuncionamentosControllerTest < ActionController::TestCase
  setup do
    @horario_de_funcionamento = horario_de_funcionamentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:horario_de_funcionamentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create horario_de_funcionamento" do
    assert_difference('HorarioDeFuncionamento.count') do
      post :create, horario_de_funcionamento: { cnpj: @horario_de_funcionamento.cnpj, dia: @horario_de_funcionamento.dia, hora: @horario_de_funcionamento.hora }
    end

    assert_redirected_to horario_de_funcionamento_path(assigns(:horario_de_funcionamento))
  end

  test "should show horario_de_funcionamento" do
    get :show, id: @horario_de_funcionamento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @horario_de_funcionamento
    assert_response :success
  end

  test "should update horario_de_funcionamento" do
    patch :update, id: @horario_de_funcionamento, horario_de_funcionamento: { cnpj: @horario_de_funcionamento.cnpj, dia: @horario_de_funcionamento.dia, hora: @horario_de_funcionamento.hora }
    assert_redirected_to horario_de_funcionamento_path(assigns(:horario_de_funcionamento))
  end

  test "should destroy horario_de_funcionamento" do
    assert_difference('HorarioDeFuncionamento.count', -1) do
      delete :destroy, id: @horario_de_funcionamento
    end

    assert_redirected_to horario_de_funcionamentos_path
  end
end
