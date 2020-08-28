class ItemImage < ApplicationRecord
  mount_uploader :url, ImageUploader
  validates :item_image, presence: true
  belongs_to :items
end
