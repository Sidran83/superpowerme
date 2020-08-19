class SuperpowersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_superpower, only: [:show]

  def index
    # TODO if with params[:query]
    @superpowers = Superpower.all
  end

  def show
    @renting = Renting.new
  end

  private

  def set_superpower
    @superpower = Superpower.find(params[:id])
  end
end
