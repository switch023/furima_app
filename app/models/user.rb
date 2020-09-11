class User < ApplicationRecord
  validates :nickname, :email, :encrypted_password, :first_name,
            :family_name, :first_name_kana, :family_name_kana, :birthday, presence: true
  validates :email, confirmation: true
  validates :email, uniqueness: true
  validates :password, presence: true, length: {minimum: 7}
  validates :name, format: { with: /\A[a-z0-9]+\z/ }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
