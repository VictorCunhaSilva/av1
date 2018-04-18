require 'test_helper'

class Av1sControllerTest < ActionController::TestCase
  setup do
    @av1 = av1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:av1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create av1" do
    assert_difference('Av1.count') do
      post :create, av1: { curso: @av1.curso, email1: @av1.email1, email2: @av1.email2, matricula: @av1.matricula, nome: @av1.nome }
    end

    assert_redirected_to av1_path(assigns(:av1))
  end

  test "should show av1" do
    get :show, id: @av1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @av1
    assert_response :success
  end

  test "should update av1" do
    patch :update, id: @av1, av1: { curso: @av1.curso, email1: @av1.email1, email2: @av1.email2, matricula: @av1.matricula, nome: @av1.nome }
    assert_redirected_to av1_path(assigns(:av1))
  end

  test "should destroy av1" do
    assert_difference('Av1.count', -1) do
      delete :destroy, id: @av1
    end

    assert_redirected_to av1s_path
  end
end
