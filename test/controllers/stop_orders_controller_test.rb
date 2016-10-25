require 'test_helper'

class StopOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stop_order = stop_orders(:one)
  end

  test "should get index" do
    get stop_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_stop_order_url
    assert_response :success
  end

  test "should create stop_order" do
    assert_difference('StopOrder.count') do
      post stop_orders_url, params: { stop_order: { order: @stop_order.order, routeID: @stop_order.routeID, stopID: @stop_order.stopID } }
    end

    assert_redirected_to stop_order_url(StopOrder.last)
  end

  test "should show stop_order" do
    get stop_order_url(@stop_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_stop_order_url(@stop_order)
    assert_response :success
  end

  test "should update stop_order" do
    patch stop_order_url(@stop_order), params: { stop_order: { order: @stop_order.order, routeID: @stop_order.routeID, stopID: @stop_order.stopID } }
    assert_redirected_to stop_order_url(@stop_order)
  end

  test "should destroy stop_order" do
    assert_difference('StopOrder.count', -1) do
      delete stop_order_url(@stop_order)
    end

    assert_redirected_to stop_orders_url
  end
end
