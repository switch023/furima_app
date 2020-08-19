class Item < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :favorites
  has_many :item_images, dependent: :destroy
  has_one :user_evaluation
  belongs_to :brand
  belongs_to :category
  belongs_to :active_hash :item_condition
  belongs_to :active_hash :postage_payer
  belongs_to :active_hash :prefecture_code
  belongs_to :active_hash :preparation_day
  belongs_to :active_hash :postage_type
  belongs_to :buyer, class_name: "User"
  belongs_to :seller, class_name:" User"
end
