class ChefsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]
  def index
    @chefs = Chef.all
    @markers = @chefs.geocoded.map do |chef|
      {
        lat: chef.latitude,
        lng: chef.longitude
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
    params.require(:chef).permit(:name, :price, :location, :description, :avatar, photos: [])
  end
end
