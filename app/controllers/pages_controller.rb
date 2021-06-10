class PagesController < ApplicationController
  def home
  end

  def styleguide
  end

  def featured
    @chefs = Chef.all
  end
end
