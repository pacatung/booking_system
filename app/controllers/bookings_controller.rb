class BookingsController < ApplicationController

  def index
    @bags = Bag.all
    #@bags = Bag.all.order("id DESC")
    @booking = Booking.new
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      flash[:notice] = "booking was successfully created!!"
      redirect_to bookings_path
    else
      redirect_to :back
    end
  end

  def show
    @booking
    #@booking = Booking.find(params[:id])
  end

  def edit

  end

  def update

  end

  def destroy

  end

private
  def booking_params
    #params[:message][:contact_ids] = Array(params[:message][:contact_ids]).uniq

    params.require(:booking).permit(:lender, :phone, :identify_id, :home_address, :destination, :pickup_date, :return_date, :bag_id)
  end
end
