class Game < ApplicationRecord
  belongs_to :category
  validates :name, presence: true
  has_one_attached :photo
end
