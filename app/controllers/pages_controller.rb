class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  @cat = [['Daily Life', 'cat_dailylife.jpg'], ['Arts & Culture', 'cat_arts_and_culture.jpg'], 'Animals & Creatures', 'Transportation', 'Almost legal']

 def home
    @categories = Category.all
  end
end
