require 'test_helper'

class AddCarsControllerTest < ActionController::TestCase
  setup do
    @add_car = add_cars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:add_cars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create add_car" do
    assert_difference('AddCar.count') do
      post :create, add_car: { description: @add_car.description, make: @add_car.make, model: @add_car.model }
    end

    assert_redirected_to add_car_path(assigns(:add_car))
  end

  test "should show add_car" do
    get :show, id: @add_car
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @add_car
    assert_response :success
  end

  test "should update add_car" do
    patch :update, id: @add_car, add_car: { description: @add_car.description, make: @add_car.make, model: @add_car.model }
    assert_redirected_to add_car_path(assigns(:add_car))
  end

  test "should destroy add_car" do
    assert_difference('AddCar.count', -1) do
      delete :destroy, id: @add_car
    end

    assert_redirected_to add_cars_path
  end
end
