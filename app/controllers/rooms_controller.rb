class RoomsController < ApplicationController
  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      RoomUser.create(room: @room, user: current_user)
      # ChoiceCategory.create!(category_id: Category.find(2).id, room: @room, rank: 0)
      Category.all.each do |category|
        ChoiceCategory.create!(category: category, room: @room, rank: 0, update_by: [])
      end
      redirect_to room_path(@room)

    else
      render :new
    end
  end

  def create_room_user

  end
  
  def show
    @room = Room.find(params[:id])
    redirect_to room_ecran1_path(@room) if all_here(@room)
  end
  
  
  private

  def room_params
    params.require(:room).permit(:player_number, :price_filter)
  end

  def all_here(array)
      @all_here = []
      @all_here << true if @room.room_users.length == @room.player_number
  end
end
