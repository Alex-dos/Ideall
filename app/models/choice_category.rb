class ChoiceCategory < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :room
end
