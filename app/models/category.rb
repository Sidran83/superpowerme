class Category < ApplicationRecord
  has_many :superpowers
  has_one_attached :photo

end
