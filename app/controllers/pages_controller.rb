class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :styleguide, :featured]
  def home
  end

  def styleguide
  end

  def featured
    @chefs = Chef.all
  end
end
