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


# multi:"Multijoueur", link:"https://store.steampowered.com/app/582500/We_Were_Here/", description:"",

# Casual
#----------------------------------------------- IMG CASUAL  ---------------------------------------------------------
img_casual_1 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/728880/header.jpg')
img_casual_2 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/535930/header.jpg')
img_casual_3 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/420560/header.jpg')
img_casual_4 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/621060/header.jpg')
img_casual_5 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/646570/header.jpg')
img_casual_6 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1186040/header.jpg')
img_casual_7 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1343400/header.jpg')
img_casual_8 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/339610/header.jpg')
img_casual_9 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1397920/header.jpg')
img_casual_10 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/977400/header.jpg')
#----------------------------------------------- IMG CASUAL FIN -----------------------------------------------------

casual_1 = Game.create!(name: "Overcooked! 2", price: 22.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/728880/Overcooked_2/", description:"Overcooked revient avec une toute nouvelle portion d'action culinaire chaotique ! Retournez dans le royaume Oignon et réunissez votre équipe de chefs
  dans ce jeu de coopération locale ou en ligne jusqu'à 4 joueurs. À vos tabliers... il est l'heure de sauver le monde.", category_id: Category.where(name: :Casual).ids[0])
casual_1.photo.attach(io: img_casual_1, filename: 'Overcooked2.png', content_type: 'image/png')

casual_2 = Game.create!(name: "Two Point Hospital", price: 34.99, solo:"Solo", link:"https://store.steampowered.com/app/535930/Two_Point_Hospital/", description:"Concevez de splendides hôpitaux, soignez d'étranges maladies et gérez des employés difficiles tandis que vous étendez votre organisation naissante
  dans tout le Two Point County.", category_id: Category.where(name: :Casual).ids[0])
casual_2.photo.attach(io: img_casual_2, filename: 'tph.png', content_type: 'image/png')

casual_3 = Game.create!(name: "Firefighting Simulator - The Squad", price: 22.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/420560/Firefighting_Simulator__The_Squad/", description:"Firefighting Simulator vous permet de découvrir la sensation de combattre le feu de près en tant que membre actif d'une équipe de pompiers
 située dans une grande ville des États-Unis – ensemble avec jusqu'à trois amis en coopération multijoueur – ou en mode solo.", category_id: Category.where(name: :Casual).ids[0])
casual_3.photo.attach(io: img_casual_3, filename: 'Firefighting.png', content_type: 'image/png')

casual_4 = Game.create!(name: "PC Building Simulator", price: 19.99, solo:"Solo", link:"https://store.steampowered.com/app/621060/PC_Building_Simulator/", description:"Créez et développez votre propre entreprise de réparation d’ordinateurs, puis découvrez comment diagnostiquer, remettre en état et assembler des PC. À l’aide de composants
  agréés et d’une simulation complète des matériels et logiciels, imaginez et construisez le PC ultime dont vous rêvez.", category_id: Category.where(name: :Casual).ids[0])
casual_4.photo.attach(io: img_casual_4, filename: 'pcbs.png', content_type: 'image/png')

casual_5 = Game.create!(name: "Slay the Spire", price: 20.99, solo:"Solo", link:"https://store.steampowered.com/app/646570/Slay_the_Spire/", description:"En fusionnant les jeux de cartes avec les roguelikes, nous sommes arrivés à créer le jeu de cartes solo le plus intéressant possible. Construisez votre deck, rencontrez toutes sortes
  d'ennemis bizarres, découvrez des reliques aux pouvoirs immenses, et éradiquez la tour!", category_id: Category.where(name: :Casual).ids[0])
casual_5.photo.attach(io: img_casual_5, filename: 'sts.png', content_type: 'image/png')

casual_6 = Game.create!(name: "Worms Rumble", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/1186040/Worms_Rumble/", description:"Worms Rumble est un jeu de combat multiplateforme en arène à 32 joueurs en temps réel qui va révolutionner la série Worms. Préparez-vous à combattre dans les modes Mort aux asticots et
  Dernier ver debout dans lesquels une seule sainte grenade sacrée peut vous condamner !", category_id: Category.where(name: :Casual).ids[0])
casual_6.photo.attach(io: img_casual_6, filename: 'womsr.png', content_type: 'image/png')

casual_7 = Game.create!(name: "Scribble It!", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/1088150/Scribble_It/", description:"Action de dessin rapide et alimentée en adrénaline. Dessinez vite, tapez plus vite et gagnez tout! DES MILLIERS de mots officiels dans 12 langues différentes + INFINIMENT plus de la communauté.
  4 modes de jeu multijoueur et un mode solo. Nous vous ramènerons aux jeux picturaux animés que tout le monde avait à l'école!", category_id: Category.where(name: :Casual).ids[0])
casual_7.photo.attach(io: img_casual_7, filename: 'runescape.png', content_type: 'image/png')

casual_8 = Game.create!(name: "Freestyle 2: Street BasketBall", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/339610/Freestyle_2_Street_Basketball/", description:"FreeStyle2, le MMO de Streetball, se distingue par son gameplay unique et ses graphismes dernier cri. Les joueurs choisissent leur position et s’affrontent à l’aide de mouvements
  freestyles. Rejoignez le rang des meilleurs et poussez votre équipe à la victoire !", category_id: Category.where(name: :Casual).ids[0])
casual_8.photo.attach(io: img_casual_8, filename: 'freestyle2bask.png', content_type: 'image/png')

casual_9 = Game.create!(name: "Mr.Mine", price: nil, solo:"Solo", link:"https://store.steampowered.com/app/1397920/MrMine/", description:"Gérez un groupe de mineurs et améliorez votre foret pour vous frayer un chemin à travers les mines et découvrir des mystères et des trésors dans
  les profondeurs ci-dessous.", category_id: Category.where(name: :Casual).ids[0])
casual_9.photo.attach(io: img_casual_9, filename: 'mrmine.png', content_type: 'image/png')

casual_10 = Game.create!(name: "Cell to Singularity - Evolution Never Ends", price: nil, solo:"Solo", link:"https://store.steampowered.com/app/582500/We_Were_Here/", description:"L'évolution ne finit jamais. Simulez l'extraordinaire histoire de l'évolution dans ce jeu de clicker cosmique.
", category_id: Category.where(name: :Casual).ids[0])
casual_10.photo.attach(io: img_casual_10, filename: 'ctsene.png', content_type: 'image/png')





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

# mmo_1 = Game.create!(name: "Tera", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :mmo).ids[0])
# mmo_1.photo.attach(io: img_mmo_1, filename: 'Tera.png', content_type: 'image/png')

# mmo_2 = Game.create!(name: "Neverwinter", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/552500/Warhammer_Vermintide_2/", description:"", category_id: Category.where(name: :Aventure).ids[0])
# mmo_2.photo.attach(io: img_mmo_2, filename: 'Neverwinter.png', content_type: 'image/png')

# mmo_3 = Game.create!(name: "RuneScape", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/582500/We_Were_Here/", description:"", category_id: Category.where(name: :Casual).ids[0])
# mmo_3.photo.attach(io: img_mmo_3, filename: 'runescape.png', content_type: 'image/png')











# # RPG
# #----------------------------------------------- IMG RPG ---------------------------------------------------------



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
