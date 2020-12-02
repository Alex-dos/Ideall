class Game < ApplicationRecord
  belongs_to :category
  validates :name, :price, presence: true
end