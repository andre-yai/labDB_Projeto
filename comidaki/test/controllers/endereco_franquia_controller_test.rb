require 'test_helper'

class EnderecoFranquiaControllerTest < ActionController::TestCase
  setup do
    @endereco_franquium = endereco_franquia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:endereco_franquia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create endereco_franquium" do
    assert_difference('EnderecoFranquium.count') do
      post :create, endereco_franquium: {  }
    end

    assert_redirected_to endereco_franquium_path(assigns(:endereco_franquium))
  end

  test "should show endereco_franquium" do
    get :show, id: @endereco_franquium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @endereco_franquium
    assert_response :success
  end

  test "should update endereco_franquium" do
    patch :update, id: @endereco_franquium, endereco_franquium: {  }
    assert_redirected_to endereco_franquium_path(assigns(:endereco_franquium))
  end

  test "should destroy endereco_franquium" do
    assert_difference('EnderecoFranquium.count', -1) do
      delete :destroy, id: @endereco_franquium
    end

    assert_redirected_to endereco_franquia_path
  end
end
