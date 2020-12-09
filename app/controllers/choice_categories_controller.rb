class ChoiceCategoriesController < ApplicationController
  def update
    @room = Room.find(params[:room_id])
    @choice_category = ChoiceCategory.find(params[:id])
    @rank = params[:rank]
    @choice_category.rank += @rank.to_i
    @choice_category.update_by << current_user.name
    @choice_category.save
    data = { category: @choice_category.category.id, rank: @choice_category.rank, player_number: @room.player_number }

    RoomChannel.broadcast_to(
      @room, data.to_json
    )

    if voted(@room.choice_categories)
      RoomChannel.broadcast_to(
      @room, {
        name: current_user.name
      }.to_json
    )
    end

    if all_voted(@room.choice_categories)
      RoomChannel.broadcast_to(
        @room, {
          head: 302,
          path: room_ecran2_path(@room)
        }.to_json
      )
    end

    redirect_to room_ecran1_path(@room)
  end

  private

  def all_voted(choice_array)
    @all_voted = []
    choice_array.each do |choice_category|
      @all_voted << true if choice_category.update_by.length == choice_category.room.player_number
    end
    @all_voted.length == choice_array.length
  end

  def voted(choice_array)
    count = 0
    choice_array.each do |choice_category|
      count += 1 if choice_category.update_by.include?(current_user.name)
    end
    return count == choice_array.length
  end
end
