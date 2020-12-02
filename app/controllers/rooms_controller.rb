class RoomsController < ApplicationController
  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to room_path
    else
      render :new
    end
  end
  
  def show
    @room = Room.find(params[:id])
  end
  
  private

  def room_params
    params.require(:room).permit(:player_number, :price_filter)
  end
end