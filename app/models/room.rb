class Room < ApplicationRecord
  has_one :room_user, dependent: :destroy
  has_many :choice_categories, dependent: :destroy
  validates :price_filter, :player_number, presence: true
end

