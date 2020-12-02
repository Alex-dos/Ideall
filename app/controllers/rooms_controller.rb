class RoomsController < ApplicationController
  def new

  end

  def show
    @room = Room.find(params[:id])
  end
end
