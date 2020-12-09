class CardScreensController < ApplicationController
  def ecran1
    @room = Room.find(params[:room_id])
    @choice_categories = ChoiceCategory.where(room_id: params[:room_id])
    @choice_categories_with_votes = @choice_categories
    @choice_categories = @choice_categories.select {|choice_category| choice_category unless choice_category.update_by[0] == current_user.name || choice_category.update_by[1] == current_user.name || choice_category.update_by[2] == current_user.name || choice_category.update_by[3] == current_user.name || choice_category.update_by[4] == current_user.name || choice_category.update_by[5] == current_user.name || choice_category.update_by[6] == current_user.name || choice_category.update_by[7] == current_user.name}[0..2]


    
    @voted = {}
    @choice_categories_with_votes.each do |choice_cat|
      choice_cat.update_by.each do |user|
        @voted[user] ? @voted[user] += 1 : @voted[user] = 1
      end
    end
    # @itsok = []
    # @room.room_users.each do |room_user|
    #   @itsok << true if @voted.each { |vote| vote.include?(room_user.user.name) }
    # end

    if all_voted_cat(@choice_categories_with_votes)
      list_games(@choice_categories_with_votes).each do |game|
        ChoiceGame.create!(game: game, room: @room, rank: 0, update_by: [])
      end
    end

    redirect_to room_ecran2_path(@room) if all_voted_cat(@choice_categories_with_votes)
  end

  def ecran2
    @room = Room.find(params[:room_id])
    @choice_games = ChoiceGame.where(room_id: params[:room_id])
    @choice_games_with_votes = @choice_games
    @choice_games = @choice_games.select {|choice_category| choice_category unless choice_category.update_by[0] == current_user.name || choice_category.update_by[1] == current_user.name || choice_category.update_by[2] == current_user.name || choice_category.update_by[3] == current_user.name || choice_category.update_by[4] == current_user.name || choice_category.update_by[5] == current_user.name || choice_category.update_by[6] == current_user.name || choice_category.update_by[7] == current_user.name || choice_category.update_by[8] == current_user.name}[0..2]
    # raise
    @voted = {}
    @choice_games_with_votes.each do |choice_game|
      choice_game.update_by.each do |user|
        @voted[user] ? @voted[user] += 1 : @voted[user] = 1
      end
    end

    redirect_to room_ecran4_path(@room) if all_voted_games(@choice_games_with_votes)

  end

  def ecran3
    @choice_categories = ChoiceCategory.where(room_id: params[:room_id])
    @choice_categories_with_votes = @choice_categories
  end

  private

  def all_voted_cat(choice_array)
    @all_voted = []
    choice_array.each do |choice_category|
      @all_voted << true if choice_category.update_by.length == choice_category.room.player_number
    end
    @all_voted.length == choice_array.length
  end

  def all_voted_games(choice_array)
    @all_voted = []
    choice_array.each do |choice_game|
      @all_voted << true if choice_game.update_by.length == choice_game.room.player_number
    end
    @all_voted.length == choice_array.length
  end

  def list_games(choice_array)
    @result_category = choice_array.sort_by { |choice_category| choice_category.rank }[7..8]
    @result1 = @result_category.map do |result|
      result.category.games.where(price: nil).map { |game| game }
    end
    return @result1.flatten
  end
end
