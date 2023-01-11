class Tag < ApplicationRecord

  validates :tag_name, presence: true

  belongs_to :event
end
