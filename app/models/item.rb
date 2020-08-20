class Item < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :favorites
  has_many :item_images, dependent: :destroy
  has_one :user_evaluation
  belongs_to :brand
  belongs_to :category
  belongs_to :buyer, class_name: "User"
  belongs_to :seller, class_name:" User"

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :item_condition
  belongs_to_active_hash :postage_payer
  belongs_to_active_hash :prefecture_code
  belongs_to_active_hash :preparation_day
  belongs_to_active_hash :postage_type
  
end