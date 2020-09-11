class User < ApplicationRecord
  validates :nickname,  :first_name, :family_name, :first_name_kana, :family_name_kana, :birthday, presence: true
  validates :email, presence: true, allow_blank: true
  validates :encrypted_password, presence: true, allow_blank: true
  validates :email, confirmation: true, allow_blank: true
  validates :email, uniqueness: true, allow_blank: true
  validates :password, presence: true, length: {minimum: 7}, allow_blank: true
  # validates :encrypted_password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }
  # validates :first_name_kana, :family_name_kana format: { with: /\A[ァ-ヶー－]+\z/ }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
