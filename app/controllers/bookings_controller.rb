class BookingsController < ApplicationController

  def index
    @bags = Bag.all
    #@bags = Bag.all.order("id DESC")
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
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
  def booking_params
    #params[:message][:contact_ids] = Array(params[:message][:contact_ids]).uniq

    params.require(:message).permit(:content, :delivery_date, :user_id, :status, :image, :audio,)
  end
end
