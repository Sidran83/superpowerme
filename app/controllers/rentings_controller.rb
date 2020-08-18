class RentingsController < ApplicationController

  def index
    @rentings = Renting.all
  end

  def show
    @superpower = Superpower.find(params[:id])
    @renting = Renting.new
  end

  def new
    @superpower = Superpower.find(params[:superpower_id])
    @renting = Renting.new
  end

  def create
    @renting = Renting.new(rentings_params)
    @superpower = Superpower.find(params[:superpower_id])
    @renting.superpower = @superpower
      if @renting.save
        redirect_to superpower_path(@superpower)
      else
        render :new
      end
  end

  def edit
    @renting = Renting.find(params[:id])
  end

  def update
    @renting = Renting.find(params[:id])
    @renting.update(rentings_params)
    redirect_to superpower_path(@superpower)
  end

  def destroy
    @renting = Renting.find(params[:id])
    @renting.destroy
    redirect_to superpower_path(@renting.superpower)
  end

  private

  def rentings_params
    params.require(:renting).permit(:start_date, :end_date)
  end
end
