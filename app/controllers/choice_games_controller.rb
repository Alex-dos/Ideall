class ChoiceGamesController < ApplicationController
    def update
    @room = Room.find(params[:room_id])
    @choice_game = ChoiceGame.find(params[:id])
    @rank = params[:rank]
    unless @choice_game.update_by.include?(current_user.name)
      @choice_game.rank += @rank.to_i
      @choice_game.update_by << current_user.name
      @choice_game.save
    end
    data = { category: @choice_game.game.id, rank: @choice_game.rank, player_number: @room.player_number }

    RoomChannel.broadcast_to(
      @room, data.to_json
    )

    if voted(@room.choice_games)
      RoomChannel.broadcast_to(
      @room, {
        name: current_user.name
      }.to_json
    )
    end

    if all_voted(@room.choice_games)
      RoomChannel.broadcast_to(
        @room, {
          head: 302,
          path: room_ecran3_path(@room)
        }.to_json
      )
    end

    redirect_to room_ecran2_path(@room)
    end

    private

    def all_voted(choice_array)
    @all_voted = []
    choice_array.each do |choice_game|
      @all_voted << true if choice_game.update_by.length == choice_game.room.player_number
    end
    @all_voted.length == choice_array.length
  end
    
    def voted(choice_array)
    count = 0
    choice_array.each do |choice_game|
      count += 1 if choice_game.update_by.include?(current_user.name)
    end
    return count == choice_array.length
  end
end
