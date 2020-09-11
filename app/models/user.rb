class User < ApplicationRecord
  validates :nickname, :email, :encrypted_password, :first_name,
            :family_name, :first_name_kana, :family_name_kana, :birthday, presence: true
  validates :email, confirmation: true
  validates :email, uniqueness: true
  validates :encrypted_password,    length: { in: 7..40 }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
