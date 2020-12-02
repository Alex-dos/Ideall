class Category < ApplicationRecord
  has_many :Games
  has_many :ChoiceCategories
  validates :name, uniqueness: true
end
