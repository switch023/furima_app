class SendInformation < ApplicationRecord
  belongs_to :user
  validates :send_first_name,:send_family_name,:send_first_name_kana,:send_family_name_kana,:post_code,:prefecture, :city, :address,:phone_number,:user_id,presence: true
end
