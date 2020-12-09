class RoomUsersController < ApplicationController

  def test
    if params[:test]
    @room = Room.find(params[:test][:room_id])
    @room_user = RoomUser.new(room_id: params[:test][:room_id], user: current_user)
      if @room_user.save
        
            RoomChannel.broadcast_to(
      @room, {name: current_user.name}.to_json )
        redirect_to room_path(params[:test][:room_id])
      else 
        render :new
      end
      
    end
  end
end
