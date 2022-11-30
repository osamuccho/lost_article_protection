class Event < ApplicationRecord
  validates :event_name, presence: true
end
