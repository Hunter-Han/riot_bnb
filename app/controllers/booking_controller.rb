class BookingController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    # we need @booking in our `simple_form_for`
    @rioter = Rioter.find(params[:rioter_id])
    @user = User.find(params[:user_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    # we need `booking_id` to asssociate review with corresponding booking
    @booking.user = user.find(params[:user_id])
    @booking.rioter = rioter.find(params[:rioter_id])
    @booking.save
  end

  private

  def review_params
    params.require(:booking).permit(:start, :end, :location)
  end
end
