class ChoiceCategoriesController < ApplicationController
  def update
    @room = Room.find(params[:room_id])
    @choice_category = ChoiceCategory.find(params[:id])
    @rank = params[:rank]
    @choice_category.rank += @rank.to_i
    @choice_category.update_by << current_user.name
    @choice_category.save
    data = {category: @choice_category.category.id, rank: @choice_category.rank}
    RoomChannel.broadcast_to(
      @room, data.to_json
      )

    if all_voted(@room.choice_categories) 
      RoomChannel.broadcast_to(
        @room, { 
        head: 302, # redirection code, just to make it clear what you're doing
        path: room_ecran2_path(@room) # you'll need to use url_helpers, so include them in your file
      }.to_json
      )
    end

    redirect_to room_ecran1_path(@room)
    
  end

  private
  
  def all_voted(choice_array)
    @all_voted = []
    choice_array.each do |choice_category|
      if choice_category.update_by.length ==  choice_category.room.player_number
        @all_voted << true
      end
    end
    @all_voted.length == choice_array.length
  end
end
