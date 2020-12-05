class CardScreensController < ApplicationController
  def ecran1
    @choice_categories = ChoiceCategory.where(room_id: params[:room_id])
    @choice_categories_with_votes = @choice_categories
    @choice_categories = @choice_categories.select {|choice_category| choice_category if choice_category.rank == 0}[0..2]
    @choice_categories2 = @choice_categories_with_votes.select {|choice_category| choice_category if choice_category.rank == 0}[0..8]
  end

  def ecran2
  end

end