class BookingsController < ApplicationController
  before_action :set_booking, :only => [ :show, :edit, :update, :destroy]
  def index
    @bags = Bag.all
    #@bags = Bag.all.order("id DESC")
    @booking = Booking.new
  end

  def write_draft
    @booking = Booking.new
  end

  def select_bag
    @booking = Booking.last

    # @bags = Bag.find_by_location_and_is_rented("Taipei", false)
    @bags = Bag.where(:location=> @booking.get_bag_location, :is_rented => false)
  end

  def new
    # @booking = Booking.find(params[:id])
    # @booking.status = "user_information"
    # @bag = Booking.where(:id=> @booking.bag_id)
  end

  def create
    @booking = Booking.new(booking_params)
    if params["commit"] == "搜索"
      @booking.status = "select_bag"
    end
    if @booking.save
      flash[:notice] = "booking was successfully created!!"

      redirect_to :action => :select_bag
    else
      redirect_to :back
    end
  end

  def show
  end

  def edit
    @bag = Bag.find_by_id(@booking.bag_id)
  end

  def update
    if @booking.status == "select_bag"
      @booking.status = "user_information"
      @booking.update(booking_params)
      redirect_to edit_booking_path(@booking)
    else
      @booking.status = "show"
      @booking.update(booking_params)
      redirect_to booking_path(@booking)
    end
  end

  def destroy

  end

private
  def booking_params
    #params[:message][:contact_ids] = Array(params[:message][:contact_ids]).uniq

    params.require(:booking).permit(:lender, :phone, :identify_id, :home_address, :destination, :pickup_date, :return_date, :location, :bag_id, :get_bag_location, :image, :status)
  end

  def set_booking
   @booking = Booking.find(params[:id])
  end
end

