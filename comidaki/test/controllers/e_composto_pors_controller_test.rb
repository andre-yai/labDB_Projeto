require 'test_helper'

class ECompostoPorsControllerTest < ActionController::TestCase
  setup do
    @e_composto_por = e_composto_pors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:e_composto_pors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create e_composto_por" do
    assert_difference('ECompostoPor.count') do
      post :create, e_composto_por: { id_ingrediente: @e_composto_por.id_ingrediente, id_prato: @e_composto_por.id_prato }
    end

    assert_redirected_to e_composto_por_path(assigns(:e_composto_por))
  end

  test "should show e_composto_por" do
    get :show, id: @e_composto_por
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @e_composto_por
    assert_response :success
  end

  test "should update e_composto_por" do
    patch :update, id: @e_composto_por, e_composto_por: { id_ingrediente: @e_composto_por.id_ingrediente, id_prato: @e_composto_por.id_prato }
    assert_redirected_to e_composto_por_path(assigns(:e_composto_por))
  end

  test "should destroy e_composto_por" do
    assert_difference('ECompostoPor.count', -1) do
      delete :destroy, id: @e_composto_por
    end

    assert_redirected_to e_composto_pors_path
  end
end
