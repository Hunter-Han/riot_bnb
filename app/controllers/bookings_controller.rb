class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @user = current_user
  end

  def new
    @rioter = Rioter.find(params[:rioter_id])
    @user = current_user
    @booking = Booking.new
  end

  def create

    @booking = Booking.new
    @booking.location = booking_params[:location]
    @booking.start = start_date_time
    @booking.end = end_date_time
    @booking.user = current_user
    @booking.rioter = Rioter.find(params[:rioter_id])
    @booking.save

    redirect_to bookings_path(current_user)
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

  def booking_params
    params.require(:booking).permit(:start, :end, :location)
  end

  def start_date_time
    date_array = date_array(:start)
    hour_array = hour_array(:start)
    DateTime.new date_array.first,date_array.second,date_array.third, hour_array.first, hour_array.second
  end

  def end_date_time
    date_array = date_array(:end)
    hour_array = hour_array(:end)
    DateTime.new date_array.first,date_array.second,date_array.third, hour_array.first, hour_array.second
  end

  def date_array(date)
    booking_params[date].split(' ').first.split('-').map(&:to_i)
  end

  def hour_array(date)
    booking_params[date].split(' ').second.split(':').map(&:to_i)
  end
end
