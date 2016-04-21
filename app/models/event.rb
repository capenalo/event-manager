class Event < ActiveRecord::Base
    belongs_to :user
    default_scope -> { order(created_at: :desc) }

    enum event_type: [:business, :personal, :family, :career, :other_event]
    enum transport_type: [:flight, :train, :bus, :car, :other_transport]
    
    validates :user_id, presence: true
    validates :event_name, presence: true, length: { minimum: 3 }
end
