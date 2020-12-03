class CardScreensController < ApplicationController
  def ecran1
    # @choice_category = ChoiceCategory.find(params[:choice_category])
    @categories = Category.all[0..2]
  end

  def ecran2
    @categories = Category.all[3..5]
  end

  def ecran3
    @categories = Category.all[6..8]
  end
end
