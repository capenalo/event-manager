json.array!(@events) do |event|
  json.extract! event, :id, :event_name, :event_country, :event_city, :start_date, :end_date, :event_description, :venue_address, :event_tickets, :event_type, :transport_type, :transport_name, :transport_booking, :transport_phone, :transport_info, :hotel_name, :hotel_address, :hotel_phone, :additional_details, :user_id
  json.url event_url(event, format: :json)
end
