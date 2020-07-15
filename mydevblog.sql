-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 15 juil. 2020 à 19:14
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mydevblog`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `titre` text NOT NULL,
  `image` text NOT NULL,
  `date de publication` date NOT NULL,
  `auteur` text NOT NULL,
  `texte` text NOT NULL,
  `extrait` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `image`, `date de publication`, `auteur`, `texte`, `extrait`) VALUES
(1, 'LES ANIMAUX EN VOIE DE DISPARITION', 'tigre.jpg', '2020-01-14', 'Andre Pierre-Louis', 'Le terme de disparition désigne, dans les domaines de la biologie ou de l’écologie, l’extinction d’une espèce ou d’un groupe d’espèces. S’il s’agit d’un processus relativement commun dans l’histoire de l’espèce animale sur Terre (les dinosaures par exemple, il y a 65 millions d’années), un facteur en particulier accélère la situation : l’intervention humaine.\r\n\r\nAu cours des 5 derniers siècles, l’Homme a causé l’extinction de plus de 800 espèces ! Selon les données officielles, environ 5000 espèces sont en voie de disparition, les effectifs ayant considérablement augmenté au cours des 10 dernières années. L’ensemble du règne animal est en état d’alerte, des mammifères jusqu’aux amphibiens, en passant par les invertébrés. Voici une courte liste des animaux tristement emblématiques de cette situation.\r\n\r\nLe tigre est l’un des animaux les plus menacés dans le monde, chassé pour sa fourrure, ses yeux, ses os et même ses organes. Sur le marché illégal, sa peau peut coûter jusqu’à 50.000$. La chasse et la perte de son habitat sont les principales raisons de sa disparition.\r\n\r\nLes tortues : présentée comme la plus grande tortue du monde, la tortue Luth, est capable de nager dans le monde entier, des tropiques jusqu’aux régions polaires. Elle profite de cette grande tournée pour se mettre à la recherche d’un nid et de nourriture pour ses petits. Mais depuis les années 80, sa population est en chute libre, passant de 150.000 à 20.000 spécimens recensés. Les tortues confondent souvent les plastiques flottant dans l’océan avec de la nourriture, qui finissent par provoquer leur mort.\r\n\r\nL’éléphant de Sumatra est un animal majestueux mais l’une des espèces les plus menacées de tout le règne animal. En raison de la déforestation et d’une chasse incontrôlée, il risque de disparaître au cours des vingt prochaines années.', 'Le terme de disparition désigne, dans les domaines de la biologie ou de l’écologie, l’extinction d’une espèce ou d’un groupe d’espèces.'),
(2, 'Quels sont les principaux facteurs de disparition des animaux ?', 'oiseau.jpg', '2020-02-18', 'Andre Pierre-Louis', 'D’un point de vue scientifique, l’extinction est un phénomène naturel qui se produit depuis tout temps. Cependant, notre influence et nos actions ont largement impacté sur la survie de centaines d’espèces en voie de disparition. L’action directe de l’Homme est, vous vous en doutez, au centre de ce problème majeur. Même s’il en existe des centaines, les principaux problèmes rencontrés sont la chasse, la pêche, le commerce illégal et l’introduction d’espèces animales non-indigènes.\r\n\r\nLa pratique de la chasse illégale a ainsi causé la disparition de plusieurs espèces et la mise en danger de beaucoup d’autres au niveau national et mondial (lions, léopards, éléphants, rhinocéros et buffles, chinchillas…).\r\n\r\nL’intense activité de pêche sur les côtes joue également un grand rôle dans la disparition d’espèces marines. Au Chili, par exemple, les sardines, les anchois et le chinchard sont en voie de disparition.\r\n\r\nLe commerce des espèces animale et leur exportation à des fins scientifiques, purement décoratives (trophées, tapis…) ou pour la reproduction, ont mis en péril la faune dans certaines régions du monde. Un des cas les plus dramatiques est celui du perroquet Amazone, arrachés à son habitat pour finir dans une cage.\r\n\r\nL’introduction d’espèces animales non-indigènes dans certaines régions a considérablement modifié l’équilibre écologique. S’il est vrai que certains animaux s’adaptent plus facilement à de nouveaux écosystèmes, d’autres sont beaucoup plus fragiles. Les prédateurs n’étant pas assez nombreux pour réguler la reproduction des espèces non-indigènes, cette situation a conduit à une concurrence avec les autres espèces. La nature fonctionne comme un ensemble harmonieux et tout changement dans un de ses composant affecte son équilibre.', 'D’un point de vue scientifique, l’extinction est un phénomène naturel qui se produit depuis tout temps.'),
(3, 'Le loup : biologie et présence en France', 'loup.jpg', '2020-03-17', 'Andre Pierre-Louis', 'Le loup gris (Canis lupus) appartient à l’ordre des Carnivores et à la famille des Canidés qui compte une quarantaine d’espèces dont les renards, chacals, coyotes, lycaons etc … Il habite tous les types de milieux naturels de l’hémisphère Nord, des montagnes européennes aux plaines boisées, en passant par tous les types de peuplement forestiers, les plateaux cultivés de Castille en Espagne, l’Arctique, la toundra, les steppes de Mongolie, les montagnes du Caucase, de l’Altaï ou du Pamir jusqu’à 5500 m d’altitude et les zones semi-désertiques d’Arabie saoudite ou d’Israël.\r\nLe loup est une espèce sociale dont les populations sont structurées en groupes familiaux appelés meutes. Celles-ci se composent d’un couple dominant reproducteur et de ses jeunes de l’année, parfois d’un ou deux jeunes de l’année précédente. En France, les meutes comportent généralement deux à six individus en fin d’hiver, rarement plus de huit.  Le territoire d’une meute varie en fonction de l’abondance et de la répartition des proies. Dans les Alpes, sa superficie est de l’ordre de 200 à 400 km2.\r\n\r\nLe couple dominant ne se reproduit qu’une fois par an. Une portée compte environ 4 à 8 louveteaux.La mortalité des jeunes est importante et intervient surtout au cours de leur première année. Ils quittent le groupe entre 2 et 4 ans. Ces loups en dispersion représentent 10 à 40 % de l’effectif d’une population. Vulnérables et peu expérimentés, ces jeunes parcourent des espaces qu’ils ne connaissent pas et doivent chasser seuls.\r\n\r\nLe territoire d’une meute varie en fonction de l’abondance et de la répartition des proies. Dans les Alpes, sa superficie est de l’ordre de 200 à 400 km2.\r\n\r\nLe loup peut consommer des insectes et des fruits comme des grands mammifères mais il est principalement dépendant des ongulés. Il peut aussi se nourrir d’animaux qu’il trouve morts dans la nature (charognes).\r\n\r\nCe prédateur est capable de s’adapter à des situations très diverses, ce qui lui permet d’exploiter l’ensemble des populations d’ongulés d’une région. Pour survivre, il doit disposer de ressources abondantes et accessibles toute l’année. Les ongulés sauvages (chamois, mouflons, chevreuils, cerfs, sangliers…) constituent ses proies principales. Le loup ne se maintiendrait pas en l’absence de cette faune sauvage.\r\n\r\nComme l’activité cynégétique régresse dans certaines régions, l’arrivée des loups contribuera à réguler les ongulés sauvages. Le loup ajuste ses effectifs aux ressources disponibles et ne provoque jamais la disparition de ses proies. Les loups s’installent préférentiellement dans les sites qui présentent les plus importantes densités de grands herbivores sauvages. On observe alors, au cours des premières années, une réduction plus ou moins sensible de l’effectif des ongulés. A la suite d’une diminution des ressources, la mortalité naturelle des jeunes loups augmente et un équilibre s’établit.\r\n\r\nCependant, quelle que soit la densité de ces proies naturelles, les tentatives de prédation sur le bétail persistent, essentiellement du printemps à l’automne. Il existe des solutions éprouvées pour limiter l’impact du loup sur les troupeaux domestiques.\r\n\r\nPrésence en France\r\nLe loup est l’un des carnivores qui occupait la plus vaste aire de répartition dans le monde (ensemble de l’hémisphère nord). A la fin du 18ème siècle, il y avait entre 10 et 20 000 loups en France (estimations à partir d’une moyenne de 6000 loups tués annuellement).\r\nL’espèce était présente du bord de la mer à la haute montagne.\r\nAprès une persécution organisée, l’espèce a disparu au cours des années 1930. Les derniers loups vivaient en Dordogne, en Charente, dans la Vienne et la Haute-Vienne. Dans les Alpes, l’espèce avait déjà disparu depuis une trentaine d’années.\r\n', 'Le loup gris (Canis lupus) appartient à l’ordre des Carnivores et à la famille des Canidés qui compte une quarantaine d’espèces.'),
(4, 'Y a-t-il des requins près des côtes françaises ?', 'requin.jpg', '2020-04-14', 'Andre Pierre-Louis', 'En France métropolitaine, les attaques de requins sont inexistantes. Toutefois, les requins sont bien présents dans les eaux bordant notre pays, que ce soit du côté de l’Atlantique ou de la Méditerranée. Seulement, ils ne s’approchent que très rarement des côtes et ne sont pas dangereux en soi.\r\n\r\nEn effet, les requins ne sont pas les mangeurs d’hommes si souvent décriés. Très craintifs, ils ont plutôt tendance à fuir l’Homme. Les rares attaques de requins ont lieu lorsque l’animal se sent attaqué ou lorsqu’il confond le baigneur avec une proie, tel qu’un phoque.\r\n\r\nIl existe au large des côtes françaises de nombreuses espèces de requins. En Méditerranée, ce sont pas moins de 40 espèces de requins qui se côtoient contre 100 dans l’océan Atlantique. Certains animaux ne mesurent qu’1,5 mètre de long quand d’autres peuvent mesurer jusqu’à 12 mètres ! Mais rassurez-vous, la plupart préfère rester dans les grandes profondeurs des océans.\r\n\r\nDepuis le Moyen-Âge, ce sont seulement 100 attaques de requin qui ont été recensées en Méditerranée. En France, la dernière attaque mortelle remonte à 1989 entre la Corse et l’Italie. Mais l’homme attaqué n’était autre qu’un plongeur-chasseur qui avait accroché à sa ceinture de nombreux poissons morts. Les spécialistes sont donc convaincus que c’est l’odeur de ces poissons qui a attiré le requin, plus que l’homme en lui-même.\r\n\r\n\r\nLe requin incriminé le plus souvent dans ces cas est le grand requin blanc, qui peut atteindre les 6 mètres de long et dont la zone de présence délimite généralement un triangle entre la Sicile, la Sardaigne et la Tunisie. Mais d’autres requins tout aussi impressionnants que ce grand prédateur des mers évoluent dans les eaux françaises. Toutefois, la majorité, comme le requin-pélerin ou le requin-renard par exemple, sont complètement inoffensifs.', 'En France métropolitaine, les attaques de requins sont inexistantes. Toutefois, les requins sont bien présents dans les eaux bordant notre pays.'),
(5, 'LA GRANDE BARRIÈRE DE CORAIL', 'Grande-barriere-de-corail.png', '2020-05-12', 'Andre Pierre-Louis', 'Située dans l’océan Pacifique, la Grande barrière de corail australienne est le plus grand système corallien et la plus grande structure vivante de la planète. Inscrite au Patrimoine mondial de l’Unesco, elle est l’une des sept merveilles naturelles du monde. Elle s’étend sur 344 400 km², une superficie immense qui la rend visible depuis l’espace. \r\n\r\nSans conteste l’une des merveilles du patrimoine écologique mondial, la Grande barrière de corail se compose de 3 000 systèmes différents de récifs, 600 îles tropicales et quelque 300 bancs de corail. Ce dédale d’habitats complexes abrite une incroyable variété de plantes et d\'animaux aquatiques, de la vénérable tortue de mer aux poissons de récif en passant par les 134 espèces de requins et de raies et la multitude d’algues marines.\r\n\r\nDes eaux turquoises, des coraux kaléidoscopiques, une faune et une flore abondantes font de la grande barrière l\'une des attractions touristiques les plus populaires au monde. Le récif dispose d’une valeur économique incroyable qui représente 6 milliards d’euros par an pour l\'économie australienne et génère près de 69 000 emplois à temps plein. Les industries comme le tourisme et la pêche s’appuient sur un récif en bonne santé mais au-delà de l’aspect économique, la grande barrière est avant tout un sanctuaire marin dont l’importance écologique, historique et symbolique est cruciale pour le monde entier.', 'Située dans l’océan Pacifique, la Grande barrière de corail australienne est le plus grand système corallien et la plus grande structure vivante de la planète.'),
(6, 'Tout savoir sur les hérissons', 'hérissons.jpg', '2020-06-16', 'Andre Pierre-Louis', 'Tout le monde a un faible pour les hérissons, malgré leurs épines. Ils sont malheureusement souvent tués par les voitures, les machines du jardin (débroussailleuse, tondeuse…), étouffés par les déchets abandonnés (sac plastique…), attaqués par les animaux domestiques... Pourtant, le hérisson est un précieux auxiliaire du jardinier, il dévore les limaces, escargots, vers, chenilles, larves et autres insectes nuisibles ! Voici nos conseils pour l\'accueillir comme il se doit dans son jardin, et le protéger des nombreux dangers de notre monde.\r\n\r\nRôle d\'auxiliaire au jardin\r\nLe hérisson est un auxiliaire du jardinier, que ce dernier doit préservé dans son jardin. Le hérisson limite considérablement la présence, et les dégâts, des limaces et escargots. Il agit la nuit, comme un fidèle gardien du jardin.\r\n\r\nCarte d\'identité du hérisson\r\nDe son nom latin Erinaceus europaeus, le hérisson se reconnait facilement à son corps couvert de piquants à pointe blanche. Il ne dépasse pas les 30 cm de long, et son poids oscille entre 400 et 1800g. C\'est un animal semi-nocturne, il dort la majeure partie de la journée et chasse la nuit venue sur un territoire de 3 à 10 ha, d\'où son besoin de se déplacer de jardin en jardin. Le hérisson hiverne durant les mois d\'hiver. La période idéale pour le voir actif est la tombée de la nuit du mois d’avril jusqu’au mois de septembre. Il fait alors beaucoup de bruits : grognant, soufflant, et s\'il est inquiété il pousse de petits cris et se met en boule. Si vous l\'approchez calmement, le hérisson ne s’enfuira pas.\r\nLe hérisson est un excellent grimpeur et nageur, il creuse aussi très facilement pour passer sous les clôtures.\r\n\r\nSon habitat\r\nLe hérisson vit dans les bois de feuillues, les haies, les lisières de forêt, les talus, les bocages, dans nos jardins... Il se confectionne un nid de feuilles mortes et d\'herbes sèches pour hiverner d\'octobre à avril. En été, il se déplace souvent, changeant régulièrement d\'abris.\r\n\r\nSon régime alimentaire\r\nLe hérisson est un carnivore qui se régale de limaces, escargots, scarabées, vers de terre, et nourriture pour chats ! Il cherche sa nourriture en reniflant le sol, il a un odorat et une ouïe plus développés que la vue.\r\nIl se révèle un précieux auxiliaire du jardinier qui veille sur le jardin potager durant la nuit et en chasse les indésirables, amateurs de légumes.\r\nSon cycle de vie\r\nL’accouplement a lieu entre mai et juin. La gestation dure 5 à 6 semaines. La mère met bas 4 à 6 petits durant le début de l\'été (juin-juillet). Elle les allaite jusqu’à leur sevrage et départ du nid, 2 mois après la naissance, soit au début de l\'automne. C\'est alors une course contre la montre : les jeunes doivent manger suffisamment pour survivre à l\'hiver. Ce premier hiver est le premier risque de mortalité chez le hérisson.\r\n\r\nComment savoir si mon jardin abrite un hérisson ?\r\nLes indices de la présence d\'un hérisson dans son jardin sont :\r\n\r\n- Ses crottes : déposées au hasard, cylindriques jusqu’à 10 mm de diamètre et 4 cm de long, d’un noir brillant, avec des restes d’insectes et d\'élytres.\r\n\r\n- Ses empreintes : laissées dans un sol meuble et humide, elles ressemblent à de petites mains à 5 doigts de 2,5 cm de long et de large pour les pattes antérieures et de 3cm pour les membres postérieurs.\r\n\r\nNombreux sont les dangers que recèlent notre monde de machines pour les hérissons. Protégé par la loi depuis le 17 avril 1981, le hérisson \"ne fait pas de vieux os\" : seulement 4 hérissons sur mille atteignent l’âge de 10 ans, et 25% d’entre eux ne survivent pas d’une année sur l’autre.\r\n\r\nLes causes de mortalité chez le hérisson sont :\r\n\r\nIntoxiqué par les anti-limaces et autres pesticides (26% des morts de hérissons), directement ou indirectement (en mangeant des insectes ou des limaces eux-mêmes empoisonnés) ;\r\n\r\nÉcrasé par une voiture, en voulant la traverser une route (25%) ;\r\n\r\nNoyé après être tombé dans une piscine ou un bassin, aux bords abrupts qui l\'empêche de pouvoir en sortir (10%), malgré qu\'il soit bon nageur, il s\'épuise à essayer de sortir de l\'eau ;\r\n\r\nMort d’épuisement et de faim, en se retrouvant coincé dans un fossé, un filet de culture ou autre piège (13%) ;\r\n\r\nBrûlé en même temps qu’un tas de feuilles\r\nPassé sous les lames des débroussailleuses ou des tondeuses ;\r\n\r\nAttaqué par ses prédateurs naturels, ou des animaux domestiques : fouine, blaireau, renard, chat, chien.\r\n\r\nLes pièges à bière, quel effet sur le hérisson ?\r\nEmployez de la bière sans alcool pour piéger les limaces. Car les hérissons boivent la bière et alcoolisé, cet animal n’a plus le réflexe de se mettre en boule pour se protéger de ses prédateurs, ce qui le rend très vulnérable !\r\n\r\nComment protéger le hérisson de tous ces dangers\r\n\r\nDes petits gestes simples peuvent sauver la vie des hérissons de passage dans votre jardin, et mieux, l\'aider pour sa survie :\r\n\r\nPour éviter toute noyade dans votre piscine ou bassin aux parois abruptes, laissez flotter une planche de bois qui fera office de radeau ;\r\n\r\nContre l’intoxication et l\'empoisonnement des hérissons, utilisez des produits naturels portant la mention spéciale : \"non toxique pour les hérissons\". Ou mieux employez des \"remèdes naturels\" et astuces contre les limaces ;\r\n\r\nVérifiez tous tas de branchages et feuilles avant d’y mettre le feu. Ou mieux, utilisez un incinérateur que vous remplirez à la main, car brûler ces déchets verts dans le jardin est interdit par la loi ;\r\n\r\nAttention aux filets de culture, vérifiez souvent qu’aucun animal n’est pris dedans (hérissons comme oiseaux !) ;\r\n\r\nNettoyez votre jardin de tout objet plastique : sachet, anneaux, gobelet… sont autant de pièges mortels pour les hérissons ;\r\nAttention aux trous et autres fossés desquels le hérisson ne pourrait plus sortir, faisant de lui une cible facile pour les prédateurs ;\r\nSi la clôture qui délimite votre jardin est haute et enterrée en profondeur, installez un tuyau ciment d’au moins 30cm de diamètre, pour faciliter ses entrées et sorties de votre jardin ;\r\n\r\nNe manipulez jamais un bébé hérisson à mains nues, vous laisseriez sur lui une odeur qui pousserait ses parents à l’abandon, ou pire au meurtre ;\r\n\r\nNe donnez pas de lait aux hérissons, ils y sont intolérants ;\r\n\r\nLaissez quelques feuilles mortes aux hérissons, pour leur nid ;\r\n\r\nAssurez-vous qu\'il ait des lieux de chasse : prairie fleurie, haie mixte bien touffue à la base, buissons et plantes vivaces hautes ;\r\n\r\nEnfin, installez un abri à hérisson pour qu’il se sente bien chez vous, et en sécurité vis à vis des prédateurs.', 'Le hérisson limite considérablement la présence, et les dégâts, des limaces et escargots. Il agit la nuit, comme un fidèle gardien du jardin.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
