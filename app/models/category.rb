class Category < ApplicationRecord
  has_many :games
  has_many :choice_categories, dependent: :destroy
  validates :name, uniqueness: true
  has_one_attached :photo
end
