class ChoiceGame < ApplicationRecord
  belongs_to :game
  belongs_to :room
end
