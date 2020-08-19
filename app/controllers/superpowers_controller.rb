class SuperpowersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_superpower, only: [:show]

  def index
    if params[:category_id]
      @category = Category.find(params[:category_id])
      @superpowers = @category.superpowers
    else
      @superpowers = Superpower.all
    end
  end

  def show
    @renting = Renting.new
  end

  private

  def set_superpower
    @superpower = Superpower.find(params[:id])
  end
end
