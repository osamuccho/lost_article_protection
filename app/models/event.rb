class Event < ApplicationRecord
  validates :event_name, presence: true

  belongs_to :user
  has_many :tags
  has_one_attached :image

  validates :event_name, presence: true

  


end
