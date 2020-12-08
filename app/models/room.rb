class Room < ApplicationRecord
  has_many :room_users, dependent: :destroy
  has_many :choice_categories, dependent: :destroy
  has_many :choice_games, dependent: :destroy
  validates :price_filter, :player_number, presence: true
end

