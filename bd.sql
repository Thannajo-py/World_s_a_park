DROP TABLE IF EXISTS avis;
DROP TABLE IF EXISTS parks;
DROP TABLE IF EXISTS users;

CREATE TABLE  users(
  id int NOT NULL AUTO_INCREMENT,
  nom varchar(20) NOT NULL,
  prenom varchar(20) NOT NULL,
  pseudo varchar(20) NOT NULL,  
  password varchar (20) NOT NULL,
  age tinyint NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE  parks(
  id int NOT NULL AUTO_INCREMENT,
  nom varchar(20) NOT NULL,
  continent varchar(20) NOT NULL,
  categorie varchar(30) NOT NULL,  
  photo varchar (50) NOT NULL,
  descriptif text Not NULL,
  localisation text NOT NULL,
  url varchar (50) NOT NULL,	
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8; 


CREATE TABLE avis (
  id int NOT NULL AUTO_INCREMENT,
  contenu text NOT NULL,  
  note tinyint NOT NULL,
  id_users int NOT NULL,
  id_parks int NOT NULL,  
  PRIMARY KEY (id),
  CONSTRAINT avis_ibfk_1 FOREIGN KEY (id_users) REFERENCES parks (id),
  CONSTRAINT avis_ibfk_2 FOREIGN KEY (id_parks) REFERENCES users (id)    
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO parks (nom, continent, categorie, photo, descriptif, localisation, url)
VALUES
("Grutas Park ", "Europe", "changement d'époque", "imagesParks/GrutasPark.jpg" ,
 "Red dead redemption. Faites un saut en arrière dans les jours du Stalinisme, vivez les joies du goulag, immergez-vous dans la chaleureuse étreinte du totalitarisme.
 Et si vous avez un petit creux, savourez un bortsch «Nostalgija», un cocktail «œil de cerf» ou une gelée d'amidon «Réminiscence» au café. 
 Le Grutas Park, invention de l'entrepreneur Viliumas Malinauskas qui a acheté des dizaines de statues abandonnées et vandalisées de grandes figures du communisme après l'indépendance de la Lituanie, est en fait censé être un rappel des sombres jours du totalitarisme. 
 Mais tout n'y est pas noir: il y a un terrain de jeu pour les enfants et un train goulag, qui rend sympathique le fait d'être envoyé en Sibérie dans un wagon à bétail au beau milieu de l'hiver. 
 Assurez-vous qu'ils n'aient pas lu La Ferme des animaux avant de se diriger vers la ferme pédagogique. ", 
 "https://www.google.fr/maps/place/Parc+Gr%C5%ABtas/@54.0225867,24.0764777,17.75z/data=!4m5!3m4!1s0x46e09dd09b6a53cf:0x745224b235c1361a!8m2!3d54.0220866!4d24.0798364", 
 "http://grutoparkas.lt/"),
("Love Land", "Asie", "sexe", "imagesParks/LoveLand.jpg",
 "Let's get it on. La Corée du Sud a un des taux de fécondité les plus bas au monde, avec seulement 1,2 enfant par femme, un niveau bien en dessous du seuil de renouvellement des générations. 
 Et la situation ne s'améliore pas vraiment, avec encore beaucoup de mariages arrangés et une société très pudibonde. 
 La solution pourrait venir de l'île de Jeju, une destination très prisée pour les lunes de miel, où le parc Love Land a ouvert ses portes en 2004. 
 Pour mettre les couples mal à l'aise dans une humeur procréative, le parc invite ses visiteurs à «apprécier la beauté naturelle de l'amour,» avec des attractions telles que les Montagnes aux Seins, le Grand Rocher du Pénis ou encore le vélo à masturbation.",
 "https://www.google.fr/maps/place/Jeju+Love+Land/@33.4508879,126.4892912,16.5z/data=!4m5!3m4!1s0x350cfb0dc3ef2029:0x6e07f36623d7070d!8m2!3d33.451638!4d126.49", 
 "http://www.jejuloveland.com/language/eng.htm"),
("Bonbon Land", "Europe", "Mascotte ridicule", "imagesParks/BonbonLand.jpg", 
"BonbonLand est un parc d'attractions ouvert en 1992, par Michale Spangsberg1, le parc proposait à l’origine la visite de l’usine de bonbons de la marque danoise, alors propriétaire. 
Il a été racheté en 2007 par le groupe Parques Reunidos.", 
"https://www.google.fr/maps/place/BonbonLand/@55.2608657,11.8609343,17z/data=!3m1!4b1!4m5!3m4!1s0x4652bfdd57282f35:0x47fb49ff775b5e99!8m2!3d55.2608627!4d11.863123", 
"https://www.bonbonland.dk/"),
("Plopsaland", "Europe", "Mascotte ridicule", "imagesParks/Plopsaland.jpg", 
 "Plopsaland est un parc d'attractions belge situé à Adinkerque2 dans la commune de La Panne, dans la Province de Flandre-Occidentale. 
 Le parc est ouvert sous ce nom depuis le 29 avril 2000, avant cette date il se nommait Meli Park. 
 Créé en 1935, Meli Park est fondé par un fabricant de miel, Alberic-Joseph Florizoone. 
 Le thème du parc est alors les abeilles et le monde de l'apiculture. Dans les années 1990, le parc perd son image et les visiteurs le boudent peu à peu. 
 La famille Florizoone décide de vendre en 1999 à Studio 100." ,
 "https://www.google.fr/maps/place/Plopsaland,+8660+De+Panne,+Belgique/@51.0828546,2.596282,17z/data=!4m13!1m7!3m6!1s0x47dc968dfc44fd05:0x663a75452b195567!2sPlopsaland,+8660+De+Panne,+Belgique!3b1!8m2!3d51.0828513!4d2.5984707!3m4!1s0x47dc968dfc44fd05:0x663a75452b195567!8m2!3d51.0828513!4d2.5984707", 
 "https://www.plopsalanddepanne.be/fr"),
("Holy Land Experience", "Amerique du Nord", "changement d'époque", "imagesParks/HolyLandExperience.jpg",
 "Attendez-vous à être inspiré », c’est le slogan ambitieux du Holy Land à Orlando, un parc d’attractions ayant pour thème l’Ancien et le Nouveau Testament.
  Un retour 2000 ans en arrière dans un Jérusalem en miniature, avec des manuscrits précieux et des attractions dans un décor de temples et des cavernes plus vrais que nature. 
  Entre promenade spirituelle engagée et expérience biblique originale, Holy Land souhaite « illuminer le véritable sens de votre vie ». La messe est dite…",
  "https://www.google.fr/maps/place/Holy+Land+Experience/@28.4959716,-81.4345464,17z/data=!3m1!4b1!4m5!3m4!1s0x88e77eacb004afb3:0x20f3d8b528c81c23!8m2!3d28.4961221!4d-81.4325483",
  "https://holylandexperience.com/"),
  ("Walibi Belgium", "Europe", "Mascotte ridicule", "imagesParks/WalibiBelgium.jpg",
   "L’histoire de Walibi Belgium commence lorsque l'homme d'affaires belge Eddy Meeùs, de retour du Zaïre (ancien Congo belge), se lance dans une nouvelle activité. 
   Le parc d'attractions est inauguré le 26 juillet 1975 sous le nom de Walibi.
   À la suite de son succès, Eddy Meeùs créé le groupe Walibi composé au total de onze sites en activité. Après sa vente en 1997, Walibi Belgium appartient à plusieurs propriétaires. 
   Le groupe américain Premier Parks — devenu par la suite Six Flags — le détient de 1997 à 2004, le parc est ensuite la propriété du fonds d'investissement privé londonien Palamon Capital Partners de 2004 à 2006. 
   En 2006, le parc est vendu au groupe français compagnie des Alpes.
   Considéré comme faisant partie aujourd'hui du patrimoine belge, Walibi Belgium a été pendant de nombreuses années une tribune de la bande dessinée belge avec des contrats de licence pour Les Aventures de Tintin, Boule et Bill, Bob et Bobette et Lucky Luke.",
   "https://www.google.fr/maps/place/Walibi+Belgium/@50.7018637,4.5918475,17z/data=!3m1!4b1!4m5!3m4!1s0x47c17d8aec109b59:0xec0b5286181703eb!8m2!3d50.7018603!4d4.5940362",
   "https://www.walibi.be/fr"),
   ("Erotikaland", "Amerique du Sud", "sexe", "imagesParks/Erotikaland.jpg", 
    "À Sao Paolo, au Brésil, après plusieurs années de construction, le parc d'attractions érotique Erotikaland a enfin ouvert ses portes.
	Le parc qui promet de nombreux jeux érotiques promet aussi de vous faire vivre des sensations fortes.
	Qualifié de 'Disneyland pour adultes', vous pourrez notamment y conduire des autos tamponneuses en forme de pénis.
	Le parc a coûté 22.4 millions de dollars et il contiendra une salle de cinéma avec sièges vibrants ainsi qu'un mystérieux train nommé 'le train du plaisir'.
	Quant aux collations que vous pourrez y manger, on promet essentiellement des aliments aphrodisiaques.
	Toutefois, il y a une chose qui est formellement interdite à Erotikaland et c'est de faire l'amour sur les lieux,
	Ceux et celles qui seraient tentés de se laisser aller à leurs pulsions devront donc prévoir une chambre d'hôtel à proximité!", 
	" https://www.google.fr/maps/place/S%C3%A3o+Paulo,+%C3%89tat+de+S%C3%A3o+Paulo,+Br%C3%A9sil/@-23.6815315,-46.8754908,10z/data=!3m1!4b1!4m5!3m4!1s0x94ce448183a461d1:0x9ba94b08ff335bae!8m2!3d-23.5557714!4d-46.6395571",
	"https://royaume-de-licorne.fr/"),
	("La belle époque" , "Europe", "changement d'époque", "imagesParks/LaBelleEpoque.jpg",
	"Situé au Parc des Arènes de Cimiez à Nice, le Parc d'attractions, la BELLE ÉPOQUE vous invite à faire un saut dans le temps en famille ! 
	Découvrez des manèges tout droit sortis des années 30, rénovés et remis au goût du jour. 
	Mais attention, ces magnifiques manèges  demandent la participation des parents pour fonctionner. Un vrai moment de partage avec vos enfants !
	LA BELLE ÉPOQUE, PARC D'ATTRACTIONS À PROPULSION PARENTALE.
	Le parc d’attractions « Belle époque » a été créé par Mr Speidel, un passionnée, collectionneur de manèges et d'automates, qui continu à s'amuser en créant des univers pour les enfants. 
	Dès 2 ans, les enfants pourront s'amuser sur véritables pièces de collection d’Art Forain rénovées et colorées. 
	Pour fonctionner, les manèges demande la participation des parents : pédaler sur un vélo pour faire tourner le carrousel, tourner la barre d'un gouvernail pour faire tanguer le bateau, pousser les balançoires...
	Les parents comme les enfants deviennent ainsi les acteurs de ces attractions qu’ils animent. Des manèges écologiques et participatifs ! On adore !",
	"https://www.google.fr/maps/place/Nice/@43.7032932,7.182777,12z/data=!3m1!4b1!4m5!3m4!1s0x12cdd0106a852d31:0x40819a5fd979a70!8m2!3d43.7101728!4d7.2619532", 
	"https://www.divertissements06.fr/"); 