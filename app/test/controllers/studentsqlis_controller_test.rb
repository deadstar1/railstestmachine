require 'test_helper'

class StudentsqlisControllerTest < ActionController::TestCase
  setup do
    @studentsqli = studentsqlis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:studentsqlis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create studentsqli" do
    assert_difference('Studentsqli.count') do
      post :create, studentsqli: { age: @studentsqli.age, name: @studentsqli.name }
    end

    assert_redirected_to studentsqli_path(assigns(:studentsqli))
  end

  test "should show studentsqli" do
    get :show, id: @studentsqli
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @studentsqli
    assert_response :success
  end

  test "should update studentsqli" do
    patch :update, id: @studentsqli, studentsqli: { age: @studentsqli.age, name: @studentsqli.name }
    assert_redirected_to studentsqli_path(assigns(:studentsqli))
  end

  test "should destroy studentsqli" do
    assert_difference('Studentsqli.count', -1) do
      delete :destroy, id: @studentsqli
    end

    assert_redirected_to studentsqlis_path
  end
end
