class BagsController < ApplicationController

  def index
    @bags = Bag.all
    #@bags = Bag.all.order("id DESC")
  end

  def new

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

end