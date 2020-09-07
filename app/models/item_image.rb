class ItemImage < ApplicationRecord

  validates :item_image, presence: true
  belongs_to :item
  mount_uploader :url, ImageUploader
  validates :url,               presence: true

