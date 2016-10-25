require 'test_helper'

class BusDriversControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bus_driver = bus_drivers(:one)
  end

  test "should get index" do
    get bus_drivers_url
    assert_response :success
  end

  test "should get new" do
    get new_bus_driver_url
    assert_response :success
  end

  test "should create bus_driver" do
    assert_difference('BusDriver.count') do
      post bus_drivers_url, params: { bus_driver: { busID: @bus_driver.busID, driverID: @bus_driver.driverID, shift: @bus_driver.shift } }
    end

    assert_redirected_to bus_driver_url(BusDriver.last)
  end

  test "should show bus_driver" do
    get bus_driver_url(@bus_driver)
    assert_response :success
  end

  test "should get edit" do
    get edit_bus_driver_url(@bus_driver)
    assert_response :success
  end

  test "should update bus_driver" do
    patch bus_driver_url(@bus_driver), params: { bus_driver: { busID: @bus_driver.busID, driverID: @bus_driver.driverID, shift: @bus_driver.shift } }
    assert_redirected_to bus_driver_url(@bus_driver)
  end

  test "should destroy bus_driver" do
    assert_difference('BusDriver.count', -1) do
      delete bus_driver_url(@bus_driver)
    end

    assert_redirected_to bus_drivers_url
  end
end
