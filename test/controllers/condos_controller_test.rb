require 'test_helper'

class CondosControllerTest < ActionController::TestCase
  setup do
    @condo = condos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:condos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create condo" do
    assert_difference('Condo.count') do
      post :create, condo: { address: @condo.address, city: @condo.city, codo_name: @condo.codo_name, country: @condo.country, district: @condo.district, latitude: @condo.latitude, longitude: @condo.longitude, street: @condo.street, zip_code: @condo.zip_code }
    end

    assert_redirected_to condo_path(assigns(:condo))
  end

  test "should show condo" do
    get :show, id: @condo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @condo
    assert_response :success
  end

  test "should update condo" do
    patch :update, id: @condo, condo: { address: @condo.address, city: @condo.city, codo_name: @condo.codo_name, country: @condo.country, district: @condo.district, latitude: @condo.latitude, longitude: @condo.longitude, street: @condo.street, zip_code: @condo.zip_code }
    assert_redirected_to condo_path(assigns(:condo))
  end

  test "should destroy condo" do
    assert_difference('Condo.count', -1) do
      delete :destroy, id: @condo
    end

    assert_redirected_to condos_path
  end
end
