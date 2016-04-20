require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post :create, event: { additional_details: @event.additional_details, end_date: @event.end_date, event_city: @event.event_city, event_country: @event.event_country, event_description: @event.event_description, event_name: @event.event_name, event_tickets: @event.event_tickets, event_type: @event.event_type, hotel_address: @event.hotel_address, hotel_name: @event.hotel_name, hotel_phone: @event.hotel_phone, start_date: @event.start_date, transport_booking: @event.transport_booking, transport_info: @event.transport_info, transport_name: @event.transport_name, transport_phone: @event.transport_phone, transport_type: @event.transport_type, user_id: @event.user_id, venue_address: @event.venue_address }
    end

    assert_redirected_to event_path(assigns(:event))
  end

  test "should show event" do
    get :show, id: @event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event
    assert_response :success
  end

  test "should update event" do
    patch :update, id: @event, event: { additional_details: @event.additional_details, end_date: @event.end_date, event_city: @event.event_city, event_country: @event.event_country, event_description: @event.event_description, event_name: @event.event_name, event_tickets: @event.event_tickets, event_type: @event.event_type, hotel_address: @event.hotel_address, hotel_name: @event.hotel_name, hotel_phone: @event.hotel_phone, start_date: @event.start_date, transport_booking: @event.transport_booking, transport_info: @event.transport_info, transport_name: @event.transport_name, transport_phone: @event.transport_phone, transport_type: @event.transport_type, user_id: @event.user_id, venue_address: @event.venue_address }
    assert_redirected_to event_path(assigns(:event))
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete :destroy, id: @event
    end

    assert_redirected_to events_path
  end
end
