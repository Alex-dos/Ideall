class CardScreensController < ApplicationController
  def ecran1
    @choice_categories = ChoiceCategory.where(room_id: params[:room_id])
    @choice_categories_with_votes = @choice_categories
    @choice_categories = @choice_categories.select {|choice_category| choice_category unless choice_category.update_by[0] == current_user.name || choice_category.update_by[1] == current_user.name || choice_category.update_by[2] == current_user.name || choice_category.update_by[3] == current_user.name || choice_category.update_by[4] == current_user.name || choice_category.update_by[5] == current_user.name || choice_category.update_by[6] == current_user.name || choice_category.update_by[7] == current_user.name}[0..2]
    # Tiens c'est pour toi Matéo
    # @choice_categories2 = @choice_categories_with_votes.select {|choice_category| choice_category if choice_category.rank == 0}
  end

  def ecran2
  end

end


    # @choice_categories = @choice_categories.select do |choice_category|
    #   choice_category unless choice_category.update_by.each {|update_by| update_by == current_user }
    # end
