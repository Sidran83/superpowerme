class Category < ApplicationRecord
  has_many :superpowers
  has_one_attached :photo

  def self.names_with_all
    pluck(:name) << "all"
  end
end
