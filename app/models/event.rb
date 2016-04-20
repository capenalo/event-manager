class Event < ActiveRecord::Base
    belongs_to :user
    validates :event_name, length: { minimum: 3 }
end
