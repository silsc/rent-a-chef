class DashboardsController < ApplicationController
  def show
    @my_bookings = current_user.bookings
    @my_chef_bookings = Booking.select { |booking| booking.chef.user == current_user }
  end
end
