require 'test_helper'

class TipoCulinariaControllerTest < ActionController::TestCase
  setup do
    @tipo_culinarium = tipo_culinaria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_culinaria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_culinarium" do
    assert_difference('TipoCulinarium.count') do
      post :create, tipo_culinarium: { nome: @tipo_culinarium.nome }
    end

    assert_redirected_to tipo_culinarium_path(assigns(:tipo_culinarium))
  end

  test "should show tipo_culinarium" do
    get :show, id: @tipo_culinarium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_culinarium
    assert_response :success
  end

  test "should update tipo_culinarium" do
    patch :update, id: @tipo_culinarium, tipo_culinarium: { nome: @tipo_culinarium.nome }
    assert_redirected_to tipo_culinarium_path(assigns(:tipo_culinarium))
  end

  test "should destroy tipo_culinarium" do
    assert_difference('TipoCulinarium.count', -1) do
      delete :destroy, id: @tipo_culinarium
    end

    assert_redirected_to tipo_culinaria_path
  end
end
