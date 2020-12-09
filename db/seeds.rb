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

category_2 = Category.create!(name: "Course_Automobile", description: "Ce type de jeu met en exergue la notion de compétition et tire son intérêt des sensations de vitesse et de pilotage qu'il procure. Très populaire, le genre s'inspire souvent des sports mécaniques.")
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
  #INFO TABLE
  #t.string "name"
  #t.bigint "category_id", null: false
  #t.string "price"
  #t.string "solo"
  #t.string "multi"
  #t.text "description"
  #t.string "link"



# # Action
# #----------------------------------------------- IMG ACTION  ---------------------------------------------------------
# img_action_1 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/570940/header.jpg')
# img_action_2 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/379720/header.jpg')
# img_action_3 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1174180/header.jpg')
# img_action_4 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/397540/header.jpg')
# img_action_5 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/812140/header.jpg')
# img_action_6 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1085660/header_french.jpg')
# img_action_7 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1172470/header.jpg')
# img_action_8 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/386360/header_french.jpg')
# img_action_9 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/291550/header.jpg')
# img_action_10 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/444200/header.jpg')

# #----------------------------------------------- IMG ACTION FIN -----------------------------------------------------
# action_1 = Game.create!(name: "Dark souls: REMASTERED", price: 14.99, solo:"Solo", link:"https://store.steampowered.com/app/570940/DARK_SOULS_REMASTERED/", description:"Vint alors l'avènement du Feu... Redécouvrez le jeu de référence salué par la critique.
#   Dans cette splendide version remastérisée, retrouvez Lordran et ses décors époustouflants en haute définition et en 60 fps.", category_id: Category.where(name: :Action).ids[0])
# action_1.photo.attach(io: img_action_1, filename: 'dark_souls.png', content_type: 'image/png')

# action_2 = Game.create!(name: "Doom", price: 50.00, multi:"Multijoueur", link:"https://store.steampowered.com/app/379720/DOOM/", description:"Inclut désormais les cartes, modes de jeux, armes et les trois packs de DLC premium (Unto the Evil, Hell Followed, et Bloodfall),
#   ainsi que les modes Arcade et Photo. Inclut également la dernière Mise à jour 6.66 qui vient enrichir le mode multijoueur et qui améliore son mode de progression.", category_id: Category.where(name: :Action).ids[0])
# action_2.photo.attach(io: img_action_2, filename: 'doom.png', content_type: 'image/png')

# action_3 = Game.create!(name: "Red Dead Redemption 2", price: 50.00, multi:"Multijoueur", link:"https://store.steampowered.com/app/1174180/Red_Dead_Redemption_2/", description:"Red Dead Redemption 2, le jeu épique en monde ouvert de Rockstar Games acclamé par la critique et
#   le mieux noté de cette génération de consoles, arrive maintenant sur PC avec du contenu inédit pour le mode Histoire, des améliorations graphiques et bien plus.", category_id: Category.where(name: :Action).ids[0])
# action_3.photo.attach(io: img_action_3, filename: 'red_dead.png', content_type: 'image/png')

# action_4 = Game.create!(name: "Borderlands 3", price: 50.00, multi:"Multijoueur", link:"https://store.steampowered.com/app/397540/Borderlands_3/", description:"Le tireur-looter original revient, emballant des milliards d'armes à feu et une aventure alimentée par le chaos!
#   Foncez à travers de nouveaux mondes et ennemis et sauvez votre maison des chefs de secte les plus impitoyables de la galaxie.", category_id: Category.where(name: :Action).ids[0])
# action_4.photo.attach(io: img_action_4, filename: 'border3.png', content_type: 'image/png')

# action_5 = Game.create!(name: "Assassin's Creed Odyssey", price: 60.00, solo:"Solo", link:"https://store.steampowered.com/app/397540/Borderlands_3/", description:"Forgez votre destin dans Assassin's Creed® Odyssey. Passez du statut de paria à celui de légende vivante au cours
#   d'une véritable odyssée durant laquelle vous lèverez les secrets sur votre passé et changerez le destin de la Grèce antique.
# ", category_id: Category.where(name: :Action).ids[0])
# action_5.photo.attach(io: img_action_5, filename: 'assco.png', content_type: 'image/png')

# action_6 = Game.create!(name: "Destiny 2", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/1085660/Destiny_2/", description:"Destiny 2 est un MMO d'action avec un monde évolutif unique, auquel vous et vos amis pouvez jouer gratuitement, à tout moment et de n'importe où.", category_id: Category.where(name: :Action).ids[0])
# action_6.photo.attach(io: img_action_6, filename: 'destiny2.png', content_type: 'image/png')

# action_7 = Game.create!(name: "Apex Legends", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/1172470/Apex_Legends/", description:"Apex Legends est le jeu de tir d'équipe Battle Royale primé et gratuit de Respawn Entertainment. Maîtrisez une liste toujours
#  croissante de personnages légendaires dotés de capacités puissantes et faites l'expérience d'un jeu d'équipe stratégique et d'un gameplay innovant dans la prochaine évolution de Battle Royale.", category_id: Category.where(name: :Action).ids[0])
# action_7.photo.attach(io: img_action_7, filename: 'apexleg.png', content_type: 'image/png')

# action_8 = Game.create!(name: "Smite", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/386360/SMITE/", description:"Rejoignez plus de 35 millions de joueurs sur SMITE, le champ de bataille des dieux ! Brandissez le marteau de Thor et changez vos ennemis en pierre en
#   incarnant Méduse... Au total, il y a plus de cent divinités disponibles. Venez découvrir SMITE gratuitement !", category_id: Category.where(name: :Action).ids[0])
# action_8.photo.attach(io: img_action_8, filename: 'smite.png', content_type: 'image/png')

# action_9 = Game.create!(name: "Brawlhala", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/291550/Brawlhalla/", description:"Un combattant de plate-forme épique pour jusqu'à 8 joueurs en ligne ou localement. Essayez des matchs gratuits, des matchs classés ou invitez des amis dans une salle privée.
#   Et c'est gratuit! Jouez sur plusieurs plates-formes avec des millions de joueurs sur PS4, Xbox One, Nintendo Switch, iOS, Android et Steam! Mises à jour fréquentes. Plus de cinquante légendes.", category_id: Category.where(name: :Action).ids[0])
# action_9.photo.attach(io: img_action_9, filename: 'brawlhala.png', content_type: 'image/png')

# action_10 = Game.create!(name: "World of tanks", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/291550/Brawlhalla/", description:"World of Tanks est un jeu vidéo biélorusse développé par Wargaming.net. Il est publié pour Windows en 2010 en tant que free-to-play.
#   Il s’agit d’un jeu de simulation de char de combat massivement multijoueur. ", category_id: Category.where(name: :Action).ids[0])
# action_10.photo.attach(io: img_action_10, filename: 'wot.png', content_type: 'image/png')



# # Aventure
# #----------------------------------------------- IMG AVENTURE  ---------------------------------------------------------
# img_aventure_1 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1172620/header.jpg')
# img_aventure_2 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1172380/header.jpg')
# img_aventure_3 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1057090/header.jpg')
# img_aventure_4 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/70/header.jpg')
# img_aventure_5 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/552500/header.jpg')
# img_aventure_6 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/109600/header.jpg')
# # img_aventure_7 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/212740/header.jpg')
# img_aventure_8 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/582500/header.jpg')
# img_aventure_9 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/512470/header.jpg')
# img_aventure_10 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/444200/header.jpg')
# img_aventure_11 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1394690/header.jpg')
# img_aventure_12 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1444750/header.jpg')
# img_aventure_13 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1427210/header.jpg')
# #----------------------------------------------- IMG AVENTURE FIN -----------------------------------------------------

# aventure_1 = Game.create!(name: "Sea of Thieves", price: 39.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/1172620/Sea_of_Thieves/", description:"Sea of Thieves vous propose une aventure de pirate ultime avec un gameplay directement issu de l'imaginaire de la piraterie :
#   de la navigation, de l'exploration et des chasses aux trésors. Comme les rôles ne sont pas prédéfinis, vous pourrez contribuer à ce monde comme il vous plaira.", category_id: Category.where(name: :Aventure).ids[0])
# aventure_1.photo.attach(io: img_aventure_1, filename: 'sot.png', content_type: 'image/png')

# aventure_2 = Game.create!(name: "Star Wards Jedi: Fallen Order", price: 59.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/1172380/STAR_WARS_Jedi_Fallen_Order/", description:"Une aventure galactique vous attend dans STAR WARS Jedi: Fallen Order, un nouveau jeu d'action-aventure à la 3e personne, développé par Respawn Entertainment.
#   Un Padawan abandonné doit terminer son entraînement, développer de nouvelles capacités de la Force et apprendre à maîtriser son sabre laser.", category_id: Category.where(name: :Aventure).ids[0])
# aventure_2.photo.attach(io: img_aventure_2, filename: 'swjfo.png', content_type: 'image/png')

# aventure_3 = Game.create!(name: "Ori and the Will of the Wisps", price: 29.99, solo:"Solo", link:"https://store.steampowered.com/app/1057090/Ori_and_the_Will_of_the_Wisps/", description:"Embarquez pour une nouvelle aventure dans un monde vaste et dépaysant où vous rencontrerez des ennemis
#   gigantesques et des énigmes ardues dans votre quête pour révéler la destinée d'Ori.", category_id: Category.where(name: :Aventure).ids[0])
# aventure_3.photo.attach(io: img_aventure_3, filename: 'ori.png', content_type: 'image/png')

# aventure_4 = Game.create!(name: "Half-Life", price: 49.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/70/HalfLife/", description:"Nommé « Jeu de l'année » par plus de 50 magazines, ce titre de Valve mêle action et aventure grâce à une
#   technologie primée et crée un monde au réalisme effrayant, où la survie des joueurs dépend de leur faculté de réflexion.", category_id: Category.where(name: :Aventure).ids[0])
# aventure_4.photo.attach(io: img_aventure_4, filename: 'half_life.png', content_type: 'image/png')

# aventure_5 = Game.create!(name: "Warhammer: Vermintide 2", price: 27.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/552500/Warhammer_Vermintide_2/", description:"Encensé par la critique, Vermintide revient dans un jeu de mêlée révolutionnaire et visuellement étonnant,
#   repoussant les limites du jeu d'action coopératif à la première personne. Rejoignez le combat dès maintenant !
# ", category_id: Category.where(name: :Aventure).ids[0])
# aventure_5.photo.attach(io: img_aventure_5, filename: 'Warhammer.png', content_type: 'image/png')

# #----Merge mmo----
# # aventure_6 = Game.create!(name: "Neverwinter", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/552500/Warhammer_Vermintide_2/", description:"", category_id: Category.where(name: :Aventure).ids[0])
# # aventure_6.photo.attach(io: img_aventure_6, filename: 'Neverwinter.png', content_type: 'image/png')

# # aventure_7 = Game.create!(name: "Tera", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Aventure).ids[0])
# # aventure_7.photo.attach(io: img_aventure_7, filename: 'Tera.png', content_type: 'image/png')

# aventure_8 = Game.create!(name: "We where Here", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/582500/We_Were_Here/", description:"Perdu dans un terrain vague gelé et séparé de votre partenaire dans un château abandonné,
#   le seul bien qui vous reste est un talkie-walkie avec une voix familière à l'autre bout. Pouvez-vous tous les deux trouver votre chemin à temps?", category_id: Category.where(name: :Aventure).ids[0])
# aventure_8.photo.attach(io: img_aventure_8, filename: 'wwh.png', content_type: 'image/png')

# aventure_9 = Game.create!(name: "The Pirate: Caribbean Hunt", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/512470/The_Pirate_Caribbean_Hunt/", description:"Salutations Capitaine!  Naviguez au cœur des Caraïbes dans l'ère de la piraterie - le temps des drapeaux noirs et des crânes blancs,
#   des vagues et des occasions en or. Hissez le Jolly Roger et saisissez la barre pour naviguer à travers des combats et des raids, rançons et trésors...", category_id: Category.where(name: :Aventure).ids[0])
# aventure_9.photo.attach(io: img_aventure_9, filename: 'tpch.png', content_type: 'image/png')

# aventure_10 = Game.create!(name: "Dark Deception", price: nil, solo:"Solo", link:"https://store.steampowered.com/app/332950/Dark_Deception/", description:"La mort vous attend dans Dark Deception, un jeu de labyrinthe d'horreur à la première personne axé sur l'histoire.
#   Il n'y a nulle part où se cacher et nulle part où reprendre son souffle. Courez ou mourez - c'est votre choix. Pris au piège dans un royaume de labyrinthes cauchemardesques avec une femme mystérieuse, votre seul espoir de survie est de trouver un moyen d'échapper à l'obscurité.", category_id: Category.where(name: :Aventure).ids[0])
# aventure_10.photo.attach(io: img_aventure_10, filename: 'darkd.png', content_type: 'image/png')

# aventure_11 = Game.create!(name: "Kaku", price: nil, solo:"Solo", link:"https://store.steampowered.com/app/1394690/KAKU_Ancient_Seal_Alpha/", description:"Kaku Ancient Seal est un jeu d'aventure facile et amusant. Vous deviendrez un adolescent avec un adorable animal de compagnie, explorerez et aventurerez dans un monde
#   fantastique ouvert. Dans ce jeu, nous avons un style artistique unique, un design de puzzle intéressant et un voyage tortueux et heureux, êtes-vous prêt pour l'Oraka", category_id: Category.where(name: :Aventure).ids[0])
# aventure_11.photo.attach(io: img_aventure_11, filename: 'Kaku.png', content_type: 'image/png')

# aventure_12 = Game.create!(name: "DreamWatcher", price: nil, solo:"Solo", link:"https://store.steampowered.com/app/1444750/DreamWatcher/", description:"Bienvenue dans la Grande Bibliothèque des Rêves, où le chaos s’est déchaîné! Incarnez l'agente dans ce Metroidvania 3D rempli de secrets surprenants,
#   de parcours audacieux, d'énigmes déroutantes et de singes menaçants. Votre objectif : Explorer et ramener l'ordre dans la Grande Bibliothèque!", category_id: Category.where(name: :Aventure).ids[0])
# aventure_12.photo.attach(io: img_aventure_12, filename: 'DreamWatcher.png', content_type: 'image/png')

# aventure_13 = Game.create!(name: "From the Shadows", price: nil, solo:"Solo", link:"https://store.steampowered.com/app/1444750/DreamWatcher/", description:"From the Shadows est un jeu de plateforme de puzzle coopératif dans lequel les joueurs doivent se frayer un chemin à travers un manoir mystérieux
#   en résolvant des énigmes qui tournent autour des mécanismes de la lumière et de l'ombre.", category_id: Category.where(name: :Aventure).ids[0])
# aventure_13.photo.attach(io: img_aventure_13, filename: 'fts.png', content_type: 'image/png')



# # Casual
# #----------------------------------------------- IMG CASUAL  ---------------------------------------------------------
# img_casual_1 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/728880/header.jpg')
# img_casual_2 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/535930/header.jpg')
# img_casual_3 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/420560/header.jpg')
# img_casual_4 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/621060/header.jpg')
# img_casual_5 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/646570/header.jpg')
# img_casual_6 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1186040/header.jpg')
# img_casual_7 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1343400/header.jpg')
# img_casual_8 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/339610/header.jpg')
# img_casual_9 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1397920/header.jpg')
# img_casual_10 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/977400/header.jpg')
# #----------------------------------------------- IMG CASUAL FIN -----------------------------------------------------

# casual_1 = Game.create!(name: "Overcooked! 2", price: 22.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/728880/Overcooked_2/", description:"Overcooked revient avec une toute nouvelle portion d'action culinaire chaotique ! Retournez dans le royaume Oignon et réunissez votre équipe de chefs
#   dans ce jeu de coopération locale ou en ligne jusqu'à 4 joueurs. À vos tabliers... il est l'heure de sauver le monde.", category_id: Category.where(name: :Casual).ids[0])
# casual_1.photo.attach(io: img_casual_1, filename: 'Overcooked2.png', content_type: 'image/png')

# casual_2 = Game.create!(name: "Two Point Hospital", price: 34.99, solo:"Solo", link:"https://store.steampowered.com/app/535930/Two_Point_Hospital/", description:"Concevez de splendides hôpitaux, soignez d'étranges maladies et gérez des employés difficiles tandis que vous étendez votre organisation naissante
#   dans tout le Two Point County.", category_id: Category.where(name: :Casual).ids[0])
# casual_2.photo.attach(io: img_casual_2, filename: 'tph.png', content_type: 'image/png')

# casual_3 = Game.create!(name: "Firefighting Simulator - The Squad", price: 22.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/420560/Firefighting_Simulator__The_Squad/", description:"Firefighting Simulator vous permet de découvrir la sensation de combattre le feu de près en tant que membre actif d'une équipe de pompiers
#  située dans une grande ville des États-Unis – ensemble avec jusqu'à trois amis en coopération multijoueur – ou en mode solo.", category_id: Category.where(name: :Casual).ids[0])
# casual_3.photo.attach(io: img_casual_3, filename: 'Firefighting.png', content_type: 'image/png')

# casual_4 = Game.create!(name: "PC Building Simulator", price: 19.99, solo:"Solo", link:"https://store.steampowered.com/app/621060/PC_Building_Simulator/", description:"Créez et développez votre propre entreprise de réparation d’ordinateurs, puis découvrez comment diagnostiquer, remettre en état et assembler des PC. À l’aide de composants
#   agréés et d’une simulation complète des matériels et logiciels, imaginez et construisez le PC ultime dont vous rêvez.", category_id: Category.where(name: :Casual).ids[0])
# casual_4.photo.attach(io: img_casual_4, filename: 'pcbs.png', content_type: 'image/png')

# casual_5 = Game.create!(name: "Slay the Spire", price: 20.99, solo:"Solo", link:"https://store.steampowered.com/app/646570/Slay_the_Spire/", description:"En fusionnant les jeux de cartes avec les roguelikes, nous sommes arrivés à créer le jeu de cartes solo le plus intéressant possible. Construisez votre deck, rencontrez toutes sortes
#   d'ennemis bizarres, découvrez des reliques aux pouvoirs immenses, et éradiquez la tour!", category_id: Category.where(name: :Casual).ids[0])
# casual_5.photo.attach(io: img_casual_5, filename: 'sts.png', content_type: 'image/png')

# casual_6 = Game.create!(name: "Worms Rumble", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/1186040/Worms_Rumble/", description:"Worms Rumble est un jeu de combat multiplateforme en arène à 32 joueurs en temps réel qui va révolutionner la série Worms. Préparez-vous à combattre dans les modes Mort aux asticots et
#   Dernier ver debout dans lesquels une seule sainte grenade sacrée peut vous condamner !", category_id: Category.where(name: :Casual).ids[0])
# casual_6.photo.attach(io: img_casual_6, filename: 'womsr.png', content_type: 'image/png')

# casual_7 = Game.create!(name: "Scribble It!", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/1088150/Scribble_It/", description:"Action de dessin rapide et alimentée en adrénaline. Dessinez vite, tapez plus vite et gagnez tout! DES MILLIERS de mots officiels dans 12 langues différentes + INFINIMENT plus de la communauté.
#   4 modes de jeu multijoueur et un mode solo. Nous vous ramènerons aux jeux picturaux animés que tout le monde avait à l'école!", category_id: Category.where(name: :Casual).ids[0])
# casual_7.photo.attach(io: img_casual_7, filename: 'runescape.png', content_type: 'image/png')

# casual_8 = Game.create!(name: "Freestyle 2: Street BasketBall", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/339610/Freestyle_2_Street_Basketball/", description:"FreeStyle2, le MMO de Streetball, se distingue par son gameplay unique et ses graphismes dernier cri. Les joueurs choisissent leur position et s’affrontent à l’aide de mouvements
#   freestyles. Rejoignez le rang des meilleurs et poussez votre équipe à la victoire !", category_id: Category.where(name: :Casual).ids[0])
# casual_8.photo.attach(io: img_casual_8, filename: 'freestyle2bask.png', content_type: 'image/png')

# casual_9 = Game.create!(name: "Mr.Mine", price: nil, solo:"Solo", link:"https://store.steampowered.com/app/1397920/MrMine/", description:"Gérez un groupe de mineurs et améliorez votre foret pour vous frayer un chemin à travers les mines et découvrir des mystères et des trésors dans
#   les profondeurs ci-dessous.", category_id: Category.where(name: :Casual).ids[0])
# casual_9.photo.attach(io: img_casual_9, filename: 'mrmine.png', content_type: 'image/png')

# casual_10 = Game.create!(name: "Cell to Singularity - Evolution Never Ends", price: nil, solo:"Solo", link:"https://store.steampowered.com/app/582500/We_Were_Here/", description:"L'évolution ne finit jamais. Simulez l'extraordinaire histoire de l'évolution dans ce jeu de clicker cosmique.
# ", category_id: Category.where(name: :Casual).ids[0])
# casual_10.photo.attach(io: img_casual_10, filename: 'ctsene.png', content_type: 'image/png')


# multi:"Multijoueur", link:"https://store.steampowered.com/app/582500/We_Were_Here/", description:"",



# # Course Automobile
# # ----------------------------------------------- IMG COURSE AUTOMOBILE  ---------------------------------------------------------
# img_course_1 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/244210/header.jpg')
# img_course_2 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/244210/header.jpg')
# img_course_3 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/646910/header.jpg')
# img_course_4 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/228380/header.jpg')
# img_course_5 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/690790/header.jpg')
# img_course_6 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/386180/header.jpg')
# img_course_7 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1302110/header.jpg')
# img_course_8 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/457330/header.jpg')
# img_course_9 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1112400/header.jpg')
# img_course_10 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/11020/header.jpg')
# # ----------------------------------------------- IMG COURSE AUTOMOBILE FIN -----------------------------------------------------

# course_1 = Game.create!(name: "Assetto Corsa", price: 19.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/244210/Assetto_Corsa/", description:"Jeu de simulation de courses sur PC, Assetto Corsa se démarque par son contenu exclusif notamment pour les voitures proposées.
#   Le joueur pourra y retrouver les plus célèbres circuits dans un environnement toujours plus réaliste.", category_id: Category.where(name: :Course_Automobile).ids[0])
# course_1.photo.attach(io: img_course_1, filename: 'Assetto_Corsa.png', content_type: 'image/png')

# course_2 = Game.create!(name: "F1 2020", price: 54.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/1080110/F1_2020/", description:"F1 2020 vous permet pour la 1re fois de créer votre écurie de F1 et d’affronter les écuries et pilotes officiels.
#   Défiez aussi vos amis en écran partagé lors de courses personnalisables, juste pour le plaisir. Affrontez 22 circuits, avec du contenu classique et actualisé.", category_id: Category.where(name: :Course_Automobile).ids[0])
# course_2.photo.attach(io: img_course_2, filename: 'f1.png', content_type: 'image/png')

# course_3 = Game.create!(name: "The Crew 2", price: 49.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/646910/The_Crew_2/", description:"Bienvenue à Motornation ! Relevez le challenge sur terre, sur l’eau et dans les airs et jouez dans un gigantesque monde ouvert entièrement
#   réimaginé ! À vous la gloire !", category_id: Category.where(name: :Course_Automobile).ids[0])
# course_3.photo.attach(io: img_course_3, filename: 'tc2.png', content_type: 'image/png')

# course_4 = Game.create!(name: "Wreckfest", price: 29.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/228380/Wreckfest/", description:"Préparez-vous à des accidents monstrueux, des combats acharnés jusqu'à la ligne d'arrivée et des envolées de tôles froissées ! C'est uniquement possible dans Wreckfest, avec sa simulation physique réaliste
#   proposée par le célèbre développeur Bugbear, créateur du FlatOut 1 et 2 !", category_id: Category.where(name: :Course_Automobile).ids[0])
# course_4.photo.attach(io: img_course_4, filename: 'wreckfest.png', content_type: 'image/png')

# course_5 = Game.create!(name: "DiRT Rally 2.0", price: 20.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/690790/DiRT_Rally_20/", description:"DiRT Rally 2.0 vous invite à arpenter les circuits de rallye les plus emblématiques du globe, dans les véhicules tout-terrain les plus puissants jamais conçus.
#   Mais n'oubliez pas que la moindre erreur peut mettre fin à votre étape.", category_id: Category.where(name: :Course_Automobile).ids[0])
# course_5.photo.attach(io: img_course_5, filename: 'dr2.png', content_type: 'image/png')

# course_6 = Game.create!(name: "Crossout", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/386180/Crossout/", description:"Participez à la bêta de Crossout, le MMO post-apocalyptique! Créez vos machines de combat à partir de dizaines de pièces,
#   combattez avec et détruisez vos adversaires dans des batailles en PvP explosives!", category_id: Category.where(name: :Course_Automobile).ids[0])
# course_6.photo.attach(io: img_course_6, filename: 'Crossout.png', content_type: 'image/png')

# course_7 = Game.create!(name: "Inertial Drift: Sunset Prologue", price: nil, solo: "Solo", link:"https://store.steampowered.com/app/1302110/Inertial_Drift_Sunset_Prologue/", description:"Plongé dans l'ambiance rétrofuturiste des années 1990, Inertial Drift propose une expérience de conduite absolument unique en son genre,
#   ainsi que des mécaniques de dérapage à deux joysticks si incroyables qu'elles méritent d'être vécues.", category_id: Category.where(name: :Course_Automobile).ids[0])
# course_7.photo.attach(io: img_course_7, filename: 'Inertial_drift.png', content_type: 'image/png')

# course_8 = Game.create!(name: "High Octane Drift", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/457330/High_Octane_Drift/", description:"Entrez dans le monde de la compétition professionnelle et gagnez des séries en ligne parmi des centaines d'autres joueurs pour devenir la légende vivante. Achetez, accordez,
#   échangez, unissez et conquérez la scène de la dérive.", category_id: Category.where(name: :Course_Automobile).ids[0])
# course_8.photo.attach(io: img_course_8, filename: 'hod.png', content_type: 'image/png')

# course_9 = Game.create!(name: "Project Torque", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/1112400/Project_Torque__Free_2_Play_MMO_Racing_Game/", description:"Le MMO Racer classique gratuit de la fin des années 2000
#   revient en ligne avec tous vos modes de jeu préférés comme Sim, Drift, Drag, CTF et Thunder Alley.", category_id: Category.where(name: :Course_Automobile).ids[0])
# course_9.photo.attach(io: img_course_9, filename: 'project_torque.png', content_type: 'image/png')

# course_10 = Game.create!(name: "TrackMania Nations Forever", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/11020/TrackMania_Nations_Forever/", description:"Un jeu gratuit dans le vrai sens du terme, TrackMania Nations Forever vous met aux commandes de bolides surpuissants avec
#   lesquels vous allez défier la gravité et le sens commun en mode solo comme en mode multijoueur.", category_id: Category.where(name: :Course_Automobile).ids[0])
# course_10.photo.attach(io: img_course_10, filename: 'trackmanian.png', content_type: 'image/png')





# # Indépendant
# #----------------------------------------------- IMG INDEPENDANT ---------------------------------------------------------
# img_inde_1 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1145360/header.jpg')
# img_inde_2 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/945360/header.jpg')
# img_inde_3 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1097150/header_alt_assets_0.jpg')
# img_inde_4 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/105600/header.jpg')
# img_inde_5 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/413150/header.jpg')
# img_inde_6 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/438040/header.jpg')
# img_inde_7 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/466240/header.jpg')
# img_inde_8 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/113200/header.jpg')
# img_inde_9 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1173370/header.jpg')
# img_inde_10 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/219150/header.jpg')
# #----------------------------------------------- IMG INDEPENDANT FIN -----------------------------------------------------

# inde_1 = Game.create!(name: "Hades", price: 20.99, solo:"Solo", link:"https://store.steampowered.com/app/1145360/Hades/", description:"Défiez le dieu des morts et frayez-vous un chemin hors des Enfers dans ce rogue-like en mode dungeon crawler développé par les créateurs de Bastion,
#   Transistor et Pyre.", category_id: Category.where(name: :Indépendant).ids[0])
# inde_1.photo.attach(io: img_inde_1, filename: 'hades.png', content_type: 'image/png')

# inde_2 = Game.create!(name: "Among Us", price: 3.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/945360/Among_Us/", description:"Un jeu de société en ligne et local de travail d'équipe et de trahison pour 4 à 10 joueurs ...
#   dans l'espace!", category_id: Category.where(name: :Indépendant).ids[0])
# inde_2.photo.attach(io: img_inde_2, filename: 'Among_Us.png', content_type: 'image/png')

# inde_3 = Game.create!(name: "Fall Guys: Ultimate Knockout", price: 19.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/1097150/Fall_Guys_Ultimate_Knockout/", description:"Fall Guys est un party-game massivement multijoueur
#   réunissant jusqu'à 60 joueurs en ligne.", category_id: Category.where(name: :Indépendant).ids[0])
# inde_3.photo.attach(io: img_inde_3, filename: 'fall_guys.png', content_type: 'image/png')

# inde_4 = Game.create!(name: "Terraria", price: 9.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/105600/Terraria/", description:"Creuser, survivre, explorer, construire ! Tout est possible dans ce jeu d'aventure bourré d'action.
#   Pack de 4 jeux également disponible !
# .", category_id: Category.where(name: :Indépendant).ids[0])
# inde_4.photo.attach(io: img_inde_4, filename: 'terraria.png', content_type: 'image/png')

# inde_5 = Game.create!(name: "Stardew Valley", price: 13.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/413150/Stardew_Valley/", description:"Vous avez hérité de l'ancienne parcelle de ferme de votre grand-père à Stardew Valley. Armé d'outils à la main et de quelques pièces de monnaie, vous avez décidé de commencer votre nouvelle vie.
#   Pouvez-vous apprendre à vivre de la terre et transformer ces champs envahis par la végétation en une maison prospère?", category_id: Category.where(name: :Indépendant).ids[0])
# inde_5.photo.attach(io: img_inde_5, filename: '.png', content_type: 'image/png')

# inde_6 = Game.create!(name: "Shakes and Fidget", price: nil, solo:"solo", link:"https://store.steampowered.com/app/438040/Shakes_and_Fidget/", description:"Shakes et Fidget est un RPG fantasy amusant et satyrique, et a même été récompensé ! Tu n'en reviens pas ? Plus de 50 millions de joueurs ont fait de SFGAME l'un des jeux
#   en ligne les plus populaires au monde !", category_id: Category.where(name: :Indépendant).ids[0])
# inde_6.photo.attach(io: img_inde_6, filename: 'Shakes_and_Fidget.png', content_type: 'image/png')

# inde_7 = Game.create!(name: "Deceit", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/466240/Deceit/", description:"Deceit teste votre instinct et la confiance dans un jeu de tir à la première personne multijoueur rempli d'action. Vous vous réveillez dans un environnement inconnu au son de la voix du Game Master,
#   entouré de cinq autres personnes. Un tiers de votre groupe a été infecté par un virus, qui va s'échapper?
# ", category_id: Category.where(name: :Indépendant).ids[0])
# inde_7.photo.attach(io: img_inde_7, filename: 'deceit.png', content_type: 'image/png')

# inde_8 = Game.create!(name: "The Binding of Isaac", price: 4.99, solo:"solo", link:"https://store.steampowered.com/app/113200/The_Binding_of_Isaac/?l=french", description:"The Binding of Isaac est un jeu d'action, de tir et de rôle. Suivez Isaac dans son aventure et utilisez les trésors étranges qui vont lui donner des pouvoirs spéciaux
#   pour combattre les créatures mystérieuses et trouver le chemin vers la liberté.", category_id: Category.where(name: :Indépendant).ids[0])
# inde_8.photo.attach(io: img_inde_8, filename: 'The_Binding_of_Isaac.png', content_type: 'image/png')

# inde_9 = Game.create!(name: "Slapshot: Rebound", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/1173370/Slapshot_Rebound/", description:"Slapshot: Rebound est un jeu multijoueur basé sur la physique dans lequel vous jouez un match de hockey de style arcade. Pas de bouton de tir, pas de colle de rondelle, pas de RNG. C'est à vous et à votre équipe de prendre le contrôle de la rondelle, de passer,
#   de tirer, de surpasser vos adversaires. Jouez avec vos amis ou faites équipe avec d'autres joueurs de Slapshot!", category_id: Category.where(name: :Indépendant).ids[0])
# inde_9.photo.attach(io: img_inde_9, filename: '.png', content_type: 'image/png')

# inde_10 = Game.create!(name: "Hotline Miami", price: 8.49, multi:"Multijoueur", link:"https://store.steampowered.com/app/219150/Hotline_Miami/", description:"Hotline Miami est un jeu à l'action explosive qui déborde de brutalité brute, de fusillades et de
#   combats rapprochés sanglants et violents.", category_id: Category.where(name: :Indépendant).ids[0])
# inde_10.photo.attach(io: img_inde_10, filename: 'Hotline_Miami.png', content_type: 'image/png')









# Mmo
#----------------------------------------------- IMG MMO ---------------------------------------------------------
img_mmo_1 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/212740/header.jpg')
img_mmo_2 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/109600/header.jpg')
img_mmo_3 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1343400/header.jpg')
img_mmo_4 = URI.open('https://image.jeuxvideo.com/medias-sm/152872/1528723478-8771-jaquette-avant.jpg')
img_mmo_5 = URI.open('https://bnetproduct-a.akamaihd.net//f8e/dc72b901f29a1d3c5848802fdf31b8fc-WoW_9.0_ProductPage_Checkout_Base_MN02.jpg')
img_mmo_6 = URI.open('https://image.jeuxvideo.com/images-sm/jaquettes/00013232/jaquette-dofus-pc-cover-avant-g-1343373661.jpg')
img_mmo_7 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/304050/header.jpg')
img_mmo_8 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/884660/header.jpg')
img_mmo_9 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/230410/header.jpg')
img_mmo_10 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/236390/header.jpg')
#----------------------------------------------- IMG MMO FIN -----------------------------------------------------

mmo_1 = Game.create!(name: "Tera", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/212740/TERA/", description:"TERA est un MMORPG épique : maîtrisez son système de combat riche en action et imposez-vous en solo ou en équipe dans le
  monde fabuleux d'Arborea.", category_id: Category.where(name: :MMO).ids[0])
mmo_1.photo.attach(io: img_mmo_1, filename: 'Tera.png', content_type: 'image/png')

mmo_2 = Game.create!(name: "Neverwinter", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/552500/Warhammer_Vermintide_2/", description:"Neverwinter est un MMORPG basé sur le jeu de rôle sur table Donjons & Dragons. Un savant mélange d'aventures épiques,
  de gameplay stratégique et de jeu de rôle classique attendent les héros assez courageux pour braver le monde fantastique de Neverwinter.", category_id: Category.where(name: :MMO).ids[0])
mmo_2.photo.attach(io: img_mmo_2, filename: 'Neverwinter.png', content_type: 'image/png')

mmo_3 = Game.create!(name: "RuneScape", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/582500/We_Were_Here/", description:"RuneScape est un MMORPG fantastique au monde ouvert. Explorez un monde vivant qui évolue sans cesse et où de nouveaux défis,
  compétences et quêtes vous attendent. Dans ce jeu qui offre une liberté inédite, vous décidez de la façon dont vous jouez, explorez et vous développez.", category_id: Category.where(name: :MMO).ids[0])
mmo_3.photo.attach(io: img_mmo_3, filename: 'runescape.png', content_type: 'image/png')

mmo_4 = Game.create!(name: "Black Desert Online", price: 9.99, multi:"Multijoueur", link:"https://www.blackdesertonline.com/shop/package", description:"MMORPG dynamique sur PC, Black Desert Online est axé sur un système sandbox à grande échelle. Le jeu prend place dans un univers médiéval-fantastique inspiré de l'Italie de la
  Renaissance au sein duquel deux pays s'affrontent, la République de Calpheon et le royaume de Valence. La raison de leur conflit est la Pierre Noire, une source d'énergie essentielle.
", category_id: Category.where(name: :MMO).ids[0])
mmo_4.photo.attach(io: img_mmo_4, filename: 'bdo.png', content_type: 'image/png')

mmo_5 = Game.create!(name: "World of Warcraft: Shadowlands", price: 39.99, multi:"Multijoueur", link:"https://eu.shop.battle.net/fr-fr/product/world-of-warcraft-shadowlands", description:"World of Warcraft: Shadowlands est la huitième extension de jeu vidéo du jeu de rôle en ligne massivement multijoueur World of Warcraft.
  Elle a été annoncée le 1ᵉʳ novembre 2019 à la BlizzCon et a pour thème le royaume des morts de l'univers de Warcraft, l'Ombreterre", category_id: Category.where(name: :MMO).ids[0])
mmo_5.photo.attach(io: img_mmo_5, filename: 'wow.png', content_type: 'image/png')

mmo_6 = Game.create!(name: "Dofus", price: nil, multi:"Multijoueur", link:"https://www.dofus.com/fr/prehome", description:"Dofus est un jeu de rôle en ligne massivement multijoueur français développé et édité par Ankama puis par sa filiale Ankama Games dès
  sa création en 2004.", category_id: Category.where(name: :MMO).ids[0])
mmo_6.photo.attach(io: img_mmo_6, filename: 'dofus.png', content_type: 'image/png')

mmo_7 = Game.create!(name: "Trove", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/304050/Trove/", description:"Ramenez vos potes, affûtez vos armes et partez à l’aventure dans Trove, l’ultime MMO « sand-vox » ! Combattez les forces de l’Ombre dans des mondes remplis de
  donjons et d’objets hors du commun, créés par les joueurs comme vous. ", category_id: Category.where(name: :MMO).ids[0])
mmo_7.photo.attach(io: img_mmo_7, filename: 'trove.png', content_type: 'image/png')

mmo_8 = Game.create!(name: "CRSED: F.O.A.D.", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/884660/CRSED_FOAD/", description:"CRSED: F.O.A.D. - est un jeu de tir MMO brutal avec des armes réalistes, des éléments de forces
  mystiques mortelles et des super pouvoirs incroyables!", category_id: Category.where(name: :MMO).ids[0])
mmo_8.photo.attach(io: img_mmo_8, filename: 'CRSED_FOAD.png', content_type: 'image/png')

mmo_9 = Game.create!(name: "Warframe", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/230410/Warframe/", description:"Dans le monde futuriste de Warframe, des clones grotesques et des machines capitalistes dominent notre système solaire. Combattez l'avarice et la corruption et partez à
  la découverte de 18 mondes remplis d'horreurs techno-organiques.
", category_id: Category.where(name: :MMO).ids[0])
mmo_9.photo.attach(io: img_mmo_9, filename: 'warframe.png', content_type: 'image/png')

mmo_10 = Game.create!(name: "War Thunder", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/236390/War_Thunder/", description:"War Thunder est un jeu de combat MMO gratuit dédié aux véhicules militaires de la Seconde Guerre mondiale et la Guerre de Corée. Combattez dans les airs,
  sur terre ou sur mer avec des joueurs de toutes nations et dans un jeu en développement constant.", category_id: Category.where(name: :MMO).ids[0])
mmo_10.photo.attach(io: img_mmo_10, filename: 'war_Thunder.png', content_type: 'image/png')










# # RPG
# #----------------------------------------------- IMG RPG ---------------------------------------------------------
# img_rpg_1 = URI.open('')
# img_rpg_2 = URI.open('')
# img_rpg_3 = URI.open('')
# img_rpg_4 = URI.open('')
# img_rpg_5 = URI.open('')
# img_rpg_6 = URI.open('')
# img_rpg_7 = URI.open('')
# img_rpg_8 = URI.open('')
# img_rpg_9 = URI.open('')
# img_rpg_10 = URI.open('')
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
# img_simulation_1 = URI.open('')
# img_simulation_2 = URI.open('')
# img_simulation_3 = URI.open('')
# img_simulation_4 = URI.open('')
# img_simulation_5 = URI.open('')
# img_simulation_6 = URI.open('')
# img_simulation_7 = URI.open('')
# img_simulation_8 = URI.open('')
# img_simulation_9 = URI.open('')
# img_simulation_10 = URI.open('')
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
# img_sport_1 = URI.open('')
# img_sport_2 = URI.open('')
# img_sport_3 = URI.open('')
# img_sport_4 = URI.open('')
# img_sport_5 = URI.open('')
# img_sport_6 = URI.open('')
# img_sport_7 = URI.open('')
# img_sport_8 = URI.open('')
# img_sport_9 = URI.open('')
# img_sport_10 = URI.open('')
# #----------------------------------------------- IMG SPORT FIN -----------------------------------------------------
# sport_1 = Game.create!(name: "", price: 0.0, multi:"Multijoueur", link:"", description:"", category_id: Category.where(name: :Casual).ids[0])
# sport_1.photo.attach(io: img_sport_1, filename: '.png', content_type: 'image/png')

# sport_2 = Game.create!(name: "", price: 0.0, multi:"Multijoueur", link:"", description:"", category_id: Category.where(name: :Casual).ids[0])
# sport_2.photo.attach(io: img_sport_2, filename: '.png', content_type: 'image/png')

# sport_3 = Game.create!(name: "", price: 0.0, multi:"Multijoueur", link:"", description:"", category_id: Category.where(name: :Casual).ids[0])
# sport_3.photo.attach(io: img_sport_3, filename: '.png', content_type: 'image/png')

# sport_4 = Game.create!(name: "", price: 0.0, multi:"Multijoueur", link:"", description:"", category_id: Category.where(name: :Casual).ids[0])
# sport_4.photo.attach(io: img_sport_4, filename: '.png', content_type: 'image/png')

# sport_5 = Game.create!(name: "", price: 0.0, multi:"Multijoueur", link:"", description:"", category_id: Category.where(name: :Casual).ids[0])
# sport_5.photo.attach(io: img_sport_5, filename: '.png', content_type: 'image/png')

# sport_6 = Game.create!(name: "", price: 0.0, multi:"Multijoueur", link:"", description:"", category_id: Category.where(name: :Casual).ids[0])
# sport_6.photo.attach(io: img_sport_6, filename: '.png', content_type: 'image/png')

# sport_7 = Game.create!(name: "", price: 0.0, multi:"Multijoueur", link:"", description:"", category_id: Category.where(name: :Casual).ids[0])
# sport_7.photo.attach(io: img_sport_7, filename: '.png', content_type: 'image/png')

# sport_8 = Game.create!(name: "", price: 0.0, multi:"Multijoueur", link:"", description:"", category_id: Category.where(name: :Casual).ids[0])
# sport_8.photo.attach(io: img_sport_8, filename: '.png', content_type: 'image/png')

# sport_9 = Game.create!(name: "", price: 0.0, multi:"Multijoueur", link:"", description:"", category_id: Category.where(name: :Casual).ids[0])
# sport_9.photo.attach(io: img_sport_9, filename: '.png', content_type: 'image/png')

# sport_10 = Game.create!(name: "", price: 0.0, multi:"Multijoueur", link:"", description:"", category_id: Category.where(name: :Casual).ids[0])
# sport_10.photo.attach(io: img_sport_10, filename: '.png', content_type: 'image/png')













# # Stratégie
# #----------------------------------------------- IMG STRATEGIE ---------------------------------------------------------
# img_strategie_1 = URI.open('')
# img_strategie_2 = URI.open('')
# img_strategie_3 = URI.open('')
# img_strategie_4 = URI.open('')
# img_strategie_5 = URI.open('')
# img_strategie_6 = URI.open('')
# img_strategie_7 = URI.open('')
# img_strategie_8 = URI.open('')
# img_strategie_9 = URI.open('')
# img_strategie_10 = URI.open('')
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
