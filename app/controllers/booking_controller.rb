class BookingController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @rioter = Rioter.find(params[:rioter_id])
    @user = User.find(params[:user_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = User.find(params[:user_id])
    @booking.rioter = Rioter.find(params[:rioter_id])
    @booking.save
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(params[:booking])
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end

  private

  def review_params
    params.require(:booking).permit(:start, :end, :location)
  end
end
