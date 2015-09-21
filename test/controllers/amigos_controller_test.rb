require 'test_helper'

class AmigosControllerTest < ActionController::TestCase
  setup do
    @amigo = amigos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:amigos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create amigo" do
    assert_difference('Amigo.count') do
      post :create, amigo: { address: @amigo.address, birthday: @amigo.birthday, description: @amigo.description, email: @amigo.email, last_contacted: @amigo.last_contacted, last_talked_about: @amigo.last_talked_about, name: @amigo.name, phone_number: @amigo.phone_number, type: @amigo.type }
    end

    assert_redirected_to amigo_path(assigns(:amigo))
  end

  test "should show amigo" do
    get :show, id: @amigo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @amigo
    assert_response :success
  end

  test "should update amigo" do
    patch :update, id: @amigo, amigo: { address: @amigo.address, birthday: @amigo.birthday, description: @amigo.description, email: @amigo.email, last_contacted: @amigo.last_contacted, last_talked_about: @amigo.last_talked_about, name: @amigo.name, phone_number: @amigo.phone_number, type: @amigo.type }
    assert_redirected_to amigo_path(assigns(:amigo))
  end

  test "should destroy amigo" do
    assert_difference('Amigo.count', -1) do
      delete :destroy, id: @amigo
    end

    assert_redirected_to amigos_path
  end
end
