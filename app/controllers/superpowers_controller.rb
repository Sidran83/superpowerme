class SuperpowersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_superpower, only: [:show]

  def index
    # TODO if with params[:query]
    @superpowers = Superpower.all
    @categories = Category.all
  end

  def show
  end

  private

  def set_superpower
    @superpower = Superpower.find(params[:id])
  end
end
