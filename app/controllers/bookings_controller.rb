class BookingsController < ApplicationController

  def index
    @bags = Bag.all
    #@bags = Bag.all.order("id DESC")
    @booking = Booking.new
  end

  def write_draft
    @booking = Booking.new
  end

  def new
    @booking = Booking.last #modify later
    @booking_status = "Booking.last"
    # @bags = Bag.find_by_location_and_is_rented("Taipei", false)
    @bags = Bag.where(:location=> @booking.get_bag_location)
  end

  def create
    @booking = Booking.new(booking_params)

    if params["commit"] == "搜索"
      @booking.status = "draft"
    end
    if @booking.save
      flash[:notice] = "booking was successfully created!!"
      redirect_to new_booking_path
    else
      redirect_to bags_path
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

    params.require(:booking).permit(:lender, :phone, :identify_id, :home_address, :destination, :pickup_date, :return_date, :location, :bag_id, :get_bag_location)
  end
end
