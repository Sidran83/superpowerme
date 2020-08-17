class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :rentings
  has_many :superpowers
  # has_many :superpowers, through: :rentings
  validates :nickname, presence: true, uniqueness: true
end
