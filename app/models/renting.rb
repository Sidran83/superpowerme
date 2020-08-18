class Renting < ApplicationRecord
  belongs_to :user
  belongs_to :superpower

  def renting_duration
    raise
    renting = Renting.find(params[:id])
    (renting.end_date - renting.start_date).to_i
    redirect_to ...
  end

  def total_price
    @renting_duration * :fee
  end
end
