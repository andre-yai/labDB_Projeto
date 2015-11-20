require 'test_helper'

class TipoDeCulinariaControllerTest < ActionController::TestCase
  setup do
    @tipo_de_culinarium = tipo_de_culinaria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_de_culinaria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_de_culinarium" do
    assert_difference('TipoDeCulinarium.count') do
      post :create, tipo_de_culinarium: { nome: @tipo_de_culinarium.nome }
    end

    assert_redirected_to tipo_de_culinarium_path(assigns(:tipo_de_culinarium))
  end

  test "should show tipo_de_culinarium" do
    get :show, id: @tipo_de_culinarium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_de_culinarium
    assert_response :success
  end

  test "should update tipo_de_culinarium" do
    patch :update, id: @tipo_de_culinarium, tipo_de_culinarium: { nome: @tipo_de_culinarium.nome }
    assert_redirected_to tipo_de_culinarium_path(assigns(:tipo_de_culinarium))
  end

  test "should destroy tipo_de_culinarium" do
    assert_difference('TipoDeCulinarium.count', -1) do
      delete :destroy, id: @tipo_de_culinarium
    end

    assert_redirected_to tipo_de_culinaria_path
  end
end
