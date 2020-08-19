class Renting < ApplicationRecord
  belongs_to :user
  belongs_to :superpower

  def set_total_price(fee)
    update(total_price: (end_date - start_date).to_i * fee)
  end
end
