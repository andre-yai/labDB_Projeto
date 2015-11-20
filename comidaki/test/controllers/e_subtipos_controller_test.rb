require 'test_helper'

class ESubtiposControllerTest < ActionController::TestCase
  setup do
    @e_subtipo = e_subtipos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:e_subtipos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create e_subtipo" do
    assert_difference('ESubtipo.count') do
      post :create, e_subtipo: { id_subtipo: @e_subtipo.id_subtipo, nome: @e_subtipo.nome, nome_subtipo: @e_subtipo.nome_subtipo }
    end

    assert_redirected_to e_subtipo_path(assigns(:e_subtipo))
  end

  test "should show e_subtipo" do
    get :show, id: @e_subtipo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @e_subtipo
    assert_response :success
  end

  test "should update e_subtipo" do
    patch :update, id: @e_subtipo, e_subtipo: { id_subtipo: @e_subtipo.id_subtipo, nome: @e_subtipo.nome, nome_subtipo: @e_subtipo.nome_subtipo }
    assert_redirected_to e_subtipo_path(assigns(:e_subtipo))
  end

  test "should destroy e_subtipo" do
    assert_difference('ESubtipo.count', -1) do
      delete :destroy, id: @e_subtipo
    end

    assert_redirected_to e_subtipos_path
  end
end
