class ChoiceGamesController < ApplicationController
    def update
    @room = Room.find(params[:room_id])
    @choice_game = ChoiceGame.find(params[:id])
    @rank = params[:rank]
    @choice_game.rank += @rank.to_i
    @choice_game.update_by << current_user.name
    @choice_game.save
    redirect_to room_ecran2_path(@room)
    end
end
