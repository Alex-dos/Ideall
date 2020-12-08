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

Game.destroy_all
Category.destroy_all

require "open-uri"

#-----------------------------------------IMG CATEGORIES---------------------------------------------------
img_category_1 = URI.open('https://res.cloudinary.com/dndlxqz6p/image/upload/v1607080780/action_ibektv.jpg')
img_category_2 = URI.open('https://images.frandroid.com/wp-content/uploads/2016/10/asphaltxtrem.png')
img_category_3 = URI.open('https://res.cloudinary.com/dndlxqz6p/image/upload/v1607080780/rpg_mkkbt2.jpg')
img_category_4 = URI.open('https://res.cloudinary.com/dndlxqz6p/image/upload/v1607080780/Strat%C3%A9gie_czf2t8.jpg')
img_category_5 = URI.open('https://res.cloudinary.com/dndlxqz6p/image/upload/v1607080779/simulation_snaro0.jpg')
img_category_6 = URI.open('https://i.jeuxactus.com/datas/jeux/w/o/world-of-warcraft-shadowlands/xl/world-of-warcraft-shado-5f0a3e14a3d55.jpg')
img_category_7 = URI.open('https://res.cloudinary.com/dndlxqz6p/image/upload/v1607080779/Aventure_yc83os.jpg')
img_category_8 = URI.open('https://res.cloudinary.com/dndlxqz6p/image/upload/v1607080780/casual_v992bk.png')
img_category_9 = URI.open('https://static1-fr.millenium.gg/articles/5/13/22/35/@/34411-une-jeuxindes-millenium-article_m-1.jpeg')
img_category_10 = URI.open('https://image.jeuxvideo.com/medias-md/160474/1604743581-4626-card.jpg')
#-----------------------------------------IMG CATEGORIES END-------------------------------------------------




#----------------------------------------------- CATEGORIES---------------------------------------------------
category_1 = Category.create!(name: "Action", description: "Le jeu d'action est un genre de jeu vidéo dont le gameplay est fondé sur des interactions en temps réel et qui fait essentiellement appel à l'habileté et aux réflexes du joueur.")
category_1.photo.attach(io: img_category_1, filename: 'Action.png', content_type: 'image/png')

category_2 = Category.create!(name: "Course Automobile", description: "Ce type de jeu met en exergue la notion de compétition et tire son intérêt des sensations de vitesse et de pilotage qu'il procure. Très populaire, le genre s'inspire souvent des sports mécaniques.")
category_2.photo.attach(io: img_category_2, filename: 'Course_automobile.png', content_type: 'image/png')

category_3 = Category.create!(name: "RPG", description: "Un jeu vidéo de rôle ou simplement jeu de rôle, couramment abrégé en RPG, est un genre de jeu vidéo s'inspirant des codes et du principe des jeux de rôle sur table. Le joueur y incarne un ou plusieurs personnages qu'il fait évoluer au fil d'une quête.")
category_3.photo.attach(io: img_category_3, filename: 'RPG.png', content_type: 'image/png')

category_4 = Category.create!(name: "Stratégie", description: "Un jeu de stratégie peut être un jeu de société ou un jeu vidéo. Le but est de réaliser un objectif connu : augmenter sa domination spatiale, combattre un ou plusieurs ennemis sur un terrain de jeu, faire prospérer une entité… ")
category_4.photo.attach(io: img_category_4, filename: 'Stratégie.png', content_type: 'image/png')

category_5 = Category.create!(name: "Simulation", description: "Un jeu de simulation est un jeu qui reproduit une activité ou une action dans divers environnements.")
category_5.photo.attach(io: img_category_5, filename: 'Simulation.png', content_type: 'image/png')

category_6 = Category.create!(name: "MMO", description: "Un jeu de rôle en ligne massivement multijoueur(en anglais, massively multiplayer online role-playing game, MMORPGa, parfois JDRMM en français3) est un genre de jeux vidéo4 associant le jeu de rôle et le jeu en ligne massivement multijoueur, permettant à un grand nombre de personnes d'interagir simultanément dans un monde virtuel.")
category_6.photo.attach(io: img_category_6, filename: 'mmo.png', content_type: 'image/png')

category_7 = Category.create!(name: "Aventure", description: "Le jeu d'aventure est un genre de jeu vidéo dont l'intérêt prédominant se focalise sur la narration plutôt que sur les réflexes et l'action. Plus précisément, les jeux d'aventure mettent le plus souvent l'accent sur l'exploration, les dialogues, la résolution d'énigmes.")
category_7.photo.attach(io: img_category_7, filename: 'Aventure.png', content_type: 'image/png')

category_8 = Category.create!(name: "Casual", description: "Le casual game (littéralement « jeu occasionnel ») est un jeu vidéo destiné au large public des joueurs occasionnels (casual gamer).")
category_8.photo.attach(io: img_category_8, filename: 'Casual.png', content_type: 'image/png')

category_9 = Category.create!(name: "Indépendant", description: "L'expression jeu vidéo indépendant, comme dans le secteur de la musique ou du cinéma, désigne des jeux vidéo créés sans l'aide financière d'un éditeur de jeux vidéo.")
category_9.photo.attach(io: img_category_9, filename: 'inde.png', content_type: 'image/png')

category_10 = Category.create!(name: "Sport", description: "Un jeu vidéo de sport est un genre de jeu vidéo qui simule un sport. Les jeux vidéo de course sont des jeux de sport très représentés, tout comme les jeux de football, basket-ball, hockey sur glace…")
category_10.photo.attach(io: img_category_10, filename: 'Sport.png', content_type: 'image/png')






#----------------------------------------------- CATEGORIES END---------------------------------------------------









#-----------------------------------------------// ALL GAMES //--------------------------------------------------------------





# Action
#----------------------------------------------- IMG ACTION  ---------------------------------------------------------
img_action_1 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/570940/header.jpg')
img_action_2 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/379720/header.jpg')
img_action_3 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1174180/header.jpg')
img_action_4 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/397540/header.jpg')
img_action_5 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/812140/header.jpg')
img_action_6 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1085660/header_french.jpg')
img_action_7 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1172470/header.jpg')
img_action_8 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/386360/header_french.jpg')
img_action_9 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/291550/header.jpg')
img_action_10 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/444200/header.jpg')

#----------------------------------------------- IMG ACTION FIN -----------------------------------------------------
action_1 = Game.create!(name: "Dark souls", price: 14.99, player_number_min: 4, player_number_max: 4, category_id: Category.where(name: :Action).ids[0])
action_1.photo.attach(io: img_action_1, filename: 'dark_souls.png', content_type: 'image/png')

action_2 = Game.create!(name: "Doom", price: 50.00, player_number_min: 4, player_number_max: 4, category_id: Category.where(name: :Action).ids[0])
action_2.photo.attach(io: img_action_2, filename: 'doom.png', content_type: 'image/png')

action_3 = Game.create!(name: "Red Dead Redemption 2", price: 50.00, player_number_min: 2, player_number_max: 4, category_id: Category.where(name: :Action).ids[0])
action_3.photo.attach(io: img_action_3, filename: 'red_dead.png', content_type: 'image/png')

action_4 = Game.create!(name: "Borderlands 3", price: 50.00, player_number_min: 2, player_number_max: 4, category_id: Category.where(name: :Action).ids[0])
action_4.photo.attach(io: img_action_4, filename: 'border3.png', content_type: 'image/png')

action_5 = Game.create!(name: "Assassin's Creed Odyssey", price: 60.00, player_number_min: 2, player_number_max: 4, category_id: Category.where(name: :Action).ids[0])
action_5.photo.attach(io: img_action_5, filename: 'assco.png', content_type: 'image/png')

action_6 = Game.create!(name: "Destiny 2", price: nil, player_number_min: 2, player_number_max: 4, category_id: Category.where(name: :Action).ids[0])
action_6.photo.attach(io: img_action_6, filename: 'destiny2.png', content_type: 'image/png')

action_7 = Game.create!(name: "Apex Legends", price: nil, player_number_min: 2, player_number_max: 4, category_id: Category.where(name: :Action).ids[0])
action_7.photo.attach(io: img_action_7, filename: 'apexleg.png', content_type: 'image/png')

action_8 = Game.create!(name: "Smite", price: nil, player_number_min: 2, player_number_max: 4, category_id: Category.where(name: :Action).ids[0])
action_8.photo.attach(io: img_action_8, filename: 'smite.png', content_type: 'image/png')

action_9 = Game.create!(name: "Brawlhala", price: nil, player_number_min: 2, player_number_max: 4, category_id: Category.where(name: :Action).ids[0])
action_9.photo.attach(io: img_action_9, filename: 'brawlhala.png', content_type: 'image/png')

action_10 = Game.create!(name: "World of tanks", price: nil, player_number_min: 2, player_number_max: 4, category_id: Category.where(name: :Action).ids[0])
action_10.photo.attach(io: img_action_10, filename: 'wot.png', content_type: 'image/png')



# # Aventure
# #----------------------------------------------- IMG AVENTURE  ---------------------------------------------------------



# #----------------------------------------------- IMG AVENTURE FIN -----------------------------------------------------
# game51 = Game.create!(name: "Sea of Thieves", price: 39.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Aventure).ids[0])
# game52 = Game.create!(name: "Star Wards Jedi: Fallen Order", price: 59.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Aventure).ids[0])
# game53 = Game.create!(name: "Ori and the Will of the Wisps", price: 29.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Aventure).ids[0])
# game54 = Game.create!(name: "Half-Life: Alyx", price: 49.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Aventure).ids[0])
# game55 = Game.create!(name: "Warhammer: Vermintide 2", price: 27.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Aventure).ids[0])
# game56 = Game.create!(name: "Neverwinter", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Aventure).ids[0])
# game57 = Game.create!(name: "Tera", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Aventure).ids[0])
# game58 = Game.create!(name: "We where Here", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Aventure).ids[0])
# game59 = Game.create!(name: "The Pirate: Caribbean Hunt", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Aventure).ids[0])
# game60 = Game.create!(name: "Dark Deception", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Aventure).ids[0])
# game60 = Game.create!(name: "Kaku", price: nil, player_number_min: 1, player_number_max: 1, category_id: Category.where(name: :Aventure).ids[0])
# game60 = Game.create!(name: "DreamWatcher", price: nil, player_number_min: 1, player_number_max: 1, category_id: Category.where(name: :Aventure).ids[0])
# game60 = Game.create!(name: "From the Shadows", price: nil, player_number_min: 1, player_number_max: 1, category_id: Category.where(name: :Aventure).ids[0])






# # Casual
# #----------------------------------------------- IMG CASUAL  ---------------------------------------------------------



# #----------------------------------------------- IMG CASUAL FIN -----------------------------------------------------
# game61 = Game.create!(name: "Overcooked! 2", price: 22.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Casual).ids[0])
# game62 = Game.create!(name: "Two Point Hospital", price: 34.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Casual).ids[0])
# game63 = Game.create!(name: "Firefighting Simulator - The Squad", price: 22.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Casual).ids[0])
# game64 = Game.create!(name: "PC Building Simulator", price: 19.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Casual).ids[0])
# game65 = Game.create!(name: "Slay the Spire", price: 20.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Casual).ids[0])
# game66 = Game.create!(name: "SMITE", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Casual).ids[0])
# game67 = Game.create!(name: "RuneScape", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Casual).ids[0])
# game68 = Game.create!(name: "Freestyle 2: Street BasketBall", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Casual).ids[0])
# game69 = Game.create!(name: "Mr.Mine", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Casual).ids[0])
# game70 = Game.create!(name: "Cell to Singularity - Evolution Never Ends", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Casual).ids[0])






# Course Automobile
#----------------------------------------------- IMG COURSE AUTOMOBILE  ---------------------------------------------------------



#----------------------------------------------- IMG COURSE AUTOMOBILE FIN -----------------------------------------------------












# # Indépendant
# #----------------------------------------------- IMG INDEPENDANT ---------------------------------------------------------
# img_inde_1 = URI.open('https://res.cloudinary.com/dndlxqz6p/image/upload/v1607080780/action_ibektv.jpg')


# #----------------------------------------------- IMG INDEPENDANT FIN -----------------------------------------------------

# inde1 = Category.create!(name: "Action", description: "Le jeu d'action est un genre de jeu vidéo dont le gameplay est fondé sur des interactions en temps réel et qui fait essentiellement appel à l'habileté et aux réflexes du joueur.")
# inde.photo.attach(io: img_inde_1, filename: 'Action.png', content_type: 'image/png')












# Mmo
#----------------------------------------------- IMG MMO ---------------------------------------------------------



#----------------------------------------------- IMG MMO FIN -----------------------------------------------------














# # RPG
# #----------------------------------------------- IMG RPG MMO ---------------------------------------------------------



# #----------------------------------------------- IMG RPG FIN -----------------------------------------------------
# game11 = Game.create!(name: "Tainted Grail: Conquest", price: 16.79, player_number_min: 1, player_number_max: 4, category_id: Category.where(name: :RPG).ids[0])
# game12 = Game.create!(name: "Divinity: Original Sin 2", price: 44.99, player_number_min: 1, player_number_max: 4, category_id: Category.where(name: :RPG).ids[0])
# game13 = Game.create!(name: "The Witcher 3: Wild Hunt", price: 29.99, player_number_min: 1, player_number_max: 1, category_id: Category.where(name: :RPG).ids[0])
# game14 = Game.create!(name: "Dark Souls III", price: 59.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :RPG).ids[0]) # Verifier le nb de joueurs
# game15 = Game.create!(name: "Fallout 4", price: 8.99, player_number_min: 1, player_number_max: 1, category_id: Category.where(name: :RPG).ids[0])
# game16 = Game.create!(name: "Albion Online", price: nil, player_number_min: 1, player_number_max: 1, category_id: Category.where(name: :RPG).ids[0]) # Verifier le nb de joueurs
# game17 = Game.create!(name: "Deuterium Wars", player_number_min: 1, player_number_max: 100, category_id: Category.where(name: :RPG).ids[0])
# game18 = Game.create!(name: "Animyst", price: nil, player_number_min: 1, player_number_max: 100, category_id: Category.where(name: :RPG).ids[0])
# game19 = Game.create!(name: "SpellForce 3: Versus Edition", player_number_min: 1, player_number_max: 1, category_id: Category.where(name: :RPG).ids[0])
# game20 = Game.create!(name: "Undungeon Arena", price: nil, player_number_min: 1, player_number_max: 1, category_id: Category.where(name: :RPG).ids[0])
# game21 = Game.create!(name: "Baldur's Gate III", price: 59.99, player_number_min: 1, player_number_max: 4, category_id: Category.where(name: :RPG).ids[0])









# # Simulation
# #----------------------------------------------- IMG SIMULTATION ---------------------------------------------------------



# #----------------------------------------------- IMG SIMULTATION FIN -----------------------------------------------------
# game31 = Game.create!(name: "EA SPORTS FIFA 21", price: 59.99, player_number_min: 1, player_number_max: 11, category_id: Category.where(name: :Simulation).ids[0])
# game32 = Game.create!(name: "The Sims 4", price: 39.99, player_number_min: 1, player_number_max: 1, category_id: Category.where(name: :Simulation).ids[0])
# game33 = Game.create!(name: "Euro Truck Simulator 2", price: 19.99, player_number_min: 1, player_number_max: 1, category_id: Category.where(name: :Simulation).ids[0])
# game34 = Game.create!(name: "Farming Simulator 19", price: 19.99, player_number_min: 1, player_number_max: 1, category_id: Category.where(name: :Simulation).ids[0])
# game35 = Game.create!(name: "The Hunter: Call of the Wild", price: 60.00, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Simulation).ids[0])
# game36 = Game.create!(name: "World of Warships", price: nil, player_number_min: 1, player_number_max: 24, category_id: Category.where(name: :Simulation).ids[0])
# game37 = Game.create!(name: "World of Tanks", price: nil, player_number_min: 1, player_number_max: 24, category_id: Category.where(name: :Simulation).ids[0])
# game38 = Game.create!(name: "War Thunder", price: nil, player_number_min: 1, player_number_max: 1, category_id: Category.where(name: :Simulation).ids[0])
# game39 = Game.create!(name: "Fishing Planet", price: nil, player_number_min: 1, player_number_max: 1, category_id: Category.where(name: :Simulation).ids[0])
# game40 = Game.create!(name: "Pinball FX3", price: nil, player_number_min: 1, player_number_max: 1, category_id: Category.where(name: :Simulation).ids[0])







# # Sport
# #----------------------------------------------- IMG SPORT ---------------------------------------------------------



# #----------------------------------------------- IMG SPORT FIN -----------------------------------------------------













# # Stratégie
# #----------------------------------------------- IMG STRATEGIE ---------------------------------------------------------



# #----------------------------------------------- IMG STRATEGIE FIN -----------------------------------------------------
# game21 = Game.create!(name: "Total War: WARHAMMER II", price: 59.99, player_number_min: 1, player_number_max: 6, category_id: Category.where(name: :Stratégie).ids[0])
# game22 = Game.create!(name: "Sid Meier's Civilization VI", price: 59.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Stratégie).ids[0])
# game23 = Game.create!(name: "Age of Empires II: Definitive Edition", price: 19.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Stratégie).ids[0])
# game24 = Game.create!(name: "Stellaris", price: 39.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Stratégie).ids[0])
# game25 = Game.create!(name: "Satisfactory", price: 23.99, player_number_min: 1, player_number_max: 4, category_id: Category.where(name: :Stratégie).ids[0])
# game26 = Game.create!(name: "Crusader Kings II", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Stratégie).ids[0])
# game27 = Game.create!(name: "Order of Battle: World War II", price: nil, player_number_min: 1, player_number_max: 1, category_id: Category.where(name: :Stratégie).ids[0])
# game28 = Game.create!(name: "Eternal Card Game", price: nil, player_number_min: 1, player_number_max: 2, category_id: Category.where(name: :Stratégie).ids[0])
# game29 = Game.create!(name: "Mythgard", price: nil, player_number_min: 1, player_number_max: 2, category_id: Category.where(name: :Stratégie).ids[0])
# game30 = Game.create!(name: "Wyrmsun", price: nil, player_number_min: 1, player_number_max: 1, category_id: Category.where(name: :Stratégie).ids[0])







#------------------------------------------------------------- GAMES END -----------------------------------------------------------




# # 2D

# game41 = Game.create!(name: "Among Us", price: 3.19, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :tutu).ids[0])
# game42 = Game.create!(name: "Stardew Valley", price: 13.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :tutu).ids[0])
# game43 = Game.create!(name: "Darkest Dungeon", price: 22.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :tutu).ids[0])
# game44 = Game.create!(name: "The Binding of Isaac: Rebirth", price: 14.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :tutu).ids[0])
# game45 = Game.create!(name: "Terraria", price: 9.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :tutu).ids[0])
# game46 = Game.create!(name: "Wakfu", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :tutu).ids[0])
# game47 = Game.create!(name: "Hades' Star", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :tutu).ids[0])
# game48 = Game.create!(name: "Brain / Out", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :tutu).ids[0])
# game49 = Game.create!(name: "DED", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :tutu).ids[0])
# game50 = Game.create!(name: "Escape the Game", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :tutu).ids[0])

# # FPS

# game71 = Game.create!(name: "Metro Exodus", price: 39.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :FPS).ids[0])
# game72 = Game.create!(name: "The Outer Worlds", price: 59.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :FPS).ids[0])
# game73 = Game.create!(name: "Star Wars Battlefront II", price: 39.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :FPS).ids[0])
# game74 = Game.create!(name: "Playrunknown's Battlegrounds", price: 29.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :FPS).ids[0])
# game75 = Game.create!(name: "Fallout 76", price: 39.99, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :FPS).ids[0])
# game76 = Game.create!(name: "Warframe", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :FPS).ids[0])
# game77 = Game.create!(name: "Paladins", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :FPS).ids[0])
# game78 = Game.create!(name: "Black Squad", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :FPS).ids[0])
# game79 = Game.create!(name: "Stay Out", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :FPS).ids[0])
# game80 = Game.create!(name: "Quake Champions", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :FPS).ids[0])
# game80 = Game.create!(name: "Fortnite", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :FPS).ids[0])
# game80 = Game.create!(name: "Quake Champions", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :FPS).ids[0])
# game80 = Game.create!(name: "Warframe", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :FPS).ids[0])
# game80 = Game.create!(name: "Destiny 2", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :FPS).ids[0])
# game80 = Game.create!(name: "PlanetSide Arena", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :FPS).ids[0])
# game80 = Game.create!(name: "Quake Champions", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :FPS).ids[0])
# game80 = Game.create!(name: "Apex", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :FPS).ids[0])
# game80 = Game.create!(name: "Paladins", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :FPS).ids[0])
# game80 = Game.create!(name: "Team Fortress 2", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :FPS).ids[0])

# # Survie

# game11 = Game.create!(name: "Don't Starve Together", price: 14.99, player_number_min: 2, player_number_max: 4, category_id: Category.where(name: :Survie).ids[0])
# game12 = Game.create!(name: "Rust", price: 33.99, player_number_min: 1, player_number_max: 100, category_id: Category.where(name: :Survie).ids[0])
# game13 = Game.create!(name: "The Forest", price: 16.79, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Survie).ids[0])
# game14 = Game.create!(name: "ARK: Survival Evolved", price: 54.99, player_number_min: 1, player_number_max: 100, category_id: Category.where(name: :Survie).ids[0])
# game15 = Game.create!(name: "Dead by Daylight", price: 19.99, player_number_min: 1, player_number_max: 4, category_id: Category.where(name: :Survie).ids[0])
# game16 = Game.create!(name: "Fallout 76", price: 39.99, player_number_min: 1, player_number_max: 4, category_id: Category.where(name: :Survie).ids[0])
# game17 = Game.create!(name: "Eternal Return: Black Survival", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Survie).ids[0])
# game18 = Game.create!(name: "Infestation: The New Z", price: nil, player_number_min: 1, player_number_max: 100, category_id: Category.where(name: :Survie).ids[0])
# game19 = Game.create!(name: "Dead Frontier 2", price: nil, player_number_min: 1, player_number_max: 100, category_id: Category.where(name: :Survie).ids[0])
# game20 = Game.create!(name: "Mitos.is: The Game", price: nil, player_number_min: 3, player_number_max: 5, category_id: Category.where(name: :Survie).ids[0])








#------------------------------------------------------------- API SCRAP -----------------------------------------------------------

# require "json"
# require "rest-client"
# require 'open-uri'
# require 'nokogiri'


# def scrapingmethod(appid)
#   url = "https://store.steampowered.com/app/#{appid}"
#   html_file = open(url).read
#   html_doc = Nokogiri::HTML(html_file)
#   html_doc.search('.game_purchase_price').first.text.strip
# end

# url = 'http://api.steampowered.com/ISteamApps/GetAppList/v0002/'
# response = RestClient.get(url)
# response = JSON.parse(response)
# appidlist = []
#   response["applist"]["apps"].each do |f|
#     appidlist << f["appid"]
#   end

# appidlist[400..500].each do |appid|
# url = "https://store.steampowered.com/api/appdetails?appids=#{appid}"
#   response2 = RestClient.get(url)
#   response2 = JSON.parse(response2)
#   data = response2["#{appid}"]["data"]
#   next if data.nil? || data["genres"].nil? || data["metacritic"].nil?
#   genres = data["genres"][0]["description"]
#   name = data["name"]
#   free = data["is_free"] == true ? "Gratuit" : scrapingmethod(appid)
#   photosteam = data["header_image"].delete_prefix('"').delete_suffix('"')

#   solo = data["categories"][0]["description"] == "Single-player" ? "Un joueur" : "Multijoueur"
#   multi = data["categories"][1]["description"] == "Multi-player" ? "Multi-player" : "Indéfini"
#   category = Category.find_by(name: genres)
#   category = Category.create!(name: genres) if category.nil?
#   Game.create!(name: name, appid: appid, category_id: category.id, price: free, photo: photosteam, solo: solo, multi: multi)
# end

#------------------------------------------------------------- API SCRAP END -----------------------------------------------------------
