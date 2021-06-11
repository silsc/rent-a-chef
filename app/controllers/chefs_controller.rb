class ChefsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @chefs = Chef.all

    if params[:query].present?
      if Chef::CATEGORIES.include?(params[:query])
        @chefs = Chef.where(category: params[:query])
      elsif
        @chefs  = Chef.search_by_location(params[:query])
      else
       @chefs = Chef.all
      end
    end
    # raise
    @markers = @chefs.geocoded.map do |chef|
      {
        lat: chef.latitude,
        lng: chef.longitude,
        info_window: render_to_string(partial: "info_window", locals: { chef: chef }),
        image_url: helpers.asset_url('chef_hat.png')
      }
    end
  end

  def show
    @chef = Chef.find(params[:id])
  end

  def new
    @chef = Chef.new
  end

  def create
    @chef = Chef.new(chef_params)
    @chef.user = current_user
    if @chef.save!
      redirect_to chef_path(@chef)
    else
      render :new
    end
  end

  private

  def chef_params
    params.require(:chef).permit(:name, :price, :location, :description, :avatar, :category, photos: [])
  end
end
