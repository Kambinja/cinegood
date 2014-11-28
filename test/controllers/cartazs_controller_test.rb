require 'test_helper'

class CartazsControllerTest < ActionController::TestCase
  setup do
    @cartaz = cartazs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cartazs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cartaz" do
    assert_difference('Cartaz.count') do
      post :create, cartaz: { cinema: @cartaz.cinema, imagem: @cartaz.imagem, sinopse: @cartaz.sinopse, titulo: @cartaz.titulo }
    end

    assert_redirected_to cartaz_path(assigns(:cartaz))
  end

  test "should show cartaz" do
    get :show, id: @cartaz
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cartaz
    assert_response :success
  end

  test "should update cartaz" do
    patch :update, id: @cartaz, cartaz: { cinema: @cartaz.cinema, imagem: @cartaz.imagem, sinopse: @cartaz.sinopse, titulo: @cartaz.titulo }
    assert_redirected_to cartaz_path(assigns(:cartaz))
  end

  test "should destroy cartaz" do
    assert_difference('Cartaz.count', -1) do
      delete :destroy, id: @cartaz
    end

    assert_redirected_to cartazs_path
  end
end
