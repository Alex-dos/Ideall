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
img_category_1 = URI.open('https://res.cloudinary.com/dndlxqz6p/image/upload/v1607527977/action_sv66li.jpg')
img_category_2 = URI.open('https://res.cloudinary.com/dndlxqz6p/image/upload/v1607527978/course_dvvvs9.jpg')
img_category_3 = URI.open('https://res.cloudinary.com/dndlxqz6p/image/upload/v1607527977/rpg_rdaodu.jpg')
img_category_4 = URI.open('https://res.cloudinary.com/dndlxqz6p/image/upload/v1607527978/start_vkqxgy.jpg')
img_category_5 = URI.open('https://res.cloudinary.com/dndlxqz6p/image/upload/v1607527978/simu_kyelea.jpg')
img_category_6 = URI.open('https://res.cloudinary.com/dndlxqz6p/image/upload/v1607527977/mmo_ipgwku.jpg')
img_category_7 = URI.open('https://res.cloudinary.com/dndlxqz6p/image/upload/v1607527977/aventure_m5l6bh.jpg')
img_category_8 = URI.open('https://res.cloudinary.com/dndlxqz6p/image/upload/v1607527977/casu_tlccmc.jpg')
img_category_9 = URI.open('https://res.cloudinary.com/dndlxqz6p/image/upload/v1607527977/inde_chuteg.jpg')
img_category_10 = URI.open('https://res.cloudinary.com/dndlxqz6p/image/upload/v1607527978/sport_p0htcx.jpg')
#-----------------------------------------IMG CATEGORIES END-------------------------------------------------




#----------------------------------------------- CATEGORIES---------------------------------------------------
category_1 = Category.create!(name: "Action", description: "Le jeu d'action est un genre de jeu vidéo dont le gameplay est fondé sur des interactions en temps réel et qui fait essentiellement appel à l'habileté et aux réflexes du joueur.")
category_1.photo.attach(io: img_category_1, filename: 'Action.png', content_type: 'image/png')

category_2 = Category.create!(name: "Course", description: "Ce type de jeu met en exergue la notion de compétition et tire son intérêt des sensations de vitesse et de pilotage qu'il procure. Très populaire, le genre s'inspire souvent des sports mécaniques.")
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
action_1 = Game.create!(name: "Dark souls: REMASTERED", price: 14.99, solo:"Solo", link:"https://store.steampowered.com/app/570940/DARK_SOULS_REMASTERED/", description:"Vint alors l'avènement du Feu... Redécouvrez le jeu de référence salué par la critique.
  Dans cette splendide version remastérisée, retrouvez Lordran et ses décors époustouflants en haute définition et en 60 fps.", category_id: Category.where(name: :Action).ids[0])
action_1.photo.attach(io: img_action_1, filename: 'dark_souls.png', content_type: 'image/png')

action_2 = Game.create!(name: "Doom", price: 50.00, multi:"Multijoueur", link:"https://store.steampowered.com/app/379720/DOOM/", description:"Inclut désormais les cartes, modes de jeux, armes et les trois packs de DLC premium (Unto the Evil, Hell Followed, et Bloodfall),
  ainsi que les modes Arcade et Photo. Inclut également la dernière Mise à jour 6.66 qui vient enrichir le mode multijoueur et qui améliore son mode de progression.", category_id: Category.where(name: :Action).ids[0])
action_2.photo.attach(io: img_action_2, filename: 'doom.png', content_type: 'image/png')

action_3 = Game.create!(name: "Red Dead Redemption 2", price: 50.00, multi:"Multijoueur", link:"https://store.steampowered.com/app/1174180/Red_Dead_Redemption_2/", description:"Red Dead Redemption 2, le jeu épique en monde ouvert de Rockstar Games acclamé par la critique et
  le mieux noté de cette génération de consoles, arrive maintenant sur PC avec du contenu inédit pour le mode Histoire, des améliorations graphiques et bien plus.", category_id: Category.where(name: :Action).ids[0])
action_3.photo.attach(io: img_action_3, filename: 'red_dead.png', content_type: 'image/png')

action_4 = Game.create!(name: "Borderlands 3", price: 50.00, multi:"Multijoueur", link:"https://store.steampowered.com/app/397540/Borderlands_3/", description:"Le tireur-looter original revient, emballant des milliards d'armes à feu et une aventure alimentée par le chaos!
  Foncez à travers de nouveaux mondes et ennemis et sauvez votre maison des chefs de secte les plus impitoyables de la galaxie.", category_id: Category.where(name: :Action).ids[0])
action_4.photo.attach(io: img_action_4, filename: 'border3.png', content_type: 'image/png')

action_5 = Game.create!(name: "Assassin's Creed Odyssey", price: 60.00, solo:"Solo", link:"https://store.steampowered.com/app/397540/Borderlands_3/", description:"Forgez votre destin dans Assassin's Creed® Odyssey. Passez du statut de paria à celui de légende vivante au cours
  d'une véritable odyssée durant laquelle vous lèverez les secrets sur votre passé et changerez le destin de la Grèce antique.
", category_id: Category.where(name: :Action).ids[0])
action_5.photo.attach(io: img_action_5, filename: 'assco.png', content_type: 'image/png')

action_6 = Game.create!(name: "Destiny 2", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/1085660/Destiny_2/", description:"Destiny 2 est un MMO d'action avec un monde évolutif unique, auquel vous et vos amis pouvez jouer gratuitement, à tout moment et de n'importe où.", category_id: Category.where(name: :Action).ids[0])
action_6.photo.attach(io: img_action_6, filename: 'destiny2.png', content_type: 'image/png')

action_7 = Game.create!(name: "Apex Legends", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/1172470/Apex_Legends/", description:"Apex Legends est le jeu de tir d'équipe Battle Royale primé et gratuit de Respawn Entertainment. Maîtrisez une liste toujours
 croissante de personnages légendaires dotés de capacités puissantes et faites l'expérience d'un jeu d'équipe stratégique et d'un gameplay innovant dans la prochaine évolution de Battle Royale.", category_id: Category.where(name: :Action).ids[0])
action_7.photo.attach(io: img_action_7, filename: 'apexleg.png', content_type: 'image/png')

action_8 = Game.create!(name: "Smite", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/386360/SMITE/", description:"Rejoignez plus de 35 millions de joueurs sur SMITE, le champ de bataille des dieux ! Brandissez le marteau de Thor et changez vos ennemis en pierre en
  incarnant Méduse... Au total, il y a plus de cent divinités disponibles. Venez découvrir SMITE gratuitement !", category_id: Category.where(name: :Action).ids[0])
action_8.photo.attach(io: img_action_8, filename: 'smite.png', content_type: 'image/png')

action_9 = Game.create!(name: "Brawlhala", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/291550/Brawlhalla/", description:"Un combattant de plate-forme épique pour jusqu'à 8 joueurs en ligne ou localement. Essayez des matchs gratuits, des matchs classés ou invitez des amis dans une salle privée.
  Et c'est gratuit! Jouez sur plusieurs plates-formes avec des millions de joueurs sur PS4, Xbox One, Nintendo Switch, iOS, Android et Steam! Mises à jour fréquentes. Plus de cinquante légendes.", category_id: Category.where(name: :Action).ids[0])
action_9.photo.attach(io: img_action_9, filename: 'brawlhala.png', content_type: 'image/png')

action_10 = Game.create!(name: "World of tanks", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/444200/World_of_Tanks_Blitz/", description:"World of Tanks est un jeu vidéo biélorusse développé par Wargaming.net. Il est publié pour Windows en 2010 en tant que free-to-play.
  Il s’agit d’un jeu de simulation de char de combat massivement multijoueur. ", category_id: Category.where(name: :Action).ids[0])
action_10.photo.attach(io: img_action_10, filename: 'wot.png', content_type: 'image/png')


# Aventure
#----------------------------------------------- IMG AVENTURE  ---------------------------------------------------------
img_aventure_1 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1172620/header.jpg')
img_aventure_2 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1172380/header.jpg')
img_aventure_3 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1057090/header.jpg')
img_aventure_4 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/70/header.jpg')
img_aventure_5 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/552500/header.jpg')
img_aventure_6 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/109600/header.jpg')
# img_aventure_7 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/212740/header.jpg')
img_aventure_8 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/582500/header.jpg')
img_aventure_9 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/512470/header.jpg')
img_aventure_10 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/444200/header.jpg')
img_aventure_11 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1394690/header.jpg')
img_aventure_12 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1444750/header.jpg')
img_aventure_13 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1427210/header.jpg')
#----------------------------------------------- IMG AVENTURE FIN -----------------------------------------------------

aventure_1 = Game.create!(name: "Sea of Thieves", price: 39.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/1172620/Sea_of_Thieves/", description:"Sea of Thieves vous propose une aventure de pirate ultime avec un gameplay directement issu de l'imaginaire de la piraterie :
  de la navigation, de l'exploration et des chasses aux trésors. Comme les rôles ne sont pas prédéfinis, vous pourrez contribuer à ce monde comme il vous plaira.", category_id: Category.where(name: :Aventure).ids[0])
aventure_1.photo.attach(io: img_aventure_1, filename: 'sot.png', content_type: 'image/png')

aventure_2 = Game.create!(name: "Star Wars Jedi: Fallen Order", price: 59.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/1172380/STAR_WARS_Jedi_Fallen_Order/", description:"Une aventure galactique vous attend dans STAR WARS Jedi: Fallen Order, un nouveau jeu d'action-aventure à la 3e personne, développé par Respawn Entertainment.
  Un Padawan abandonné doit terminer son entraînement, développer de nouvelles capacités de la Force et apprendre à maîtriser son sabre laser.", category_id: Category.where(name: :Aventure).ids[0])
aventure_2.photo.attach(io: img_aventure_2, filename: 'swjfo.png', content_type: 'image/png')

aventure_3 = Game.create!(name: "Ori and the Will of the Wisps", price: 29.99, solo:"Solo", link:"https://store.steampowered.com/app/1057090/Ori_and_the_Will_of_the_Wisps/", description:"Embarquez pour une nouvelle aventure dans un monde vaste et dépaysant où vous rencontrerez des ennemis
  gigantesques et des énigmes ardues dans votre quête pour révéler la destinée d'Ori.", category_id: Category.where(name: :Aventure).ids[0])
aventure_3.photo.attach(io: img_aventure_3, filename: 'ori.png', content_type: 'image/png')

aventure_4 = Game.create!(name: "Half-Life", price: 49.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/70/HalfLife/", description:"Nommé « Jeu de l'année » par plus de 50 magazines, ce titre de Valve mêle action et aventure grâce à une
  technologie primée et crée un monde au réalisme effrayant, où la survie des joueurs dépend de leur faculté de réflexion.", category_id: Category.where(name: :Aventure).ids[0])
aventure_4.photo.attach(io: img_aventure_4, filename: 'half_life.png', content_type: 'image/png')

aventure_5 = Game.create!(name: "Warhammer: Vermintide 2", price: 27.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/552500/Warhammer_Vermintide_2/", description:"Encensé par la critique, Vermintide revient dans un jeu de mêlée révolutionnaire et visuellement étonnant,
  repoussant les limites du jeu d'action coopératif à la première personne. Rejoignez le combat dès maintenant !
", category_id: Category.where(name: :Aventure).ids[0])
aventure_5.photo.attach(io: img_aventure_5, filename: 'Warhammer.png', content_type: 'image/png')

#----Merge mmo----
# aventure_6 = Game.create!(name: "Neverwinter", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/552500/Warhammer_Vermintide_2/", description:"", category_id: Category.where(name: :Aventure).ids[0])
# aventure_6.photo.attach(io: img_aventure_6, filename: 'Neverwinter.png', content_type: 'image/png')

# aventure_7 = Game.create!(name: "Tera", price: nil, player_number_min: 1, player_number_max: 8, category_id: Category.where(name: :Aventure).ids[0])
# aventure_7.photo.attach(io: img_aventure_7, filename: 'Tera.png', content_type: 'image/png')

aventure_8 = Game.create!(name: "We where Here", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/582500/We_Were_Here/", description:"Perdu dans un terrain vague gelé et séparé de votre partenaire dans un château abandonné,
  le seul bien qui vous reste est un talkie-walkie avec une voix familière à l'autre bout. Pouvez-vous tous les deux trouver votre chemin à temps?", category_id: Category.where(name: :Aventure).ids[0])
aventure_8.photo.attach(io: img_aventure_8, filename: 'wwh.png', content_type: 'image/png')

aventure_9 = Game.create!(name: "The Pirate: Caribbean Hunt", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/512470/The_Pirate_Caribbean_Hunt/", description:"Salutations Capitaine!  Naviguez au cœur des Caraïbes dans l'ère de la piraterie - le temps des drapeaux noirs et des crânes blancs,
  des vagues et des occasions en or. Hissez le Jolly Roger et saisissez la barre pour naviguer à travers des combats et des raids, rançons et trésors...", category_id: Category.where(name: :Aventure).ids[0])
aventure_9.photo.attach(io: img_aventure_9, filename: 'tpch.png', content_type: 'image/png')

aventure_10 = Game.create!(name: "Dark Deception", price: nil, solo:"Solo", link:"https://store.steampowered.com/app/332950/Dark_Deception/", description:"La mort vous attend dans Dark Deception, un jeu de labyrinthe d'horreur à la première personne axé sur l'histoire.
  Il n'y a nulle part où se cacher et nulle part où reprendre son souffle. Courez ou mourez - c'est votre choix. Pris au piège dans un royaume de labyrinthes cauchemardesques avec une femme mystérieuse, votre seul espoir de survie est de trouver un moyen d'échapper à l'obscurité.", category_id: Category.where(name: :Aventure).ids[0])
aventure_10.photo.attach(io: img_aventure_10, filename: 'darkd.png', content_type: 'image/png')

aventure_11 = Game.create!(name: "Kaku", price: nil, solo:"Solo", link:"https://store.steampowered.com/app/1394690/KAKU_Ancient_Seal_Alpha/", description:"Kaku Ancient Seal est un jeu d'aventure facile et amusant. Vous deviendrez un adolescent avec un adorable animal de compagnie, explorerez et aventurerez dans un monde
  fantastique ouvert. Dans ce jeu, nous avons un style artistique unique, un design de puzzle intéressant et un voyage tortueux et heureux, êtes-vous prêt pour l'Oraka", category_id: Category.where(name: :Aventure).ids[0])
aventure_11.photo.attach(io: img_aventure_11, filename: 'Kaku.png', content_type: 'image/png')

aventure_12 = Game.create!(name: "DreamWatcher", price: nil, solo:"Solo", link:"https://store.steampowered.com/app/1444750/DreamWatcher/", description:"Bienvenue dans la Grande Bibliothèque des Rêves, où le chaos s’est déchaîné! Incarnez l'agente dans ce Metroidvania 3D rempli de secrets surprenants,
  de parcours audacieux, d'énigmes déroutantes et de singes menaçants. Votre objectif : Explorer et ramener l'ordre dans la Grande Bibliothèque!", category_id: Category.where(name: :Aventure).ids[0])
aventure_12.photo.attach(io: img_aventure_12, filename: 'DreamWatcher.png', content_type: 'image/png')

aventure_13 = Game.create!(name: "From the Shadows", price: nil, solo:"Solo", link:"https://store.steampowered.com/app/1444750/DreamWatcher/", description:"From the Shadows est un jeu de plateforme de puzzle coopératif dans lequel les joueurs doivent se frayer un chemin à travers un manoir mystérieux
  en résolvant des énigmes qui tournent autour des mécanismes de la lumière et de l'ombre.", category_id: Category.where(name: :Aventure).ids[0])
aventure_13.photo.attach(io: img_aventure_13, filename: 'fts.png', content_type: 'image/png')



# Casual
#----------------------------------------------- IMG CASUAL  ---------------------------------------------------------
img_casual_1 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/728880/header.jpg')
img_casual_2 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/535930/header.jpg')
img_casual_3 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/420560/header.jpg')
img_casual_4 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/621060/header.jpg')
img_casual_5 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/646570/header.jpg')
img_casual_6 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1186040/header.jpg')
img_casual_7 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1088150/header.jpg')
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
# ----------------------------------------------- IMG COURSE AUTOMOBILE  ---------------------------------------------------------
img_course_1 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/244210/header.jpg')
img_course_2 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/244210/header.jpg')
img_course_3 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/646910/header.jpg')
img_course_4 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/228380/header.jpg')
img_course_5 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/690790/header.jpg')
img_course_6 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/386180/header.jpg')
img_course_7 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1302110/header.jpg')
img_course_8 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/457330/header.jpg')
img_course_9 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1112400/header.jpg')
img_course_10 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/11020/header.jpg')
# ----------------------------------------------- IMG COURSE AUTOMOBILE FIN -----------------------------------------------------

course_1 = Game.create!(name: "Assetto Corsa", price: 19.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/244210/Assetto_Corsa/", description:"Jeu de simulation de courses sur PC, Assetto Corsa se démarque par son contenu exclusif notamment pour les voitures proposées.
  Le joueur pourra y retrouver les plus célèbres circuits dans un environnement toujours plus réaliste.", category_id: Category.where(name: :Course).ids[0])
course_1.photo.attach(io: img_course_1, filename: 'Assetto_Corsa.png', content_type: 'image/png')

course_2 = Game.create!(name: "F1 2020", price: 54.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/1080110/F1_2020/", description:"F1 2020 vous permet pour la 1re fois de créer votre écurie de F1 et d’affronter les écuries et pilotes officiels.
  Défiez aussi vos amis en écran partagé lors de courses personnalisables, juste pour le plaisir. Affrontez 22 circuits, avec du contenu classique et actualisé.", category_id: Category.where(name: :Course).ids[0])
course_2.photo.attach(io: img_course_2, filename: 'f1.png', content_type: 'image/png')

course_3 = Game.create!(name: "The Crew 2", price: 49.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/646910/The_Crew_2/", description:"Bienvenue à Motornation ! Relevez le challenge sur terre, sur l’eau et dans les airs et jouez dans un gigantesque monde ouvert entièrement
  réimaginé ! À vous la gloire !", category_id: Category.where(name: :Course).ids[0])
course_3.photo.attach(io: img_course_3, filename: 'tc2.png', content_type: 'image/png')

course_4 = Game.create!(name: "Wreckfest", price: 29.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/228380/Wreckfest/", description:"Préparez-vous à des accidents monstrueux, des combats acharnés jusqu'à la ligne d'arrivée et des envolées de tôles froissées ! C'est uniquement possible dans Wreckfest, avec sa simulation physique réaliste
  proposée par le célèbre développeur Bugbear, créateur du FlatOut 1 et 2 !", category_id: Category.where(name: :Course).ids[0])
course_4.photo.attach(io: img_course_4, filename: 'wreckfest.png', content_type: 'image/png')

course_5 = Game.create!(name: "DiRT Rally 2.0", price: 20.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/690790/DiRT_Rally_20/", description:"DiRT Rally 2.0 vous invite à arpenter les circuits de rallye les plus emblématiques du globe, dans les véhicules tout-terrain les plus puissants jamais conçus.
  Mais n'oubliez pas que la moindre erreur peut mettre fin à votre étape.", category_id: Category.where(name: :Course).ids[0])
course_5.photo.attach(io: img_course_5, filename: 'dr2.png', content_type: 'image/png')

course_6 = Game.create!(name: "Crossout", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/386180/Crossout/", description:"Participez à la bêta de Crossout, le MMO post-apocalyptique! Créez vos machines de combat à partir de dizaines de pièces,
  combattez avec et détruisez vos adversaires dans des batailles en PvP explosives!", category_id: Category.where(name: :Course).ids[0])
course_6.photo.attach(io: img_course_6, filename: 'Crossout.png', content_type: 'image/png')

course_7 = Game.create!(name: "Inertial Drift: Sunset Prologue", price: nil, solo: "Solo", link:"https://store.steampowered.com/app/1302110/Inertial_Drift_Sunset_Prologue/", description:"Plongé dans l'ambiance rétrofuturiste des années 1990, Inertial Drift propose une expérience de conduite absolument unique en son genre,
  ainsi que des mécaniques de dérapage à deux joysticks si incroyables qu'elles méritent d'être vécues.", category_id: Category.where(name: :Course).ids[0])
course_7.photo.attach(io: img_course_7, filename: 'Inertial_drift.png', content_type: 'image/png')

course_8 = Game.create!(name: "High Octane Drift", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/457330/High_Octane_Drift/", description:"Entrez dans le monde de la compétition professionnelle et gagnez des séries en ligne parmi des centaines d'autres joueurs pour devenir la légende vivante. Achetez, accordez,
  échangez, unissez et conquérez la scène de la dérive.", category_id: Category.where(name: :Course).ids[0])
course_8.photo.attach(io: img_course_8, filename: 'hod.png', content_type: 'image/png')

course_9 = Game.create!(name: "Project Torque", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/1112400/Project_Torque__Free_2_Play_MMO_Racing_Game/", description:"Le MMO Racer classique gratuit de la fin des années 2000
  revient en ligne avec tous vos modes de jeu préférés comme Sim, Drift, Drag, CTF et Thunder Alley.", category_id: Category.where(name: :Course).ids[0])
course_9.photo.attach(io: img_course_9, filename: 'project_torque.png', content_type: 'image/png')

course_10 = Game.create!(name: "TrackMania Nations Forever", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/11020/TrackMania_Nations_Forever/", description:"Un jeu gratuit dans le vrai sens du terme, TrackMania Nations Forever vous met aux commandes de bolides surpuissants avec
  lesquels vous allez défier la gravité et le sens commun en mode solo comme en mode multijoueur.", category_id: Category.where(name: :Course).ids[0])
course_10.photo.attach(io: img_course_10, filename: 'trackmanian.png', content_type: 'image/png')





# Indépendant
#----------------------------------------------- IMG INDEPENDANT ---------------------------------------------------------
img_inde_1 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1145360/header.jpg')
img_inde_2 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/945360/header.jpg')
img_inde_3 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1097150/header_alt_assets_0.jpg')
img_inde_4 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/105600/header.jpg')
img_inde_5 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/413150/header.jpg')
img_inde_6 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/438040/header.jpg')
img_inde_7 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/466240/header.jpg')
img_inde_8 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/113200/header.jpg')
img_inde_9 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1173370/header.jpg')
img_inde_10 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/219150/header.jpg')
#----------------------------------------------- IMG INDEPENDANT FIN -----------------------------------------------------

inde_1 = Game.create!(name: "Hades", price: 20.99, solo:"Solo", link:"https://store.steampowered.com/app/1145360/Hades/", description:"Défiez le dieu des morts et frayez-vous un chemin hors des Enfers dans ce rogue-like en mode dungeon crawler développé par les créateurs de Bastion,
  Transistor et Pyre.", category_id: Category.where(name: :Indépendant).ids[0])
inde_1.photo.attach(io: img_inde_1, filename: 'hades.png', content_type: 'image/png')

inde_2 = Game.create!(name: "Among Us", price: 3.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/945360/Among_Us/", description:"Un jeu de société en ligne et local de travail d'équipe et de trahison pour 4 à 10 joueurs ...
  dans l'espace!", category_id: Category.where(name: :Indépendant).ids[0])
inde_2.photo.attach(io: img_inde_2, filename: 'Among_Us.png', content_type: 'image/png')

inde_3 = Game.create!(name: "Fall Guys: Ultimate Knockout", price: 19.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/1097150/Fall_Guys_Ultimate_Knockout/", description:"Fall Guys est un party-game massivement multijoueur
  réunissant jusqu'à 60 joueurs en ligne.", category_id: Category.where(name: :Indépendant).ids[0])
inde_3.photo.attach(io: img_inde_3, filename: 'fall_guys.png', content_type: 'image/png')

inde_4 = Game.create!(name: "Terraria", price: 9.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/105600/Terraria/", description:"Creuser, survivre, explorer, construire ! Tout est possible dans ce jeu d'aventure bourré d'action.
  Pack de 4 jeux également disponible !
.", category_id: Category.where(name: :Indépendant).ids[0])
inde_4.photo.attach(io: img_inde_4, filename: 'terraria.png', content_type: 'image/png')

inde_5 = Game.create!(name: "Stardew Valley", price: 13.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/413150/Stardew_Valley/", description:"Vous avez hérité de l'ancienne parcelle de ferme de votre grand-père à Stardew Valley. Armé d'outils à la main et de quelques pièces de monnaie, vous avez décidé de commencer votre nouvelle vie.
  Pouvez-vous apprendre à vivre de la terre et transformer ces champs envahis par la végétation en une maison prospère?", category_id: Category.where(name: :Indépendant).ids[0])
inde_5.photo.attach(io: img_inde_5, filename: '.png', content_type: 'image/png')

inde_6 = Game.create!(name: "Shakes and Fidget", price: nil, solo:"solo", link:"https://store.steampowered.com/app/438040/Shakes_and_Fidget/", description:"Shakes et Fidget est un RPG fantasy amusant et satyrique, et a même été récompensé ! Tu n'en reviens pas ? Plus de 50 millions de joueurs ont fait de SFGAME l'un des jeux
  en ligne les plus populaires au monde !", category_id: Category.where(name: :Indépendant).ids[0])
inde_6.photo.attach(io: img_inde_6, filename: 'Shakes_and_Fidget.png', content_type: 'image/png')

inde_7 = Game.create!(name: "Deceit", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/466240/Deceit/", description:"Deceit teste votre instinct et la confiance dans un jeu de tir à la première personne multijoueur rempli d'action. Vous vous réveillez dans un environnement inconnu au son de la voix du Game Master,
  entouré de cinq autres personnes. Un tiers de votre groupe a été infecté par un virus, qui va s'échapper?
", category_id: Category.where(name: :Indépendant).ids[0])
inde_7.photo.attach(io: img_inde_7, filename: 'deceit.png', content_type: 'image/png')

inde_8 = Game.create!(name: "The Binding of Isaac", price: 4.99, solo:"solo", link:"https://store.steampowered.com/app/113200/The_Binding_of_Isaac/?l=french", description:"The Binding of Isaac est un jeu d'action, de tir et de rôle. Suivez Isaac dans son aventure et utilisez les trésors étranges qui vont lui donner des pouvoirs spéciaux
  pour combattre les créatures mystérieuses et trouver le chemin vers la liberté.", category_id: Category.where(name: :Indépendant).ids[0])
inde_8.photo.attach(io: img_inde_8, filename: 'The_Binding_of_Isaac.png', content_type: 'image/png')

inde_9 = Game.create!(name: "Slapshot: Rebound", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/1173370/Slapshot_Rebound/", description:"Slapshot: Rebound est un jeu multijoueur basé sur la physique dans lequel vous jouez un match de hockey de style arcade. Pas de bouton de tir, pas de colle de rondelle, pas de RNG. C'est à vous et à votre équipe de prendre le contrôle de la rondelle, de passer,
  de tirer, de surpasser vos adversaires. Jouez avec vos amis ou faites équipe avec d'autres joueurs de Slapshot!", category_id: Category.where(name: :Indépendant).ids[0])
inde_9.photo.attach(io: img_inde_9, filename: '.png', content_type: 'image/png')

inde_10 = Game.create!(name: "Hotline Miami", price: 8.49, multi:"Multijoueur", link:"https://store.steampowered.com/app/219150/Hotline_Miami/", description:"Hotline Miami est un jeu à l'action explosive qui déborde de brutalité brute, de fusillades et de
  combats rapprochés sanglants et violents.", category_id: Category.where(name: :Indépendant).ids[0])
inde_10.photo.attach(io: img_inde_10, filename: 'Hotline_Miami.png', content_type: 'image/png')









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










# RPG
#----------------------------------------------- IMG RPG ---------------------------------------------------------
img_rpg_1 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1199030/header.jpg')
img_rpg_2 = URI.open('https://store.steampowered.com/app/435150/Divinity_Original_Sin_2__Definitive_Edition/')
img_rpg_3 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/292030/header.jpg')
img_rpg_4 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/374320/header.jpg')
img_rpg_5 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/377160/header.jpg')
img_rpg_6 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/761890/header.jpg')
img_rpg_7 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/455300/header.jpg')
img_rpg_8 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/871100/header.jpg')
img_rpg_9 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1416260/header.jpg')
img_rpg_10 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1276730/header.jpg')
img_rpg_11 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1086940/header.jpg')
#----------------------------------------------- IMG RPG FIN -----------------------------------------------------
rpg_1 = Game.create!(name: "Tainted Grail: Conquest", price: 16.79, multi:"Multijoueur", link:"https://store.steampowered.com/app/1199030/Tainted_Grail_Conquest/", description:"Un hybride unique, basé sur l'histoire, entre RPG et roguelikes de construction de deck. Explorez les cartes en constante évolution,
  combattez avec des ennemis mortels et découvrez ce qui est arrivé à l'île maudite d'Avalon.", category_id: Category.where(name: :RPG).ids[0])
rpg_1.photo.attach(io: img_rpg_1, filename: 'Tainted_Grail_Conquest.png', content_type: 'image/png')

rpg_2 = Game.create!(name: "Divinity: Original Sin 2", price: 44.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/435150/Divinity_Original_Sin_2__Definitive_Edition/", description:"Le célèbre RPG auquel tous les autres sont comparés, par les créateurs de Baldur's Gate 3. Constituez votre groupe.
  Apprenez à maîtriser des phases de combat tactiques. Formez un groupe de 4 aventuriers avec d'autres joueurs.", category_id: Category.where(name: :RPG).ids[0])
rpg_2.photo.attach(io: img_rpg_2, filename: 'diviniyorisin.png', content_type: 'image/png')

rpg_3 = Game.create!(name: "The Witcher 3: Wild Hunt", price: 29.99, solo:"Solo", link:"https://store.steampowered.com/app/292030/The_Witcher_3_Wild_Hunt/", description:"Alors que la guerre fait rage à travers les royaumes du Nord, vous acceptez le contrat de votre vie et
  partez à la recherche de l'enfant de la prophétie, une arme vivante capable de changer le monde.", category_id: Category.where(name: :RPG).ids[0])
rpg_3.photo.attach(io: img_rpg_3, filename: 'tw3.png', content_type: 'image/png')

rpg_4 = Game.create!(name: "Dark Souls III", price: 59.99, solo:"Solo", link:"https://store.steampowered.com/app/374320/DARK_SOULS_III/", description:"Dark Souls repousse une fois de plus ses limites avec un nouveau chapitre
  ambitieux de la série légendaire et encensée par la critique. Préparez-vous à embrasser les ténèbres !
", category_id: Category.where(name: :RPG).ids[0])
rpg_4.photo.attach(io: img_rpg_4, filename: 'ds3.png', content_type: 'image/png')

rpg_5 = Game.create!(name: "Fallout 4", price: 29.99, solo:"Solo", link:"https://store.steampowered.com/app/377160/Fallout_4/", description:"Bethesda Game Studios, studio de développement maintes fois récompensé à l'origine de Fallout 3 et de The Elder Scrolls V: Skyrim, vous invite à découvrir Fallout 4, *
  leur titre le plus ambitieux à ce jour incarnant la nouvelle génération du jeu en monde ouvert.", category_id: Category.where(name: :RPG).ids[0])
rpg_5.photo.attach(io: img_rpg_5, filename: 'Fallout_4.png', content_type: 'image/png')

rpg_6 = Game.create!(name: "Albion Online", price: nil, solo:"Solo", link:"https://store.steampowered.com/app/761890/Albion_Online/", description:"Albion Online est un RPG fantaisie sandbox, avec économie gérée par les joueurs,
système de combat sans classe et batailles PvP intenses. Explorez un vaste monde ouvert rempli de dangers et d’opportunités. ", category_id: Category.where(name: :RPG).ids[0]) # Verifier le nb de joueurs
rpg_6.photo.attach(io: img_rpg_6, filename: 'albion.png', content_type: 'image/png')

rpg_7 = Game.create!(name: "Deuterium Wars", price: nil, solo:"Solo", link:"https://store.steampowered.com/app/455300/Deuterium_Wars/", description:"Deuterium Wars est un jeu de tir 2D rapide. Créez votre propre avion et plongez-vous dans une bataille acharnée avec d'autres joueurs. Ce qui vous attend: un système de jeu de rôle complet, de l'artisanat,
  du trading et bien plus encore sur un seul serveur pour toutes les plateformes.", category_id: Category.where(name: :RPG).ids[0])
rpg_7.photo.attach(io: img_rpg_7, filename: 'Deuterium_Wars.png', content_type: 'image/png')

rpg_8 = Game.create!(name: "Animyst", price: nil, solo:"Solo", link:"https://store.steampowered.com/app/871100/Animyst/", description:"Réveillez-vous de la mort et maîtrisez les éléments dans un terrain vague hostile et déchiré par la guerre. Animyst est gratuit et ouvert au jeu tout en étant encore à un stade précoce de développement.
  Rien ne vous sera donné à la cuillère lorsque vous explorerez et construirez dans un monde brutal à serveur unique qui ne s'efface jamais.", category_id: Category.where(name: :RPG).ids[0])
rpg_8.photo.attach(io: img_rpg_8, filename: 'Tera.png', content_type: 'image/png')

rpg_9 = Game.create!(name: "SpellForce 3: Versus Edition", price: nil, solo:"Solo", link:"https://store.steampowered.com/app/1416260/SpellForce_3_Versus_Edition/", description:"SpellForce 3: Versus Edition vous offre la possibilité d’accéder gratuitement aux champs de bataille d’Éo, où vous pourrez tester vos compétences en RTS
  contre des adversaires IA ou contre d’autres joueurs humains.", category_id: Category.where(name: :RPG).ids[0])
rpg_9.photo.attach(io: img_rpg_9, filename: 'Tera.png', content_type: 'image/png')

rpg_10 = Game.create!(name: "Undungeon Arena", price: nil, solo:"Solo", link:"", description:"Devenez un gladiateur de l'espace et combattez dans plusieurs arènes dans cette expérience roguelite
  autonome se déroulant dans l'univers Undungeon.", category_id: Category.where(name: :RPG).ids[0])
rpg_10.photo.attach(io: img_rpg_10, filename: 'Tera.png', content_type: 'image/png')

rpg_11 = Game.create!(name: "Baldur's Gate III", price: 59.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/1086940/Baldurs_Gate_3/", description:"Constituez votre groupe et retournez aux Royaumes Oubliés dans une histoire d'amitié, de trahison, de sacrifice et de survie, sur fond d'attrait
  du pouvoir absolu.", category_id: Category.where(name: :RPG).ids[0])
rpg_11.photo.attach(io: img_rpg_11, filename: 'Tera.png', content_type: 'image/png')








# Simulation
#----------------------------------------------- IMG SIMULTATION ---------------------------------------------------------
img_simulation_1 = URI.open('http://www.sportune.fr/wp-content/uploads/2020/09/FIFA-21.jpeg')
img_simulation_2 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1222670/header_french.jpg')
img_simulation_3 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/227300/header.jpg')
img_simulation_4 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/787860/header.jpg')
img_simulation_5 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/518790/header.jpg')
img_simulation_6 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1258080/header.jpg')
img_simulation_7 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/552990/header.jpg')
img_simulation_8 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/236390/header.jpg')
img_simulation_9 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/380600/header.jpg')
img_simulation_10 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/442120/header.jpg')
#----------------------------------------------- IMG SIMULTATION FIN -----------------------------------------------------
simulation_1 = Game.create!(name: "EA SPORTS FIFA 21", price: 59.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/1313860/EA_SPORTS_FIFA_21/", description:"Jouez au Jeu universel plus de 17 000 joueurs, plus de 700 équipes, dans plus de 90 stades et plus de 30 championnats du
  monde entier.", category_id: Category.where(name: :Simulation).ids[0])
simulation_1.photo.attach(io: img_simulation_1, filename: 'fifa.png', content_type: 'image/png')


simulation_2 = Game.create!(name: "The Sims 4", price: 39.99, solo:"Solo", link:"https://store.steampowered.com/app/1222670/The_Sims_4/", description:"Profitez du pouvoir de créer et de contrôler des personnages dans un monde virtuel où il n'y a
  aucune règle. Soyez puissant et libre, amusez-vous et jouez avec la vie !", category_id: Category.where(name: :Simulation).ids[0])
simulation_2.photo.attach(io: img_simulation_2, filename: 'sims4.png', content_type: 'image/png')


simulation_3 = Game.create!(name: "Euro Truck Simulator 2", price: 19.99, solo:"Solo", link:"https://store.steampowered.com/app/227300/Euro_Truck_Simulator_2/", description:"Voyagez à travers l'Europe en tant que roi de la route, un camionneur qui livre des marchandises importantes sur des distances impressionnantes!
  Avec des dizaines de villes à explorer, votre endurance, vos compétences et votre vitesse seront poussées à leurs limites.", category_id: Category.where(name: :Simulation).ids[0])
simulation_3.photo.attach(io: img_simulation_3, filename: 'eurotrucksim.png', content_type: 'image/png')


simulation_4 = Game.create!(name: "Farming Simulator 19", price: 19.99, multi:"multi", link:"https://store.steampowered.com/app/787860/Farming_Simulator_19/", description:"La franchise plusieurs fois millionnaire fait un bond de géant, avec une révision totale de son moteur graphique. La simulation agricole ultime se pare ainsi de visuels
  et d'effets saisissants de réalisme, tout en offrant l'expérience de jeu farming la plus riche et complète jamais réalisée.", category_id: Category.where(name: :Simulation).ids[0])
simulation_4.photo.attach(io: img_simulation_4, filename: 'farmsim.png', content_type: 'image/png')


simulation_5 = Game.create!(name: "The Hunter: Call of the Wild", price: 60.00, multi:"Multijoueur", link:"https://store.steampowered.com/app/518790/theHunter_Call_of_the_Wild/", description:"Découvrez un jeu de chasse à l'atmosphère inégalée prenant place dans un monde ouvert réaliste à la beauté qui vous coupera le souffle.
  Plongez dans la campagne solo à l'ambiance captivante ou partagez cette ultime expérience de chasse avec des amis.", category_id: Category.where(name: :Simulation).ids[0])
simulation_5.photo.attach(io: img_simulation_5, filename: 'thehunter.png', content_type: 'image/png')


simulation_6 = Game.create!(name: "Shop Titans : Craft et Créer", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/1258080/Shop_Titans__Craft_et_Crer/", description:"Shop Titans est la simulation-JDR de magasin ultime. Fabriquez de l’équipement toujours plus puissant, approvisionnez vos rayons et vendez aux aspirants aventuriers...
  avec un bénéfice ! Engagez des héros pour explorer des donjons et rapporter de précieux composants pour votre artisanat.", category_id: Category.where(name: :Simulation).ids[0])
simulation_6.photo.attach(io: img_simulation_6, filename: 'wowarships.png', content_type: 'image/png')


simulation_7 = Game.create!(name: "World of Warships", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/582500/We_Were_Here/", description:"Participez à des combats navals épiques free-to-play à bord de plus de 300 vaisseaux historiques et profitez du superbe équilibre de stratégie et de combat en temps réel offert par World of Warships.
  Agrémentez votre flotte de drapeaux, camouflages, modifications, commandants talentueux, et plus !", category_id: Category.where(name: :Simulation).ids[0])
simulation_7.photo.attach(io: img_simulation_7, filename: 'world-of-warships.png', content_type: 'image/png')


simulation_8 = Game.create!(name: "War Thunder", price: nil, solo:"Solo", link:"https://store.steampowered.com/app/236390/War_Thunder/", description:"War Thunder est un jeu de combat MMO gratuit dédié aux véhicules militaires de la Seconde Guerre mondiale et la Guerre de Corée. Combattez dans les airs,
  sur terre ou sur mer avec des joueurs de toutes nations et dans un jeu en développement constant.", category_id: Category.where(name: :Simulation).ids[0])
simulation_8.photo.attach(io: img_simulation_8, filename: '.png', content_type: 'image/png')


simulation_9 = Game.create!(name: "Fishing Planet", price: nil, solo:"Solo", link:"https://store.steampowered.com/app/380600/Fishing_Planet/", description:"Fishing Planet est un simulateur de pêche en ligne réaliste et unique à la première personne réalisé par des pêcheurs passionnés et pour des pêcheurs. Choisissez l’équipement de pêche, attrapez les poissons,
  explorez le monde et améliorez vos compétences dans de très nombreux lieux de pêche", category_id: Category.where(name: :Simulation).ids[0])
simulation_9.photo.attach(io: img_simulation_9, filename: 'fushingplan.png', content_type: 'image/png')


simulation_10 = Game.create!(name: "Pinball FX3", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/442120/Pinball_FX3/", description:"Les classiques Williams™ Pinball sont disponibles, dont Fish Tales™ GRATUITEMENT ! Pinball FX3 est le MEILLEUR jeu de flipper jamais créé possédant la communauté la plus dévouée.
  Les duels multijoueur, les tournois et les parties de ligue offrent des possibilités infinies de s'affronter.", category_id: Category.where(name: :Simulation).ids[0])
simulation_10.photo.attach(io: img_simulation_10, filename: 'Pinball_FX3.png', content_type: 'image/png')







# Sport
#----------------------------------------------- IMG SPORT ---------------------------------------------------------
img_sport_1 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1287590/header.jpg')
img_sport_2 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1100600/header.jpg')
img_sport_3 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1163550/header.jpg')
img_sport_4 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1259980/header.jpg')
img_sport_5 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1311330/header.jpg')
img_sport_6 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1452830/header.jpg')
img_sport_7 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1059110/header.jpg')
img_sport_8 = URI.open('https://www.gwenaelgirod.com/assets/images/rocket-league.jpg')
img_sport_9 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1181790/header.jpg')
img_sport_10 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1332840/header.jpg')
#----------------------------------------------- IMG SPORT FIN -----------------------------------------------------
sport_1 = Game.create!(name: "Tour de France 2020", price: 39.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/1287590/Tour_de_France_2020/", description:"Affrontez le peloton sur les 21 étapes du Tour de France grâce au jeu officiel ! Pour enfiler le maillot jaune, Il vous faudra prendre des risques, attaquer, sprinter et maitriser votre tactique de course.
  Défiez vos amis dans le mode challenge sprint ou descente !", category_id: Category.where(name: :Simulation).ids[0])
sport_1.photo.attach(io: img_sport_1, filename: 'tourdefrance.png', content_type: 'image/png')

sport_2 = Game.create!(name: "Football Manager 2020", price: 54.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/1100600/Football_Manager_2020/", description:"Exprimez-vous et menez la saison comme vous l'entendez dans votre club, dès novembre. Chaque décision compte dans FM20, avec de nouvelles fonctionnalités, une mécanique de jeu améliorée, un nouveau niveau de réalisme et des
  entraîneurs qui prennent les rênes de leur destin et de leur club.", category_id: Category.where(name: :Simulation).ids[0])
sport_2.photo.attach(io: img_sport_2, filename: '.png', content_type: 'image/png')

sport_3 = Game.create!(name: "Captain Tsubasa: Rise of New Champions", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/1163550/Captain_Tsubasa_Rise_of_New_Champions/", description:"Captain Tsubasa: Rise of New Champions est un jeu de football arcade qui apporte une touche de fraîcheur au football avec de l'action palpitante et les
  tirs surpuissants qui ont rendu la licence célèbre.", category_id: Category.where(name: :Simulation).ids[0])
sport_3.photo.attach(io: img_sport_3, filename: 'captaintsub.png', content_type: 'image/png')

sport_4 = Game.create!(name: "RIDE 4", price: 0.0, multi:"Multijoueur", link:"https://store.steampowered.com/app/1259980/RIDE_4/", description:"Êtes-vous prêt à vivre la meilleure expérience de pilotage qui soit ? RIDE 4 va réveiller votre âme de compétiteur avec ses centaines de motos,
  ses dizaines de circuits et un niveau de réalisme encore jamais atteint.", category_id: Category.where(name: :Simulation).ids[0])
sport_4.photo.attach(io: img_sport_4, filename: 'ride4.png', content_type: 'image/png')

sport_5 = Game.create!(name: "Pro Basketball Manager 2021", price: 26.50, solo:"solo", link:"https://store.steampowered.com/app/1311330/Pro_Basketball_Manager_2021/", description:"Le jeu de management de basketball le plus complet est de retour ! Endossez le rôle d’entraîneur de votre propre équipe
  avec Pro Basketball Manager 2021.", category_id: Category.where(name: :Simulation).ids[0])
sport_5.photo.attach(io: img_sport_5, filename: 'Pro_Basketball_Manager_2021.png', content_type: 'image/png')

sport_6 = Game.create!(name: "Disc Space", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/1452830/Disc_Space/", description:"Disc Space est un jeu multijoueur Ultimate Frisbee avec jusqu'à 10 joueurs en ligne. Jouez avec vos amis ou trouvez-en de nouveaux.
  Le plaisir illimité est garanti.", category_id: Category.where(name: :Simulation).ids[0])
sport_6.photo.attach(io: img_sport_6, filename: 'Disc_Space.png', content_type: 'image/png')

sport_7 = Game.create!(name: "Super Buckyball Tournament", price: nil, multi:"Multijoueur", link:"https://cdn.cloudflare.steamstatic.com/steam/apps/1059110/header.jpg", description:"Super Buckyball Tournament est un jeu de sports d'équipe multijoueur gratuit où vous emmenez l'un des 7 personnages uniques, chacun avec ses propres super pouvoirs, dans des matchs en
  ligne intenses pour un jeu compétitif ou occasionnel.", category_id: Category.where(name: :Simulation).ids[0])
sport_7.photo.attach(io: img_sport_7, filename: 'superbuck.png', content_type: 'image/png')

sport_8 = Game.create!(name: "Rocket League", price: nil, multi:"Multijoueur", link:"https://www.rocketleague.com/fr/", description:"ocket League est un mélange de jeu de voiture et de jeu de Football (soccer). Par équipe ou en solo, le joueur contrôle un véhicule et peut ainsi frapper dans un ballon, avec pour objectif de marquer dans le but adverse. Le joueur peut utiliser une jauge de boost
  pour accélérer et/ou se maintenir dans les airs, sauter pour réceptionner une balle et initier un envol pour atteindre des balles en l'air.", category_id: Category.where(name: :Simulation).ids[0])
sport_8.photo.attach(io: img_sport_8, filename: 'rocketl.png', content_type: 'image/png')

sport_9 = Game.create!(name: "Circle of Sumo: Online Rumble!", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/1181790/Circle_of_Sumo_Online_Rumble/", description:"Utilisez votre ventre à votre avantage! Défiez des joueurs du monde entier et grimpez dans les classements. Combattez dans l'arène: chargez, frappez, esquivez et battez
  les adversaires. Amusons-nous bien!", category_id: Category.where(name: :Simulation).ids[0])
sport_9.photo.attach(io: img_sport_9, filename: 'Circle_of_Sumo_Online_Rumble.png', content_type: 'image/png')

sport_10 = Game.create!(name: "Rise and Fall", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/1332840/Rise_and_Fall/", description:"Rise and Fall est un jeu de sport à 4 joueurs avec des joueurs coopératifs ou IA sur un canapé.Des équipes de deux se battent sur une bombe à retardement pour marquer des buts.Échangez instantanément entre
  3 styles de jeu", category_id: Category.where(name: :Simulation).ids[0])
sport_10.photo.attach(io: img_sport_10, filename: 'Rise_and_Fall.png', content_type: 'image/png')













# Stratégie
#----------------------------------------------- IMG STRATEGIE ---------------------------------------------------------
img_strategie_1 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/594570/header.jpg')
img_strategie_2 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/289070/header_french.jpg')
img_strategie_3 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/813780/header.jpg')
img_strategie_4 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/281990/header.jpg')
img_strategie_5 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/526870/header.jpg')
img_strategie_6 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/1158310/header.jpg')
img_strategie_7 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/312450/header.jpg')
img_strategie_8 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/531640/header_alt_assets_3_french.jpg')
img_strategie_9 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/839910/header.jpg')
img_strategie_10 = URI.open('https://cdn.cloudflare.steamstatic.com/steam/apps/370070/header.jpg')
#----------------------------------------------- IMG STRATEGIE FIN -----------------------------------------------------
strategie_1 = Game.create!(name: "Total War: WARHAMMER II", price: 59.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/594570/Total_War_WARHAMMER_II/", description:"Suite du titre à succès Total War: WARHAMMER, Total War: WARHAMMER II présente une campagne à couper le souffle, constituée d'exploration, d'expansion et de conquête à travers
  le Nouveau Monde.", category_id: Category.where(name: :Stratégie).ids[0])
strategie_1.photo.attach(io: img_strategie_1, filename: 'totalwarwarhamer.png', content_type: 'image/png')

strategie_2 = Game.create!(name: "Sid Meier's Civilization VI", price: 59.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/289070/Sid_Meiers_Civilization_VI/", description:"Choisissez votre dirigeant parmi un choix de 20 personnages historiques, incluant Catherine
  de Médicis.", category_id: Category.where(name: :Stratégie).ids[0])
strategie_2.photo.attach(io: img_strategie_2, filename: 'CivilizationVI.png', content_type: 'image/png')

strategie_3 = Game.create!(name: "Age of Empires II: Definitive Edition", price: 19.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/813780/Age_of_Empires_II_Definitive_Edition/", description:"Age of Empires II: Definitive Edition fête le 20e anniversaire de l'une des franchises de jeux de stratégie les plus populaires au monde avec des graphismes
  époustouflants 4K Ultra HD, une bande originale entièrement remasterisée et du contenu inédit", category_id: Category.where(name: :Stratégie).ids[0])
strategie_3.photo.attach(io: img_strategie_3, filename: 'Age_of_Empires_II_Definitive_Edition.png', content_type: 'image/png')

strategie_4 = Game.create!(name: "Stellaris", price: 39.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/281990/Stellaris/", description:"Explorez les merveilles de la galaxie dans ce jeu de grande stratégie futuriste créé par Paradox Development Studio. Côtoyez des races extraterrestres variées,
  découvrez de nouveaux mondes étranges aux événements inattendus et étendez votre empire. ", category_id: Category.where(name: :Stratégie).ids[0])
strategie_4.photo.attach(io: img_strategie_4, filename: 'Stellaris.png', content_type: 'image/png')

strategie_5 = Game.create!(name: "Satisfactory", price: 23.99, multi:"Multijoueur", link:"https://store.steampowered.com/app/526870/Satisfactory/", description:"Satisfactory est un jeu de construction d’usines en vue à la première personne dans un monde ouvert avec une touche d’exploration et de combats. Jouez seul ou entre amis, explorez une planète inconnue,
  construisez des usines à plusieurs niveaux et des tapis roulants à l’infini !", category_id: Category.where(name: :Stratégie).ids[0])
strategie_5.photo.attach(io: img_strategie_5, filename: 'Satisfactory.png', content_type: 'image/png')

strategie_6 = Game.create!(name: "Crusader Kings II", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/1158310/Crusader_Kings_III/", description:"Paradox Development Studio vous propose la suite d'un des jeux de stratégie les plus populaires de tous les temps. Issu d'une longue lignée mêlant histoire et stratégie de grande envergure,
  Crusader Kings III se dote au passage de nombreux moyens inédits pour garantir la prospérité de votre maison.", category_id: Category.where(name: :Stratégie).ids[0])
strategie_6.photo.attach(io: img_strategie_6, filename: 'Crusader_Kings_III.png', content_type: 'image/png')

strategie_7 = Game.create!(name: "Order of Battle: World War II", price: nil, solo:"solo", link:"https://store.steampowered.com/app/312450/Order_of_Battle_World_War_II/", description:"Order of Battle: World War II est une bouffée d'air frais pour tous les fans de stratégie. C'est un jeu qui élève le wargaming à un nouveau niveau en améliorant chaque
  élément du jeu et en redémarrant le genre pour une nouvelle génération de joueurs.", category_id: Category.where(name: :Stratégie).ids[0])
strategie_7.photo.attach(io: img_strategie_7, filename: 'Order_of_Battle_World_War_II.png', content_type: 'image/png')

strategie_8 = Game.create!(name: "Eternal Card Game", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/531640/Eternal_Card_Game/", description:"Les six-coups et la sorcellerie se rencontrent dans Eternal, le nouveau jeu de cartes de stratégie aux choix illimités et au plaisir inégalé. Eternal apporte un rythme et une finition AAA aux possibilités
  infinies d'un jeu de cartes de stratégie approfondi. Vous ne serez limité que par votre propre créativité.", category_id: Category.where(name: :Stratégie).ids[0])
strategie_8.photo.attach(io: img_strategie_8, filename: 'Eternal_Card_Game.png', content_type: 'image/png')

strategie_9 = Game.create!(name: "Mythgard", price: nil, multi:"Multijoueur", link:"https://store.steampowered.com/app/839910/Mythgard/", description:"Bienvenue à Mythgard, une CCG cyberpunk fantastique de héros, de dieux et de bêtes mythiques. Maîtrisez les systèmes uniques de voies et de mana dans votre ascension vers le sommet ou jouez en équipe avec un ami.
  Les nouveaux joueurs peuvent utiliser le code WelcomeChallenger pour obtenir 20 packs gratuits et plus pour commencer leur aventure.", category_id: Category.where(name: :Stratégie).ids[0])
strategie_9.photo.attach(io: img_strategie_9, filename: 'Mythgard.png', content_type: 'image/png')

strategie_10 = Game.create!(name: "Wyrmsun", price: nil, solo:"solo", link:"https://store.steampowered.com/app/582500/We_Were_Here/", description:"Wyrmsun est un jeu de stratégie en temps réel qui présente des éléments de mythologie,
  d'histoire et de fiction.", category_id: Category.where(name: :Stratégie).ids[0])
strategie_10.photo.attach(io: img_strategie_10, filename: 'Wyrmsun.png', content_type: 'image/png')






#------------------------------------------------------------- GAMES END -----------------------------------------------------------




# # 2D

# game41 = Game.create!(name: "Among Us", price: 3.19, multi:"Multijoueur", link:"https://store.steampowered.com/app/582500/We_Were_Here/", description:"",, category_id: Category.where(name: :tutu).ids[0])
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
