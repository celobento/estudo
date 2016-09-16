require 'test_helper'

class ConteudosControllerTest < ActionController::TestCase
  setup do
    @conteudo = conteudos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:conteudos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create conteudo" do
    assert_difference('Conteudo.count') do
      post :create, conteudo: { disciplina_id: @conteudo.disciplina_id, nome: @conteudo.nome, status_conteudo_id: @conteudo.status_conteudo_id }
    end

    assert_redirected_to conteudo_path(assigns(:conteudo))
  end

  test "should show conteudo" do
    get :show, id: @conteudo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @conteudo
    assert_response :success
  end

  test "should update conteudo" do
    patch :update, id: @conteudo, conteudo: { disciplina_id: @conteudo.disciplina_id, nome: @conteudo.nome, status_conteudo_id: @conteudo.status_conteudo_id }
    assert_redirected_to conteudo_path(assigns(:conteudo))
  end

  test "should destroy conteudo" do
    assert_difference('Conteudo.count', -1) do
      delete :destroy, id: @conteudo
    end

    assert_redirected_to conteudos_path
  end
end
