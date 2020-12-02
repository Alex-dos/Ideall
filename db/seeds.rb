# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# user1 = User.create!(email: "jeje@jeje.com", password: "password")
# user2 = User.create!(email: "jaja@jaja.com", password: "password")
# user3 = User.create!(email: "jiji@jiji.com", password: "password")


category1 = Category.create!(name: "Action")
category2 = Category.create!(name: "Survie")
category3 = Category.create!(name: "RPG")
category4 = Category.create!(name: "Stratégie")
category5 = Category.create!(name: "Simulation")
category6 = Category.create!(name: "2D")
category7 = Category.create!(name: "Aventure")
category8 = Category.create!(name: "Casual")
category9 = Category.create!(name: "FPS")

# Action

game1 = Game.create!(name: "Dark souls", price: 14.99, player_number_min: 4, player_number_max: 4, category_id: Category.where(name: :Action).ids[0])
game2 = Game.create!(name: "Doom", price: 50.00, player_number_min: 4, player_number_max: 4, category_id: Category.where(name: :Action).ids[0])
game3 = Game.create!(name: "Red Dead Redemption", player_number: 4, category_id: Category.where(name: :Action).ids[0])
game4 = Game.create!(name: "Borderlands 3", price: 50.00, player_number: 4, category_id: Category.where(name: :Action).ids[0])
game5 = Game.create!(name: "Assassin's Creed", price: 60.00, player_number: 4, category_id: Category.where(name: :Action).ids[0])
game6 = Game.create!(name: "Destiny 2", price: nil, player_number: 4, category_id: Category.where(name: :Action).ids[0])
game7 = Game.create!(name: "Apex Legends", price: nil, player_number: 4, category_id: Category.where(name: :Action).ids[0])
game8 = Game.create!(name: "Smite", price: nil, player_number: 4, category_id: Category.where(name: :Action).ids[0])
game9 = Game.create!(name: "Brawlhala", price: nil, player_number: 4, category_id: Category.where(name: :Action).ids[0])
game10 = Game.create!(name: "World of tanks", price: nil, player_number: 4, category_id: Category.where(name: :Action).ids[0])

# Survie

game11 = Game.create!(name: "Don't Starve Together", price: 14.99, player_number_min: 2, player_number_max: 4, category_id: Category.where(name: :Survie).ids[0])
game12 = Game.create!(name: "Rust", price: 33.99, player_number_min: 1, player_number_max: 100, category_id: Category.where(name: :Survie).ids[0])
game13 = Game.create!(name: "The Forest", price: 16.79, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Survie).ids[0])
game14 = Game.create!(name: "ARK: Survival Evolved", price: 54.99, player_number_min: 1, player_number_max: 100, category_id: Category.where(name: :Survie).ids[0])
game15 = Game.create!(name: "Dead by Daylight", price: 19.99, player_number_min: 1, player_number_max: 4, category_id: Category.where(name: :Survie).ids[0])
game16 = Game.create!(name: "Fallout 76", price: 39.99, player_number_min: 1, player_number_max: 4, category_id: Category.where(name: :Survie).ids[0])
game17 = Game.create!(name: "Eternal Return: Black Survival", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Survie).ids[0])
game18 = Game.create!(name: "Infestation: The New Z", price: nil, player_number_min: 1, player_number_max: 100, category_id: Category.where(name: :Survie).ids[0])
game19 = Game.create!(name: "Dead Frontier 2", price: nil, player_number_min: 1, player_number_max: 100, category_id: Category.where(name: :Survie).ids[0])
game20 = Game.create!(name: "Mitos.is: The Game", price: nil, player_number_min: 3, player_number_max: 5, category_id: Category.where(name: :Survie).ids[0])

# RPG

game11 = Game.create!(name: "Tainted Grail: Conquest", price: 16.79, player_number_min: 1, player_number_max: 4, category_id: Category.where(name: :RPG).ids[0])
game12 = Game.create!(name: "Divinity: Original Sin 2", price: 44.99, player_number_min: 1, player_number_max: 4, category_id: Category.where(name: :RPG).ids[0])
game13 = Game.create!(name: "The Witcher 3: Wild Hunt", price: 29.99, player_number_min: 1, player_number_max: 1, category_id: Category.where(name: :RPG).ids[0])
game14 = Game.create!(name: "Dark Souls III", price: 59.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :RPG).ids[0]) # Verifier le nb de joueurs
game15 = Game.create!(name: "Fallout 4", price: 8.99, player_number_min: 1, player_number_max: 1, category_id: Category.where(name: :RPG).ids[0])
game16 = Game.create!(name: "Albion Online", price: nil, player_number: 100, category_id: Category.where(name: :RPG).ids[0]) # Verifier le nb de joueurs
game17 = Game.create!(name: "Deuterium Wars", player_number_min: 1, player_number_max: 100, category_id: Category.where(name: :RPG).ids[0])
game18 = Game.create!(name: "Animyst", price: nil, player_number_min: 1, player_number_max: 100, category_id: Category.where(name: :RPG).ids[0])
game19 = Game.create!(name: "SpellForce 3: Versus Edition", player_number_min: 1, player_number_max: 1, category_id: Category.where(name: :RPG).ids[0])
game20 = Game.create!(name: "Undungeon Arena", price: nil, player_number_min: 1, player_number_max: 1, category_id: Category.where(name: :RPG).ids[0])
game21 = Game.create!(name: "Baldur's Gate III", price: 59.99, player_number_min: 1, player_number_max: 4, category_id: Category.where(name: :RPG).ids[0])

# Stratégie

game21 = Game.create!(name: "Total War: WARHAMMER II", price: 59.99, player_number_min: 1, player_number_max: 6, category_id: Category.where(name: :Stratégie).ids[0])
game22 = Game.create!(name: "Sid Meier's Civilization VI", price: 59.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Stratégie).ids[0])
game23 = Game.create!(name: "Age of Empires II: Definitive Edition", price: 19.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Stratégie).ids[0])
game24 = Game.create!(name: "Stellaris", price: 39.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Stratégie).ids[0])
game25 = Game.create!(name: "Satisfactory", price: 23.99, player_number_min: 1, player_number_max: 4, category_id: Category.where(name: :Stratégie).ids[0])
game26 = Game.create!(name: "Crusader Kings II", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Stratégie).ids[0])
game27 = Game.create!(name: "Order of Battle: World War II", price: nil, player_number_min: 1, player_number_max: 1, category_id: Category.where(name: :Stratégie).ids[0])
game28 = Game.create!(name: "Eternal Card Game", price: nil, player_number_min: 1, player_number_max: 2, category_id: Category.where(name: :Stratégie).ids[0])
game29 = Game.create!(name: "Mythgard", price: nil, player_number_min: 1, player_number_max: 2, category_id: Category.where(name: :Stratégie).ids[0])
game30 = Game.create!(name: "Wyrmsun", price: nil, player_number_min: 1, player_number_max: 1, category_id: Category.where(name: :Stratégie).ids[0])

# Simulation

game31 = Game.create!(name: "EA SPORTS FIFA 21", price: 59.99, player_number_min: 1, player_number_max: 11, category_id: Category.where(name: :Simulation).ids[0])
game32 = Game.create!(name: "The Sims 4", price: 39.99, player_number_min: 1, player_number_max: 1, category_id: Category.where(name: :Simulation).ids[0])
game33 = Game.create!(name: "Euro Truck Simulator 2", price: 19.99, player_number_min: 1, player_number_max: 1, category_id: Category.where(name: :Simulation).ids[0])
game34 = Game.create!(name: "Farming Simulator 19", price: 19.99, player_number_min: 1, player_number_max: 1, category_id: Category.where(name: :Simulation).ids[0])
game35 = Game.create!(name: "The Hunter: Call of the Wild", price: 60.00, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Simulation).ids[0])
game36 = Game.create!(name: "World of Warships", price: nil, player_number_min: 1, player_number_max: 24, category_id: Category.where(name: :Simulation).ids[0])
game37 = Game.create!(name: "World of Tanks", price: nil, player_number_min: 1, player_number_max: 24, category_id: Category.where(name: :Simulation).ids[0])
game38 = Game.create!(name: "War Thunder", price: nil, player_number_min: 1, player_number_max: 1, category_id: Category.where(name: :Simulation).ids[0])
game39 = Game.create!(name: "Fishing Planet", price: nil, player_number_min: 1, player_number_max: 1, category_id: Category.where(name: :Simulation).ids[0])
game40 = Game.create!(name: "Pinball FX3", price: nil, player_number_min: 1, player_number_max: 1, category_id: Category.where(name: :Simulation).ids)[0])

#2D

game41 = Game.create!(name: "Among Us", price: 3.19, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :2D).ids[0])
game42 = Game.create!(name: "Stardew Valley", price: 13.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :2D).ids[0])
game43 = Game.create!(name: "Darkest Dungeon", price: 22.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :2D).ids[0])
game44 = Game.create!(name: "The Binding of Isaac: Rebirth", price: 14.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :2D).ids[0])
game45 = Game.create!(name: "Terraria", price: 9.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :2D).ids[0])
game46 = Game.create!(name: "Wakfu", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :2D).ids[0])
game47 = Game.create!(name: "Hades' Star", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :2D).ids[0])
game48 = Game.create!(name: "Brain / Out", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :2D).ids[0])
game49 = Game.create!(name: "DED", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :2D).ids[0])
game50 = Game.create!(name: "Escape the Game", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :2D)s.ids[0])

# Aventure

game51 = Game.create!(name: "Sea of Thieves", price: 39.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Aventure).ids[0])
game52 = Game.create!(name: "Star Wards Jedi: Fallen Order", price: 59.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Aventure).ids[0])
game53 = Game.create!(name: "Ori and the Will of the Wisps", price: 29.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Aventure).ids[0])
game54 = Game.create!(name: "Half-Life: Alyx", price: 49.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Aventure).ids[0])
game55 = Game.create!(name: "Warhammer: Vermintide 2", price: 27.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Aventure).ids[0])
game56 = Game.create!(name: "Neverwinter", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Aventure).ids[0])
game57 = Game.create!(name: "Tera", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Aventure).ids[0])
game58 = Game.create!(name: "We where Here", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Aventure).ids[0])
game59 = Game.create!(name: "The Pirate: Caribbean Hunt", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Aventure).ids[0])
game60 = Game.create!(name: "Dark Deception", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Aventure).ids[0])

# Casual

game61 = Game.create!(name: "Overcooked! 2", price: 22.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Casual).ids[0])
game62 = Game.create!(name: "Two Point Hospital", price: 34.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Casual).ids[0])
game63 = Game.create!(name: "Firefighting Simulator - The Squad", price: 22.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Casual).ids[0])
game64 = Game.create!(name: "PC Building Simulator", price: 19.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Casual).ids[0])
game65 = Game.create!(name: "Slay the Spire", price: 20.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Casual).ids[0])
game66 = Game.create!(name: "SMITE", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Casual).ids[0])
game67 = Game.create!(name: "RuneScape", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Casual).ids[0])
game68 = Game.create!(name: "Freestyle 2: Street BasketBall", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Casual).ids[0])
game69 = Game.create!(name: "Mr.Mine", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Casual).ids[0])
game70 = Game.create!(name: "Cell to Singularity - Evolution Never Ends", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Casual).ids[0])

# FPS

game71 = Game.create!(name: "Metro Exodus", price: 39.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :FPS).ids[0])
game72 = Game.create!(name: "The Outer Worlds", price: 59.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :FPS).ids[0])
game73 = Game.create!(name: "Star Wars Battlefront II", price: 39.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :FPS).ids[0])
game74 = Game.create!(name: "Playrunknown's Battlegrounds", price: 29.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :FPS).ids[0])
game75 = Game.create!(name: "Fallout 76", price: 39.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :FPS).ids[0])
game76 = Game.create!(name: "Warframe", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :FPS).ids[0])
game77 = Game.create!(name: "Paladins", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :FPS).ids[0])
game78 = Game.create!(name: "Black Squad", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :FPS).ids[0])
game79 = Game.create!(name: "Stay Out", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :FPS).ids[0])
game80 = Game.create!(name: "Quake Champions", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :FPS).ids[0])
