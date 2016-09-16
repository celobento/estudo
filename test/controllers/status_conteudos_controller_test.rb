require 'test_helper'

class StatusConteudosControllerTest < ActionController::TestCase
  setup do
    @status_conteudo = status_conteudos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status_conteudos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status_conteudo" do
    assert_difference('StatusConteudo.count') do
      post :create, status_conteudo: { nome: @status_conteudo.nome }
    end

    assert_redirected_to status_conteudo_path(assigns(:status_conteudo))
  end

  test "should show status_conteudo" do
    get :show, id: @status_conteudo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status_conteudo
    assert_response :success
  end

  test "should update status_conteudo" do
    patch :update, id: @status_conteudo, status_conteudo: { nome: @status_conteudo.nome }
    assert_redirected_to status_conteudo_path(assigns(:status_conteudo))
  end

  test "should destroy status_conteudo" do
    assert_difference('StatusConteudo.count', -1) do
      delete :destroy, id: @status_conteudo
    end

    assert_redirected_to status_conteudos_path
  end
end
