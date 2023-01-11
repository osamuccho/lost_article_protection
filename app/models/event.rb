class Event < ApplicationRecord
  validates :event_name, presence: true

  belongs_to :user
  has_many :tags
end
