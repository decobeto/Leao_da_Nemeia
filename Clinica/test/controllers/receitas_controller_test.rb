require 'test_helper'

class ReceitasControllerTest < ActionController::TestCase
  setup do
    @receita = receitas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:receitas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create receita" do
    assert_difference('Receita.count') do
      post :create, receita: { complementos: @receita.complementos, consulta_id: @receita.consulta_id, medicamento_id: @receita.medicamento_id }
    end

    assert_redirected_to receita_path(assigns(:receita))
  end

  test "should show receita" do
    get :show, id: @receita
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @receita
    assert_response :success
  end

  test "should update receita" do
    patch :update, id: @receita, receita: { complementos: @receita.complementos, consulta_id: @receita.consulta_id, medicamento_id: @receita.medicamento_id }
    assert_redirected_to receita_path(assigns(:receita))
  end

  test "should destroy receita" do
    assert_difference('Receita.count', -1) do
      delete :destroy, id: @receita
    end

    assert_redirected_to receitas_path
  end
end
