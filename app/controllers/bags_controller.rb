class BagsController < ApplicationController
  before_action :set_bag, :only => [ :show, :edit, :update, :destroy]

  def index
    @bags = Bag.all
    #@bags = Bag.all.order("id DESC")
  end

  def new
    @bag = Bag.new
  end

  def create
    @bag = Bag.new(bag_params)
    @bag.is_rented = false
    if @bag.save
      flash[:notice] = "bag was successfully created!!"
      redirect_to bags_path
    else
      redirect_to :back
    end
  end

  def show
  end

  def edit
  end

  def update
    @bag.update(bag_params)

    redirect_to bags_path
  end

  def destroy
    @bag.destroy

    redirect_to bags_path
  end

private
  def bag_params
    params.require(:bag).permit(:brand, :model, :location, :is_rented, :image)
  end

  def set_bag
    @bag = Bag.find(params[:id])
  end
end