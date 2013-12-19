require 'test_helper'

class ApplicationDatabasesControllerTest < ActionController::TestCase
  setup do
    @application_database = application_databases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:application_databases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create application_database" do
    assert_difference('ApplicationDatabase.count') do
      post :create, application_database: { name: @application_database.name, password: @application_database.password, user: @application_database.user }
    end

    assert_redirected_to application_database_path(assigns(:application_database))
  end

  test "should show application_database" do
    get :show, id: @application_database
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @application_database
    assert_response :success
  end

  test "should update application_database" do
    patch :update, id: @application_database, application_database: { name: @application_database.name, password: @application_database.password, user: @application_database.user }
    assert_redirected_to application_database_path(assigns(:application_database))
  end

  test "should destroy application_database" do
    assert_difference('ApplicationDatabase.count', -1) do
      delete :destroy, id: @application_database
    end

    assert_redirected_to application_databases_path
  end
end
