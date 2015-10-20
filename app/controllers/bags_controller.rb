class BagsController < ApplicationController

  def index
    @bags = Bag.all
    #@bags = Bag.all.order("id DESC")
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      flash[:notice] = "booking was successfully created!!"
      @booking.create_booking_notify
      redirect_to bookings_path
    else
      redirect_to :back
    end
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

private

end