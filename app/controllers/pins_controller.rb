class PinsController < ApplicationController

  def index
    authenticate_user!
    @pins = Pin.all
  end

  def new
    @pin = Pin.new
  end

  def create
    @pin = Pin.create!(pin_params)
    redirect_to pins_path
  end

  def show
    @pin = Pin.find(params[:id])
  end

  def edit
    @pin = Pin.find(params[:id])
  end

  def update
    @pin = Pin.find(params[:id])
    @pin.update(pin_params)
    redirect_to pin_path(@pin)
  end

  def dstroy
    @pin = Pin.find(params[:id])
    @pin.destroy
    redirect_to pins_path
  end

private
  def pin_params
    params.require(:pin).permit(:title, :image_url)
  end

end
