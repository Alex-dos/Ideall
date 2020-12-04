class CardScreensController < ApplicationController
  def ecran1
    # @choice_category = ChoiceCategory.find(params[:choice_category])
    # @categories = Category.all[0..2]
    @choice_categories = ChoiceCategory.where(room_id: params[:room_id])
    @choice_categories_with_votes = @choice_categories
    @choice_categories = @choice_categories.select {|choice_category| choice_category if choice_category.rank == 0}[0..2]
    # @choice_categories = @choice_categories[0..2]
  end

  def ecran2
  end

end


# (room_id: params[:room_id])[0..2]