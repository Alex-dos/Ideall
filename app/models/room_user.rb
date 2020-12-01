class RoomUser < ApplicationRecord
  belongs_to :user
  belongs_to :room
end


# r = Room.new(name: "blabla", password: "test", price_filter: 1, player_number: 4)
# u = User.new(email: "vamangertareum@hhsjksk.com", password: "password")
# ru = RoomUser.new(user: u, room: r)
# c = Category.new
# cc = ChoiceCategory.new(rank: 10, user: u, room: r, category: c)
# g = Game.new(name: "gta", price: 10, category: c)
