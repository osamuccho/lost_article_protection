class Tag < ApplicationRecord

  validates :tag_name, presence: true

  belongs_to :event, optional: :true #編集必要
end
