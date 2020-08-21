class RentingsController < ApplicationController

  def index
    @rentings = Renting.all.order(updated_at: :desc)
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
    @superpower = Superpower.find(params[:superpower_id])
    @renting.superpower = @superpower
    @renting.set_total_price(@superpower.fee)
    @renting.user = current_user

    if @renting.save
      redirect_to superpower_rentings_path(@superpower)
    else
      render 'superpowers/show'
    end
  end

  def edit
    @renting = Renting.find(params[:id])
    @superpower = @renting.superpower
  end

  def update
    @renting = Renting.find(params[:id])
    @superpower = @renting.superpower
    if @renting.update(rentings_params)
      @renting.set_total_price(@superpower.fee)
    end
    redirect_to superpower_rentings_path(@superpower)
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
