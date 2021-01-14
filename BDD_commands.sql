/*
 les commandes à executer pour créer la base de données du projet
 */

create database netflix_like;

/*table des utilisateurs*/
create table users(
    ID_user INT,
    pseudo VARCHAR(30),
    password VARCHAR(30)
);
alter table users add constraint primary key (ID_user);

/*table des genres de films*/
create table genres(
    ID_genre INT,
    nom VARCHAR(50)
);
alter table genres add constraint primary key (ID_genre);

/*table des films*/
create table films(
    ID_film INT,
    ID_genre INT,
    titre VARCHAR(150),
    synopsis VARCHAR(5000),
    release_date DATE,
    duree VARCHAR(10),
    lien_ytb VARCHAR(200),
    img VARCHAR(200)
);
alter table films add constraint primary key (ID_film);
alter table films add constraint foreign key (ID_genre) references genres(ID_genre);

/*table des films favoris par utilisateur*/
create table favoris(
    ID_favori INT,
    ID_user INT,
    ID_genre INT
);
alter table favoris add constraint primary key (ID_favori);
alter table favoris add constraint foreign key (ID_user) references users(ID_user);
alter table favoris add constraint foreign key (ID_genre) references genres(ID_genre);

/*remplissage des genres de films*/
insert into genres values (1, 'Action/Aventure');
insert into genres values (2, 'Science-Fiction');
insert into genres values (3, 'Horreur');
insert into genres values (4, 'Fantastique');
insert into genres values (5, 'Thriller/Drame');

/*remplissage des films*/
insert into films values (1, 1, 'Gravity',
                          'Pour sa première expédition à bord d’une navette spatiale, le docteur Ryan Stone, brillante experte en ingénierie médicale, accompagne l’astronaute chevronné Matt Kowalsky. Mais alors qu’il s’agit apparemment d’une banale sortie dans l’espace, une catastrophe se produit. Lorsque la navette est pulvérisée, Stone et Kowalsky se retrouvent totalement seuls, livrés à eux-mêmes dans l’univers. Le silence assourdissant autour d’eux leur indique qu’ils ont perdu tout contact avec la Terre - et la moindre chance d’être sauvés. Peu à peu, ils cèdent à la panique, d’autant plus qu’à chaque respiration, ils consomment un peu plus les quelques réserves d’oxygène qu’il leur reste. Mais c’est peut-être en s’enfonçant plus loin encore dans l’immensité terrifiante de l’espace qu’ils trouveront le moyen de rentrer sur Terre...',
                          '2013-10-23', '1h30', 'https://www.youtube.com/watch?v=k7RY4Br9jog', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/wmUeEacsFZzDndaeOtNNmy26rYJ.jpg');
insert into films values (2, 1, 'American Sniper',
                          'Tireur d’élite des Navy SEAL, Chris Kyle est envoyé en Irak dans un seul but : protéger ses camarades. Sa précision chirurgicale sauve d’innombrables vies humaines sur le champ de bataille et, tandis que les récits de ses exploits se multiplient, il décroche le surnom de "La Légende". Cependant, sa réputation se propage au-delà des lignes ennemies, si bien que sa tête est mise à prix et qu’il devient une cible privilégiée des insurgés. Malgré le danger, et l’angoisse dans laquelle vit sa famille, Chris participe à quatre batailles décisives parmi les plus terribles de la guerre en Irak, s’imposant ainsi comme l’incarnation vivante de la devise des SEAL : "Pas de quartier !" Mais en rentrant au pays, Chris prend conscience qu’il ne parvient pas à retrouver une vie normale.',
                          '2015-02-18', '2h12', 'https://www.youtube.com/watch?v=v4ig1Hxdmj4', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/i1U46OwMc6vlm7OoSUKfqUH615e.jpg');
insert into films values (3, 1, 'Spectre',
                          'Un message cryptique surgi du passé entraîne James Bond dans une mission très personnelle à Mexico puis à Rome, où il rencontre Lucia Sciarra, la très belle veuve d\’un célèbre criminel. Bond réussit à infiltrer une réunion secrète révélant une redoutable organisation baptisée Spectre. Pendant ce temps, à Londres, Max Denbigh, le nouveau directeur du Centre pour la Sécurité Nationale, remet en cause les actions de Bond et l’existence même du MI6, dirigé par M. Bond persuade Moneypenny et Q de l’aider secrètement à localiser Madeleine Swann, la fille de son vieil ennemi, Mr White, qui pourrait détenir le moyen de détruire Spectre. Fille de tueur, Madeleine comprend Bond mieux que personne… En s’approchant du cœur de Spectre, Bond va découvrir qu’il existe peut-être un terrible lien entre lui et le mystérieux ennemi qu’il traque…',
                          '2015-11-10', '2h30', 'https://www.youtube.com/watch?v=DqVVeRHU68E','https://www.themoviedb.org/t/p/w600_and_h900_bestv2/672kUEMtTHcaVYSVY4eiHEliHFa.jpg');
insert into films values (4, 1, 'Django Unchained',
                          'Dans le sud des États-Unis, deux ans avant la guerre de Sécession, le Dr King Schultz, un chasseur de primes allemand, fait l’acquisition de Django, un esclave qui peut l’aider à traquer les frères Brittle, les meurtriers qu’il recherche. Schultz promet à Django de lui rendre sa liberté lorsqu’il aura capturé les Brittle – morts ou vifs. Alors que les deux hommes pistent les dangereux criminels, Django n’oublie pas que son seul but est de retrouver Broomhilda, sa femme, dont il fut séparé à cause du commerce des esclaves… Lorsque Django et Schultz arrivent dans l’immense plantation du puissant Calvin Candie, ils éveillent les soupçons de Stephen, un esclave qui sert Candie et a toute sa confiance. Le moindre de leurs mouvements est désormais épié par une dangereuse organisation de plus en plus proche… Si Django et Schultz veulent espérer s’enfuir avec Broomhilda, ils vont devoir choisir entre l’indépendance et la solidarité, entre le sacrifice et la survie…',
                          '2013-01-16', '2h44', 'https://www.youtube.com/watch?v=K2XjgsfzDrU','https://www.themoviedb.org/t/p/w600_and_h900_bestv2/7oWY8VDWW7thTzWh3OKYRkWUlD5.jpg');
insert into films values (5, 1, 'The Dark Knight Rises',
                          'Il y a huit ans, Batman a disparu dans la nuit : lui qui était un héros est alors devenu un fugitif. S’accusant de la mort du procureur-adjoint Harvey Dent, le Chevalier Noir a tout sacrifié au nom de ce que le commissaire Gordon et lui-même considéraient être une noble cause. Et leurs actions conjointes se sont avérées efficaces pour un temps puisque la criminalité a été éradiquée à Gotham City grâce à larsenal de lois répressif initié par Dent. Mais c’est un chat – aux intentions obscures – aussi rusé que voleur qui va tout bouleverser. À moins que ce ne soit l’arrivée à Gotham de Bane, terroriste masqué, qui compte bien arracher Bruce à l’exil qu’il s’est imposé. Pourtant, même si ce dernier est prêt à endosser de nouveau la cape et le casque du Chevalier Noir, Batman n’est peut-être plus de taille à affronter Bane…',
                          '2012-07-20', '2h44', 'https://www.youtube.com/watch?v=OiqPQ7L_C00','https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vzvKcPQ4o7TjWeGIn0aGC9FeVNu.jpg');
insert into films values (6, 2, 'Avatar',
                          'Malgré sa paralysie, Jake Sully, un ancien marine immobilisé dans un fauteuil roulant, est resté un combattant au plus profond de son être. Il est recruté pour se rendre à des années-lumière de la Terre, sur Pandora, où de puissants groupes industriels exploitent un minerai rarissime destiné à résoudre la crise énergétique sur Terre. Parce que l’atmosphère de Pandora est toxique pour les humains, ceux-ci ont créé le Programme Avatar, qui permet à des " pilotes " humains de lier leur esprit à un avatar, un corps biologique commandé à distance, capable de survivre dans cette atmosphère létale. Ces avatars sont des hybrides créés génétiquement en croisant l’ADN humain avec celui des Na’vi, les autochtones de Pandora. Sous sa forme d’avatar, Jake peut de nouveau marcher. On lui confie une mission d’infiltration auprès des Na’vi, devenus un obstacle trop conséquent à l’exploitation du précieux minerai. Mais tout va changer lorsque Neytiri, une très belle Na’vi, sauve la vie de Jake...',
                          '2009-12-16', '2h42', 'https://www.youtube.com/watch?v=60tCdBxn3E0','https://www.themoviedb.org/t/p/w600_and_h900_bestv2/6EiRUJpuoeQPghrs3YNktfnqOVh.jpg');
insert into films values (7, 2, 'Ghost in the Shell',
                          'Dans un futur proche, le Major est unique en son genre: humaine sauvée d’un terrible accident, son corps aux capacités cybernétiques lui permet de lutter contre les plus dangereux criminels. Face à une menace d’un nouveau genre qui permet de pirater et de contrôler les esprits, le Major est la seule à pouvoir la combattre. Alors qu’elle s’apprête à affronter ce nouvel ennemi, elle découvre qu’on lui a menti : sa vie n’a pas été sauvée, on la lui a volée. Rien ne l’arrêtera pour comprendre son passé, trouver les responsables et les empêcher de recommencer avec d’autres.',
                          '2017-03-29', '1h47', 'https://www.youtube.com/watch?v=AQipnFp8Yxs','https://www.themoviedb.org/t/p/w600_and_h900_bestv2/myRzRzCxdfUWjkJWgpHHZ1oGkJd.jpg');
insert into films values (8, 2, 'Lucy',
                          'A la suite de circonstances indépendantes de sa volonté, une jeune étudiante voit ses capacités intellectuelles se développer à l’infini. Elle « colonise » son cerveau, et acquiert des pouvoirs illimités.',
                          '2014-08-06', '1h29', 'https://www.youtube.com/watch?v=7gPrNpHaFX8','https://www.themoviedb.org/t/p/w600_and_h900_bestv2/kRbpUTRNm6QbLQFPFWUcNC4czEm.jpg');
insert into films values (9, 2, 'Le Labyrinthe',
                          'Quand Thomas reprend connaissance, il est pris au piège avec un groupe d’autres garçons dans un labyrinthe géant dont le plan est modifié chaque nuit. Il n’a plus aucun souvenir du monde extérieur, à part d’étranges rêves à propos d’une mystérieuse organisation appelée W.C.K.D. En reliant certains fragments de son passé, avec des indices qu’il découvre au sein du labyrinthe, Thomas espère trouver un moyen de s’en échapper.',
                          '2014-10-15', '1h54', 'https://www.youtube.com/watch?v=LyPiCH_4Al4','https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ode14q7WtDugFDp78fo9lCsmay9.jpg');
insert into films values (10, 2, 'Interstellar',
                          'Le film raconte les aventures d’un groupe d’explorateurs qui utilisent une faille récemment découverte dans l’espace-temps afin de repousser les limites humaines et partir à la conquête des distances astronomiques dans un voyage interstellaire.',
                          '2014-11-05', '2h49', 'https://www.youtube.com/watch?v=VaOijhK3CRU','https://www.themoviedb.org/t/p/w600_and_h900_bestv2/gEU2QniE6E77NI6lCU6MxlNBvIx.jpg');
insert into films values (11, 3, 'Hereditary',
                          'Lorsque Ellen, matriarche de la famille Graham, décède, sa famille découvre des secrets de plus en plus terrifiants sur sa lignée. Une hérédité sinistre à laquelle il semble impossible d’échapper.',
                          '2018-06-13', '2h06', 'https://www.youtube.com/watch?v=vntI9lAQyyw','https://www.themoviedb.org/t/p/w600_and_h900_bestv2/4GFPuL14eXi66V96xBWY73Y9PfR.jpg');
insert into films values (12, 3, 'Ghostland',
                          'Suite au décès de sa tante, Pauline et ses deux filles héritent d’une maison. Mais dès la première nuit, des meurtriers pénètrent dans la demeure et Pauline doit se battre pour sauver ses filles. Un drame qui va traumatiser toute la famille mais surtout affecter différemment chacune des jeunes filles dont les personnalités vont diverger davantage à la suite de cette nuit cauchemardesque. Tandis que Beth devient une auteur renommée spécialisée dans la littérature horrifique, Vera s’enlise dans une paranoïa destructrice. Seize ans plus tard, la famille est à nouveau réunie dans la maison que Vera et Pauline n’ont jamais quittée. Des évènements étranges vont alors commencer à se produire…',
                          '2018-03-14', '1h31', 'https://www.youtube.com/watch?v=DyRSYcurNJw','https://www.themoviedb.org/t/p/w600_and_h900_bestv2/tt9YSQlArAj6849SQQJ5ryNgcJs.jpg');
insert into films values (13, 3, 'Sinister',
                          'Ellison est un auteur de romans policiers inspirés de faits réels. Dans l’espoir d’écrire un nouveau livre à succès, il emménage avec sa famille dans une maison où les anciens propriétaires ont été retrouvés inexplicablement pendus. Ellison y découvre dans le grenier des bobines 8mm contenant les images de meurtres d’autres familles. Qui a filmé ces tueries et pour quelle raison ? Ellison va tenter de répondre à ces questions tandis que le tueur présumé, une entité surnaturelle présente sur les films, menace de plus en plus sa famille.',
                          '2012-11-07', '1h50', 'https://www.youtube.com/watch?v=4sfzhzRAceE','https://www.themoviedb.org/t/p/w600_and_h900_bestv2/cUXmPG5Dm3XdAeUjucL93KrtkAY.jpg');
insert into films values (14, 3, 'Annabelle',
                          'John Form est certain d’avoir déniché le cadeau de ses rêves pour sa femme Mia, qui attend un enfant. Il s’agit d’une poupée ancienne, très rare, habillée dans une robe de mariée d’un blanc immaculé. Mais Mia, d’abord ravie par son cadeau, va vite déchanter. Une nuit, les membres d’une secte satanique s’introduisent dans leur maison et agressent sauvagement le couple, paniqué. Et ils ne se contentent pas de faire couler le sang et de semer la terreur – ils donnent vie à une créature monstrueuse, pire encore que leurs sinistres méfaits, permettant aux âmes damnées de revenir sur Terre : Annabelle…',
                          '2014-10-08', '1h38', 'https://www.youtube.com/watch?v=LUCOp6efZmg','https://www.themoviedb.org/t/p/w600_and_h900_bestv2/yLsuU2P2SpDYFwtZQ7dtfVAf6TE.jpg');
insert into films values (15, 3, 'The Conjuring : Les dossiers Warren',
                          'Avant Amityville, il y avait Harrisville… Conjuring : Les dossiers Warren, raconte l’histoire horrible, mais vraie, d’Ed et Lorraine Warren, enquêteurs paranormaux réputés dans le monde entier, venus en aide à une famille terrorisée par une présence inquiétante dans leur ferme isolée… Contraints d’affronter une créature démoniaque d’une force redoutable, les Warren se retrouvent face à l’affaire la plus terrifiante de leur carrière…',
                          '2013-07-21', '1h50', 'https://www.youtube.com/watch?v=Mkf9rGLXeuE','https://www.themoviedb.org/t/p/w600_and_h900_bestv2/wVYREutTvI2tmxr6ujrHT704wGF.jpg');
insert into films values (16, 4, 'Wonder Woman',
                          'C’était avant qu’elle ne devienne Wonder Woman, à l’époque où elle était encore Diana, princesse des Amazones et combattante invincible. Un jour, un pilote américain s’écrase sur l’île paradisiaque où elle vit, à l’abri des fracas du monde. Lorsqu’il lui raconte qu’une guerre terrible fait rage à l’autre bout de la planète, Diana quitte son havre de paix, convaincue qu’elle doit enrayer la menace. En s’alliant aux hommes dans un combat destiné à mettre fin à la guerre, Diana découvrira toute l’étendue de ses pouvoirs… et son véritable destin.',
                          '2017-06-07', '2h21', 'https://www.youtube.com/watch?v=CWe308Fpywg','https://www.themoviedb.org/t/p/w600_and_h900_bestv2/gfJGlDaHuWimErCr5Ql0I8x9QSy.jpg');
insert into films values (17, 4, 'Captain Marvel',
                          'Captain Marvel raconte l’histoire de Carol Danvers qui va devenir l’une des super-héroïnes les plus puissantes de l’univers lorsque la Terre se révèle l’enjeu d’une guerre galactique entre deux races extraterrestres.',
                          '2019-03-06', '2h04', 'https://www.youtube.com/watch?v=yTYh2nlCUc0','https://www.themoviedb.org/t/p/w600_and_h900_bestv2/AtsgWhDnHTq68L0lLsUrCnM7TjG.jpg');
insert into films values (18, 4, 'Le Hobbit : Un voyage innatendu',
                          'Dans UN VOYAGE INATTENDU, Bilbon Sacquet cherche à reprendre le Royaume perdu des Nains d’Erebor, conquis par le redoutable dragon Smaug. Alors qu’il croise par hasard la route du magicien Gandalf le Gris, Bilbon rejoint une bande de 13 nains dont le chef n’est autre que le légendaire guerrier Thorin Écu-de-Chêne. Leur périple les conduit au cœur du Pays Sauvage, où ils devront affronter des Gobelins, des Orques, des Ouargues meurtriers, des Araignées géantes, des Métamorphes et des Sorciers… Bien qu’ils se destinent à mettre le cap sur l’Est et les terres désertiques du Mont Solitaire, ils doivent d’abord échapper aux tunnels des Gobelins, où Bilbon rencontre la créature qui changera à jamais le cours de sa vie : Gollum. C’est là qu’avec Gollum, sur les rives d’un lac souterrain, le modeste Bilbon Sacquet non seulement se surprend à faire preuve d’un courage et d’une intelligence inattendus, mais parvient à mettre la main sur le "précieux" anneau de Gollum qui recèle des pouvoirs cachés… Ce simple anneau d’or est lié au sort de la Terre du Milieu, sans que Bilbon s’en doute encore…',
                          '2012-12-12', '2h49', 'https://www.youtube.com/watch?v=tiy7peMH3g8','https://www.themoviedb.org/t/p/w600_and_h900_bestv2/yHA9Fc37VmpUA5UncTxxo3rTGVA.jpg');
insert into films values (19, 4, 'Deadpool',
                          'Deadpool, est l’anti-héros le plus atypique de l’univers Marvel. A l’origine, il s’appelle Wade Wilson : un ancien militaire des Forces Spéciales devenu mercenaire. Après avoir subi une expérimentation hors norme qui va accélérer ses pouvoirs de guérison, il va devenir Deadpool. Armé de ses nouvelles capacités et d’un humour noir survolté, Deadpool va traquer l’homme qui a bien failli anéantir sa vie.',
                          '2016-02-10', '1h48', 'https://www.youtube.com/watch?v=XWtH7anz7io','https://www.themoviedb.org/t/p/w600_and_h900_bestv2/yGSxMiF0cYuAiyuve5DA6bnWEOI.jpg');
insert into films values (20, 4, 'Les animaux fantastiques',
                          'Les aventures de Norbert Dragonneau, l’auteur du livre Les Animaux Fantastiques qu’étudiait Harry Potter. New York, 1926. Le monde des sorciers est en grand danger. Une force mystérieuse sème le chaos dans les rues de la ville : la communauté des sorciers risque désormais d’être à la merci des Fidèles de Salem, groupuscule fanatique des Non-Maj’ (version américaine du "Moldu") déterminé à les anéantir. Quant au redoutable sorcier Gellert Grindelwald, après avoir fait des ravages en Europe, il a disparu… et demeure introuvable. Ignorant tout de ce conflit qui couve, Norbert Dragonneau débarque à New York au terme d’un périple à travers le monde : il a répertorié un bestiaire extraordinaire de créatures fantastiques dont certaines sont dissimulées dans les recoins magiques de sa sacoche en cuir – en apparence – banale. Mais quand Jacob Kowalski, Non-Maj’ qui ne se doute de rien, libère accidentellement quelques créatures dans les rues de la ville, la catastrophe est imminente. Il s’agit d’une violation manifeste du Code International du Secret Magique dont se saisit l’ancienne Auror Tina Goldstein pour récupérer son poste d’enquêtrice. Et la situation s’aggrave encore lorsque Percival Graves, énigmatique directeur de la Sécurité du MACUSA (Congrès Magique des États-Unis d’Amérique), se met à soupçonner Norbert… et Tina. Norbert, Tina et sa sœur Queenie, accompagnés de leur nouvel ami Non-Maj’ Jacob, unissent leurs forces pour retrouver les créatures disséminées dans la nature avant qu’il ne leur arrive malheur. Mais nos quatre héros involontaires, dorénavant considérés comme fugitifs, doivent surmonter des obstacles bien plus importants qu’ils n’ont jamais imaginé. Car ils s’apprêtent à affronter des forces des ténèbres qui risquent bien de déclencher une guerre entre les Non-Maj’ et le monde des sorciers.',
                          '2016-11-16', '2h13', 'https://www.youtube.com/watch?v=jC8xuFcMq20','https://www.themoviedb.org/t/p/w600_and_h900_bestv2/fLsaFKExQt05yqjoAvKsmOMYvJR.jpg');
insert into films values (21, 5, 'Joker',
                          'Le film, qui relate une histoire originale inédite sur grand écran, se focalise sur la figure emblématique de l’ennemi juré de Batman. Il brosse le portrait d’Arthur Fleck, un homme sans concession méprisé par la société.',
                          '2019-10-09', '2h02', 'https://www.youtube.com/watch?v=OoTx1cYC5u8','https://www.themoviedb.org/t/p/w600_and_h900_bestv2/udDclJoHjfjb8Ekgsd4FDteOkCU.jpg');
insert into films values (22, 5, 'Titanic',
                          'Southampton, 10 avril 1912. Le paquebot le plus grand et le plus moderne du monde, réputé pour son insubmersibilité, le "Titanic", appareille pour son premier voyage. Quatre jours plus tard, il heurte un iceberg. A son bord, un artiste pauvre et une grande bourgeoise tombent amoureux.',
                          '1998-01-07', '3h14', 'https://www.youtube.com/watch?v=Quf4qIkD3KY','https://www.themoviedb.org/t/p/w600_and_h900_bestv2/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg');
insert into films values (23, 5, 'Get Out',
                          'Couple mixte, Chris et sa petite amie Rose filent le parfait amour. Le moment est donc venu de rencontrer la belle famille, Missy et Dean lors d’un week-end sur leur domaine dans le nord de l’État. Chris commence par penser que l’atmosphère tendue est liée à leur différence de couleur de peau, mais très vite une série d’incidents de plus en plus inquiétants lui permet de découvrir l’inimaginable.',
                          '2017-05-03', '1h44', 'https://www.youtube.com/watch?v=tygbmB7TrsA','https://www.themoviedb.org/t/p/w600_and_h900_bestv2/tFXcEccSQMf3lfhfXKSU9iRBpa3.jpg');
insert into films values (24, 5, 'Inception',
                          'Dom Cobb est un voleur expérimenté – le meilleur qui soit dans l’art périlleux de l’extraction : sa spécialité consiste à s’approprier les secrets les plus précieux d’un individu, enfouis au plus profond de son subconscient, pendant qu’il rêve et que son esprit est particulièrement vulnérable. Très recherché pour ses talents dans l’univers trouble de l’espionnage industriel, Cobb est aussi devenu un fugitif traqué dans le monde entier qui a perdu tout ce qui lui est cher. Mais une ultime mission pourrait lui permettre de retrouver sa vie d’avant – à condition qu’il puisse accomplir l’impossible : l’inception. Au lieu de subtiliser un rêve, Cobb et son équipe doivent faire l’inverse : implanter une idée dans l’esprit d’un individu. S’ils y parviennent, il pourrait s’agir du crime parfait. Et pourtant, aussi méthodiques et doués soient-ils, rien n’aurait pu préparer Cobb et ses partenaires à un ennemi redoutable qui semble avoir systématiquement un coup d’avance sur eux. Un ennemi dont seul Cobb aurait pu soupçonner l’existence.',
                          '2010-07-21', '2h28', 'https://www.youtube.com/watch?v=9aijfXkbkXg','https://www.themoviedb.org/t/p/w600_and_h900_bestv2/9gk7adHYeDvHkCSEqAvQNLV5Uge.jpg');
insert into films values (25, 5, 'The Platform',
                          'Dans une prison-tour, une dalle transportant de la nourriture descend’étage en étage, un système qui favorise les premiers servis et affame les derniers.',
                          '2020-03-20', '1h34', 'https://www.youtube.com/watch?v=Q6kEozJ4nrw','https://www.themoviedb.org/t/p/w600_and_h900_bestv2/8ZX18L5m6rH5viSYpRnTSbb9eXh.jpg');