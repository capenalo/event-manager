class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :event_country
      t.string :event_city
      t.date :start_date
      t.date :end_date
      t.text :event_description
      t.string :venue_address
      t.string :event_tickets
      t.integer :event_type,      default: 0
      t.integer :transport_type,  default: 0
      t.string :transport_name
      t.string :transport_booking
      t.string :transport_phone
      t.text :transport_info
      t.string :hotel_name
      t.string :hotel_address
      t.string :hotel_phone
      t.string :hotel_reservation
      t.text :additional_details
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :events, [:user_id, :created_at]
  end
end