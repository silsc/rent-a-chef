class BookingsController < ApplicationController
  def index
  end

  def new
    @chef = Chef.find(params[:chef_id])
    @booking = Booking.new
  end

  def create
    @chef = Chef.find(params[:chef_id])
    @booking = Booking.new(booking_params)
    @booking.chef = @chef
    @booking.user = current_user
    if @booking.save!
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_update_params)
    redirect_to dashboard_path
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
  def booking_update_params
    params.require(:booking).permit(:status)
  end
end
