class Game < ApplicationRecord
  belongs_to :category
  has_many :choice_games, dependent: :destroy
  validates :name, presence: true
  has_one_attached :photo
end
