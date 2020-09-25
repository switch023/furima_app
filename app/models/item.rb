class Item < ApplicationRecord
  has_many :comments
  has_many :favorites
  has_many :item_images, dependent: :destroy
  has_one :user_evaluation
  belongs_to :category, optional: true
  belongs_to :buyer, class_name: "User", optional: true
  belongs_to :seller, class_name:"User", foreign_key: 'seller_id',optional: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :item_condition
  belongs_to_active_hash :postage_payer
  belongs_to_active_hash :prefecture_code
  belongs_to_active_hash :preparation_day
  belongs_to_active_hash :postage_type
  
  accepts_nested_attributes_for :item_images, allow_destroy: true

  validates :item_images, presence: true
  validates :name, presence: true, length: { maximum: 40 }
  validates :introduction, presence: true, length: { maximum: 1000 }
  # validates :category_id, presence: true
  validates :item_condition_id, presence: true
  validates :postage_payer_id, presence: true
  validates :prefecture_code_id, presence: true
  validates :preparation_day_id, presence: true
  validates :postage_type_id, presence: true
  validates :price, presence: true,numericality: { only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999 }
  validates :seller_id, presence: true

end