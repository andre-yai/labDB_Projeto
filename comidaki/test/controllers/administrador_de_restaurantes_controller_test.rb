require 'test_helper'

class AdministradorDeRestaurantesControllerTest < ActionController::TestCase
  setup do
    @administrador_de_restaurante = administrador_de_restaurantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:administrador_de_restaurantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create administrador_de_restaurante" do
    assert_difference('AdministradorDeRestaurante.count') do
      post :create, administrador_de_restaurante: { cnpj: @administrador_de_restaurante.cnpj, cpf: @administrador_de_restaurante.cpf }
    end

    assert_redirected_to administrador_de_restaurante_path(assigns(:administrador_de_restaurante))
  end

  test "should show administrador_de_restaurante" do
    get :show, id: @administrador_de_restaurante
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @administrador_de_restaurante
    assert_response :success
  end

  test "should update administrador_de_restaurante" do
    patch :update, id: @administrador_de_restaurante, administrador_de_restaurante: { cnpj: @administrador_de_restaurante.cnpj, cpf: @administrador_de_restaurante.cpf }
    assert_redirected_to administrador_de_restaurante_path(assigns(:administrador_de_restaurante))
  end

  test "should destroy administrador_de_restaurante" do
    assert_difference('AdministradorDeRestaurante.count', -1) do
      delete :destroy, id: @administrador_de_restaurante
    end

    assert_redirected_to administrador_de_restaurantes_path
  end
end
