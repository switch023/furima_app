class ItemImage < ApplicationRecord
  validates :item_image, presence: true
  belongs_to :item
end
