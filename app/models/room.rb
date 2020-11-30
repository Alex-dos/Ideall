class Room < ApplicationRecord
  has_many :RoomUsers
  has_many :ChoiceCategories
end
