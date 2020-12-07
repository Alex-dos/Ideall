class ChoiceCategoriesController < ApplicationController
  def update
    @room = Room.find(params[:room_id])
    @choice_category = ChoiceCategory.find(params[:id])
    @rank = params[:rank]
    @choice_category.rank += @rank.to_i
    @choice_category.update_by << current_user.name
    @choice_category.save
    data = {category: @choice_category.category.id, rank: @choice_category.rank }
    RoomChannel.broadcast_to(
      @room, data.to_json
      )
    redirect_to room_ecran1_path(@room)
  end
end


  # def update
  #   @choice_category = ChoiceCategory.find(params[:id])
  #   @rank = params[:rank]
  #   if @choice_category.update(rank: @rank)
  #   else
  #     render
  #   end
  # end
