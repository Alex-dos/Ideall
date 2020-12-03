class ChoiceCategoriesController < ApplicationController
  def update
    # @choice_category = ChoiceCategory.find(1).id
    # @category = Category.find(1).id
    # @room = Room.find(params[:room_id]).id
    @rank = params[:rank]
    if @choice_category = ChoiceCategory.update(rank: @rank)
    else
      render :edit
    end
  end

  # private

  # def choice_category_params
  #   params.require(:choice_category).permit(:rank, :room, :category)
  # end
end
