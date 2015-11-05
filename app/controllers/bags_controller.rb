class BagsController < ApplicationController

  def index
    @bags = Bag.all
    #@bags = Bag.all.order("id DESC")
  end

  def new
    @bag = Bag.new
  end

  def create

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

    params.require(:booking).permit(:lender, :phone, :identify_id, :home_address, :destination, :pickup_date, :return_date, :bag_id)
  end

end