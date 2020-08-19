class RentingsController < ApplicationController

  def index
    @rentings = Renting.all
  end

  def show
    @superpower = Superpower.find(params[:id])
    @renting = Renting.new
  end

  # def new
  #   @superpower = Superpower.find(params[:superpower_id])
  #   @renting = Renting.new
  # end

  def create
    @renting = Renting.new(rentings_params)
    # total_price = @renting_duration * :fee
    @superpower = Superpower.find(params[:superpower_id])
    @renting.superpower = @superpower
    @renting.set_total_price(@superpower.fee)
    @renting.user = current_user

    if @renting.save
      redirect_to rentings_path(@renting)
    else
      render 'superpowers/show'
    end
  end

  def edit
    @renting = Renting.find(params[:id])
  end

  def update
    @renting = Renting.find(params[:id])
    @renting.update(rentings_params)
    redirect_to rentings_path(@renting)
  end

  def destroy
    @renting = Renting.find(params[:id])
    @renting.destroy
    redirect_to rentings_path(@renting)
  end

  private

  def rentings_params
    params.require(:renting).permit(:start_date, :end_date)
  end
end
