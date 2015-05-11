begin
create constraint on (n:`Player`) assert n.`slug` is unique
create constraint on (n:`Player`) assert n.`uri` is unique
create constraint on (n:`Team`) assert n.`slug` is unique
create constraint on (n:`Team`) assert n.`uri` is unique
create constraint on (n:`Tournament`) assert n.`slug` is unique
create constraint on (n:`Tournament`) assert n.`uri` is unique
create constraint on (n:`Trainer`) assert n.`slug` is unique
create constraint on (n:`Trainer`) assert n.`uri` is unique
create (_0:`Tournament` {`name`:"Community Shield", `slug`:"community-shield", `uri`:"http://www.soccerbase.com/tournaments/tournament.sd?comp_id=63"})
create (_1:`Team` {`address1`:"Emirates Stadium", `address2`:"75 Drayton Park", `address3`:"London", `chairman`:"Sir Chips Keswick", `ground`:"Emirates Stadium", `lat`:51.555040, `lng`:-0.108400, `name`:"Arsenal", `nickname`:"The Gunners", `postcode`:"N5 1BU", `slug`:"arsenal-1886", `trainer`:"Arsene Wenger", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=142", `website`:"www.arsenal.com", `yearFormed`:1886})
create (_2:`Player` {`age`:25, `birthday`:"18 Apr, 1990", `birthplace`:"Warszawa, Poland", `height`:"1.96m", `name`:"Wojciech Szczesny", `nationality`:"Poland", `slug`:"wojciech-szczesny-poland", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=51340", `weight`:"83.45kg"})
create (_3:`Team` {`address1`:"Griffin Park", `address2`:"Braemar Road", `address3`:"Brentford, Middlesex", `chairman`:"Cliff Crown", `ground`:"Griffin Park", `lat`:51.488087, `lng`:-0.302524, `name`:"Brentford", `nickname`:"The Bees", `postcode`:"TW8 0NT", `slug`:"brentford-1889", `trainer`:"Mark Warburton", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=378", `website`:"www.brentfordfc.co.uk", `yearFormed`:1889})
create (_4:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Pepsi Arena", `name`:"Legia Warsaw", `nickname`:"", `postcode`:"", `slug`:"legia-warsaw--1", `trainer`:"Henning Berg", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1525", `website`:"", `yearFormed`:-1})
create (_5:`Player` {`age`:26, `birthday`:"31 Aug, 1988", `birthplace`:"Medellin, Colombia", `height`:"1.83m", `name`:"David Ospina", `nationality`:"Colombia", `slug`:"david-ospina-colombia", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=53996", `weight`:"76.64kg"})
create (_6:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Allianz Riviera", `lat`:43.705185, `lng`:7.193493, `name`:"Nice", `nickname`:"", `postcode`:"", `slug`:"nice--1", `trainer`:"Claude Puel", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1832", `website`:"www.ogcnice.com/", `yearFormed`:-1})
create (_7:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Estadio da Madeira", `lat`:32.670625, `lng`:-16.883564, `name`:"Nacional", `nickname`:"", `postcode`:"", `slug`:"nacional--1", `trainer`:"Manuel Machado", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1809", `website`:"", `yearFormed`:-1})
create (_8:`Player` {`age`:18, `birthday`:"06 Mar, 1997", `birthplace`:"", `height`:"", `name`:"Ryan Huddart", `nationality`:"England", `slug`:"ryan-huddart-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=78597", `weight`:""})
create (_9:`Player` {`age`:20, `birthday`:"25 Feb, 1995", `birthplace`:"Strumica, Macedonia", `height`:"", `name`:"Deyan Iliev", `nationality`:"Macedonia", `slug`:"deyan-iliev-macedonia", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=79438", `weight`:""})
create (_10:`Player` {`age`:29, `birthday`:"28 Jul, 1985", `birthplace`:"Fretin, France", `height`:"1.78m", `name`:"Mathieu Debuchy", `nationality`:"France", `slug`:"mathieu-debuchy-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=40417", `weight`:"72.56kg"})
create (_11:`Team` {`address1`:"St James' Park", `address2`:"Newcastle-upon-Tyne", `address3`:"", `chairman`:"Mike Ashley", `ground`:"St. James' Park", `lat`:54.975592, `lng`:-1.621973, `name`:"Newcastle", `nickname`:"The Magpies", `postcode`:"NE1 4ST", `slug`:"newcastle-1892", `trainer`:"John Carver", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1823", `website`:"www.nufc.co.uk", `yearFormed`:1892})
create (_12:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Stade Pierre-Mauroy", `lat`:50.612044, `lng`:3.130447, `name`:"Lille", `nickname`:"", `postcode`:"", `slug`:"lille--1", `trainer`:"Rene Girard", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1576", `website`:"www.losc.fr/", `yearFormed`:-1})
create (_13:`Player` {`age`:25, `birthday`:"26 Sep, 1989", `birthplace`:"Lambeth", `height`:"1.78m", `name`:"Kieran Gibbs", `nationality`:"England", `slug`:"kieran-gibbs-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=46514", `weight`:"69.84kg"})
create (_14:`Team` {`address1`:"Carrow Road", `address2`:"Norwich", `address3`:"", `chairman`:"Alan Bowkett", `ground`:"Carrow Road", `lat`:52.621975, `lng`:1.311005, `name`:"Norwich", `nickname`:"The Canaries", `postcode`:"NR1 1JE", `slug`:"norwich-1902", `trainer`:"Alex Neil", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1855", `website`:"www.canaries.co.uk", `yearFormed`:1902})
create (_15:`Player` {`age`:30, `birthday`:"29 Sep, 1984", `birthplace`:"Hannover, Germany", `height`:"1.98m", `name`:"Per Mertesacker", `nationality`:"Germany", `slug`:"per-mertesacker-germany", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=38092", `weight`:"89.34kg"})
create (_16:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"W Bremen", `nickname`:"", `postcode`:"", `slug`:"w-bremen--1", `trainer`:"Viktor Skripnik", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2854", `website`:"www.werder.de", `yearFormed`:-1})
create (_17:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"HDI-Arena", `lat`:52.361755, `lng`:9.732822, `name`:"Hannover", `nickname`:"", `postcode`:"", `slug`:"hannover--1", `trainer`:"Michael Frontzeck", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1320", `website`:"www.hannover96.de", `yearFormed`:-1})
create (_18:`Player` {`age`:24, `birthday`:"26 Nov, 1990", `birthplace`:"Fortaleza", `height`:"", `name`:"Gabriel Paulista", `nationality`:"Brazil", `slug`:"gabriel-paulista-brazil", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=71945", `weight`:""})
create (_19:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"Fernando Roig Alfonso", `ground`:"El Madrigal", `lat`:37.824409, `lng`:-3.834237, `name`:"Villarreal", `nickname`:"Yellow Submarines", `postcode`:"", `slug`:"villarreal-1923", `trainer`:"Marcelino Garcia Toral", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3123", `website`:"www.villarrealcf.es", `yearFormed`:1923})
create (_20:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Vitoria", `nickname`:"", `postcode`:"", `slug`:"vitoria--1", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=4004", `website`:"", `yearFormed`:-1})
create (_21:`Player` {`age`:29, `birthday`:"10 Sep, 1985", `birthplace`:"Tulle, France", `height`:"1.85m", `name`:"Laurent Koscielny", `nationality`:"France", `slug`:"laurent-koscielny-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=53837", `weight`:"73.47kg"})
create (_22:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Stade du Moustoir", `lat`:47.748857, `lng`:-3.369233, `name`:"Lorient", `nickname`:"Lorient", `postcode`:"", `slug`:"lorient--1", `trainer`:"Sylvain Ripoll", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3150", `website`:"www.fcl-lorient.com", `yearFormed`:-1})
create (_23:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Tours", `nickname`:"Tours", `postcode`:"", `slug`:"tours--1", `trainer`:"Alexandre Dujeux", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3160", `website`:"", `yearFormed`:-1})
create (_24:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Stade Municipal de Roudourou", `name`:"Guingamp", `nickname`:"", `postcode`:"", `slug`:"guingamp--1", `trainer`:"Jocelyn Gourvennec", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1090", `website`:"www.eaguingamp.com/", `yearFormed`:-1})
create (_25:`Player` {`age`:29, `birthday`:"26 Feb, 1986", `birthplace`:"Pamplona, Spain", `height`:"1.78m", `name`:"Nacho Monreal", `nationality`:"Spain", `slug`:"nacho-monreal-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=44874", `weight`:"71.2kg"})
create (_26:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"La Rosaleda", `lat`:36.734204, `lng`:-4.426591, `name`:"Malaga", `nickname`:"Malaga", `postcode`:"", `slug`:"malaga--1", `trainer`:"Javier Gracia", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3069", `website`:"www.malagacf.es", `yearFormed`:-1})
create (_27:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"El Sadar", `lat`:-4.578620, `lng`:119.824383, `name`:"Osasuna", `nickname`:"", `postcode`:"", `slug`:"osasuna--1", `trainer`:"Jose Manuel Mateo", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1951", `website`:"www.osasuna.es/dev/?lang=1", `yearFormed`:-1})
create (_28:`Player` {`age`:20, `birthday`:"20 Jan, 1995", `birthplace`:"Petersfield", `height`:"1.83m", `name`:"Calum Chambers", `nationality`:"England", `slug`:"calum-chambers-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=66152", `weight`:""})
create (_29:`Team` {`address1`:"St Mary's Stadium", `address2`:"Britannia Road", `address3`:"Hants", `chairman`:"Katharina Liebherr", `ground`:"St. Mary's Stadium", `lat`:50.905837, `lng`:-1.390882, `name`:"Southampton", `nickname`:"The Saints", `postcode`:"SO14 5FP", `slug`:"southampton-1885", `trainer`:"Ronald Koeman", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2471", `website`:"www.saintsfc.co.uk/", `yearFormed`:1885})
create (_30:`Player` {`age`:20, `birthday`:"19 Mar, 1995", `birthplace`:"Barcelona", `height`:"1.78m", `name`:"Hector Bellerin", `nationality`:"Spain", `slug`:"hector-bellerin-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=67648", `weight`:""})
create (_31:`Team` {`address1`:"Vicarage Road Stadium", `address2`:"Watford", `address3`:"Hertfordshire", `chairman`:"Gino Pozzo", `name`:"Watford", `nickname`:"The Hornets", `postcode`:"WD18 0ER", `slug`:"watford-1881", `trainer`:"Slavisa Jokanovic", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2741", `website`:"www.watfordfc.com", `yearFormed`:1881})
create (_32:`Team` {`address1`:"Oakwell Ground", `address2`:"Grove Street", `address3`:"Barnsley, South Yorkshire", `chairman`:"Maurice Watkins", `ground`:"Oakwell", `lat`:53.552140, `lng`:-1.467725, `name`:"Barnsley", `nickname`:"Tykes", `postcode`:"S71 1ET", `slug`:"barnsley-1887", `trainer`:"Lee Johnson", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=208", `website`:"www.barnsleyfc.co.uk", `yearFormed`:1887})
create (_33:`Player` {`age`:20, `birthday`:"22 Mar, 1995", `birthplace`:"", `height`:"1.88m", `name`:"Isaac Hayden", `nationality`:"England", `slug`:"isaac-hayden-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=72536", `weight`:""})
create (_34:`Player` {`age`:18, `birthday`:"23 Jan, 1997", `birthplace`:"", `height`:"", `name`:"Stefan O'Connor", `nationality`:"England", `slug`:"stefan-o'connor-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=79498", `weight`:""})
create (_35:`Player` {`age`:34, `birthday`:"04 Oct, 1980", `birthplace`:"Prague", `height`:"1.78m", `name`:"Tomas Rosicky", `nationality`:"Czech Republic", `slug`:"tomas-rosicky-czech-republic", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=17885", `weight`:"64.4kg"})
create (_36:`Team` {`address1`:"Signal Iduna Park", `address2`:"", `address3`:"", `chairman`:"Dr. Reinhard Rauball", `ground`:"Westfalenstadion", `lat`:51.492679, `lng`:7.451796, `name`:"B Dortmund", `nickname`:"Die Borussen", `postcode`:"", `slug`:"b-dortmund-1909", `trainer`:"Jurgen Klopp", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=398", `website`:"www.bvb.de", `yearFormed`:1909})
create (_37:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Generali-Arena", `lat`:50.099776, `lng`:14.415844, `name`:"Sparta Prague", `nickname`:"", `postcode`:"", `slug`:"sparta-prague--1", `trainer`:"Vitezslav Lavicka", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2429", `website`:"", `yearFormed`:-1})
create (_38:`Player` {`age`:33, `birthday`:"26 Mar, 1982", `birthplace`:"San Sebastian, Spain", `height`:"1.78m", `name`:"Mikel Arteta", `nationality`:"Spain", `slug`:"mikel-arteta-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=24034", `weight`:"63.49kg"})
create (_39:`Team` {`address1`:"Goodison Park", `address2`:"Liverpool", `address3`:"", `chairman`:"Bill Kenwright", `ground`:"Goodison Park", `lat`:53.438719, `lng`:-2.966454, `name`:"Everton", `nickname`:"The Toffees", `postcode`:"L4 4EL", `slug`:"everton-1878", `trainer`:"Roberto Martinez", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=942", `website`:"www.evertonfc.com", `yearFormed`:1878})
create (_40:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Anoeta", `lat`:43.162116, `lng`:-2.071266, `name`:"Sociedad", `nickname`:"", `postcode`:"", `slug`:"sociedad--1", `trainer`:"David Moyes", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2192", `website`:"www.realsociedad.com", `yearFormed`:-1})
create (_41:`Team` {`address1`:"Ibrox Stadium", `address2`:"150 Edmiston Drive", `address3`:"Glasgow", `chairman`:"", `ground`:"Ibrox Stadium", `lat`:55.853227, `lng`:-4.309215, `name`:"Rangers", `nickname`:"The Gers", `postcode`:"G51 2XD", `slug`:"rangers-1872", `trainer`:"Stuart McCall", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2104", `website`:"www.rangers.co.uk", `yearFormed`:1872})
create (_42:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"Robin Leproux", `ground`:"Parc des Princes", `lat`:48.841361, `lng`:2.253062, `name`:"Paris St-G.", `nickname`:"", `postcode`:"", `slug`:"paris-st-g.-1970", `trainer`:"Laurent Blanc", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2068", `website`:"www.psg.fr/", `yearFormed`:1970})
create (_43:`Team` {`address1`:"Camp Nou", `address2`:"Barcelona FC,Aristides Maillol", `address3`:"Barcelona", `chairman`:"Sandro Rosell", `ground`:"Camp Nou", `lat`:41.380933, `lng`:2.122912, `name`:"Barcelona", `nickname`:"Blaugrana", `postcode`:"", `slug`:"barcelona-1899", `trainer`:"Luis Enrique", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=224", `website`:"www.fcbarcelona.cat/", `yearFormed`:1899})
create (_44:`Player` {`age`:23, `birthday`:"01 Jan, 1992", `birthplace`:"Stevenage, England", `height`:"1.73m", `name`:"Jack Wilshere", `nationality`:"England", `slug`:"jack-wilshere-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=49701", `weight`:"66.67kg"})
create (_45:`Team` {`address1`:"Reebok Stadium", `address2`:"Burnden Way, Lostock", `address3`:"Bolton", `chairman`:"Phil Gartside", `ground`:"Macron Stadium", `lat`:53.580540, `lng`:-2.535665, `name`:"Bolton", `nickname`:"The Trotters", `postcode`:"BL6 6JW", `slug`:"bolton-1874", `trainer`:"Neil Lennon", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=354", `website`:"www.bwfc.co.uk/", `yearFormed`:1874})
create (_46:`Player` {`age`:26, `birthday`:"15 Oct, 1988", `birthplace`:"Gelsenkirchen, Germany", `height`:"1.8m", `name`:"Mesut Ozil", `nationality`:"Germany", `slug`:"mesut-ozil-germany", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=44921", `weight`:"69.84kg"})
create (_47:`Team` {`address1`:"Santiago Bernabeu Stadium", `address2`:"Calle Padre Darnian", `address3`:"Madrid", `chairman`:"Florentino Perez", `ground`:"Santiago Bernabeu", `lat`:40.451996, `lng`:-3.690577, `name`:"Real Madrid", `nickname`:"Los Merengues", `postcode`:"", `slug`:"real-madrid-1899", `trainer`:"Carlo Ancelotti", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2165", `website`:"www.realmadrid.com/", `yearFormed`:1899})
create (_48:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"VELTINS-Arena", `lat`:51.554594, `lng`:7.067600, `name`:"Schalke", `nickname`:"", `postcode`:"", `slug`:"schalke--1", `trainer`:"Roberto Di Matteo", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2260", `website`:"www.schalke04.de", `yearFormed`:-1})
create (_49:`Player` {`age`:21, `birthday`:"15 Aug, 1993", `birthplace`:"Portsmouth, England", `height`:"1.8m", `name`:"Alex Oxlade-Chamberlain", `nationality`:"England", `slug`:"alex-oxlade-chamberlain-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=53414", `weight`:"69.84kg"})
create (_50:`Player` {`age`:24, `birthday`:"26 Dec, 1990", `birthplace`:"Caerphilly", `height`:"1.78m", `name`:"Aaron Ramsey", `nationality`:"Wales", `slug`:"aaron-ramsey-wales", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=46488", `weight`:"69.84kg"})
create (_51:`Team` {`address1`:"Cardiff City Stadium", `address2`:"Cardiff", `address3`:"", `chairman`:"Mehmet Dalman", `ground`:"Cardiff City Stadium", `lat`:51.472843, `lng`:-3.202974, `name`:"Cardiff", `nickname`:"The Bluebirds", `postcode`:"", `slug`:"cardiff-1899", `trainer`:"Russell Slade", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=485", `website`:"www.cardiffcityfc.co.uk", `yearFormed`:1899})
create (_52:`Team` {`address1`:"City Ground", `address2`:"Nottingham", `address3`:"", `chairman`:"Fawaz Al-Hasawi", `ground`:"City Ground", `lat`:52.939912, `lng`:-1.132805, `name`:"Nottm Forest", `nickname`:"Forest", `postcode`:"NG2 5FJ", `slug`:"nottm-forest-1865", `trainer`:"Dougie Freedman", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1845", `website`:"www.nottinghamforest.co.uk", `yearFormed`:1865})
create (_53:`Player` {`age`:30, `birthday`:"13 Dec, 1984", `birthplace`:"Asturias, Spain", `height`:"1.68m", `name`:"Santi Cazorla", `nationality`:"Spain", `slug`:"santi-cazorla-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=39658", `weight`:"64.85kg"})
create (_54:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Nuevo Colombino", `lat`:37.246478, `lng`:-6.954272, `name`:"Recreativo", `nickname`:"", `postcode`:"", `slug`:"recreativo--1", `trainer`:"Jose Dominguez", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3479", `website`:"", `yearFormed`:-1})
create (_55:`Player` {`age`:31, `birthday`:"07 Mar, 1984", `birthplace`:"Marseille, France", `height`:"1.78m", `name`:"Mathieu Flamini", `nationality`:"France", `slug`:"mathieu-flamini-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=37510", `weight`:"65.76kg"})
create (_56:`Team` {`address1`:"San Siro", `address2`:"Milan", `address3`:"Italy", `chairman`:"Silvio Berlusconi", `ground`:"Giuseppe Meazza", `lat`:45.477994, `lng`:9.123931, `name`:"Milan", `nickname`:"Rossoneri", `postcode`:"", `slug`:"milan-1899", `trainer`:"Filippo Inzaghi", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=41", `website`:"", `yearFormed`:1899})
create (_57:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"Vincent Labrune", `ground`:"Stade Velodrome", `lat`:43.269841, `lng`:5.396001, `name`:"Marseille", `nickname`:"Les Phoceens", `postcode`:"", `slug`:"marseille-1899", `trainer`:"Marcelo Bielsa", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1748", `website`:"www.om.net/", `yearFormed`:1899})
create (_58:`Player` {`age`:28, `birthday`:"11 May, 1986", `birthplace`:"Paris", `height`:"1.93m", `name`:"Abou Diaby", `nationality`:"France", `slug`:"abou-diaby-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=40243", `weight`:"72.56kg"})
create (_59:`Team` {`address1`:"Stade de l'Abbe- Deschamps", `address2`:"Auxerre", `address3`:"", `chairman`:"", `name`:"Auxerre", `nickname`:"", `postcode`:"", `slug`:"auxerre-1905", `trainer`:"Jean-Luc Vannuchi", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=174", `website`:"www.aja.tm.fr/", `yearFormed`:1905})
create (_60:`Player` {`age`:19, `birthday`:"14 Jul, 1995", `birthplace`:"Stuttgart", `height`:"1.73m", `name`:"Serge Gnabry", `nationality`:"Germany", `slug`:"serge-gnabry-germany", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=67650", `weight`:""})
create (_61:`Player` {`age`:23, `birthday`:"13 May, 1991", `birthplace`:"Laval, France", `height`:"1.83m", `name`:"Francis Coquelin", `nationality`:"France", `slug`:"francis-coquelin-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=49975", `weight`:"71.66kg"})
create (_62:`Team` {`address1`:"The Valley", `address2`:"Floyd Road", `address3`:"Charlton, London", `chairman`:"Richard Murray", `ground`:"The Valley", `lat`:12.218517, `lng`:-69.086299, `name`:"Charlton", `nickname`:"Addicks", `postcode`:"SE7 8BL", `slug`:"charlton-1905", `trainer`:"Guy Luzon", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=527", `website`:"www.cafc.co.uk", `yearFormed`:1905})
create (_63:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Schwarzwald-Stadion", `lat`:47.989052, `lng`:7.893029, `name`:"Freiburg", `nickname`:"", `postcode`:"", `slug`:"freiburg--1", `trainer`:"Christian Streich", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1054", `website`:"www.scfreiburg.de", `yearFormed`:-1})
create (_64:`Player` {`age`:18, `birthday`:"26 Jan, 1997", `birthplace`:"Ethiopia", `height`:"1.8m", `name`:"Gedion Zelalem", `nationality`:"Germany", `slug`:"gedion-zelalem-germany", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=71924", `weight`:""})
create (_65:`Player` {`age`:17, `birthday`:"04 Jan, 1998", `birthplace`:"Poland", `height`:"", `name`:"Krystian Bielik", `nationality`:"Poland", `slug`:"krystian-bielik-poland", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=77500", `weight`:""})
create (_66:`Player` {`age`:23, `birthday`:"18 Apr, 1992", `birthplace`:"", `height`:"1.88m", `name`:"Samuel Galindo", `nationality`:"Bolivia", `slug`:"samuel-galindo-bolivia", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=57251", `weight`:"69.84kg"})
create (_67:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Anxo Carro", `name`:"Lugo", `nickname`:"", `postcode`:"", `slug`:"lugo--1", `trainer`:"Quique Setien", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=5413", `website`:"", `yearFormed`:-1})
create (_68:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Gimnastic", `nickname`:"", `postcode`:"", `slug`:"gimnastic--1", `trainer`:"Vicente Moreno", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3655", `website`:"", `yearFormed`:-1})
create (_69:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Salamanca", `nickname`:"", `postcode`:"", `slug`:"salamanca--1", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2386", `website`:"", `yearFormed`:-1})
create (_70:`Player` {`age`:18, `birthday`:"03 May, 1996", `birthplace`:"Nigeria", `height`:"", `name`:"Alex Iwobi", `nationality`:"England", `slug`:"alex-iwobi-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=72651", `weight`:""})
create (_71:`Player` {`age`:19, `birthday`:"28 Oct, 1995", `birthplace`:"Tampere, Finland", `height`:"", `name`:"Glen Kamara", `nationality`:"Finland", `slug`:"glen-kamara-finland", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=79497", `weight`:""})
create (_72:`Player` {`age`:17, `birthday`:"29 Aug, 1997", `birthplace`:"", `height`:"", `name`:"Ainsley Maitland-Niles", `nationality`:"England", `slug`:"ainsley-maitland-niles-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=79373", `weight`:""})
create (_73:`Player` {`age`:28, `birthday`:"30 Sep, 1986", `birthplace`:"Chambery, France", `height`:"1.93m", `name`:"Olivier Giroud", `nationality`:"France", `slug`:"olivier-giroud-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=55730", `weight`:"86.17kg"})
create (_74:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Stade de la Mosson", `lat`:43.622022, `lng`:3.812090, `name`:"Montpellier", `nickname`:"", `postcode`:"", `slug`:"montpellier--1", `trainer`:"Rolland Courbis", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1767", `website`:"www.mhscfoot.com/", `yearFormed`:-1})
create (_75:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Istres", `nickname`:"", `postcode`:"", `slug`:"istres--1", `trainer`:"Mehmed Bazdarrevic", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3524", `website`:"", `yearFormed`:-1})
create (_76:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Grenoble", `nickname`:"Grenoble", `postcode`:"", `slug`:"grenoble--1", `trainer`:"Olivier Saragaglia", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3157", `website`:"", `yearFormed`:-1})
create (_77:`Player` {`age`:26, `birthday`:"16 Mar, 1989", `birthplace`:"Middlesex", `height`:"1.78m", `name`:"Theo Walcott", `nationality`:"England", `slug`:"theo-walcott-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=41643", `weight`:"66.67kg"})
create (_78:`Player` {`age`:26, `birthday`:"19 Dec, 1988", `birthplace`:"Tocopilla, Chile", `height`:"1.7m", `name`:"Alexis Sanchez", `nationality`:"Chile", `slug`:"alexis-sanchez-chile", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=43819", `weight`:"60.32kg"})
create (_79:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Friuli", `lat`:-34.833606, `lng`:-56.241668, `name`:"Udinese", `nickname`:"", `postcode`:"", `slug`:"udinese--1", `trainer`:"Andrea Stramaccioni", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2634", `website`:"", `yearFormed`:-1})
create (_80:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Colo Colo", `nickname`:"", `postcode`:"", `slug`:"colo-colo--1", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=273", `website`:"", `yearFormed`:-1})
create (_81:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Cobreloa", `nickname`:"", `postcode`:"", `slug`:"cobreloa--1", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2286", `website`:"", `yearFormed`:-1})
create (_82:`Player` {`age`:24, `birthday`:"26 Nov, 1990", `birthplace`:"Manchester, England", `height`:"1.85m", `name`:"Danny Welbeck", `nationality`:"England", `slug`:"danny-welbeck-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=48971", `weight`:"71.66kg"})
create (_83:`Team` {`address1`:"Stadium of Light", `address2`:"Sunderland", `address3`:"Tyne and Wear", `chairman`:"Ellis Short", `ground`:"Stadium of Light", `lat`:54.914463, `lng`:-1.388193, `name`:"Sunderland", `nickname`:"Mackems/The Black Cats", `postcode`:"SR5 1SU", `slug`:"sunderland-1879", `trainer`:"Dick Advocaat", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2493", `website`:"www.safc.com/", `yearFormed`:1879})
create (_84:`Team` {`address1`:"Deepdale", `address2`:"Sir Tom Finney Way", `address3`:"Preston, Lancs.", `chairman`:"Peter Ridsdale", `ground`:"Deepdale", `lat`:53.772242, `lng`:-2.693774, `name`:"Preston", `nickname`:"The Lilywhites/North End", `postcode`:"PR1 6RU", `slug`:"preston-1880", `trainer`:"Simon Grayson", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2054", `website`:"www.pnefc.net/", `yearFormed`:1880})
create (_85:`Team` {`address1`:"Old Trafford", `address2`:"Sir Matt Busby Way", `address3`:"Manchester", `chairman`:"Joel Glazer & Avram Glazer", `ground`:"Old Trafford", `lat`:53.463151, `lng`:-2.291373, `name`:"Man Utd", `nickname`:"The Red Devils", `postcode`:"M16 0RA", `slug`:"man-utd-1878", `trainer`:"Louis van Gaal", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1724", `website`:"www.manutd.com", `yearFormed`:1878})
create (_86:`Team` {`address1`:"City of Manchester Stadium", `address2`:"Rowsley Street", `address3`:"Manchester", `chairman`:"Khaldoon Al Mubarak", `ground`:"Etihad Stadium", `lat`:53.483158, `lng`:-2.200534, `name`:"Man City", `nickname`:"The Citizens", `postcode`:"M11 3FF", `slug`:"man-city-1887", `trainer`:"Manuel Pellegrini", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1718", `website`:"www.mcfc.co.uk", `yearFormed`:1887})
create (_87:`Player` {`age`:22, `birthday`:"12 Jul, 1992", `birthplace`:"", `height`:"", `name`:"Erik Johansen", `nationality`:"Norway", `slug`:"erik-johansen-norway", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=66063", `weight`:""})
create (_88:`Team` {`address1`:"Glanford Park", `address2`:"Doncaster Road", `address3`:"Scunthorpe, S Humberside", `chairman`:"Peter Swann", `ground`:"Glanford Park", `lat`:53.586813, `lng`:-0.695325, `name`:"Scunthorpe", `nickname`:"The Iron", `postcode`:"DN15 8TD", `slug`:"scunthorpe-1899", `trainer`:"Mark Robins", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2263", `website`:"www.scunthorpe-united.co.uk", `yearFormed`:1899})
create (_89:`Player` {`age`:20, `birthday`:"27 Oct, 1994", `birthplace`:"Dublin", `height`:"2.67m", `name`:"Ian Lawlor", `nationality`:"Ireland", `slug`:"ian-lawlor-ireland", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=76214", `weight`:""})
create (_90:`Player` {`age`:28, `birthday`:"19 Apr, 1987", `birthplace`:"Shrewsbury, England", `height`:"1.96m", `name`:"Joe Hart", `nationality`:"England", `slug`:"joe-hart-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=34502", `weight`:"78.46kg"})
create (_91:`Team` {`address1`:"St Andrews", `address2`:"Birmingham", `address3`:"", `chairman`:"Carson Yeung", `name`:"Birmingham", `nickname`:"Blues", `postcode`:"B9 4NH", `slug`:"birmingham-1875", `trainer`:"Gary Rowett", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=291", `website`:"www.bcfc.com", `yearFormed`:1875})
create (_92:`Team` {`address1`:"Bloomfield Road Ground", `address2`:"Blackpool", `address3`:"", `chairman`:"Karl Oyston", `name`:"Blackpool", `nickname`:"The Seasiders/The Tangerines", `postcode`:"FY1 6JJ", `slug`:"blackpool-1887", `trainer`:"Lee Clark", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=317", `website`:"www.blackpoolfc.co.uk", `yearFormed`:1887})
create (_93:`Team` {`address1`:"Prenton Park", `address2`:"Prenton Road West", `address3`:"Birkenhead", `chairman`:"Mark Palios", `ground`:"Prenton Park", `lat`:53.374818, `lng`:-3.032402, `name`:"Tranmere", `nickname`:"The Rovers", `postcode`:"CH42 9PY", `slug`:"tranmere-1884", `trainer`:"Alan Rogers", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2598", `website`:"www.tranmererovers.co.uk", `yearFormed`:1884})
create (_94:`Team` {`address1`:"New Meadow", `address2`:"Oteley Road", `address3`:"Shrewsbury", `chairman`:"Roland Wycherley", `ground`:"New Meadow", `lat`:51.427441, `lng`:-1.701272, `name`:"Shrewsbury", `nickname`:"The Shrews", `postcode`:"SY2 6ST", `slug`:"shrewsbury-1886", `trainer`:"Micky Mellon", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2325", `website`:"www.shrewsburytown.co.uk", `yearFormed`:1886})
create (_95:`Player` {`age`:33, `birthday`:"28 Sep, 1981", `birthplace`:"Santa Elena, Argentina", `height`:"1.85m", `name`:"Wilfredo Caballero", `nationality`:"Argentina", `slug`:"wilfredo-caballero-argentina", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=37239", `weight`:"82.54kg"})
create (_96:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Martinez Valero", `lat`:38.267044, `lng`:-0.663305, `name`:"Elche", `nickname`:"", `postcode`:"", `slug`:"elche--1", `trainer`:"Fran Escriba", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3481", `website`:"", `yearFormed`:-1})
create (_97:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Boca Juniors", `nickname`:"", `postcode`:"", `slug`:"boca-juniors--1", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=349", `website`:"", `yearFormed`:-1})
create (_98:`Player` {`age`:37, `birthday`:"05 Nov, 1977", `birthplace`:"Ipswich", `height`:"1.88m", `name`:"Richard Wright", `nationality`:"England", `slug`:"richard-wright-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=8726", `weight`:"82.99kg"})
create (_99:`Team` {`address1`:"Portman Road", `address2`:"Ipswich", `address3`:"Suffolk", `chairman`:"Marcus Evans", `ground`:"Portman Road", `lat`:53.395937, `lng`:-2.936355, `name`:"Ipswich", `nickname`:"Town/Tractor Boys", `postcode`:"IP1 2DA", `slug`:"ipswich-1878", `trainer`:"Mick McCarthy", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1372", `website`:"www.itfc.co.uk", `yearFormed`:1878})
create (_100:`Team` {`address1`:"Bramall Lane", `address2`:"Sheffield", `address3`:"", `chairman`:"Kevin McCabe", `ground`:"Bramall Lane", `lat`:53.372042, `lng`:-1.472632, `name`:"Sheff Utd", `nickname`:"The Blades", `postcode`:"S2 4SU", `slug`:"sheff-utd-1889", `trainer`:"Nigel Clough", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2328", `website`:"www.sufc.co.uk", `yearFormed`:1889})
create (_101:`Team` {`address1`:"Boleyn Ground", `address2`:"Green Street", `address3`:"Upton Park, London", `chairman`:"David Gold & David Sullivan", `ground`:"Boleyn Ground", `lat`:51.531861, `lng`:0.039253, `name`:"West Ham", `nickname`:"The Hammers/Irons", `postcode`:"E13 9AZ", `slug`:"west-ham-1895", `trainer`:"Sam Allardyce", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2802", `website`:"www.whufc.com", `yearFormed`:1895})
create (_102:`Player` {`age`:21, `birthday`:"30 Nov, 1993", `birthplace`:"", `height`:"", `name`:"Dominic Oduro", `nationality`:"Ghana", `slug`:"dominic-oduro-ghana", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=70774", `weight`:""})
create (_103:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Aarhus", `nickname`:"", `postcode`:"", `slug`:"aarhus--1", `trainer`:"Jesper Fredberg", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=20", `website`:"", `yearFormed`:-1})
create (_104:`Player` {`age`:32, `birthday`:"14 Feb, 1983", `birthplace`:"Sens, France", `height`:"1.75m", `name`:"Bacary Sagna", `nationality`:"France", `slug`:"bacary-sagna-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=40240", `weight`:"71.2kg"})
create (_105:`Player` {`age`:29, `birthday`:"10 Apr, 1986", `birthplace`:"Brussels, Belgium", `height`:"1.91m", `name`:"Vincent Kompany", `nationality`:"Belgium", `slug`:"vincent-kompany-belgium", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=36402", `weight`:"83.9kg"})
create (_106:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Imtech Arena", `lat`:53.587154, `lng`:9.898706, `name`:"Hamburg", `nickname`:"Rothosen", `postcode`:"", `slug`:"hamburg-1887", `trainer`:"Bruno Labbadia", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2503", `website`:"www.hsv.de", `yearFormed`:1887})
create (_107:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Anderlecht", `nickname`:"", `postcode`:"", `slug`:"anderlecht--1", `trainer`:"Besnik Hasi", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=54", `website`:"", `yearFormed`:-1})
create (_108:`Player` {`age`:30, `birthday`:"16 Jan, 1985", `birthplace`:"Buenos Aires, Argentina", `height`:"1.75m", `name`:"Pablo Zabaleta", `nationality`:"Argentina", `slug`:"pablo-zabaleta-argentina", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=41964", `weight`:"72.56kg"})
create (_109:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Power8 Stadium", `lat`:20.829480, `lng`:106.724452, `name`:"Espanyol", `nickname`:"", `postcode`:"", `slug`:"espanyol--1", `trainer`:"Sergio Gonzalez", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=927", `website`:"http://www.rcdespanyol.com/", `yearFormed`:-1})
create (_110:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"San Lorenzo", `nickname`:"", `postcode`:"", `slug`:"san-lorenzo--1", `trainer`:"Edgardo Bauza", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3953", `website`:"", `yearFormed`:-1})
create (_111:`Player` {`age`:29, `birthday`:"10 Nov, 1985", `birthplace`:"Belgrado, Serbia", `height`:"1.85m", `name`:"Aleksandar Kolarov", `nationality`:"Serbia", `slug`:"aleksandar-kolarov-serbia", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=47598", `weight`:"82.54kg"})
create (_112:`Team` {`address1`:"Stadio Olimpico", `address2`:"Rome", `address3`:"Italy", `chairman`:"Claudio Lotito", `ground`:"Olimpico", `lat`:3.421896, `lng`:-76.531087, `name`:"Lazio", `nickname`:"Biancocelesti", `postcode`:"", `slug`:"lazio-1900", `trainer`:"Stefano Pioli", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1501", `website`:"www.sslazio.it/", `yearFormed`:1900})
create (_113:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Omladinski Stadium", `name`:"OFK Belgrade", `nickname`:"", `postcode`:"", `slug`:"ofk-belgrade--1", `trainer`:"Dejan Durdevic", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1919", `website`:"", `yearFormed`:-1})
create (_114:`Player` {`age`:24, `birthday`:"13 Feb, 1991", `birthplace`:"Paris, France", `height`:"", `name`:"Eliaquim Mangala", `nationality`:"France", `slug`:"eliaquim-mangala-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=52280", `weight`:""})
create (_115:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Estadio do Dragao", `lat`:41.160663, `lng`:-8.582793, `name`:"Porto", `nickname`:"", `postcode`:"", `slug`:"porto--1", `trainer`:"Luis Castro", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=978", `website`:"", `yearFormed`:-1})
create (_116:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Stade de Sclessin", `lat`:50.609875, `lng`:5.543513, `name`:"Standard Liege", `nickname`:"", `postcode`:"", `slug`:"standard-liege--1", `trainer`:"Ivan Vukomanovic", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2363", `website`:"", `yearFormed`:-1})
create (_117:`Player` {`age`:29, `birthday`:"26 Jul, 1985", `birthplace`:"Toulouse, France", `height`:"1.78m", `name`:"Gael Clichy", `nationality`:"France", `slug`:"gael-clichy-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=35709", `weight`:"64.4kg"})
create (_118:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Cannes", `nickname`:"", `postcode`:"", `slug`:"cannes--1", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=602", `website`:"", `yearFormed`:-1})
create (_119:`Player` {`age`:34, `birthday`:"20 Dec, 1980", `birthplace`:"Cordoba, Argentina", `height`:"1.83m", `name`:"Martin Demichelis", `nationality`:"Argentina", `slug`:"martin-demichelis-argentina", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=34322", `weight`:"77.1kg"})
create (_120:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"Enrique Cerezo", `ground`:"Vicente Calderon", `lat`:-45.811225, `lng`:-67.475257, `name`:"Atl Madrid", `nickname`:"Los Colchoneros", `postcode`:"", `slug`:"atl-madrid-1903", `trainer`:"Diego Simeone", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=163", `website`:"www.clubatleticodemadrid.com/", `yearFormed`:1903})
create (_121:`Team` {`address1`:"Olympic Stadion", `address2`:"D-81504 Munchen", `address3`:"Bavaria", `chairman`:"Franz Beckenbauer", `name`:"B Munich", `nickname`:"FC Hollywood", `postcode`:"90 04 51", `slug`:"b-munich-1900", `trainer`:"Josep Guardiola", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=469", `website`:"www.fcbayern.de", `yearFormed`:1900})
create (_122:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"River Plate", `nickname`:"", `postcode`:"", `slug`:"river-plate--1", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2208", `website`:"", `yearFormed`:-1})
create (_123:`Player` {`age`:24, `birthday`:"28 Nov, 1990", `birthplace`:"Brussels, Belgium", `height`:"1.88m", `name`:"Dedryck Boyata", `nationality`:"Belgium", `slug`:"dedryck-boyata-belgium", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=53095", `weight`:"83.45kg"})
create (_124:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"De Grolsch Veste", `lat`:52.236443, `lng`:6.837756, `name`:"FC Twente", `nickname`:"", `postcode`:"", `slug`:"fc-twente--1", `trainer`:"Alfred Schreuder", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2620", `website`:"", `yearFormed`:-1})
create (_125:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"FC Brussels", `nickname`:"", `postcode`:"", `slug`:"fc-brussels--1", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=4151", `website`:"", `yearFormed`:-1})
create (_126:`Player` {`age`:18, `birthday`:"04 Jan, 1997", `birthplace`:"", `height`:"", `name`:"Angelino", `nationality`:"Spain", `slug`:"angelino-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=79268", `weight`:""})
create (_127:`Player` {`age`:27, `birthday`:"25 Jul, 1987", `birthplace`:"Brasilia, Brazil", `height`:"1.83m", `name`:"Fernando", `nationality`:"Brazil", `slug`:"fernando-brazil", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=52621", `weight`:"73.92kg"})
create (_128:`Player` {`age`:29, `birthday`:"04 Jan, 1986", `birthplace`:"Leeds, England", `height`:"1.75m", `name`:"James Milner", `nationality`:"England", `slug`:"james-milner-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=33817", `weight`:"69.84kg"})
create (_129:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=154"})
create (_130:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2519"})
create (_131:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1524"})
create (_132:`Player` {`age`:27, `birthday`:"26 Jun, 1987", `birthplace`:"Marseille", `height`:"1.78m", `name`:"Samir Nasri", `nationality`:"France", `slug`:"samir-nasri-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=40640", `weight`:"73.47kg"})
create (_133:`Player` {`age`:29, `birthday`:"21 Nov, 1985", `birthplace`:"Sevilla, Spain", `height`:"1.65m", `name`:"Jesus Navas", `nationality`:"Spain", `slug`:"jesus-navas-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=37174", `weight`:"58.96kg"})
create (_134:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2292"})
create (_135:`Player` {`age`:36, `birthday`:"20 Jun, 1978", `birthplace`:"Romford, England", `height`:"1.83m", `name`:"Frank Lampard", `nationality`:"England", `slug`:"frank-lampard-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=4370", `weight`:"87.98kg"})
create (_136:`Team` {`address1`:"Stamford Bridge", `address2`:"London", `address3`:"", `chairman`:"Bruce Buck", `ground`:"Stamford Bridge", `lat`:51.481687, `lng`:-0.191035, `name`:"Chelsea", `nickname`:"The Blues", `postcode`:"SW6 1HS", `slug`:"chelsea-1905", `trainer`:"Jose Mourinho", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=536", `website`:"www.chelseafc.co.uk", `yearFormed`:1905})
create (_137:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2513"})
create (_138:`Player` {`age`:29, `birthday`:"08 Jan, 1986", `birthplace`:"Arguineguin, Spain", `height`:"1.73m", `name`:"David Silva", `nationality`:"Spain", `slug`:"david-silva-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=41962", `weight`:"65.76kg"})
create (_139:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2697"})
create (_140:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=690"})
create (_141:`Player` {`age`:29, `birthday`:"04 May, 1985", `birthplace`:"Londrina, Brazil", `height`:"1.7m", `name`:"Fernandinho", `nationality`:"Brazil", `slug`:"fernandinho-brazil", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=44495", `weight`:"65.76kg"})
create (_142:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Shakhtar", `nickname`:"", `postcode`:"", `slug`:"shakhtar--1", `trainer`:"Mircea Lucescu", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2312", `website`:"", `yearFormed`:-1})
create (_143:`Player` {`age`:31, `birthday`:"13 May, 1983", `birthplace`:"Bouake, Cote d'Ivoire", `height`:"1.91m", `name`:"Yaya Toure", `nationality`:"Ivory Coast", `slug`:"yaya-toure-ivory-coast", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=41835", `weight`:"89.34kg"})
create (_144:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Olympiakos", `nickname`:"", `postcode`:"", `slug`:"olympiakos--1", `trainer`:"Vitor Pereira", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1930", `website`:"", `yearFormed`:-1})
create (_145:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Metalurg D.", `nickname`:"", `postcode`:"", `slug`:"metalurg-d.--1", `trainer`:"Volodymyr Pyatenko", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3299", `website`:"", `yearFormed`:-1})
create (_146:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Beveren", `nickname`:"", `postcode`:"", `slug`:"beveren--1", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=264", `website`:"", `yearFormed`:-1})
create (_147:`Player` {`age`:18, `birthday`:"09 Sep, 1996", `birthplace`:"", `height`:"", `name`:"Bersant Celina", `nationality`:"Norway", `slug`:"bersant-celina-norway", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=80308", `weight`:""})
create (_148:`Player` {`age`:19, `birthday`:"03 May, 1995", `birthplace`:"", `height`:"", `name`:"George Glendon", `nationality`:"England", `slug`:"george-glendon-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=79118", `weight`:""})
create (_149:`Player` {`age`:19, `birthday`:"15 Mar, 1996", `birthplace`:"Malaga", `height`:"", `name`:"Jose Pozo", `nationality`:"Spain", `slug`:"jose-pozo-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=78134", `weight`:""})
create (_150:`Player` {`age`:24, `birthday`:"15 Apr, 1991", `birthplace`:"Milan", `height`:"1.88m", `name`:"Luca Scapuzzi", `nationality`:"Italy", `slug`:"luca-scapuzzi-italy", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=62476", `weight`:""})
create (_151:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Siena", `nickname`:"", `postcode`:"", `slug`:"siena--1", `trainer`:"Serse Cosmi", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3589", `website`:"", `yearFormed`:-1})
create (_152:`Team` {`address1`:"Fratton Park", `address2`:"Frogmore Road", `address3`:"Portsmouth", `chairman`:"Iain McInnes", `ground`:"Fratton Park", `lat`:50.796483, `lng`:-1.063892, `name`:"Portsmouth", `nickname`:"Pompey", `postcode`:"PO4 8RA", `slug`:"portsmouth-1898", `trainer`:"Gary Waddock", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2049", `website`:"www.pompeyfc.co.uk", `yearFormed`:1898})
create (_153:`Team` {`address1`:"Boundary Park", `address2`:"Oldham", `address3`:"", `chairman`:"Simon Corney", `ground`:"Boundary Park", `lat`:53.555088, `lng`:-2.128383, `name`:"Oldham", `nickname`:"The Latics", `postcode`:"OL1 2PA", `slug`:"oldham-1895", `trainer`:"Dean Holden", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1924", `website`:"www.oldhamathletic.co.uk", `yearFormed`:1895})
create (_154:`Player` {`age`:29, `birthday`:"17 Mar, 1986", `birthplace`:"Sarajevo, Bosnia and Herzegovi", `height`:"1.93m", `name`:"Edin Dzeko", `nationality`:"Bosnia-Herzegovina", `slug`:"edin-dzeko-bosnia-herzegovina", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=36509", `weight`:"83.45kg"})
create (_155:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Volkswagen Arena", `lat`:52.432817, `lng`:10.803894, `name`:"Wolfsburg", `nickname`:"Wolfsburg", `postcode`:"", `slug`:"wolfsburg--1", `trainer`:"Dieter Hecking", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2967", `website`:"www.vflwolfsburg.de", `yearFormed`:-1})
create (_156:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Zeljeznicar", `nickname`:"", `postcode`:"", `slug`:"zeljeznicar--1", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2918", `website`:"", `yearFormed`:-1})
create (_157:`Player` {`age`:26, `birthday`:"10 Dec, 1988", `birthplace`:"Bingerville, Cote d'Ivoire", `height`:"1.75m", `name`:"Wilfried Bony", `nationality`:"Ivory Coast", `slug`:"wilfried-bony-ivory-coast", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=55236", `weight`:"83.45kg"})
create (_158:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"GelreDome", `lat`:51.962655, `lng`:5.892801, `name`:"Vitesse Arn.", `nickname`:"", `postcode`:"", `slug`:"vitesse-arn.--1", `trainer`:"Peter Bosz", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2692", `website`:"", `yearFormed`:-1})
create (_159:`Player` {`age`:26, `birthday`:"02 Jun, 1988", `birthplace`:"Buenos Aires, Argentina", `height`:"1.73m", `name`:"Sergio Aguero", `nationality`:"Argentina", `slug`:"sergio-aguero-argentina", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=44554", `weight`:"69.84kg"})
create (_160:`Player` {`age`:25, `birthday`:"02 Nov, 1989", `birthplace`:"Podgorica, Montenegro", `height`:"1.83m", `name`:"Stevan Jovetic", `nationality`:"Montenegro", `slug`:"stevan-jovetic-montenegro", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=45878", `weight`:"78kg"})
create (_161:`Team` {`address1`:"Stadio Artemio Franchi", `address2`:"Fiorentina", `address3`:"Italy", `chairman`:"", `ground`:"Artemio Franchi", `lat`:43.321734, `lng`:11.326259, `name`:"Fiorentina", `nickname`:"Viola", `postcode`:"", `slug`:"fiorentina-1926", `trainer`:"Vincenzo Montella", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=999", `website`:"http://it.violachannel.tv/index.php", `yearFormed`:1926})
create (_162:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"FK Partizan Stadium", `name`:"Partizan", `nickname`:"Partizan", `postcode`:"", `slug`:"partizan--1", `trainer`:"Marko Nikolic", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2084", `website`:"", `yearFormed`:-1})
create (_163:`Player` {`age`:18, `birthday`:"28 Mar, 1997", `birthplace`:"", `height`:"", `name`:"Thierry Ambrose", `nationality`:"France", `slug`:"thierry-ambrose-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=80163", `weight`:""})
create (_164:`Player` {`age`:24, `birthday`:"07 Nov, 1990", `birthplace`:"Madrid, Spain", `height`:"1.93m", `name`:"David de Gea", `nationality`:"Spain", `slug`:"david-de-gea-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=52432", `weight`:"73.92kg"})
create (_165:`Player` {`age`:31, `birthday`:"13 Apr, 1984", `birthplace`:"Dyrup, Denmark", `height`:"1.93m", `name`:"Anders Lindegaard", `nationality`:"Denmark", `slug`:"anders-lindegaard-denmark", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=44089", `weight`:"78.46kg"})
create (_166:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Color Line Stadium", `name`:"Aalesund", `nickname`:"", `postcode`:"", `slug`:"aalesund--1", `trainer`:"Harald Aabrekk", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=4016", `website`:"", `yearFormed`:-1})
create (_167:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"TRE-FOR Park", `lat`:55.497769, `lng`:9.457432, `name`:"OB Odense", `nickname`:"", `postcode`:"", `slug`:"ob-odense--1", `trainer`:"Ove Pedersen", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1914", `website`:"", `yearFormed`:-1})
create (_168:`Player` {`age`:33, `birthday`:"14 Jan, 1982", `birthplace`:"Barcelona, Spain", `height`:"1.83m", `name`:"Victor Valdes", `nationality`:"Spain", `slug`:"victor-valdes-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=33066", `weight`:"77.1kg"})
create (_169:`Player` {`age`:25, `birthday`:"10 Apr, 1990", `birthplace`:"Macclesfield", `height`:"1.88m", `name`:"Ben Amos", `nationality`:"England", `slug`:"ben-amos-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=49987", `weight`:"69.84kg"})
create (_170:`Team` {`address1`:"Brunton Park", `address2`:"Carlisle", `address3`:"", `chairman`:"Andrew Jenkins", `ground`:"Brunton Park", `lat`:54.895604, `lng`:-2.913625, `name`:"Carlisle", `nickname`:"Cumbrians/The Blues", `postcode`:"CA1 1LL", `slug`:"carlisle-1903", `trainer`:"Keith Curle", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=643", `website`:"www.carlisleunited.co.uk", `yearFormed`:1903})
create (_171:`Team` {`address1`:"Kingston Communications Stad.", `address2`:"The Circle, Walton Street", `address3`:"Hull", `chairman`:"Assem Allam", `ground`:"The KC Stadium", `lat`:53.746248, `lng`:-0.367735, `name`:"Hull", `nickname`:"The Tigers", `postcode`:"HU3 6HU", `slug`:"hull-1904", `trainer`:"Steve Bruce", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1310", `website`:"www.hullcityafc.net/", `yearFormed`:1904})
create (_172:`Team` {`address1`:"London Road Ground", `address2`:"Peterborough", `address3`:"", `chairman`:"Darragh MacAnthony", `ground`:"London Road", `lat`:"52.9052438", `lng`:"-1.4484569", `name`:"Peterborough", `nickname`:"The Posh", `postcode`:"PE2 8AL", `slug`:"peterborough-1934", `trainer`:"David Robertson", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1996", `website`:"www.theposh.com", `yearFormed`:1934})
create (_173:`Player` {`age`:21, `birthday`:"10 Nov, 1993", `birthplace`:"Bolton", `height`:"", `name`:"Andy Kellett", `nationality`:"England", `slug`:"andy-kellett-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=72594", `weight`:""})
create (_174:`Team` {`address1`:"Home Park", `address2`:"Plymouth", `address3`:"Devon", `chairman`:"James Brent", `ground`:"Home Park", `lat`:50.388122, `lng`:-4.150875, `name`:"Plymouth", `nickname`:"The Pilgrims", `postcode`:"PL2 3DQ", `slug`:"plymouth-1886", `trainer`:"John Sheridan", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2036", `website`:"www.pafc.co.uk/", `yearFormed`:1886})
create (_175:`Player` {`age`:24, `birthday`:"09 Jul, 1990", `birthplace`:"Petropolis, Brazil", `height`:"1.73m", `name`:"Rafael Da Silva", `nationality`:"Brazil", `slug`:"rafael-da-silva-brazil", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=49556", `weight`:"78.46kg"})
create (_176:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Fluminense", `nickname`:"", `postcode`:"", `slug`:"fluminense--1", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1020", `website`:"", `yearFormed`:-1})
create (_177:`Player` {`age`:19, `birthday`:"12 Jul, 1995", `birthplace`:"Kingston upon Thames, England", `height`:"1.85m", `name`:"Luke Shaw", `nationality`:"England", `slug`:"luke-shaw-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=62471", `weight`:""})
create (_178:`Player` {`age`:23, `birthday`:"21 Feb, 1992", `birthplace`:"Preston, England", `height`:"1.8m", `name`:"Phil Jones", `nationality`:"England", `slug`:"phil-jones-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=52124", `weight`:"71.2kg"})
create (_179:`Team` {`address1`:"Ewood Park", `address2`:"Blackburn", `address3`:"Lancashire", `chairman`:"", `ground`:"Ewood Park", `lat`:53.728612, `lng`:-2.489267, `name`:"Blackburn", `nickname`:"Rovers", `postcode`:"BB2 4JF", `slug`:"blackburn-1875", `trainer`:"Gary Bowyer", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=308", `website`:"www.rovers.co.uk", `yearFormed`:1875})
create (_180:`Player` {`age`:25, `birthday`:"20 Mar, 1990", `birthplace`:"La Plata, Argentina", `height`:"1.85m", `name`:"Marcos Rojo", `nationality`:"Argentina", `slug`:"marcos-rojo-argentina", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=58358", `weight`:"78.46kg"})
create (_181:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Estadio Jose Alvalade", `lat`:38.761176, `lng`:-9.160814, `name`:"Sporting Lisbon", `nickname`:"", `postcode`:"", `slug`:"sporting-lisbon--1", `trainer`:"Marco Silva", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2421", `website`:"", `yearFormed`:-1})
create (_182:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Otkrytie Arena", `name`:"Spartak Moscow", `nickname`:"Spartak", `postcode`:"", `slug`:"spartak-moscow--1", `trainer`:"Murat Yakin", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2435", `website`:"", `yearFormed`:-1})
create (_183:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Estudiantes", `nickname`:"", `postcode`:"", `slug`:"estudiantes--1", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1464", `website`:"", `yearFormed`:-1})
create (_184:`Player` {`age`:27, `birthday`:"03 Jan, 1988", `birthplace`:"Belfast", `height`:"1.88m", `name`:"Jonny Evans", `nationality`:"Northern Ireland", `slug`:"jonny-evans-northern-ireland", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=44583", `weight`:"76.64kg"})
create (_185:`Player` {`age`:25, `birthday`:"22 Nov, 1989", `birthplace`:"Greenwich, England", `height`:"1.93m", `name`:"Chris Smalling", `nationality`:"England", `slug`:"chris-smalling-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=51128", `weight`:"89.34kg"})
create (_186:`Team` {`address1`:"Craven Cottage", `address2`:"Stevenage Road", `address3`:"Fulham, London", `chairman`:"Shahid Khan", `ground`:"Craven Cottage", `lat`:51.474855, `lng`:-0.221594, `name`:"Fulham", `nickname`:"The Cottagers", `postcode`:"SW6 6HH", `slug`:"fulham-1879", `trainer`:"Kit Symons", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1055", `website`:"www.fulhamfc.co.uk", `yearFormed`:1879})
create (_187:`Player` {`age`:22, `birthday`:"24 Mar, 1993", `birthplace`:"", `height`:"", `name`:"Guillermo Varela", `nationality`:"Uruguay", `slug`:"guillermo-varela-uruguay", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=70369", `weight`:""})
create (_188:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Penarol", `nickname`:"", `postcode`:"", `slug`:"penarol--1", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2058", `website`:"", `yearFormed`:-1})
create (_189:`Player` {`age`:20, `birthday`:"27 Apr, 1995", `birthplace`:"Northern Ireland", `height`:"", `name`:"Patrick McNair", `nationality`:"Northern Ireland", `slug`:"patrick-mcnair-northern-ireland", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=77618", `weight`:""})
create (_190:`Player` {`age`:22, `birthday`:"13 Jan, 1993", `birthplace`:"", `height`:"", `name`:"Tom Thorpe", `nationality`:"England", `slug`:"tom-thorpe-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=62459", `weight`:""})
create (_191:`Player` {`age`:21, `birthday`:"02 Apr, 1994", `birthplace`:"", `height`:"1.83m", `name`:"Tyler Blackett", `nationality`:"England", `slug`:"tyler-blackett-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=73373", `weight`:""})
create (_192:`Player` {`age`:27, `birthday`:"14 Feb, 1988", `birthplace`:"Rosario, Argentina", `height`:"1.75m", `name`:"Angel Di Maria", `nationality`:"Argentina", `slug`:"angel-di-maria-argentina", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=47612", `weight`:"73.47kg"})
create (_193:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Estadio da Luz", `lat`:38.752657, `lng`:-9.184692, `name`:"Benfica", `nickname`:"", `postcode`:"", `slug`:"benfica--1", `trainer`:"Jorge Jesus", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=257", `website`:"", `yearFormed`:-1})
create (_194:`Player` {`age`:27, `birthday`:"28 Apr, 1988", `birthplace`:"Burgos, Spain", `height`:"1.7m", `name`:"Juan Mata", `nationality`:"Spain", `slug`:"juan-mata-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=47417", `weight`:"63.95kg"})
create (_195:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Alfredo Di Stefano", `lat`:40.476935, `lng`:-3.614402, `name`:"Real Madrid B", `nickname`:"Real Madrid B", `postcode`:"", `slug`:"real-madrid-b--1", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=4618", `website`:"", `yearFormed`:-1})
create (_196:`Player` {`age`:20, `birthday`:"11 Jan, 1995", `birthplace`:"", `height`:"", `name`:"Joe Rothwell", `nationality`:"England", `slug`:"joe-rothwell-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=81065", `weight`:""})
create (_197:`Player` {`age`:20, `birthday`:"05 Feb, 1995", `birthplace`:"Brussels, Belgium", `height`:"", `name`:"Adnan Januzaj", `nationality`:"Belgium", `slug`:"adnan-januzaj-belgium", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=70148", `weight`:""})
create (_198:`Player` {`age`:33, `birthday`:"28 Jul, 1981", `birthplace`:"Wallsend, England", `height`:"1.88m", `name`:"Michael Carrick", `nationality`:"England", `slug`:"michael-carrick-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=17042", `weight`:"72.56kg"})
create (_199:`Team` {`address1`:"748 High Road", `address2`:"Tottenham", `address3`:"London", `chairman`:"D Levy", `ground`:"White Hart Lane", `lat`:51.603267, `lng`:-0.065768, `name`:"Tottenham", `nickname`:"Spurs", `postcode`:"N17 0AP", `slug`:"tottenham-1882", `trainer`:"Mauricio Pochettino", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2590", `website`:"www.spurs.co.uk", `yearFormed`:1882})
create (_200:`Player` {`age`:25, `birthday`:"09 Mar, 1990", `birthplace`:"Amsterdam, Netherlands", `height`:"1.78m", `name`:"Daley Blind", `nationality`:"Netherlands", `slug`:"daley-blind-netherlands", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=55789", `weight`:"71.2kg"})
create (_201:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Euroborg", `lat`:53.206227, `lng`:6.591466, `name`:"FC Groningen", `nickname`:"", `postcode`:"", `slug`:"fc-groningen--1", `trainer`:"Erwin van de Looi", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=973", `website`:"", `yearFormed`:-1})
create (_202:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Amsterdam ArenA", `lat`:52.314353, `lng`:4.942843, `name`:"Ajax", `nickname`:"", `postcode`:"", `slug`:"ajax--1", `trainer`:"Frank de Boer", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=80", `website`:"", `yearFormed`:-1})
create (_203:`Player` {`age`:29, `birthday`:"09 Jul, 1985", `birthplace`:"Stevenage", `height`:"1.75m", `name`:"Ashley Young", `nationality`:"England", `slug`:"ashley-young-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=36330", `weight`:"64.4kg"})
create (_204:`Player` {`age`:25, `birthday`:"14 Aug, 1989", `birthplace`:"Bilbao, Spain", `height`:"1.83m", `name`:"Ander Herrera", `nationality`:"Spain", `slug`:"ander-herrera-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=53691", `weight`:"76.19kg"})
create (_205:`Team` {`address1`:"San Mames", `address2`:"Felipe Serrate", `address3`:"", `chairman`:"", `ground`:"San Mames", `lat`:41.549611, `lng`:-4.255266, `name`:"Ath Bilbao", `nickname`:"", `postcode`:"", `slug`:"ath-bilbao-1898", `trainer`:"Ernesto Valverde", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=207", `website`:"www.athletic-club.net/", `yearFormed`:1898})
create (_206:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"La Romareda", `lat`:41.635586, `lng`:-0.900792, `name`:"Zaragoza", `nickname`:"", `postcode`:"", `slug`:"zaragoza--1", `trainer`:"Ranko Popovic", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2162", `website`:"www.realzaragoza.com", `yearFormed`:-1})
create (_207:`Player` {`age`:21, `birthday`:"23 Mar, 1994", `birthplace`:"Crewe", `height`:"1.83m", `name`:"Nick Powell", `nationality`:"England", `slug`:"nick-powell-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=55513", `weight`:""})
create (_208:`Team` {`address1`:"King Power Stadium", `address2`:"Filbert Way", `address3`:"Leicester", `chairman`:"Vichai Srivaddhanaprabha", `ground`:"King Power Stadium", `lat`:52.620397, `lng`:-1.142335, `name`:"Leicester", `nickname`:"The Foxes", `postcode`:"LE2 7FL", `slug`:"leicester-1884", `trainer`:"Nigel Pearson", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1527", `website`:"www.lcfc.co.uk", `yearFormed`:1884})
create (_209:`Team` {`address1`:"JJB Stadium", `address2`:"Loire Drive", `address3`:"Wigan", `chairman`:"David Whelan", `ground`:"DW Stadium", `lat`:53.547654, `lng`:-2.654076, `name`:"Wigan", `nickname`:"The Latics", `postcode`:"WN5 0UH", `slug`:"wigan-1932", `trainer`:"Gary Caldwell", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2783", `website`:"www.wiganlatics.co.uk", `yearFormed`:1932})
create (_210:`Team` {`address1`:"Football Ground", `address2`:"Gresty Road", `address3`:"Crewe", `chairman`:"John Bowler", `ground`:"Alexandra Stadium", `lat`:53.087402, `lng`:-2.435733, `name`:"Crewe", `nickname`:"The Railwaymen", `postcode`:"CW2 6EB", `slug`:"crewe-1877", `trainer`:"Steve Davis", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=652", `website`:"www.crewealex.net", `yearFormed`:1877})
create (_211:`Player` {`age`:29, `birthday`:"04 Aug, 1985", `birthplace`:"Lago Agrio, Ecuador", `height`:"1.8m", `name`:"Luis Antonio Valencia", `nationality`:"Ecuador", `slug`:"luis-antonio-valencia-ecuador", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=40454", `weight`:"77.1kg"})
create (_212:`Player` {`age`:27, `birthday`:"22 Nov, 1987", `birthplace`:"Brussels, Belgium", `height`:"1.93m", `name`:"Marouane Fellaini", `nationality`:"Belgium", `slug`:"marouane-fellaini-belgium", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=46145", `weight`:"83.9kg"})
create (_213:`Player` {`age`:19, `birthday`:"01 Jan, 1996", `birthplace`:"Belgium", `height`:"", `name`:"Andreas Pereira", `nationality`:"Brazil", `slug`:"andreas-pereira-brazil", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=77615", `weight`:""})
create (_214:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Philips Stadion", `lat`:51.441929, `lng`:5.469394, `name`:"PSV Eindhoven", `nickname`:"", `postcode`:"", `slug`:"psv-eindhoven--1", `trainer`:"Phillip Cocu", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2071", `website`:"", `yearFormed`:-1})
create (_215:`Player` {`age`:29, `birthday`:"10 Feb, 1986", `birthplace`:"Santa Marta, Colombia", `height`:"1.78m", `name`:"Radamel Falcao", `nationality`:"Colombia", `slug`:"radamel-falcao-colombia", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=49207", `weight`:"71.2kg"})
create (_216:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Stade Louis II", `lat`:43.727571, `lng`:7.415458, `name`:"Monaco", `nickname`:"", `postcode`:"", `slug`:"monaco--1", `trainer`:"Leonardo Jardim", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1674", `website`:"www.asm-fc.com/", `yearFormed`:-1})
create (_217:`Player` {`age`:29, `birthday`:"24 Oct, 1985", `birthplace`:"Liverpool, England", `height`:"1.78m", `name`:"Wayne Rooney", `nationality`:"England", `slug`:"wayne-rooney-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=30921", `weight`:"77.1kg"})
create (_218:`Player` {`age`:31, `birthday`:"06 Aug, 1983", `birthplace`:"Rotterdam, Netherlands", `height`:"1.88m", `name`:"Robin van Persie", `nationality`:"Netherlands", `slug`:"robin-van-persie-netherlands", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=30289", `weight`:"70.29kg"})
create (_219:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"De Kuip", `lat`:51.893865, `lng`:4.523228, `name`:"Feyenoord", `nickname`:"", `postcode`:"", `slug`:"feyenoord--1", `trainer`:"Fred Rutten", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=991", `website`:"", `yearFormed`:-1})
create (_220:`Player` {`age`:19, `birthday`:"01 Dec, 1995", `birthplace`:"Biddulph", `height`:"", `name`:"James Wilson", `nationality`:"England", `slug`:"james-wilson-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=75595", `weight`:""})
create (_221:`Player` {`age`:29, `birthday`:"03 Sep, 1985", `birthplace`:"Whitehaven", `height`:"1.83m", `name`:"Scott Carson", `nationality`:"England", `slug`:"scott-carson-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=35776", `weight`:"85.71kg"})
create (_222:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Bursa Ataturk Stadi", `name`:"Bursaspor", `nickname`:"", `postcode`:"", `slug`:"bursaspor--1", `trainer`:"Senol Gunes", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=387", `website`:"", `yearFormed`:-1})
create (_223:`Team` {`address1`:"The Hawthorns", `address2`:"Halfords Lane", `address3`:"West Bromwich, West Mids.", `chairman`:"Jeremy Peace", `ground`:"The Hawthorns", `lat`:52.505525, `lng`:-1.964545, `name`:"West Brom", `nickname`:"The Baggies/Throstles/Albion", `postcode`:"B71 4LF", `slug`:"west-brom-1878", `trainer`:"Tony Pulis", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2744", `website`:"www.wba.co.uk", `yearFormed`:1878})
create (_224:`Team` {`address1`:"Hillsborough", `address2`:"Sheffield", `address3`:"", `chairman`:"Milan Mandaric", `ground`:"Hillsborough", `lat`:27.918454, `lng`:-82.348806, `name`:"Sheff Wed", `nickname`:"The Owls", `postcode`:"S6 1SW", `slug`:"sheff-wed-1867", `trainer`:"Stuart Gray", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2330", `website`:"www.swfc.co.uk", `yearFormed`:1867})
create (_225:`Team` {`address1`:"Anfield Road", `address2`:"Liverpool", `address3`:"", `chairman`:"John W Henry.", `ground`:"Anfield", `lat`:53.430744, `lng`:-2.960775, `name`:"Liverpool", `nickname`:"The Reds", `postcode`:"L4 OTH", `slug`:"liverpool-1892", `trainer`:"Brendan Rodgers", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1563", `website`:"www.liverpoolfc.tv", `yearFormed`:1892})
create (_226:`Player` {`age`:22, `birthday`:"05 Oct, 1992", `birthplace`:"", `height`:"1.91m", `name`:"Lee Nicholls", `nationality`:"England", `slug`:"lee-nicholls-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=53114", `weight`:"84.81kg"})
create (_227:`Team` {`address1`:"Sixfields Stadium", `address2`:"Upton Way", `address3`:"Northampton", `chairman`:"David Cardoza", `ground`:"Sixfields Stadium", `lat`:52.235269, `lng`:-0.933565, `name`:"Northampton", `nickname`:"The Cobblers", `postcode`:"NN5 5QA", `slug`:"northampton-1897", `trainer`:"Chris Wilder", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1867", `website`:"www.ntfc.co.uk", `yearFormed`:1897})
create (_228:`Team` {`address1`:"Livingstone Road", `address2`:"Accrington", `address3`:"Lancashire", `chairman`:"Peter Marsden", `ground`:"The Crown Ground", `lat`:53.765394, `lng`:-2.371025, `name`:"Accrington", `nickname`:"Stanley", `postcode`:"BB5 5BX", `slug`:"accrington-1968", `trainer`:"John Coleman", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=42", `website`:"www.accringtonstanley.co.uk", `yearFormed`:1968})
create (_229:`Team` {`address1`:"Victoria Park", `address2`:"Clarence Road", `address3`:"Hartlepool", `chairman`:"Ken Hodcroft", `ground`:"The Victoria Ground", `lat`:52.339634, `lng`:-2.056431, `name`:"Hartlepool", `nickname`:"Pools", `postcode`:"TS24 8BZ", `slug`:"hartlepool-1908", `trainer`:"Ronnie Moore", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1190", `website`:"www.hartlepoolunited.co.uk", `yearFormed`:1908})
create (_230:`Player` {`age`:33, `birthday`:"30 Dec, 1981", `birthplace`:"Muscat, Oman", `height`:"1.93m", `name`:"Ali Al Habsi", `nationality`:"Oman", `slug`:"ali-al-habsi-oman", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=43617", `weight`:"78.46kg"})
create (_231:`Team` {`address1`:"North West Suite", `address2`:"44 Tower Point", `address3`:"North Road, Brighton", `chairman`:"Tony Bloom", `ground`:"Amex Stadium", `lat`:50.861539, `lng`:-0.083677, `name`:"Brighton", `nickname`:"The Seagulls", `postcode`:"BN1 1YR", `slug`:"brighton-1901", `trainer`:"Chris Hughton", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=381", `website`:"www.seagulls.co.uk", `yearFormed`:1901})
create (_232:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Lyn Oslo", `nickname`:"", `postcode`:"", `slug`:"lyn-oslo--1", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1588", `website`:"", `yearFormed`:-1})
create (_233:`Player` {`age`:20, `birthday`:"11 Nov, 1994", `birthplace`:"", `height`:"", `name`:"Luke Ainscough", `nationality`:"England", `slug`:"luke-ainscough-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=74227", `weight`:""})
create (_234:`Player` {`age`:21, `birthday`:"15 Oct, 1993", `birthplace`:"", `height`:"", `name`:"Jack Phillips", `nationality`:"England", `slug`:"jack-phillips-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=74230", `weight`:""})
create (_235:`Player` {`age`:28, `birthday`:"01 Aug, 1986", `birthplace`:"Hartlepool", `height`:"1.78m", `name`:"Andrew Taylor", `nationality`:"England", `slug`:"andrew-taylor-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=39130", `weight`:"68.94kg"})
create (_236:`Team` {`address1`:"Bradford & Bingley Stadium", `address2`:"Valley Parade", `address3`:"Bradford, West Yorkshire", `chairman`:"J Rhodes, M Lawn", `ground`:"The Coral Windows Stadium", `lat`:53.804397, `lng`:-1.759378, `name`:"Bradford", `nickname`:"The Bantams", `postcode`:"BD8 7DY", `slug`:"bradford-1903", `trainer`:"Phil Parkinson", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=234", `website`:"www.bradfordcityfc.co.uk", `yearFormed`:1903})
create (_237:`Team` {`address1`:"Riverside Stadium", `address2`:"Middlesbrough", `address3`:"Cleveland", `chairman`:"Steve Gibson", `name`:"Middlesbro", `nickname`:"Boro", `postcode`:"TS3 6RS", `slug`:"middlesbro-1876", `trainer`:"Aitor Karanka", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1697", `website`:"www.mfc.co.uk", `yearFormed`:1876})
create (_238:`Player` {`age`:22, `birthday`:"05 Mar, 1993", `birthplace`:"", `height`:"", `name`:"Harry Maguire", `nationality`:"England", `slug`:"harry-maguire-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=58712", `weight`:""})
create (_239:`Player` {`age`:33, `birthday`:"12 Apr, 1982", `birthplace`:"Stirling", `height`:"1.8m", `name`:"Gary Caldwell", `nationality`:"Scotland", `slug`:"gary-caldwell-scotland", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=18874", `weight`:"74.83kg"})
create (_240:`Team` {`address1`:"Celtic Park", `address2`:"Glasgow", `address3`:"Scotland", `chairman`:"Dr John Reid MP", `name`:"Celtic", `nickname`:"The Bhoys", `postcode`:"G40 3RE", `slug`:"celtic-1888", `trainer`:"Ronny Deila", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=512", `website`:"www.celticfc.net", `yearFormed`:1888})
create (_241:`Team` {`address1`:"Easter Road Stadium", `address2`:"12 Albion Place", `address3`:"Edinburgh", `chairman`:"Rod Petrie", `name`:"Hibernian", `nickname`:"The Hibees", `postcode`:"EH7 5QG", `slug`:"hibernian-1875", `trainer`:"Alan Stubbs", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1227", `website`:"www.hibs.co.uk", `yearFormed`:1875})
create (_242:`Team` {`address1`:"Pride Park Stadium", `address2`:"Derby", `address3`:"", `chairman`:"Andrew Appleby", `ground`:"IPro Stadium", `lat`:52.914945, `lng`:-1.447319, `name`:"Derby", `nickname`:"The Rams", `postcode`:"DE24 8XL", `slug`:"derby-1884", `trainer`:"Steve McClaren", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=747", `website`:"www.dcfc.co.uk", `yearFormed`:1884})
create (_243:`Team` {`address1`:"The Ricoh Arena", `address2`:"Phoenix Way", `address3`:"Foleshill, Coventry", `chairman`:"Tim Fisher", `ground`:"Ricoh Arena", `lat`:52.448108, `lng`:-1.495639, `name`:"Coventry", `nickname`:"The Sky Blues", `postcode`:"CV6 6GE", `slug`:"coventry-1883", `trainer`:"Tony Mowbray", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=621", `website`:"www.ccfc.co.uk", `yearFormed`:1883})
create (_244:`Team` {`address1`:"Northern Echo Arena", `address2`:"Neasham Road", `address3`:"Darlington", `chairman`:"George Houghton", `ground`:"Northern Echo Arena", `name`:"Darlington", `nickname`:"The Quakers", `postcode`:"DL2 1DL", `slug`:"darlington-1883", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=719", `website`:"www. darlington-fc.net", `yearFormed`:1883})
create (_245:`Player` {`age`:35, `birthday`:"24 Sep, 1979", `birthplace`:"Aylesbury", `height`:"1.8m", `name`:"Emmerson Boyce", `nationality`:"Barbados", `slug`:"emmerson-boyce-barbados", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=14944", `weight`:"73.02kg"})
create (_246:`Team` {`address1`:"Crystal Palace Football Club", `address2`:"Selhurst Park Stadium", `address3`:"London", `chairman`:"Steve Parish & Martin Long", `ground`:"Selhurst Park", `lat`:51.398272, `lng`:-0.085419, `name`:"C Palace", `nickname`:"The Eagles", `postcode`:"SE25 6PU", `slug`:"c-palace-1905", `trainer`:"Alan Pardew", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=646", `website`:"www.cpfc.co.uk", `yearFormed`:1905})
create (_247:`Team` {`address1`:"Kenilworth Road Stadium", `address2`:"1 Maple Road", `address3`:"Luton, Beds.", `chairman`:"Nick Owen", `ground`:"Kenilworth Road", `lat`:51.884584, `lng`:-0.428987, `name`:"Luton", `nickname`:"The Hatters", `postcode`:"LU4 8AW", `slug`:"luton-1885", `trainer`:"John Still", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1628", `website`:"www.lutontown.co.uk", `yearFormed`:1885})
create (_248:`Player` {`age`:27, `birthday`:"25 Apr, 1988", `birthplace`:"Sakbayeme, Cameroon", `height`:"1.83m", `name`:"Gaetan Bong", `nationality`:"Cameroon", `slug`:"gaetan-bong-cameroon", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=53880", `weight`:"72.56kg"})
create (_249:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Valenciennes", `nickname`:"", `postcode`:"", `slug`:"valenciennes--1", `trainer`:"David Le Frapper", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3682", `website`:"", `yearFormed`:-1})
create (_250:`Player` {`age`:24, `birthday`:"08 Apr, 1991", `birthplace`:"Scotland", `height`:"1.85m", `name`:"Aaron Sinclair", `nationality`:"Scotland", `slug`:"aaron-sinclair-scotland", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=50806", `weight`:"73.02kg"})
create (_251:`Team` {`address1`:"Firhill Stadium", `address2`:"80 Firhill Road", `address3`:"Glasgow", `chairman`:"", `ground`:"Firhill Stadium", `lat`:55.881557, `lng`:-4.269465, `name`:"Partick", `nickname`:"The Jags", `postcode`:"G20 7BA", `slug`:"partick-1876", `trainer`:"Alan Archibald", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2081", `website`:"www.ptfc.co.uk/", `yearFormed`:1876})
create (_252:`Team` {`address1`:"Links Park Stadium", `address2`:"Wellington Street", `address3`:"Montrose", `chairman`:"", `ground`:"Links Park", `lat`:56.713691, `lng`:-2.459130, `name`:"Montrose", `nickname`:"The Gable Endies", `postcode`:"DD10 8QD", `slug`:"montrose-1879", `trainer`:"Paul Hegarty", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1730", `website`:"www.montrosefc.co.uk/", `yearFormed`:1879})
create (_253:`Player` {`age`:29, `birthday`:"28 Sep, 1985", `birthplace`:"Mansfield", `height`:"1.8m", `name`:"James Perch", `nationality`:"England", `slug`:"james-perch-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=36468", `weight`:"76.19kg"})
create (_254:`Player` {`age`:29, `birthday`:"30 Nov, 1985", `birthplace`:"Luton", `height`:"1.85m", `name`:"Leon Barnett", `nationality`:"England", `slug`:"leon-barnett-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=33636", `weight`:"71.66kg"})
create (_255:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Aylesbury", `nickname`:"", `postcode`:"", `slug`:"aylesbury--1", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=188", `website`:"", `yearFormed`:-1})
create (_256:`Player` {`age`:27, `birthday`:"06 Dec, 1987", `birthplace`:"", `height`:"1.65m", `name`:"Jason Pearce", `nationality`:"England", `slug`:"jason-pearce-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=45984", `weight`:"70.29kg"})
create (_257:`Team` {`address1`:"Dean Court Ground", `address2`:"Bournemouth", `address3`:"Dorset", `chairman`:"Jeff Mostyn", `ground`:"Goldsands Stadium", `name`:"Bournemouth", `nickname`:"The Cherries", `postcode`:"BH7 7AF", `slug`:"bournemouth-1899", `trainer`:"Eddie Howe", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=359", `website`:"www.afcb.co.uk", `yearFormed`:1899})
create (_258:`Team` {`address1`:"Kingfield Sports Ground", `address2`:"Kingfield", `address3`:"Woking,Surrey", `chairman`:"", `name`:"Woking", `nickname`:"The Cardinals", `postcode`:"GU22 9AA", `slug`:"woking-1889", `trainer`:"Garry Hill", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2847", `website`:"http://www.wokingfc.co.uk/home/", `yearFormed`:1889})
create (_259:`Player` {`age`:32, `birthday`:"13 May, 1982", `birthplace`:"Barcelona", `height`:"1.7m", `name`:"Albert Crusat", `nationality`:"Spain", `slug`:"albert-crusat-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=53668", `weight`:"64.4kg"})
create (_260:`Team` {`address1`:"Estadio del Mediterraneo", `address2`:"Almeria", `address3`:"Andalusia", `chairman`:"", `ground`:"Juegos Mediterraneos", `lat`:36.840067, `lng`:-2.435467, `name`:"Almeria", `nickname`:"Almeria", `postcode`:"", `slug`:"almeria-1989", `trainer`:"Sergi Barjuan", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3110", `website`:"www.udalmeriasad.com/", `yearFormed`:1989})
create (_261:`Player` {`age`:20, `birthday`:"24 Jan, 1995", `birthplace`:"", `height`:"", `name`:"Ryan Meadows", `nationality`:"England", `slug`:"ryan-meadows-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=74041", `weight`:""})
create (_262:`Player` {`age`:27, `birthday`:"21 Jul, 1987", `birthplace`:"Dublin", `height`:"1.85m", `name`:"Chris McCann", `nationality`:"Ireland", `slug`:"chris-mccann-ireland", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=41613", `weight`:"74.83kg"})
create (_263:`Team` {`address1`:"Turf Moor", `address2`:"Burnley", `address3`:"", `chairman`:"J Banaszkiewicz and M Garlick", `ground`:"Turf Moor", `lat`:53.788987, `lng`:-2.230235, `name`:"Burnley", `nickname`:"The Clarets", `postcode`:"BB10 4BX", `slug`:"burnley-1882", `trainer`:"Sean Dyche", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=435", `website`:"www.burnleyfootballclub.com/", `yearFormed`:1882})
create (_264:`Player` {`age`:26, `birthday`:"22 Apr, 1989", `birthplace`:"Northern Ireland", `height`:"1.8m", `name`:"James McClean", `nationality`:"Ireland", `slug`:"james-mcclean-ireland", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=58543", `weight`:"69.84kg"})
create (_265:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Brandywell Stadium", `lat`:54.991172, `lng`:-7.336547, `name`:"Derry City", `nickname`:"", `postcode`:"", `slug`:"derry-city--1", `trainer`:"Declan Devine", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=808", `website`:"", `yearFormed`:-1})
create (_266:`Player` {`age`:21, `birthday`:"30 Sep, 1993", `birthplace`:"Llanelli", `height`:"1.78m", `name`:"Emyr Huws", `nationality`:"Wales", `slug`:"emyr-huws-wales", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=67899", `weight`:"73.02kg"})
create (_267:`Player` {`age`:32, `birthday`:"15 Jan, 1983", `birthplace`:"Nottingham", `height`:"1.73m", `name`:"Jermaine Pennant", `nationality`:"England", `slug`:"jermaine-pennant-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=16001", `weight`:"63.49kg"})
create (_268:`Team` {`address1`:"Molineux Ground", `address2`:"Waterloo Road", `address3`:"Wolverhampton", `chairman`:"Steve Morgan", `ground`:"Molineux Stadium", `lat`:52.590281, `lng`:-2.130400, `name`:"Wolves", `nickname`:"Wolves", `postcode`:"WV1 4QR", `slug`:"wolves-1877", `trainer`:"Kenny Jackett", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2848", `website`:"www.wolves.co.uk", `yearFormed`:1877})
create (_269:`Team` {`address1`:"Britannia Stadium", `address2`:"Stanley Matthews Way", `address3`:"Stoke-on-Trent", `chairman`:"Peter Coates", `ground`:"Britannia Stadium", `lat`:52.988340, `lng`:-2.175590, `name`:"Stoke", `nickname`:"The Potters", `postcode`:"ST4 4EG", `slug`:"stoke-1863", `trainer`:"Mark Hughes", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2477", `website`:"www.stokecityfc.com/", `yearFormed`:1863})
create (_270:`Team` {`address1`:"", `address2`:"Meadow Lane", `address3`:"Nottingham", `chairman`:"Ray Trew", `ground`:"Meadow Lane", `lat`:36.564770, `lng`:-87.317790, `name`:"Notts Co", `nickname`:"The Magpies", `postcode`:"NG2 3HJ", `slug`:"notts-co-1862", `trainer`:"Ricardo Moniz", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1871", `website`:"www.nottscountyfc.co.uk", `yearFormed`:1862})
create (_271:`Player` {`age`:25, `birthday`:"06 Oct, 1989", `birthplace`:"Gurye, Korea Republic", `height`:"1.78m", `name`:"Kim Bo-Kyung", `nationality`:"South Korea", `slug`:"kim-bo-kyung-south-korea", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=54568", `weight`:""})
create (_272:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Oita", `nickname`:"Oita", `postcode`:"", `slug`:"oita--1", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=4041", `website`:"", `yearFormed`:-1})
create (_273:`Player` {`age`:17, `birthday`:"19 Jun, 1997", `birthplace`:"", `height`:"", `name`:"Sheyi Ojo", `nationality`:"England", `slug`:"sheyi-ojo-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=80195", `weight`:""})
create (_274:`Player` {`age`:32, `birthday`:"15 Feb, 1983", `birthplace`:"Inverness", `height`:"1.78m", `name`:"Don Cowie", `nationality`:"Scotland", `slug`:"don-cowie-scotland", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=24698", `weight`:"71.66kg"})
create (_275:`Team` {`address1`:"Caledonian Stadium", `address2`:"East Longman", `address3`:"Inverness", `chairman`:"George Fraser", `name`:"Inverness CT", `nickname`:"Caley", `postcode`:"IV1 1FF", `slug`:"inverness-ct-1994", `trainer`:"John Hughes", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=482", `website`:"www.caleythistleonline.com", `yearFormed`:1994})
create (_276:`Team` {`address1`:"Victoria Park Stadium", `address2`:"Jubilee Road", `address3`:"Dingwall", `chairman`:"", `ground`:"Victoria Park, Dingwall", `name`:"Ross County", `nickname`:"County, The Staggies", `postcode`:"IV15 9QW", `slug`:"ross-county-1929", `trainer`:"Jim McIntyre", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2117", `website`:"www.rosscountyfootballclub.co.uk/", `yearFormed`:1929})
create (_277:`Player` {`age`:20, `birthday`:"24 Feb, 1995", `birthplace`:"", `height`:"1.73m", `name`:"Josh Murphy", `nationality`:"England", `slug`:"josh-murphy-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=67647", `weight`:""})
create (_278:`Player` {`age`:30, `birthday`:"24 Feb, 1985", `birthplace`:"Odder, Denmark", `height`:"1.83m", `name`:"William Kvist", `nationality`:"Denmark", `slug`:"william-kvist-denmark", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=44671", `weight`:"78.46kg"})
create (_279:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"Erwin Staudt", `ground`:"Mercedes-Benz Arena", `lat`:48.792236, `lng`:9.232079, `name`:"Stuttgart", `nickname`:"Die Roten", `postcode`:"", `slug`:"stuttgart-1893", `trainer`:"Huub Stevens", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2682", `website`:"www.vfb-stuttgart.de", `yearFormed`:1893})
create (_280:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Parken Stadion", `name`:"FC Copenhagen", `nickname`:"", `postcode`:"", `slug`:"fc-copenhagen--1", `trainer`:"Stale Solbakken", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=616", `website`:"", `yearFormed`:-1})
create (_281:`Player` {`age`:19, `birthday`:"05 Sep, 1995", `birthplace`:"", `height`:"", `name`:"Declan Poole", `nationality`:"England", `slug`:"declan-poole-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=74270", `weight`:""})
create (_282:`Player` {`age`:21, `birthday`:"18 Jan, 1994", `birthplace`:"", `height`:"", `name`:"Tim Chow", `nationality`:"England", `slug`:"tim-chow-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=74247", `weight`:""})
create (_283:`Player` {`age`:22, `birthday`:"13 Oct, 1992", `birthplace`:"", `height`:"", `name`:"Guillermo Andres", `nationality`:"Spain", `slug`:"guillermo-andres-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=74353", `weight`:""})
create (_284:`Player` {`age`:21, `birthday`:"15 Mar, 1994", `birthplace`:"", `height`:"", `name`:"Patrick Antelmi", `nationality`:"Australia", `slug`:"patrick-antelmi-australia", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=74229", `weight`:""})
create (_285:`Player` {`age`:26, `birthday`:"22 Oct, 1988", `birthplace`:"England", `height`:"1.75m", `name`:"Billy McKay", `nationality`:"Northern Ireland", `slug`:"billy-mckay-northern-ireland", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=51707", `weight`:""})
create (_286:`Player` {`age`:30, `birthday`:"10 Feb, 1985", `birthplace`:"Wolverhampton", `height`:"1.88m", `name`:"Leon Clarke", `nationality`:"England", `slug`:"leon-clarke-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=36472", `weight`:"89.34kg"})
create (_287:`Team` {`address1`:"Broadfield Stadium", `address2`:"Brighton Road", `address3`:"Crawley", `chairman`:"Dave Pottinger", `ground`:"Broadfield Stadium", `lat`:51.099545, `lng`:-0.194702, `name`:"Crawley", `nickname`:"", `postcode`:"RH11 9RX", `slug`:"crawley-1896", `trainer`:"Dean Saunders", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=649", `website`:"www.crawleytownfc.com/", `yearFormed`:1896})
create (_288:`Team` {`address1`:"Proact Stadium", `address2`:"1866, Sheffield Road", `address3`:"Whittington Moor, Chesterfield", `chairman`:"Dave Allen", `ground`:"Proact Stadium", `lat`:53.253538, `lng`:-1.425790, `name`:"Chesterfield", `nickname`:"Spireites", `postcode`:"S41 8NZ", `slug`:"chesterfield-1866", `trainer`:"Paul Cook", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=656", `website`:"www.chesterfield-fc.co.uk/", `yearFormed`:1866})
create (_289:`Team` {`address1`:"South Africa Road", `address2`:"Shepherds Bush", `address3`:"London", `chairman`:"Tony Fernandez", `ground`:"Loftus Road Stadium", `lat`:51.509394, `lng`:-0.232017, `name`:"QPR", `nickname`:"The R's", `postcode`:"W12 7PA", `slug`:"qpr-1882", `trainer`:"Chris Ramsey", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2093", `website`:"www.qpr.co.uk", `yearFormed`:1882})
create (_290:`Team` {`address1`:"Roots Hall Football Ground", `address2`:"Victoria Avenue", `address3`:"Southend-On-Sea, Essex", `chairman`:"Ron Martin", `ground`:"Roots Hall", `lat`:51.549044, `lng`:0.701549, `name`:"Southend", `nickname`:"The Shrimpers", `postcode`:"SS2 6NQ", `slug`:"southend-1906", `trainer`:"Phil Brown", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2393", `website`:"www.southendunited.co.uk", `yearFormed`:1906})
create (_291:`Team` {`address1`:"Aggborough Stadium", `address2`:"Hoo Road", `address3`:"Kidderminster", `chairman`:"Barry Norgrove", `ground`:"Aggborough Stadium", `lat`:52.380479, `lng`:-2.242736, `name`:"Kidderminster", `nickname`:"Harriers", `postcode`:"DY10 1NB", `slug`:"kidderminster-1886", `trainer`:"Gary Whild", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1436", `website`:"www.harriers.co.uk", `yearFormed`:1886})
create (_292:`Player` {`age`:18, `birthday`:"20 Sep, 1996", `birthplace`:"Birmingham", `height`:"", `name`:"Jerome Sinclair", `nationality`:"England", `slug`:"jerome-sinclair-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=67656", `weight`:""})
create (_293:`Player` {`age`:33, `birthday`:"02 Jul, 1981", `birthplace`:"Cayenne, France", `height`:"1.83m", `name`:"Marc-Antoine Fortune", `nationality`:"France", `slug`:"marc-antoine-fortune-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=32418", `weight`:"76.19kg"})
create (_294:`Team` {`address1`:"Keepmoat Stadium", `address2`:"Stadium Way", `address3`:"Doncaster", `chairman`:"John Ryan", `ground`:"The Keepmoat Stadium", `lat`:53.509778, `lng`:-1.113771, `name`:"Doncaster", `nickname`:"Rovers", `postcode`:"DN4 5JW", `slug`:"doncaster-1879", `trainer`:"Paul Dickov", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=800", `website`:"www.doncasterroversfc.co.uk", `yearFormed`:1879})
create (_295:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Nancy", `nickname`:"", `postcode`:"", `slug`:"nancy--1", `trainer`:"Pablo Correa", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1848", `website`:"www.asnl.net/", `yearFormed`:-1})
create (_296:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Stadion Galgenwaard", `lat`:52.079053, `lng`:5.143690, `name`:"FC Utrecht", `nickname`:"", `postcode`:"", `slug`:"fc-utrecht--1", `trainer`:"Rob Alflen", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=981", `website`:"", `yearFormed`:-1})
create (_297:`Player` {`age`:25, `birthday`:"23 Jan, 1990", `birthplace`:"", `height`:"1.78m", `name`:"Martyn Waghorn", `nationality`:"England", `slug`:"martyn-waghorn-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=48366", `weight`:"82.54kg"})
create (_298:`Team` {`address1`:"The Den", `address2`:"Zampa Road", `address3`:"Bermondsey, London", `chairman`:"John Berylson", `ground`:"The Den", `lat`:57.650000, `lng`:-4.216670, `name`:"Millwall", `nickname`:"The Lions", `postcode`:"SE16 3LN", `slug`:"millwall-1885", `trainer`:"Neil Harris", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1699", `website`:"www.millwallfc.co.uk", `yearFormed`:1885})
create (_299:`Player` {`age`:19, `birthday`:"04 Oct, 1995", `birthplace`:"", `height`:"", `name`:"Jordan Flores", `nationality`:"England", `slug`:"jordan-flores-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=77170", `weight`:""})
create (_300:`Player` {`age`:34, `birthday`:"12 Apr, 1981", `birthplace`:"Carlisle", `height`:"1.83m", `name`:"Grant Holt", `nationality`:"England", `slug`:"grant-holt-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=17954", `weight`:"76.64kg"})
create (_301:`Team` {`address1`:"The Alfred Mcalpine Stadium", `address2`:"Leeds Road", `address3`:"Huddersfield", `chairman`:"Dean Hoyle", `ground`:"John Smith's Stadium", `lat`:53.654349, `lng`:-1.768300, `name`:"Huddersfield", `nickname`:"The Terriers", `postcode`:"HD1 6PX", `slug`:"huddersfield-1908", `trainer`:"Chris Powell", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1309", `website`:"www.htafc.com", `yearFormed`:1908})
create (_302:`Team` {`address1`:"Spotland", `address2`:"Sandy Lane", `address3`:"Rochdale", `chairman`:"Chris Dunphy", `ground`:"Spotland", `lat`:48.847038, `lng`:2.438574, `name`:"Rochdale", `nickname`:"The Dale", `postcode`:"OL11 5DS", `slug`:"rochdale-1907", `trainer`:"Keith Hill", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2175", `website`:"www.rochdaleafc.co.uk/", `yearFormed`:1907})
create (_303:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Holker Street", `lat`:53.802112, `lng`:-1.776719, `name`:"Barrow", `nickname`:"", `postcode`:"", `slug`:"barrow--1", `trainer`:"David Bayliss", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=392", `website`:"www.barrowafc.com/", `yearFormed`:-1})
create (_304:`Team` {`address1`:"The Shay Stadium", `address2`:"Shaw Hill", `address3`:"Halifax", `chairman`:"", `ground`:"The Shay Stadium", `name`:"Halifax", `nickname`:"The Shaymen", `postcode`:"HX1 2YS", `slug`:"halifax-1911", `trainer`:"Neil Aspin", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1186", `website`:"www.halifaxtown.rivals.net", `yearFormed`:1911})
create (_305:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Workington", `nickname`:"", `postcode`:"", `slug`:"workington--1", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2850", `website`:"", `yearFormed`:-1})
create (_306:`Player` {`age`:18, `birthday`:"02 Dec, 1996", `birthplace`:"", `height`:"", `name`:"Sam Cosgrove", `nationality`:"England", `slug`:"sam-cosgrove-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=80290", `weight`:""})
create (_307:`Player` {`age`:18, `birthday`:"11 Sep, 1996", `birthplace`:"", `height`:"", `name`:"Louis Robles", `nationality`:"England", `slug`:"louis-robles-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=81330", `weight`:""})
create (_308:`Player` {`age`:32, `birthday`:"20 May, 1982", `birthplace`:"Plzen", `height`:"1.96m", `name`:"Petr Cech", `nationality`:"Czech Republic", `slug`:"petr-cech-czech-republic", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=26534", `weight`:"85.71kg"})
create (_309:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Stade de la Route-de-Lorient", `lat`:48.107506, `lng`:-1.712894, `name`:"Rennes", `nickname`:"", `postcode`:"", `slug`:"rennes--1", `trainer`:"Philippe Montanier", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2173", `website`:"", `yearFormed`:-1})
create (_310:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Chmel Blsany", `nickname`:"", `postcode`:"", `slug`:"chmel-blsany--1", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3236", `website`:"", `yearFormed`:-1})
create (_311:`Player` {`age`:22, `birthday`:"11 May, 1992", `birthplace`:"Bree, Belgium", `height`:"", `name`:"Thibaut Courtois", `nationality`:"Belgium", `slug`:"thibaut-courtois-belgium", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=60467", `weight`:""})
create (_312:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Cristal Arena", `lat`:51.004917, `lng`:5.533210, `name`:"Genk", `nickname`:"", `postcode`:"", `slug`:"genk--1", `trainer`:"Emilio Ferrera", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3048", `website`:"", `yearFormed`:-1})
create (_313:`Player` {`age`:19, `birthday`:"03 Oct, 1995", `birthplace`:"", `height`:"", `name`:"Mitchell Beeney", `nationality`:"England", `slug`:"mitchell-beeney-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=79262", `weight`:""})
create (_314:`Player` {`age`:21, `birthday`:"27 Oct, 1993", `birthplace`:"", `height`:"", `name`:"Jamal Blackman", `nationality`:"England", `slug`:"jamal-blackman-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=62864", `weight`:""})
create (_315:`Player` {`age`:20, `birthday`:"02 Apr, 1995", `birthplace`:"Rancagua", `height`:"", `name`:"Cristian Cuevas", `nationality`:"Chile", `slug`:"cristian-cuevas-chile", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=72156", `weight`:""})
create (_316:`Player` {`age`:21, `birthday`:"30 Dec, 1993", `birthplace`:"", `height`:"", `name`:"Daniel Pappoe", `nationality`:"England", `slug`:"daniel-pappoe-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=70734", `weight`:""})
create (_317:`Team` {`address1`:"Weston Homes Community Stadium", `address2`:"Colchester", `address3`:"Essex", `chairman`:"Robbie Cowling", `ground`:"Weston Homes Community Stadium", `lat`:51.923378, `lng`:0.897651, `name`:"Colchester", `nickname`:"The U's", `postcode`:"", `slug`:"colchester-1937", `trainer`:"Tony Humes", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=612", `website`:"www.colchesterunited.net", `yearFormed`:1937})
create (_318:`Player` {`age`:31, `birthday`:"22 Feb, 1984", `birthplace`:"Sremska Mitrovica, Yugoslavia", `height`:"1.85m", `name`:"Branislav Ivanovic", `nationality`:"Serbia", `slug`:"branislav-ivanovic-serbia", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=47694", `weight`:"83.45kg"})
create (_319:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Lok. Moscow", `nickname`:"", `postcode`:"", `slug`:"lok.-moscow--1", `trainer`:"Miodrag Bozovic", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1567", `website`:"", `yearFormed`:-1})
create (_320:`Player` {`age`:29, `birthday`:"09 Aug, 1985", `birthplace`:"Jaragua do Sul, Brazil", `height`:"1.85m", `name`:"Filipe Luis", `nationality`:"Brazil", `slug`:"filipe-luis-brazil", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=44807", `weight`:"76.64kg"})
create (_321:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Municipal de Riazor", `lat`:43.368805, `lng`:-8.417557, `name`:"Deportivo", `nickname`:"", `postcode`:"", `slug`:"deportivo--1", `trainer`:"Victor Sanchez del Amo", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=776", `website`:"", `yearFormed`:-1})
create (_322:`Player` {`age`:20, `birthday`:"27 Oct, 1994", `birthplace`:"", `height`:"", `name`:"Kurt Zouma", `nationality`:"France", `slug`:"kurt-zouma-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=61332", `weight`:""})
create (_323:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Stade Geoffroy-Guichard", `lat`:45.456811, `lng`:4.409832, `name`:"St-Etienne", `nickname`:"", `postcode`:"", `slug`:"st-etienne--1", `trainer`:"Christophe Galtier", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=935", `website`:"www.asse.fr/", `yearFormed`:-1})
create (_324:`Player` {`age`:29, `birthday`:"19 Dec, 1985", `birthplace`:"Dronfield, England", `height`:"1.88m", `name`:"Gary Cahill", `nationality`:"England", `slug`:"gary-cahill-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=40093", `weight`:"70.29kg"})
create (_325:`Player` {`age`:34, `birthday`:"07 Dec, 1980", `birthplace`:"London", `height`:"1.85m", `name`:"John Terry", `nationality`:"England", `slug`:"john-terry-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=15275", `weight`:"73.92kg"})
create (_326:`Player` {`age`:25, `birthday`:"28 Aug, 1989", `birthplace`:"Pamplona, Spain", `height`:"1.73m", `name`:"Cesar Azpilicueta", `nationality`:"Spain", `slug`:"cesar-azpilicueta-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=46344", `weight`:"69.84kg"})
create (_327:`Player` {`age`:19, `birthday`:"10 Apr, 1996", `birthplace`:"", `height`:"", `name`:"Andreas Christensen", `nationality`:"Denmark", `slug`:"andreas-christensen-denmark", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=70144", `weight`:""})
create (_328:`Player` {`age`:18, `birthday`:"04 Sep, 1996", `birthplace`:"London", `height`:"", `name`:"Charlie Colkett", `nationality`:"England", `slug`:"charlie-colkett-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=74220", `weight`:""})
create (_329:`Player` {`age`:27, `birthday`:"04 May, 1987", `birthplace`:"Arenys de Mar, Barcelona, Spai", `height`:"1.78m", `name`:"Cesc Fabregas", `nationality`:"Spain", `slug`:"cesc-fabregas-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=36694", `weight`:"72.56kg"})
create (_330:`Player` {`age`:28, `birthday`:"24 Mar, 1987", `birthplace`:"Barra do Pirai, Brazil", `height`:"1.73m", `name`:"Ramires", `nationality`:"Brazil", `slug`:"ramires-brazil", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=51604", `weight`:"64.4kg"})
create (_331:`Player` {`age`:23, `birthday`:"09 Sep, 1991", `birthplace`:"Sao Paulo, Brazil", `height`:"1.78m", `name`:"Oscar", `nationality`:"Brazil", `slug`:"oscar-brazil", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=62649", `weight`:"65.31kg"})
create (_332:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Internacional", `nickname`:"", `postcode`:"", `slug`:"internacional--1", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=4000", `website`:"", `yearFormed`:-1})
create (_333:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Sao Paulo", `nickname`:"", `postcode`:"", `slug`:"sao-paulo--1", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2233", `website`:"", `yearFormed`:-1})
create (_334:`Player` {`age`:24, `birthday`:"07 Jan, 1991", `birthplace`:"La Louviere, Belgium", `height`:"1.7m", `name`:"Eden Hazard", `nationality`:"Belgium", `slug`:"eden-hazard-belgium", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=53445", `weight`:"64.4kg"})
create (_335:`Player` {`age`:28, `birthday`:"22 Apr, 1987", `birthplace`:"Jos, Nigeria", `height`:"1.83m", `name`:"John Obi Mikel", `nationality`:"Nigeria", `slug`:"john-obi-mikel-nigeria", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=43353", `weight`:"78.46kg"})
create (_336:`Player` {`age`:26, `birthday`:"01 Aug, 1988", `birthplace`:"Vrelo, Serbia", `height`:"1.93m", `name`:"Nemanja Matic", `nationality`:"Serbia", `slug`:"nemanja-matic-serbia", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=52388", `weight`:"80.27kg"})
create (_337:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"FC Kosice", `nickname`:"", `postcode`:"", `slug`:"fc-kosice--1", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=976", `website`:"", `yearFormed`:-1})
create (_338:`Player` {`age`:26, `birthday`:"09 Aug, 1988", `birthplace`:"Ribeirao Pires, Brazil", `height`:"1.75m", `name`:"Willian", `nationality`:"Brazil", `slug`:"willian-brazil", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=47607", `weight`:"69.84kg"})
create (_339:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Anzhi Arena", `lat`:42.906748, `lng`:47.619686, `name`:"Anzhi", `nickname`:"", `postcode`:"", `slug`:"anzhi--1", `trainer`:"Gadzhi Gadzhiev", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3281", `website`:"", `yearFormed`:-1})
create (_340:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Corinthians", `nickname`:"", `postcode`:"", `slug`:"corinthians--1", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=4001", `website`:"", `yearFormed`:-1})
create (_341:`Player` {`age`:26, `birthday`:"26 May, 1988", `birthplace`:"Necocli, Colombia", `height`:"1.7m", `name`:"Juan Guillermo Cuadrado", `nationality`:"Colombia", `slug`:"juan-guillermo-cuadrado-colombia", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=53525", `weight`:"64.85kg"})
create (_342:`Team` {`address1`:"Stadio Via del Mare", `address2`:"Lecce", `address3`:"Italy", `chairman`:"", `ground`:"Via Del Mare", `lat`:42.916355, `lng`:13.903206, `name`:"Lecce", `nickname`:"", `postcode`:"", `slug`:"lecce--1", `trainer`:"Franco Lerda", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1508", `website`:"www.uslecce.it/Home.aspx", `yearFormed`:-1})
create (_343:`Player` {`age`:18, `birthday`:"03 Jan, 1997", `birthplace`:"", `height`:"", `name`:"Jeremie Boga", `nationality`:"France", `slug`:"jeremie-boga-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=79263", `weight`:""})
create (_344:`Player` {`age`:19, `birthday`:"23 Jan, 1996", `birthplace`:"", `height`:"1.93m", `name`:"Ruben Loftus-Cheek", `nationality`:"England", `slug`:"ruben-loftus-cheek-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=79669", `weight`:""})
create (_345:`Player` {`age`:37, `birthday`:"11 Mar, 1978", `birthplace`:"Abidjan, Cote d'Ivoire", `height`:"1.85m", `name`:"Didier Drogba", `nationality`:"Ivory Coast", `slug`:"didier-drogba-ivory-coast", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=29993", `weight`:"83.45kg"})
create (_346:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Turk Telekom Arena", `lat`:41.103341, `lng`:28.990898, `name`:"Galatasaray", `nickname`:"", `postcode`:"", `slug`:"galatasaray--1", `trainer`:"Hamza Hamzaoglu", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1125", `website`:"", `yearFormed`:-1})
create (_347:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Shanghai Sh", `nickname`:"", `postcode`:"", `slug`:"shanghai-sh--1", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2970", `website`:"", `yearFormed`:-1})
create (_348:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Le Mans", `nickname`:"", `postcode`:"", `slug`:"le-mans--1", `trainer`:"Regis Beunardeau", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3259", `website`:"", `yearFormed`:-1})
create (_349:`Player` {`age`:28, `birthday`:"02 Jan, 1987", `birthplace`:"Rillieux-la-Pape, France", `height`:"1.85m", `name`:"Loic Remy", `nationality`:"France", `slug`:"loic-remy-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=45647", `weight`:"79.37kg"})
create (_350:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Stade de la Licorne", `lat`:49.893992, `lng`:2.263474, `name`:"Lens", `nickname`:"", `postcode`:"", `slug`:"lens--1", `trainer`:"Antoine Kombouare", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1590", `website`:"www.rclens.fr", `yearFormed`:-1})
create (_351:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"Jean-Michel Aulas", `ground`:"Stade de Gerland", `lat`:45.723776, `lng`:4.832254, `name`:"Lyon", `nickname`:"Les Gones", `postcode`:"", `slug`:"lyon-1899", `trainer`:"Hubert Fournier", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1645", `website`:"www.olweb.fr/", `yearFormed`:1899})
create (_352:`Player` {`age`:26, `birthday`:"07 Oct, 1988", `birthplace`:"Lagarto, Brazil", `height`:"1.85m", `name`:"Diego Costa", `nationality`:"Spain", `slug`:"diego-costa-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=53664", `weight`:"83.9kg"})
create (_353:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Campo de Futbol de Vallecas", `name`:"R. Vallecano", `nickname`:"", `postcode`:"", `slug`:"r.-vallecano--1", `trainer`:"Paco Jemez", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2221", `website`:"", `yearFormed`:-1})
create (_354:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Jose Zorrilla", `lat`:-2.911181, `lng`:-79.018933, `name`:"Valladolid", `nickname`:"", `postcode`:"", `slug`:"valladolid--1", `trainer`:"Joan Francesc Ferrer", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2676", `website`:"", `yearFormed`:-1})
create (_355:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Carlos Belmonte", `lat`:38.981082, `lng`:-1.852144, `name`:"Albacete", `nickname`:"", `postcode`:"", `slug`:"albacete--1", `trainer`:"Jose Gonzalez", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=57", `website`:"", `yearFormed`:-1})
create (_356:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Estadio AXA", `lat`:41.562655, `lng`:-8.429728, `name`:"Braga", `nickname`:"", `postcode`:"", `slug`:"braga--1", `trainer`:"Sergio Conceicao", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2417", `website`:"", `yearFormed`:-1})
create (_357:`Player` {`age`:17, `birthday`:"14 Sep, 1997", `birthplace`:"", `height`:"", `name`:"Dominic Solanke", `nationality`:"England", `slug`:"dominic-solanke-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=78519", `weight`:""})
create (_358:`Player` {`age`:18, `birthday`:"07 Jan, 1997", `birthplace`:"", `height`:"", `name`:"Isaiah Brown", `nationality`:"England", `slug`:"isaiah-brown-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=69330", `weight`:""})
create (_359:`Player` {`age`:27, `birthday`:"08 Mar, 1988", `birthplace`:"Brighton", `height`:"1.85m", `name`:"John Sullivan", `nationality`:"England", `slug`:"john-sullivan-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=43058", `weight`:"88.89kg"})
create (_360:`Team` {`address1`:"R Costings Abbey Stadium", `address2`:"Newmarket Road", `address3`:"Cambridge", `chairman`:"Dave Doggett", `ground`:"Abbey Stadium", `lat`:53.454827, `lng`:-2.166825, `name`:"Cambridge U", `nickname`:"The U's", `postcode`:"CB5 8LN", `slug`:"cambridge-u-1919", `trainer`:"Richard Money", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=483", `website`:"www.cambridge-united.co.uk/page/Home/", `yearFormed`:1919})
create (_361:`Team` {`address1`:"Kingsmeadow Stadium", `address2`:"Jack Goodchild Way", `address3`:"422a Kingston Road", `chairman`:"Erik Samuelson", `ground`:"Kingsmeadow Stadium", `lat`:"51.4051429", `lng`:"-0.281975477527612", `name`:"AFC W'bledon", `nickname`:"The Dons, The Wombles", `postcode`:"KT1 3PB", `slug`:"afc-w'bledon-2002", `trainer`:"Neal Ardley", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=4194", `website`:"www.afcwimbledon.co.uk", `yearFormed`:2002})
create (_362:`Team` {`address1`:"Huish Park", `address2`:"Lufton Way", `address3`:"Yeovil,Somerset", `chairman`:"John Fry", `ground`:"Huish Park", `lat`:"50.95021015", `lng`:"-2.67406276649801", `name`:"Yeovil", `nickname`:"The Glovers", `postcode`:"BA22 8YF", `slug`:"yeovil--1", `trainer`:"Paul Sturrock", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2905", `website`:"www.ytfc.net", `yearFormed`:-1})
create (_363:`Player` {`age`:28, `birthday`:"28 Jun, 1986", `birthplace`:"Maidstone", `height`:"1.91m", `name`:"Paul Jones", `nationality`:"England", `slug`:"paul-jones-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=33668", `weight`:""})
create (_364:`Team` {`address1`:"St James Park", `address2`:"Wells Street", `address3`:"Exeter", `chairman`:"", `ground`:"St James Park", `lat`:"54.97559195", `lng`:"-1.6219728063928", `name`:"Exeter", `nickname`:"The Grecians", `postcode`:"EX4 6PX", `slug`:"exeter-1904", `trainer`:"Paul Tisdale", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=947", `website`:"www.exetercityfc.co.uk", `yearFormed`:1904})
create (_365:`Team` {`address1`:"Leyton Stadium", `address2`:"Brisbane Road", `address3`:"Leyton, London", `chairman`:"Francesco Becchetti", `ground`:"Matchroom Stadium", `lat`:"51.56006345", `lng`:"-0.0126215008531723", `name`:"Leyton Orient", `nickname`:"The O's", `postcode`:"E10 5NE", `slug`:"leyton-orient-1881", `trainer`:"Fabio Liverani", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1537", `website`:"www.leytonorient.com/", `yearFormed`:1881})
create (_366:`Player` {`age`:29, `birthday`:"21 Nov, 1985", `birthplace`:"Surrey", `height`:"1.85m", `name`:"Michael Poke", `nationality`:"England", `slug`:"michael-poke-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=38385", `weight`:"73.02kg"})
create (_367:`Team` {`address1`:"Plainmoor Ground", `address2`:"Torquay", `address3`:"Devon", `chairman`:"Alex Rowe", `ground`:"Plainmoor", `lat`:"50.4778691", `lng`:"-3.527196", `name`:"Torquay", `nickname`:"The Gulls", `postcode`:"TQ1 3PS", `slug`:"torquay-1899", `trainer`:"Chris Hargreaves", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2589", `website`:"www.torquayutdfc.co.uk", `yearFormed`:1899})
create (_368:`Team` {`address1`:"Memorial Stadium", `address2`:"Filton Avenue, Horfield", `address3`:"Bristol", `chairman`:"Nick Higgs", `ground`:"The Memorial Stadium", `lat`:"51.48625915", `lng`:"-2.58318368863849", `name`:"Bristol R", `nickname`:"Pirates", `postcode`:"BS7 0AQ", `slug`:"bristol-r-1883", `trainer`:"Darrell Clarke", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=388", `website`:"www.bristolrovers.co.uk", `yearFormed`:1883})
create (_369:`Player` {`age`:-1, `birthday`:"", `birthplace`:"", `height`:"", `name`:"Alex Bass", `nationality`:"England", `slug`:"alex-bass-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=77168", `weight`:""})
create (_370:`Player` {`age`:28, `birthday`:"18 Jul, 1986", `birthplace`:"Nice", `height`:"1.75m", `name`:"Yassin Moutaouakil", `nationality`:"France", `slug`:"yassin-moutaouakil-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=46557", `weight`:"72.11kg"})
create (_371:`Team` {`address1`:"Church Road", `address2`:"Hayes", `address3`:"", `chairman`:"", `ground`:"Kingfield Stadium", `lat`:"51.30608235", `lng`:"-0.558400753328784", `name`:"Hayes & Y", `nickname`:"", `postcode`:"UB3 2LE", `slug`:"hayes-&-y-2007", `trainer`:"Phil Babb", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=4822", `website`:"http://hyufc.com/", `yearFormed`:2007})
create (_372:`Team` {`address1`:"Fir Park", `address2`:"1-39 Firpark Street", `address3`:"Motherwell", `chairman`:"John Boyle", `name`:"Motherwell", `nickname`:"The Well/The Steelmen", `postcode`:"ML1 2QN", `slug`:"motherwell-1886", `trainer`:"Ian Baraclough", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1734", `website`:"www.motherwellfc.co.uk", `yearFormed`:1886})
create (_373:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Chateauroux", `nickname`:"", `postcode`:"", `slug`:"chateauroux--1", `trainer`:"Cedric Daury", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2985", `website`:"www.berrichonne-football.com/", `yearFormed`:-1})
create (_374:`Player` {`age`:28, `birthday`:"17 Aug, 1986", `birthplace`:"Birmingham", `height`:"1.8m", `name`:"Marcos Painter", `nationality`:"Ireland", `slug`:"marcos-painter-ireland", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=41646", `weight`:"71.66kg"})
create (_375:`Player` {`age`:20, `birthday`:"31 Oct, 1994", `birthplace`:"", `height`:"", `name`:"Liam Triggs", `nationality`:"England", `slug`:"liam-triggs-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=74509", `weight`:""})
create (_376:`Player` {`age`:20, `birthday`:"08 Feb, 1995", `birthplace`:"", `height`:"", `name`:"Joshua Warren", `nationality`:"England", `slug`:"joshua-warren-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=74505", `weight`:""})
create (_377:`Player` {`age`:20, `birthday`:"04 Jan, 1995", `birthplace`:"", `height`:"", `name`:"Adam Webster", `nationality`:"England", `slug`:"adam-webster-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=63578", `weight`:""})
create (_378:`Team` {`address1`:"The Recreation Ground", `address2`:"High Street Aldershot", `address3`:"Hampshire", `chairman`:"", `ground`:"The EEB Stadium", `name`:"Aldershot", `nickname`:"The Shots", `postcode`:"GU11 1TW", `slug`:"aldershot--1", `trainer`:"Chris Barker", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=92", `website`:"www.theshots.co.uk", `yearFormed`:-1})
create (_379:`Player` {`age`:18, `birthday`:"19 Aug, 1996", `birthplace`:"", `height`:"", `name`:"Jack Whatmaugh", `nationality`:"England", `slug`:"jack-whatmaugh-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=66115", `weight`:""})
create (_380:`Player` {`age`:28, `birthday`:"06 Feb, 1987", `birthplace`:"", `height`:"1.88m", `name`:"Joe Devera", `nationality`:"England", `slug`:"joe-devera-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=42913", `weight`:"76.19kg"})
create (_381:`Team` {`address1`:"Underhill Stadium", `address2`:"Barnet Lane", `address3`:"Barnet, Herts", `chairman`:"Mr A Kleanthous", `ground`:"The Hive Stadium", `name`:"Barnet", `nickname`:"The Bees", `postcode`:"EN5 2BE", `slug`:"barnet-1888", `trainer`:"Martin Allen", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=344", `website`:"www.barnet-fc.freeserve.co.uk", `yearFormed`:1888})
create (_382:`Player` {`age`:32, `birthday`:"30 Sep, 1982", `birthplace`:"Sidcup", `height`:"1.91m", `name`:"Ben Chorley", `nationality`:"England", `slug`:"ben-chorley-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=28928", `weight`:"83.9kg"})
create (_383:`Team` {`address1`:"Broadhall Way", `address2`:"Stevenage", `address3`:"", `chairman`:"Phil Wallace", `ground`:"Lamex Stadium", `lat`:"51.8895198", `lng`:"-0.1929883", `name`:"Stevenage", `nickname`:"", `postcode`:"SG2 8RH", `slug`:"stevenage--1", `trainer`:"Graham Westley", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2499", `website`:"", `yearFormed`:-1})
create (_384:`Team` {`address1`:"Priestfield Stadium", `address2`:"Redfern Avenue", `address3`:"Gillingham, Kent", `chairman`:"Paul Scally", `ground`:"Priestfield Stadium", `lat`:"51.3842258", `lng`:"0.560984550000012", `name`:"Gillingham", `nickname`:"The Gills", `postcode`:"ME7 4DD", `slug`:"gillingham-1893", `trainer`:"Justin Edinburgh", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1098", `website`:"www.gillinghamfootballclub.co.uk", `yearFormed`:1893})
create (_385:`Team` {`address1`:"stadium:mk", `address2`:"Stadium Way West", `address3`:"Milton Keynes", `chairman`:"Pete Winkelman", `ground`:"Stadium:mk", `lat`:"52.00954935", `lng`:"-0.733565404463521", `name`:"MK Dons", `nickname`:"The Dons", `postcode`:"MK1 1ST", `slug`:"mk-dons-1889", `trainer`:"Karl Robinson", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2812", `website`:"www.mkdons.premiumtv.co.uk/", `yearFormed`:1889})
create (_386:`Team` {`address1`:"Nacional Hockey Stadium", `address2`:"Milton Keynes", `address3`:"(No longer used for football)", `chairman`:"", `name`:"Wimbledon", `nickname`:"", `postcode`:"", `slug`:"wimbledon--1", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=5257", `website`:"", `yearFormed`:-1})
create (_387:`Player` {`age`:33, `birthday`:"07 Jan, 1982", `birthplace`:"Barnet", `height`:"1.83m", `name`:"Paul Robinson", `nationality`:"England", `slug`:"paul-robinson-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=26805", `weight`:"72.56kg"})
create (_388:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Fisher", `nickname`:"", `postcode`:"", `slug`:"fisher--1", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1001", `website`:"", `yearFormed`:-1})
create (_389:`Player` {`age`:34, `birthday`:"19 Feb, 1981", `birthplace`:"Romford", `height`:"1.75m", `name`:"Nicky Shorey", `nationality`:"England", `slug`:"nicky-shorey-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=16942", `weight`:"65.76kg"})
create (_390:`Team` {`address1`:"Ashton Gate", `address2`:"Bristol", `address3`:"", `chairman`:"Stephen Lansdown", `name`:"Bristol C", `nickname`:"The Robins", `postcode`:"BS3 2EJ", `slug`:"bristol-c-1894", `trainer`:"Steve Cotterill", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=376", `website`:"www.bcfc.co.uk", `yearFormed`:1894})
create (_391:`Team` {`address1`:"Madejski Stadium", `address2`:"Bennet Road", `address3`:"Reading, Berks.", `chairman`:"John Madejski", `name`:"Reading", `nickname`:"The Royals", `postcode`:"RG2 0FL", `slug`:"reading-1871", `trainer`:"Steve Clarke", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2125", `website`:"www.readingfc.co.uk/", `yearFormed`:1871})
create (_392:`Player` {`age`:20, `birthday`:"21 Nov, 1994", `birthplace`:"", `height`:"", `name`:"Joshua Passley", `nationality`:"England", `slug`:"joshua-passley-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=74565", `weight`:""})
create (_393:`Player` {`age`:34, `birthday`:"11 Oct, 1980", `birthplace`:"London", `height`:"1.83m", `name`:"Nyron Nosworthy", `nationality`:"Jamaica", `slug`:"nyron-nosworthy-jamaica", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=15462", `weight`:"78kg"})
create (_394:`Player` {`age`:18, `birthday`:"20 May, 1996", `birthplace`:"", `height`:"", `name`:"Cole Kpekawa", `nationality`:"England", `slug`:"cole-kpekawa-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=79063", `weight`:""})
create (_395:`Player` {`age`:20, `birthday`:"26 Aug, 1994", `birthplace`:"", `height`:"", `name`:"Dan Butler", `nationality`:"England", `slug`:"dan-butler-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=66111", `weight`:""})
create (_396:`Player` {`age`:20, `birthday`:"15 Oct, 1994", `birthplace`:"", `height`:"", `name`:"George Branford", `nationality`:"England", `slug`:"george-branford-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=74513", `weight`:""})
create (_397:`Player` {`age`:30, `birthday`:"01 May, 1984", `birthplace`:"", `height`:"1.73m", `name`:"Therry Racon", `nationality`:"France", `slug`:"therry-racon-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=47072", `weight`:"63.49kg"})
create (_398:`Player` {`age`:28, `birthday`:"16 Dec, 1986", `birthplace`:"Basildon", `height`:"1.78m", `name`:"Andy Barcham", `nationality`:"England", `slug`:"andy-barcham-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=45304", `weight`:"78kg"})
create (_399:`Player` {`age`:21, `birthday`:"26 Mar, 1994", `birthplace`:"Reading", `height`:"", `name`:"Jed Wallace", `nationality`:"England", `slug`:"jed-wallace-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=64940", `weight`:""})
create (_400:`Player` {`age`:32, `birthday`:"13 Nov, 1982", `birthplace`:"Graz", `height`:"1.85m", `name`:"Johannes Ertl", `nationality`:"Austria", `slug`:"johannes-ertl-austria", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=48003", `weight`:"78.46kg"})
create (_401:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Generali-Arena", `lat`:"50.09977565", `lng`:"14.4158442344842", `name`:"Aus. Vienna", `nickname`:"", `postcode`:"", `slug`:"aus.-vienna--1", `trainer`:"Andreas Ogris", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2688", `website`:"", `yearFormed`:-1})
create (_402:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"UPC-Arena", `lat`:"47.0463935", `lng`:"15.4547591086871", `name`:"Sturm Graz", `nickname`:"", `postcode`:"", `slug`:"sturm-graz--1", `trainer`:"Franco Foda", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2308", `website`:"", `yearFormed`:-1})
create (_403:`Player` {`age`:27, `birthday`:"12 Apr, 1988", `birthplace`:"Brighton", `height`:"1.75m", `name`:"Wes Fogden", `nationality`:"England", `slug`:"wes-fogden-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=43977", `weight`:"73.02kg"})
create (_404:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Havant & W", `nickname`:"", `postcode`:"", `slug`:"havant-&-w--1", `trainer`:"Lee Bradbury", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3056", `website`:"", `yearFormed`:-1})
create (_405:`Player` {`age`:25, `birthday`:"18 Sep, 1989", `birthplace`:"Farnborough, England", `height`:"1.8m", `name`:"James Dunne", `nationality`:"England", `slug`:"james-dunne-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=51866", `weight`:"74.83kg"})
create (_406:`Team` {`address1`:"McDiarmid Park", `address2`:"Crieff Road", `address3`:"Perth", `chairman`:"", `name`:"St Johnstone", `nickname`:"The Saints", `postcode`:"PH1 25J", `slug`:"st-johnstone-1884", `trainer`:"Tommy Wright", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2472", `website`:"", `yearFormed`:1884})
create (_407:`Player` {`age`:25, `birthday`:"09 Sep, 1989", `birthplace`:"", `height`:"", `name`:"Nigel Atangana", `nationality`:"France", `slug`:"nigel-atangana-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=76511", `weight`:""})
create (_408:`Player` {`age`:19, `birthday`:"06 Nov, 1995", `birthplace`:"", `height`:"", `name`:"Bradley Tarbuck", `nationality`:"England", `slug`:"bradley-tarbuck-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=66116", `weight`:""})
create (_409:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Princes Park", `lat`:"51.5817664", `lng`:"-0.205993780754465", `name`:"Dartford", `nickname`:"", `postcode`:"", `slug`:"dartford--1", `trainer`:"Tony Burman", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=721", `website`:"", `yearFormed`:-1})
create (_410:`Player` {`age`:29, `birthday`:"06 Nov, 1985", `birthplace`:"Ashford", `height`:"1.75m", `name`:"Danny Hollands", `nationality`:"England", `slug`:"danny-hollands-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=43588", `weight`:"79.37kg"})
create (_411:`Player` {`age`:16, `birthday`:"06 Dec, 1998", `birthplace`:"England", `height`:"", `name`:"Adam May", `nationality`:"England", `slug`:"adam-may-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=82294", `weight`:""})
create (_412:`Player` {`age`:18, `birthday`:"08 Aug, 1996", `birthplace`:"", `height`:"", `name`:"Ben Close", `nationality`:"England", `slug`:"ben-close-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=75865", `weight`:""})
create (_413:`Player` {`age`:18, `birthday`:"16 Feb, 1997", `birthplace`:"", `height`:"", `name`:"Conor Chaplin", `nationality`:"England", `slug`:"conor-chaplin-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=79825", `weight`:""})
create (_414:`Player` {`age`:26, `birthday`:"04 May, 1988", `birthplace`:"", `height`:"1.85m", `name`:"Ryan Taylor", `nationality`:"England", `slug`:"ryan-taylor-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=42967", `weight`:"66.67kg"})
create (_415:`Team` {`address1`:"Eton Park", `address2`:"Princess Way", `address3`:"Burton-on-Trent, Staffordshire", `chairman`:"Ben Robinson", `ground`:"Pirelli Stadium", `lat`:"52.8217955", `lng`:"-1.6268891411813", `name`:"Burton", `nickname`:"", `postcode`:"DE14 2RU", `slug`:"burton--1", `trainer`:"Jimmy Floyd Hasselbaink", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=427", `website`:"", `yearFormed`:-1})
create (_416:`Team` {`address1`:"The New York Stadium", `address2`:"New York Way", `address3`:"Rotherham", `chairman`:"Tony Stewart", `ground`:"New York Stadium", `lat`:"53.4272216", `lng`:"-1.36248106836802", `name`:"Rotherham", `nickname`:"The Millers", `postcode`:"S60 1AH", `slug`:"rotherham-1870", `trainer`:"Steve Evans", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2180", `website`:"www.themillers.co.uk", `yearFormed`:1870})
create (_417:`Player` {`age`:28, `birthday`:"14 Oct, 1986", `birthplace`:"", `height`:"1.8m", `name`:"Tom Craddock", `nationality`:"England", `slug`:"tom-craddock-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=43767", `weight`:"74.83kg"})
create (_418:`Team` {`address1`:"The Kassam Stadium", `address2`:"Grenoble Road", `address3`:"Oxford", `chairman`:"Darryl Eales", `ground`:"The Kassam Stadium", `lat`:"51.71638605", `lng`:"-1.20770279894718", `name`:"Oxford", `nickname`:"The U's", `postcode`:"OX4 4XP", `slug`:"oxford-1893", `trainer`:"Michael Appleton", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1964", `website`:"www.oufc.co.uk", `yearFormed`:1893})
create (_419:`Team` {`address1`:"Racecourse Ground", `address2`:"Mold Road", `address3`:"Wrexham", `chairman`:"", `ground`:"Racecourse Ground (WRX)", `lat`:53.051600, `lng`:-3.004220, `name`:"Wrexham", `nickname`:"Dragons", `postcode`:"LL11 2AN", `slug`:"wrexham-1873", `trainer`:"Carl Darlington", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2859", `website`:"www.wrexhamafc.co.uk/page/Home/", `yearFormed`:1873})
create (_420:`Player` {`age`:30, `birthday`:"15 Jul, 1984", `birthplace`:"", `height`:"1.75m", `name`:"Matt Tubbs", `nationality`:"England", `slug`:"matt-tubbs-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=45368", `weight`:"69.84kg"})
create (_421:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Salisbury", `nickname`:"", `postcode`:"", `slug`:"salisbury--1", `trainer`:"Mikey Harris", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2229", `website`:"", `yearFormed`:-1})
create (_422:`Player` {`age`:21, `birthday`:"28 Jul, 1993", `birthplace`:"", `height`:"", `name`:"Paul McCallum", `nationality`:"England", `slug`:"paul-mccallum-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=58305", `weight`:""})
create (_423:`Team` {`address1`:"Tynecastle Stadium", `address2`:"Gorgie Road", `address3`:"Edinburgh", `chairman`:"Roman Romanov", `name`:"Hearts", `nickname`:"Jambos", `postcode`:"EH11 2NL", `slug`:"hearts-1874", `trainer`:"Robbie Neilson", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1289", `website`:"www.heartsfc.co.uk", `yearFormed`:1874})
create (_424:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Dulwich H", `nickname`:"", `postcode`:"", `slug`:"dulwich-h--1", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=829", `website`:"", `yearFormed`:-1})
create (_425:`Player` {`age`:30, `birthday`:"29 Jan, 1985", `birthplace`:"Nottingham", `height`:"1.8m", `name`:"Craig Westcarr", `nationality`:"England", `slug`:"craig-westcarr-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=28581", `weight`:"82.09kg"})
create (_426:`Team` {`address1`:"Banks' Stadium", `address2`:"Bescot Crescent", `address3`:"Walsall, West Midlands", `chairman`:"Jeff Bonser", `ground`:"Bescot Stadium", `lat`:"52.5655014", `lng`:"-1.990497539062", `name`:"Walsall", `nickname`:"The Saddlers", `postcode`:"WS1 4SA", `slug`:"walsall-1888", `trainer`:"Dean Smith", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2737", `website`:"www.saddlers.co.uk", `yearFormed`:1888})
create (_427:`Team` {`address1`:"Rockingham Road", `address2`:"Kettering", `address3`:"Northants", `chairman`:"", `name`:"Kettering", `nickname`:"The Poppies", `postcode`:"", `slug`:"kettering-1872", `trainer`:"Ashley Westwood", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1428", `website`:"www.ketteringtownfc.co.uk/", `yearFormed`:1872})
create (_428:`Team` {`address1`:"Sincil Bank", `address2`:"Lincoln", `address3`:"", `chairman`:"Steff Wright", `ground`:"Sincil Bank", `lat`:"53.2157086", `lng`:"-0.5434357", `name`:"Lincoln", `nickname`:"The Imps", `postcode`:"LN5 8LD", `slug`:"lincoln-1883", `trainer`:"Chris Moyses", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1559", `website`:"www.redimps.co.uk", `yearFormed`:1883})
create (_429:`Player` {`age`:34, `birthday`:"29 Sep, 1980", `birthplace`:"Walthamstow", `height`:"1.85m", `name`:"Patrick Agyemang", `nationality`:"Ghana", `slug`:"patrick-agyemang-ghana", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=16754", `weight`:"88.89kg"})
create (_430:`Team` {`address1`:"Victoria Road", `address2`:"Dagenham", `address3`:"", `chairman`:"Dave Bennett", `ground`:"Victoria Road", `lat`:44.583420, `lng`:-78.949580, `name`:"Dag & Red", `nickname`:"Daggers", `postcode`:"RM10 7XL", `slug`:"dag-&-red--1", `trainer`:"Wayne Burnett", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=760", `website`:"www.daggers.co.uk", `yearFormed`:-1})
create (_431:`Player` {`age`:20, `birthday`:"08 Dec, 1994", `birthplace`:"", `height`:"", `name`:"Jack Maloney", `nationality`:"England", `slug`:"jack-maloney-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=66113", `weight`:""})
create (_432:`Player` {`age`:33, `birthday`:"19 Mar, 1982", `birthplace`:"Perth, Australia", `height`:"1.91m", `name`:"Brad Jones", `nationality`:"Australia", `slug`:"brad-jones-australia", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=29738", `weight`:"79.82kg"})
create (_433:`Team` {`address1`:"Edgeley Park", `address2`:"Hardcastle Road", `address3`:"Stockport, Cheshire", `chairman`:"", `ground`:"Edgeley Park", `lat`:"46.3603594", `lng`:"-98.7120492", `name`:"Stockport", `nickname`:"The Hatters", `postcode`:"SK3 9DD", `slug`:"stockport-1883", `trainer`:"Alan Lord", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2473", `website`:"www.stockportcounty.com", `yearFormed`:1883})
create (_434:`Player` {`age`:27, `birthday`:"06 Mar, 1988", `birthplace`:"Sint-Truiden, Belgium", `height`:"1.93m", `name`:"Simon Mignolet", `nationality`:"Belgium", `slug`:"simon-mignolet-belgium", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=54991", `weight`:"85.71kg"})
create (_435:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"St. Truiden", `nickname`:"", `postcode`:"", `slug`:"st.-truiden--1", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2999", `website`:"", `yearFormed`:-1})
create (_436:`Player` {`age`:21, `birthday`:"22 Jun, 1993", `birthplace`:"", `height`:"", `name`:"Danny Ward", `nationality`:"Wales", `slug`:"danny-ward-wales", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=61498", `weight`:""})
create (_437:`Team` {`address1`:"Globe Arena", `address2`:"Christie Way", `address3`:"Morecambe LA4 4TB", `chairman`:"Peter McGuigan", `ground`:"Globe Arena", `lat`:"54.0617716", `lng`:"-2.86636444598331", `name`:"Morecambe", `nickname`:"The Shrimps", `postcode`:"LA4 5JT", `slug`:"morecambe--1", `trainer`:"Jim Bentley", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1732", `website`:"www.morecambefc.com", `yearFormed`:-1})
create (_438:`Player` {`age`:30, `birthday`:"23 Aug, 1984", `birthplace`:"Greenwich, England", `height`:"1.8m", `name`:"Glen Johnson", `nationality`:"England", `slug`:"glen-johnson-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=32697", `weight`:"69.84kg"})
create (_439:`Player` {`age`:29, `birthday`:"23 Jan, 1986", `birthplace`:"Valencia, Spain", `height`:"1.83m", `name`:"Jose Enrique", `nationality`:"Spain", `slug`:"jose-enrique-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=46761", `weight`:"73.92kg"})
create (_440:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Ciutat de Valencia", `lat`:39.469750, `lng`:-0.377390, `name`:"Levante", `nickname`:"", `postcode`:"", `slug`:"levante--1", `trainer`:"Lucas Alcaraz", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3251", `website`:"www.levanteud.com", `yearFormed`:-1})
create (_441:`Player` {`age`:34, `birthday`:"19 Mar, 1981", `birthplace`:"Bouake, Cote d'Ivoire", `height`:"1.83m", `name`:"Kolo Toure", `nationality`:"Ivory Coast", `slug`:"kolo-toure-ivory-coast", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=27346", `weight`:"72.56kg"})
create (_442:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3719"})
create (_443:`Player` {`age`:25, `birthday`:"05 Jul, 1989", `birthplace`:"Zenica, Bosnia and Herzegovina", `height`:"1.85m", `name`:"Dejan Lovren", `nationality`:"Croatia", `slug`:"dejan-lovren-croatia", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=44118", `weight`:"77.1kg"})
create (_444:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Maksimir", `lat`:"45.8333119", `lng`:"16.0101508", `name`:"Dyn. Zagreb", `nickname`:"", `postcode`:"", `slug`:"dyn.-zagreb--1", `trainer`:"Zoran Mamic", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=679", `website`:"", `yearFormed`:-1})
create (_445:`Player` {`age`:25, `birthday`:"13 Feb, 1990", `birthplace`:"Paris, France", `height`:"1.85m", `name`:"Mamadou Sakho", `nationality`:"France", `slug`:"mamadou-sakho-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=50866", `weight`:"82.54kg"})
create (_446:`Player` {`age`:22, `birthday`:"05 Jul, 1992", `birthplace`:"Sevilla, Spain", `height`:"", `name`:"Alberto Moreno Perez", `nationality`:"Spain", `slug`:"alberto-moreno-perez-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=64850", `weight`:""})
create (_447:`Player` {`age`:20, `birthday`:"05 May, 1994", `birthplace`:"Madrid, Spain", `height`:"", `name`:"Javi Manquillo", `nationality`:"Spain", `slug`:"javi-manquillo-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=64986", `weight`:""})
create (_448:`Player` {`age`:30, `birthday`:"15 Dec, 1984", `birthplace`:"Handlova, Czechoslovakia", `height`:"1.88m", `name`:"Martin Skrtel", `nationality`:"Slovakia", `slug`:"martin-skrtel-slovakia", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=41978", `weight`:"79.37kg"})
create (_449:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Petrovski Stadium", `name`:"Zenit", `nickname`:"", `postcode`:"", `slug`:"zenit--1", `trainer`:"Andre Villas-Boas", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2919", `website`:"", `yearFormed`:-1})
create (_450:`Player` {`age`:22, `birthday`:"01 Jan, 1993", `birthplace`:"Liverpool, England", `height`:"1.8m", `name`:"Jon Flanagan", `nationality`:"England", `slug`:"jon-flanagan-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=58011", `weight`:"78kg"})
create (_451:`Player` {`age`:20, `birthday`:"30 Sep, 1994", `birthplace`:"Belfast", `height`:"", `name`:"Ryan McLaughlin", `nationality`:"Northern Ireland", `slug`:"ryan-mclaughlin-northern-ireland", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=68277", `weight`:""})
create (_452:`Player` {`age`:34, `birthday`:"30 May, 1980", `birthplace`:"Whiston, England", `height`:"1.83m", `name`:"Steven Gerrard", `nationality`:"England", `slug`:"steven-gerrard-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=15643", `weight`:"80.27kg"})
create (_453:`Player` {`age`:22, `birthday`:"12 Jun, 1992", `birthplace`:"Rio de Janeiro, Brazil", `height`:"1.7m", `name`:"Philippe Coutinho", `nationality`:"Brazil", `slug`:"philippe-coutinho-brazil", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=56220", `weight`:"70.29kg"})
create (_454:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Vasco", `nickname`:"", `postcode`:"", `slug`:"vasco--1", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1126", `website`:"", `yearFormed`:-1})
create (_455:`Team` {`address1`:"San Siro", `address2`:"Milan", `address3`:"Italy", `chairman`:"Massimo Moratti", `ground`:"Giuseppe Meazza", `lat`:"45.47799395", `lng`:"9.12393082797131", `name`:"Inter", `nickname`:"Nerazzurri", `postcode`:"", `slug`:"inter-1908", `trainer`:"Roberto Mancini", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1370", `website`:"www.inter.it/", `yearFormed`:1908})
create (_456:`Player` {`age`:24, `birthday`:"17 Jun, 1990", `birthplace`:"Sunderland, England", `height`:"1.83m", `name`:"Jordan Henderson", `nationality`:"England", `slug`:"jordan-henderson-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=49999", `weight`:"72.11kg"})
create (_457:`Player` {`age`:26, `birthday`:"10 May, 1988", `birthplace`:"St Albans, England", `height`:"1.68m", `name`:"Adam Lallana", `nationality`:"England", `slug`:"adam-lallana-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=44463", `weight`:"71.66kg"})
create (_458:`Player` {`age`:28, `birthday`:"09 Jan, 1987", `birthplace`:"Dourados, Brazil", `height`:"1.78m", `name`:"Lucas", `nationality`:"Brazil", `slug`:"lucas-brazil", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=47374", `weight`:"72.56kg"})
create (_459:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Gremio", `nickname`:"", `postcode`:"", `slug`:"gremio--1", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1024", `website`:"", `yearFormed`:-1})
create (_460:`Player` {`age`:21, `birthday`:"12 Jan, 1994", `birthplace`:"Frankfurt am Main, Germany", `height`:"1.88m", `name`:"Emre Can", `nationality`:"Germany", `slug`:"emre-can-germany", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=64176", `weight`:"76.19kg"})
create (_461:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"Wolfgang Holzhauser", `ground`:"BayArena", `lat`:"51.03838345", `lng`:"7.00216283100994", `name`:"B Leverkusen", `nickname`:"Werkself", `postcode`:"", `slug`:"b-leverkusen-1904", `trainer`:"Roger Schmidt", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=468", `website`:"www.bayer04.de", `yearFormed`:1904})
create (_462:`Player` {`age`:25, `birthday`:"14 Mar, 1990", `birthplace`:"Carmarthen", `height`:"1.68m", `name`:"Joe Allen", `nationality`:"Wales", `slug`:"joe-allen-wales", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=45981", `weight`:"78.46kg"})
create (_463:`Player` {`age`:20, `birthday`:"08 Dec, 1994", `birthplace`:"Kingston, Jamaica", `height`:"1.68m", `name`:"Raheem Sterling", `nationality`:"England", `slug`:"raheem-sterling-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=58401", `weight`:"67.57kg"})
create (_464:`Player` {`age`:18, `birthday`:"09 May, 1996", `birthplace`:"", `height`:"", `name`:"Cameron Brannigan", `nationality`:"England", `slug`:"cameron-brannigan-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=74212", `weight`:""})
create (_465:`Player` {`age`:19, `birthday`:"08 Dec, 1995", `birthplace`:"Southwark", `height`:"1.7m", `name`:"Jordon Ibe", `nationality`:"England", `slug`:"jordon-ibe-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=61224", `weight`:""})
create (_466:`Team` {`address1`:"Adams Park", `address2`:"Hillbottom Road", `address3`:"Sands, High Wycombe", `chairman`:"Andrew Howard", `ground`:"Adams Park", `lat`:"51.6305353", `lng`:"-0.80028913002812", `name`:"Wycombe", `nickname`:"The Chairboys", `postcode`:"HP12 4HJ", `slug`:"wycombe-1887", `trainer`:"Gareth Ainsworth", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2898", `website`:"www.wycombewanderers.co.uk", `yearFormed`:1887})
create (_467:`Player` {`age`:18, `birthday`:"24 Mar, 1997", `birthplace`:"", `height`:"", `name`:"Jordan Rossiter", `nationality`:"England", `slug`:"jordan-rossiter-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=74167", `weight`:""})
create (_468:`Player` {`age`:21, `birthday`:"20 Nov, 1993", `birthplace`:"", `height`:"", `name`:"Henoc Mukendi", `nationality`:"Congo", `slug`:"henoc-mukendi-congo", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=65890", `weight`:""})
create (_469:`Player` {`age`:33, `birthday`:"16 Feb, 1982", `birthplace`:"Kirkby, England", `height`:"1.85m", `name`:"Rickie Lambert", `nationality`:"England", `slug`:"rickie-lambert-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=16995", `weight`:"76.64kg"})
create (_470:`Team` {`address1`:"The Moss Rose Ground", `address2`:"London Road, Macclesfield", `address3`:"Cheshire", `chairman`:"Mike Rance", `ground`:"The Moss Rose Ground", `name`:"Macclesfield", `nickname`:"The Silkmen", `postcode`:"SK11 7SP", `slug`:"macclesfield-1874", `trainer`:"John Askey", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1660", `website`:"www.mtfc.co.uk", `yearFormed`:1874})
create (_471:`Player` {`age`:25, `birthday`:"01 Sep, 1989", `birthplace`:"Birmingham, England", `height`:"1.85m", `name`:"Daniel Sturridge", `nationality`:"England", `slug`:"daniel-sturridge-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=46104", `weight`:"73.92kg"})
create (_472:`Player` {`age`:24, `birthday`:"29 Mar, 1991", `birthplace`:"Bentivoglio, Italy", `height`:"1.73m", `name`:"Fabio Borini", `nationality`:"Italy", `slug`:"fabio-borini-italy", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=52228", `weight`:"71.66kg"})
create (_473:`Team` {`address1`:"Stadio Olimpico", `address2`:"Rome", `address3`:"Italy", `chairman`:"Rosella Sensi", `ground`:"Olimpico", `lat`:"3.4218957", `lng`:"-76.5310873", `name`:"Roma", `nickname`:"Giallorossi", `postcode`:"", `slug`:"roma-1927", `trainer`:"Rudi Garcia", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2163", `website`:"www.asroma.it", `yearFormed`:1927})
create (_474:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `ground`:"Ennio Tardini", `lat`:"44.7949283", `lng`:"10.3383873482639", `name`:"Parma", `nickname`:"", `postcode`:"", `slug`:"parma--1", `trainer`:"Roberto Donadoni", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2037", `website`:"", `yearFormed`:-1})
create (_475:`Player` {`age`:20, `birthday`:"25 May, 1994", `birthplace`:"Dusseldorf", `height`:"1.78m", `name`:"Samed Yesil", `nationality`:"Germany", `slug`:"samed-yesil-germany", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=63895", `weight`:"70.29kg"})
create (_476:`Player` {`age`:24, `birthday`:"12 Aug, 1990", `birthplace`:"Palermo, Italy", `height`:"1.88m", `name`:"Mario Balotelli", `nationality`:"Italy", `slug`:"mario-balotelli-italy", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=48766", `weight`:"86.17kg"})
create (_477:`Team` {`address1`:"", `address2`:"", `address3`:"", `chairman`:"", `name`:"Lumezzane", `nickname`:"", `postcode`:"", `slug`:"lumezzane--1", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=5158", `website`:"", `yearFormed`:-1})
create (_478:`Player` {`age`:21, `birthday`:"02 Mar, 1994", `birthplace`:"Belgrade, Serbia", `height`:"", `name`:"Lazar Markovic", `nationality`:"Serbia", `slug`:"lazar-markovic-serbia", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=65154", `weight`:""})
create (_481:`Transfer` {`when`:"2003-12-28"})
create (_482:`Transfer` {`when`:"2012-01-01"})
create (_483:`Transfer` {`when`:"2013-12-29"})
create (_484:`Transfer` {`when`:"2006-12-31"})
create (_485:`Transfer` {`when`:"2012-12-30"})
create (_486:`Transfer` {`when`:"2000-12-31"})
create (_487:`Transfer` {`when`:"2001-12-30"})
create (_488:`Transfer` {`when`:"2004-12-26"})
create (_489:`Transfer` {`when`:"2006-01-01"})
create (_490:`Transfer` {`when`:"2008-12-28"})
create (_491:`Transfer` {`when`:"2013-12-29"})
create (_492:`Transfer` {`when`:"2010-12-26"})
create (_493:`Transfer` {`when`:"2012-12-30"})
create (_494:`Transfer` {`when`:"2013-12-29"})
create (_495:`Transfer` {`when`:"2003-12-28"})
create (_496:`Transfer` {`when`:"2006-01-01"})
create (_497:`Transfer` {`when`:"2012-12-30"})
create (_498:`Transfer` {`when`:"2013-12-29"})
create (_499:`Transfer` {`when`:"2001-12-30"})
create (_500:`Transfer` {`when`:"2012-12-30"})
create (_501:`Transfer` {`when`:"2012-12-30"})
create (_502:`Transfer` {`when`:"2003-12-28"})
create (_503:`Transfer` {`when`:"2009-12-27"})
create (_504:`Transfer` {`when`:"2003-12-28"})
create (_505:`Transfer` {`when`:"2010-12-26"})
create (_506:`Transfer` {`when`:"2013-12-29"})
create (_507:`Transfer` {`when`:"2012-01-01"})
create (_508:`Transfer` {`when`:"2006-12-31"})
create (_509:`Transfer` {`when`:"2013-12-29"})
create (_510:`Transfer` {`when`:"2012-12-30"})
create (_511:`Transfer` {`when`:"2010-12-26"})
create (_512:`Transfer` {`when`:"2010-12-26"})
create (_513:`Transfer` {`when`:"2012-01-01"})
create (_514:`Transfer` {`when`:"2009-12-27"})
create (_515:`Transfer` {`when`:"2006-12-31"})
create (_516:`Transfer` {`when`:"2010-12-26"})
create (_517:`Transfer` {`when`:"2013-12-29"})
create (_518:`Transfer` {`when`:"2006-01-01"})
create (_519:`Transfer` {`when`:"2009-12-27"})
create (_520:`Transfer` {`when`:"2007-12-30"})
create (_521:`Transfer` {`when`:"2006-01-01"})
create (_522:`Transfer` {`when`:"2007-12-30"})
create (_523:`Transfer` {`when`:"2009-12-27"})
create (_524:`Transfer` {`when`:"2012-01-01"})
create (_525:`Transfer` {`when`:"2002-12-29"})
create (_526:`Transfer` {`when`:"2003-12-28"})
create (_527:`Transfer` {`when`:"2006-12-31"})
create (_528:`Transfer` {`when`:"2008-12-28"})
create (_529:`Transfer` {`when`:"2012-12-30"})
create (_530:`Transfer` {`when`:"2013-12-29"})
create (_531:`Transfer` {`when`:"2012-12-30"})
create (_532:`Transfer` {`when`:"2006-01-01"})
create (_533:`Transfer` {`when`:"2010-12-26"})
create (_534:`Transfer` {`when`:"2012-01-01"})
create (_535:`Transfer` {`when`:"2009-12-27"})
create (_536:`Transfer` {`when`:"2010-12-26"})
create (_537:`Transfer` {`when`:"2013-12-29"})
create (_538:`Transfer` {`when`:"2000-12-31"})
create (_539:`Transfer` {`when`:"2006-01-01"})
create (_540:`Transfer` {`when`:"2007-12-30"})
create (_541:`Transfer` {`when`:"2009-12-27"})
create (_542:`Transfer` {`when`:"2012-12-30"})
create (_543:`Transfer` {`when`:"2013-12-29"})
create (_544:`Transfer` {`when`:"2012-12-30"})
create (_545:`Transfer` {`when`:"2009-12-27"})
create (_546:`Transfer` {`when`:"2012-01-01"})
create (_547:`Transfer` {`when`:"2006-12-31"})
create (_548:`Transfer` {`when`:"2010-12-26"})
create (_549:`Transfer` {`when`:"2012-01-01"})
create (_550:`Transfer` {`when`:"2007-12-30"})
create (_551:`Transfer` {`when`:"2013-12-29"})
create (_552:`Transfer` {`when`:"2000-12-31"})
create (_553:`Transfer` {`when`:"2001-12-30"})
create (_554:`Transfer` {`when`:"2006-12-31"})
create (_555:`Transfer` {`when`:"2009-12-27"})
create (_556:`Transfer` {`when`:"2012-01-01"})
create (_557:`Transfer` {`when`:"2012-01-01"})
create (_558:`Transfer` {`when`:"2006-01-01"})
create (_559:`Transfer` {`when`:"2006-12-31"})
create (_560:`Transfer` {`when`:"2010-12-26"})
create (_561:`Transfer` {`when`:"2013-12-29"})
create (_562:`Transfer` {`when`:"2010-12-26"})
create (_563:`Transfer` {`when`:"2012-12-30"})
create (_564:`Transfer` {`when`:"2006-12-31"})
create (_565:`Transfer` {`when`:"2010-12-26"})
create (_566:`Transfer` {`when`:"2012-12-30"})
create (_567:`Transfer` {`when`:"2001-12-30"})
create (_568:`Transfer` {`when`:"2003-12-28"})
create (_569:`Transfer` {`when`:"2010-12-26"})
create (_570:`Transfer` {`when`:"2013-12-29"})
create (_571:`Transfer` {`when`:"2009-12-27"})
create (_572:`Transfer` {`when`:"2012-12-30"})
create (_573:`Transfer` {`when`:"2012-01-01"})
create (_574:`Transfer` {`when`:"2007-12-30"})
create (_575:`Transfer` {`when`:"2010-12-26"})
create (_576:`Transfer` {`when`:"2013-12-29"})
create (_577:`Transfer` {`when`:"2014-12-28"})
create (_578:`Transfer` {`when`:"2012-01-01"})
create (_579:`Transfer` {`when`:"2014-12-28"})
create (_580:`Transfer` {`when`:"2008-12-28"})
create (_581:`Transfer` {`when`:"2013-12-29"})
create (_582:`Transfer` {`when`:"2007-12-30"})
create (_583:`Transfer` {`when`:"2006-12-31"})
create (_584:`Transfer` {`when`:"2012-01-01"})
create (_585:`Transfer` {`when`:"2008-12-28"})
create (_586:`Transfer` {`when`:"2006-12-31"})
create (_587:`Transfer` {`when`:"2008-12-28"})
create (_588:`Transfer` {`when`:"2010-12-26"})
create (_589:`Transfer` {`when`:"2013-12-29"})
create (_590:`Transfer` {`when`:"2013-12-29"})
create (_591:`Transfer` {`when`:"2010-12-26"})
create (_592:`Transfer` {`when`:"2013-12-29"})
create (_593:`Transfer` {`when`:"2010-12-26"})
create (_594:`Transfer` {`when`:"2002-12-29"})
create (_595:`Transfer` {`when`:"2008-12-28"})
create (_596:`Transfer` {`when`:"2012-12-30"})
create (_597:`Transfer` {`when`:"2009-12-27"})
create (_598:`Transfer` {`when`:"2003-12-28"})
create (_599:`Transfer` {`when`:"2003-12-28"})
create (_600:`Transfer` {`when`:"2007-12-30"})
create (_601:`Transfer` {`when`:"2007-12-30"})
create (_602:`Transfer` {`when`:"2012-12-30"})
create (_603:`Transfer` {`when`:"2010-12-26"})
create (_604:`Transfer` {`when`:"2010-12-26"})
create (_605:`Transfer` {`when`:"2012-01-01"})
create (_606:`Transfer` {`when`:"2012-12-30"})
create (_607:`Transfer` {`when`:"2001-12-30"})
create (_608:`Transfer` {`when`:"2008-12-28"})
create (_609:`Transfer` {`when`:"2012-12-30"})
create (_610:`Transfer` {`when`:"2007-12-30"})
create (_611:`Transfer` {`when`:"2009-12-27"})
create (_612:`Transfer` {`when`:"2012-12-30"})
create (_613:`Transfer` {`when`:"2009-12-27"})
create (_614:`Transfer` {`when`:"2013-12-29"})
create (_615:`Transfer` {`when`:"2003-12-28"})
create (_616:`Transfer` {`when`:"2010-12-26"})
create (_617:`Transfer` {`when`:"2013-12-29"})
create (_618:`Transfer` {`when`:"2013-12-29"})
create (_619:`Transfer` {`when`:"2008-12-28"})
create (_620:`Transfer` {`when`:"2012-01-01"})
create (_621:`Transfer` {`when`:"2013-12-29"})
create (_622:`Transfer` {`when`:"2003-12-28"})
create (_623:`Transfer` {`when`:"2007-12-30"})
create (_624:`Transfer` {`when`:"2008-12-28"})
create (_625:`Transfer` {`when`:"2009-12-27"})
create (_626:`Transfer` {`when`:"2012-01-01"})
create (_627:`Transfer` {`when`:"2006-12-31"})
create (_628:`Transfer` {`when`:"2010-12-26"})
create (_629:`Transfer` {`when`:"2006-01-01"})
create (_630:`Transfer` {`when`:"1998-12-27"})
create (_631:`Transfer` {`when`:"2002-12-29"})
create (_632:`Transfer` {`when`:"2003-12-28"})
create (_633:`Transfer` {`when`:"2006-01-01"})
create (_634:`Transfer` {`when`:"2007-12-30"})
create (_635:`Transfer` {`when`:"2008-12-28"})
create (_636:`Transfer` {`when`:"2012-12-30"})
create (_637:`Transfer` {`when`:"2010-12-26"})
create (_638:`Transfer` {`when`:"2008-12-28"})
create (_639:`Transfer` {`when`:"2012-12-30"})
create (_640:`Transfer` {`when`:"2008-12-28"})
create (_641:`Transfer` {`when`:"2010-12-26"})
create (_642:`Transfer` {`when`:"2001-12-30"})
create (_643:`Transfer` {`when`:"2002-12-29"})
create (_644:`Transfer` {`when`:"2003-12-28"})
create (_645:`Transfer` {`when`:"2012-01-01"})
create (_646:`Transfer` {`when`:"2012-12-30"})
create (_647:`Transfer` {`when`:"2012-12-30"})
create (_648:`Transfer` {`when`:"2012-01-01"})
create (_649:`Transfer` {`when`:"2010-12-26"})
create (_650:`Transfer` {`when`:"2012-12-30"})
create (_651:`Transfer` {`when`:"2014-12-28"})
create (_652:`Transfer` {`when`:"2012-01-01"})
create (_653:`Transfer` {`when`:"2013-12-29"})
create (_654:`Transfer` {`when`:"2009-12-27"})
create (_655:`Transfer` {`when`:"2012-12-30"})
create (_656:`Transfer` {`when`:"2007-12-30"})
create (_657:`Transfer` {`when`:"2004-12-26"})
create (_658:`Transfer` {`when`:"2013-12-29"})
create (_659:`Transfer` {`when`:"2008-12-28"})
create (_660:`Transfer` {`when`:"2010-12-26"})
create (_661:`Transfer` {`when`:"2014-12-28"})
create (_662:`Transfer` {`when`:"1998-12-27"})
create (_663:`Transfer` {`when`:"2006-01-01"})
create (_664:`Transfer` {`when`:"2008-12-28"})
create (_665:`Transfer` {`when`:"2014-12-28"})
create (_666:`Transfer` {`when`:"2009-12-27"})
create (_667:`Transfer` {`when`:"2009-12-27"})
create (_668:`Transfer` {`when`:"2013-12-29"})
create (_669:`Transfer` {`when`:"2010-12-26"})
create (_670:`Transfer` {`when`:"2012-12-30"})
create (_671:`Transfer` {`when`:"2012-12-30"})
create (_672:`Transfer` {`when`:"2013-12-29"})
create (_673:`Transfer` {`when`:"2010-12-26"})
create (_674:`Transfer` {`when`:"2012-01-01"})
create (_675:`Transfer` {`when`:"2013-12-29"})
create (_676:`Transfer` {`when`:"2012-01-01"})
create (_677:`Transfer` {`when`:"2007-12-30"})
create (_678:`Transfer` {`when`:"2012-01-01"})
create (_679:`Transfer` {`when`:"2013-12-29"})
create (_680:`Transfer` {`when`:"2003-12-28"})
create (_681:`Transfer` {`when`:"2006-01-01"})
create (_682:`Transfer` {`when`:"2013-12-29"})
create (_683:`Transfer` {`when`:"2010-12-26"})
create (_684:`Transfer` {`when`:"2012-12-30"})
create (_685:`Transfer` {`when`:"2008-12-28"})
create (_686:`Transfer` {`when`:"2012-12-30"})
create (_687:`Transfer` {`when`:"2013-12-29"})
create (_688:`Transfer` {`when`:"2009-12-27"})
create (_689:`Transfer` {`when`:"2009-12-27"})
create (_690:`Transfer` {`when`:"2010-12-26"})
create (_691:`Transfer` {`when`:"2009-12-27"})
create (_692:`Transfer` {`when`:"2013-12-29"})
create (_693:`Transfer` {`when`:"2013-12-29"})
create (_694:`Transfer` {`when`:"2014-12-28"})
create (_695:`Transfer` {`when`:"2013-12-29"})
create (_696:`Transfer` {`when`:"2010-12-26"})
create (_697:`Transfer` {`when`:"2010-12-26"})
create (_698:`Transfer` {`when`:"2007-12-30"})
create (_699:`Transfer` {`when`:"2010-12-26"})
create (_700:`Transfer` {`when`:"2012-12-30"})
create (_701:`Transfer` {`when`:"2006-01-01"})
create (_702:`Transfer` {`when`:"2007-12-30"})
create (_703:`Transfer` {`when`:"2013-12-29"})
create (_704:`Transfer` {`when`:"2010-12-26"})
create (_705:`Transfer` {`when`:"2013-12-29"})
create (_706:`Transfer` {`when`:"2008-12-28"})
create (_707:`Transfer` {`when`:"2010-12-26"})
create (_708:`Transfer` {`when`:"2013-12-29"})
create (_709:`Transfer` {`when`:"2006-01-01"})
create (_710:`Transfer` {`when`:"2010-12-26"})
create (_711:`Transfer` {`when`:"2006-01-01"})
create (_712:`Transfer` {`when`:"2010-12-26"})
create (_713:`Transfer` {`when`:"2013-12-29"})
create (_714:`Transfer` {`when`:"2006-01-01"})
create (_715:`Transfer` {`when`:"2014-12-28"})
create (_716:`Transfer` {`when`:"2010-12-26"})
create (_717:`Transfer` {`when`:"2008-12-28"})
create (_718:`Transfer` {`when`:"2012-12-30"})
create (_719:`Transfer` {`when`:"2000-12-31"})
create (_720:`Transfer` {`when`:"2006-01-01"})
create (_721:`Transfer` {`when`:"2009-12-27"})
create (_722:`Transfer` {`when`:"2012-12-30"})
create (_723:`Transfer` {`when`:"2013-12-29"})
create (_724:`Transfer` {`when`:"2004-12-26"})
create (_725:`Transfer` {`when`:"2007-12-30"})
create (_726:`Transfer` {`when`:"2002-12-29"})
create (_727:`Transfer` {`when`:"2010-12-26"})
create (_728:`Transfer` {`when`:"2006-12-31"})
create (_729:`Transfer` {`when`:"2012-12-30"})
create (_730:`Transfer` {`when`:"2014-12-28"})
create (_731:`Transfer` {`when`:"2000-12-31"})
create (_732:`Transfer` {`when`:"2007-12-30"})
create (_733:`Transfer` {`when`:"2009-12-27"})
create (_734:`Transfer` {`when`:"2012-12-30"})
create (_735:`Transfer` {`when`:"2013-12-29"})
create (_736:`Transfer` {`when`:"2006-12-31"})
create (_737:`Transfer` {`when`:"2008-12-28"})
create (_738:`Transfer` {`when`:"2009-12-27"})
create (_739:`Transfer` {`when`:"2004-12-26"})
create (_740:`Transfer` {`when`:"2006-01-01"})
create (_741:`Transfer` {`when`:"2008-12-28"})
create (_742:`Transfer` {`when`:"2010-12-26"})
create (_743:`Transfer` {`when`:"2013-12-29"})
create (_744:`Transfer` {`when`:"2009-12-27"})
create (_745:`Transfer` {`when`:"2012-12-30"})
create (_746:`Transfer` {`when`:"2009-12-27"})
create (_747:`Transfer` {`when`:"2012-01-01"})
create (_748:`Transfer` {`when`:"2006-01-01"})
create (_749:`Transfer` {`when`:"2000-12-31"})
create (_750:`Transfer` {`when`:"2001-12-30"})
create (_751:`Transfer` {`when`:"2003-12-28"})
create (_752:`Transfer` {`when`:"2010-12-26"})
create (_753:`Transfer` {`when`:"2012-12-30"})
create (_754:`Transfer` {`when`:"2012-01-01"})
create (_755:`Transfer` {`when`:"2006-12-31"})
create (_756:`Transfer` {`when`:"2009-12-27"})
create (_757:`Transfer` {`when`:"2007-12-30"})
create (_758:`Transfer` {`when`:"2010-12-26"})
create (_759:`Transfer` {`when`:"2012-12-30"})
create (_760:`Transfer` {`when`:"2013-12-29"})
create (_761:`Transfer` {`when`:"2006-01-01"})
create (_762:`Transfer` {`when`:"2010-12-26"})
create (_763:`Transfer` {`when`:"2006-01-01"})
create (_764:`Transfer` {`when`:"2006-12-31"})
create (_765:`Transfer` {`when`:"2012-12-30"})
create (_766:`Transfer` {`when`:"2012-12-30"})
create (_767:`Transfer` {`when`:"2012-12-30"})
create (_768:`Transfer` {`when`:"2012-12-30"})
create (_769:`Transfer` {`when`:"2004-12-26"})
create (_770:`Transfer` {`when`:"2007-12-30"})
create (_771:`Transfer` {`when`:"2010-12-26"})
create (_772:`Transfer` {`when`:"2012-12-30"})
create (_773:`Transfer` {`when`:"2012-12-30"})
create (_774:`Transfer` {`when`:"2014-12-28"})
create (_775:`Transfer` {`when`:"2009-12-27"})
create (_776:`Transfer` {`when`:"2013-12-29"})
create (_777:`Transfer` {`when`:"2002-12-29"})
create (_778:`Transfer` {`when`:"2013-12-29"})
create (_779:`Transfer` {`when`:"2006-12-31"})
create (_780:`Transfer` {`when`:"2010-12-26"})
create (_781:`Transfer` {`when`:"2007-12-30"})
create (_782:`Transfer` {`when`:"2012-12-30"})
create (_783:`Transfer` {`when`:"2010-12-26"})
create (_784:`Transfer` {`when`:"2012-12-30"})
create (_785:`Transfer` {`when`:"2004-12-26"})
create (_786:`Transfer` {`when`:"2006-12-31"})
create (_787:`Transfer` {`when`:"2008-12-28"})
create (_788:`Transfer` {`when`:"2012-12-30"})
create (_789:`Transfer` {`when`:"2006-01-01"})
create (_790:`Transfer` {`when`:"2009-12-27"})
create (_791:`Transfer` {`when`:"2012-01-01"})
create (_792:`Transfer` {`when`:"2003-12-28"})
create (_793:`Transfer` {`when`:"2004-12-26"})
create (_794:`Transfer` {`when`:"2006-12-31"})
create (_795:`Transfer` {`when`:"2009-12-27"})
create (_796:`Transfer` {`when`:"2008-12-28"})
create (_797:`Transfer` {`when`:"2010-12-26"})
create (_798:`Transfer` {`when`:"2012-12-30"})
create (_799:`Transfer` {`when`:"2010-12-26"})
create (_800:`Transfer` {`when`:"2013-12-29"})
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2001-12-30", `to`:"2008-12-28"}]->_441
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2008-12-28"}]->_405
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2000-12-31", `to`:"2002-12-29"}]->_382
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2002-12-29", `to`:"2010-12-26"}]->_329
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"1998-12-27", `to`:"2004-12-26"}]->_267
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2012-01-01"}]->_218
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2010-12-26"}]->_132
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2002-12-29", `to`:"2010-12-26"}]->_117
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2013-12-29"}]->_104
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2000-12-31", `to`:"2001-12-30"}]->_98
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30"}]->_2
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_5
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_8
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_9
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_10
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01"}]->_13
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26"}]->_15
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2014-12-28"}]->_18
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27"}]->_21
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_25
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_28
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_30
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_33
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_34
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01"}]->_35
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26"}]->_38
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30"}]->_44
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_46
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26"}]->_49
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30"}]->_50
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_53
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2007-12-30"}]->_55
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01"}]->_58
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_60
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30"}]->_61
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_64
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2014-12-28"}]->_65
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27"}]->_66
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_70
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_71
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_72
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_73
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01"}]->_77
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_78
create _1-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_82
create _1-[:`CURRENT_TEAM` {`contractSigned`:"01 Sep, 2014", `fee`:"£16,000,000", `number`:23, `position`:"Forward"}]->_82
create _1-[:`CURRENT_TEAM` {`contractSigned`:"10 Jul, 2014", `fee`:"£30,000,000", `number`:17, `position`:"Forward"}]->_78
create _1-[:`CURRENT_TEAM` {`contractSigned`:"20 Jan, 2006", `fee`:"£5,000,000", `number`:14, `position`:"Forward"}]->_77
create _1-[:`CURRENT_TEAM` {`contractSigned`:"26 Jun, 2012", `fee`:"£13,000,000", `number`:12, `position`:"Forward"}]->_73
create _1-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2014", `fee`:"Trainee", `number`:70, `position`:"Midfielder"}]->_72
create _1-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2014", `fee`:"Youth", `number`:47, `position`:"Midfielder"}]->_71
create _1-[:`CURRENT_TEAM` {`contractSigned`:"24 Sep, 2013", `fee`:"Trainee", `number`:45, `position`:"Midfielder"}]->_70
create _1-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2010", `fee`:"", `number`:41, `position`:"Midfielder"}]->_66
create _1-[:`CURRENT_TEAM` {`contractSigned`:"21 Jan, 2015", `fee`:"£2,400,000", `number`:36, `position`:"Midfielder"}]->_65
create _1-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2013", `fee`:"Trainee", `number`:35, `position`:"Midfielder"}]->_64
create _1-[:`CURRENT_TEAM` {`contractSigned`:"01 Aug, 2008", `fee`:"Trainee", `number`:34, `position`:"Midfielder"}]->_61
create _1-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2012", `fee`:"Trainee", `number`:27, `position`:"Midfielder"}]->_60
create _1-[:`CURRENT_TEAM` {`contractSigned`:"13 Jan, 2006", `fee`:"£2,000,000", `number`:24, `position`:"Midfielder"}]->_58
create _1-[:`CURRENT_TEAM` {`contractSigned`:"29 Aug, 2013", `fee`:"Free", `number`:20, `position`:"Midfielder"}]->_55
create _1-[:`CURRENT_TEAM` {`contractSigned`:"07 Aug, 2012", `fee`:"£15,000,000", `number`:19, `position`:"Midfielder"}]->_53
create _1-[:`CURRENT_TEAM` {`contractSigned`:"13 Jun, 2008", `fee`:"£5,000,000", `number`:16, `position`:"Midfielder"}]->_50
create _1-[:`CURRENT_TEAM` {`contractSigned`:"08 Aug, 2011", `fee`:"£12,000,000", `number`:15, `position`:"Midfielder"}]->_49
create _1-[:`CURRENT_TEAM` {`contractSigned`:"02 Sep, 2013", `fee`:"£42,500,000", `number`:11, `position`:"Midfielder"}]->_46
create _1-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2008", `fee`:"Trainee", `number`:10, `position`:"Midfielder"}]->_44
create _1-[:`CURRENT_TEAM` {`contractSigned`:"31 Aug, 2011", `fee`:"£10,000,000", `number`:8, `position`:"Midfielder"}]->_38
create _1-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2008", `fee`:"Trainee", `number`:1, `position`:"Goalkeeper"}]->_2
create _1-[:`CURRENT_TEAM` {`contractSigned`:"27 Jul, 2014", `fee`:"£3,000,000", `number`:13, `position`:"Goalkeeper"}]->_5
create _1-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2014", `fee`:"Trainee", `number`:43, `position`:"Goalkeeper"}]->_8
create _1-[:`CURRENT_TEAM` {`contractSigned`:"01 Dec, 2014", `fee`:"Unknown", `number`:44, `position`:"Goalkeeper"}]->_9
create _1-[:`CURRENT_TEAM` {`contractSigned`:"17 Jul, 2014", `fee`:"£12,000,000", `number`:2, `position`:"Defender"}]->_10
create _1-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2006", `fee`:"Trainee", `number`:3, `position`:"Defender"}]->_13
create _1-[:`CURRENT_TEAM` {`contractSigned`:"31 Aug, 2011", `fee`:"£8,000,000", `number`:4, `position`:"Defender"}]->_15
create _1-[:`CURRENT_TEAM` {`contractSigned`:"24 Jan, 2015", `fee`:"£13,500,000", `number`:5, `position`:"Defender"}]->_18
create _1-[:`CURRENT_TEAM` {`contractSigned`:"07 Jul, 2010", `fee`:"£9,700,000", `number`:6, `position`:"Defender"}]->_21
create _1-[:`CURRENT_TEAM` {`contractSigned`:"31 Jan, 2013", `fee`:"£8,500,000", `number`:18, `position`:"Defender"}]->_25
create _1-[:`CURRENT_TEAM` {`contractSigned`:"28 Jul, 2014", `fee`:"£16,000,000", `number`:21, `position`:"Defender"}]->_28
create _1-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2012", `fee`:"Signed", `number`:39, `position`:"Defender"}]->_30
create _1-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2013", `fee`:"", `number`:42, `position`:"Defender"}]->_33
create _1-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2014", `fee`:"Youth", `number`:73, `position`:"Defender"}]->_34
create _1-[:`CURRENT_TEAM` {`contractSigned`:"23 May, 2006", `fee`:"£6,800,000", `number`:7, `position`:"Midfielder"}]->_35
create _1-[:`IN_TOURNAMENT`]->_0
create _1-[:`FROM_TEAM`]->_778
create _1-[:`FROM_TEAM`]->_699
create _1-[:`FROM_TEAM`]->_727
create _1-[:`FROM_TEAM`]->_663
create _1-[:`FROM_TEAM`]->_623
create _1-[:`FROM_TEAM`]->_619
create _1-[:`FROM_TEAM`]->_608
create _1-[:`FROM_TEAM`]->_553
create _1-[:`FROM_TEAM`]->_525
create _1-[:`FROM_TEAM`]->_509
create _1-[:`FROM_TEAM`]->_482
create _3-[:`IN_TEAM` {`fee`:"Loan", `from`:"1998-12-27", `to`:"1999-12-26"}]->_429
create _3-[:`IN_TEAM` {`fee`:"Loan", `from`:"2001-12-30", `to`:"2001-12-30"}]->_382
create _3-[:`IN_TEAM` {`fee`:"Loan", `from`:"2008-12-28", `to`:"2009-12-27"}]->_2
create _4-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29", `to`:"2014-12-28"}]->_65
create _4-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2007-12-30"}]->_2
create _4-[:`FROM_TEAM`]->_574
create _4-[:`FROM_TEAM`]->_577
create _6-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2009-12-27"}]->_349
create _6-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2013-12-29"}]->_5
create _6-[:`FROM_TEAM`]->_581
create _6-[:`FROM_TEAM`]->_541
create _7-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2008-12-28"}]->_5
create _7-[:`FROM_TEAM`]->_580
create _11-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2010-12-26"}]->_439
create _11-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2013-12-29"}]->_349
create _11-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2012-12-30"}]->_253
create _11-[:`IN_TEAM` {`fee`:"Signed", `from`:"1998-12-27", `to`:"2003-12-28"}]->_239
create _11-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2007-12-30"}]->_128
create _11-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30", `to`:"2013-12-29"}]->_10
create _11-[:`FROM_TEAM`]->_789
create _11-[:`FROM_TEAM`]->_672
create _11-[:`FROM_TEAM`]->_572
create _11-[:`FROM_TEAM`]->_560
create _11-[:`FROM_TEAM`]->_503
create _12-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2012-01-01"}]->_334
create _12-[:`IN_TEAM` {`fee`:"Signed", `from`:"2001-12-30", `to`:"2002-12-29"}]->_293
create _12-[:`IN_TEAM` {`fee`:"Signed", `from`:"2002-12-29", `to`:"2012-12-30"}]->_10
create _12-[:`FROM_TEAM`]->_785
create _12-[:`FROM_TEAM`]->_671
create _12-[:`FROM_TEAM`]->_573
create _14-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2012-12-30"}]->_300
create _14-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_277
create _14-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2010-12-26"}]->_254
create _14-[:`IN_TEAM` {`fee`:"Loan", `from`:"2007-12-30", `to`:"2007-12-30"}]->_13
create _14-[:`FROM_TEAM`]->_636
create _16-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2009-12-27"}]->_46
create _16-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2010-12-26"}]->_15
create _16-[:`FROM_TEAM`]->_762
create _16-[:`FROM_TEAM`]->_611
create _17-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2006-01-01"}]->_15
create _17-[:`FROM_TEAM`]->_761
create _19-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2006-12-31"}]->_439
create _19-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2007-12-30"}]->_211
create _19-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2006-01-01"}]->_53
create _19-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30", `to`:"2014-12-28"}]->_18
create _19-[:`FROM_TEAM`]->_730
create _19-[:`FROM_TEAM`]->_585
create _19-[:`FROM_TEAM`]->_532
create _19-[:`FROM_TEAM`]->_559
create _20-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2012-12-30"}]->_18
create _20-[:`FROM_TEAM`]->_729
create _22-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2010-12-26"}]->_61
create _22-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2009-12-27"}]->_21
create _22-[:`FROM_TEAM`]->_738
create _23-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2009-12-27"}]->_73
create _23-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2008-12-28"}]->_21
create _23-[:`FROM_TEAM`]->_737
create _23-[:`FROM_TEAM`]->_625
create _24-[:`IN_TEAM` {`fee`:"Signed", `from`:"2001-12-30", `to`:"2002-12-29"}]->_345
create _24-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2006-12-31"}]->_21
create _24-[:`FROM_TEAM`]->_736
create _24-[:`FROM_TEAM`]->_643
create _26-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2010-12-26"}]->_119
create _26-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2013-12-29"}]->_95
create _26-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-01-01"}]->_53
create _26-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-12-30"}]->_25
create _26-[:`FROM_TEAM`]->_670
create _26-[:`FROM_TEAM`]->_534
create _26-[:`FROM_TEAM`]->_506
create _27-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2009-12-27"}]->_326
create _27-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2010-12-26"}]->_25
create _27-[:`FROM_TEAM`]->_746
create _27-[:`FROM_TEAM`]->_669
create _29-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2013-12-29"}]->_469
create _29-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2013-12-29"}]->_457
create _29-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30", `to`:"2013-12-29"}]->_443
create _29-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2009-12-27"}]->_366
create _29-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2013-12-29"}]->_177
create _29-[:`IN_TEAM` {`fee`:"Loan", `from`:"2007-12-30", `to`:"2007-12-30"}]->_98
create _29-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2006-01-01"}]->_77
create _29-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2010-12-26"}]->_49
create _29-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01", `to`:"2013-12-29"}]->_28
create _29-[:`FROM_TEAM`]->_667
create _29-[:`FROM_TEAM`]->_687
create _29-[:`FROM_TEAM`]->_682
create _29-[:`FROM_TEAM`]->_695
create _29-[:`FROM_TEAM`]->_637
create _29-[:`FROM_TEAM`]->_551
create _29-[:`FROM_TEAM`]->_491
create _29-[:`FROM_TEAM`]->_518
create _31-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2012-01-01"}]->_393
create _31-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2010-12-26"}]->_274
create _31-[:`IN_TEAM` {`fee`:"Loan", `from`:"2001-12-30", `to`:"2001-12-30"}]->_267
create _31-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2010-12-26"}]->_235
create _31-[:`IN_TEAM` {`fee`:"Signed", `from`:"2001-12-30", `to`:"2006-12-31"}]->_203
create _31-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2013-12-29"}]->_30
create _31-[:`FROM_TEAM`]->_779
create _31-[:`FROM_TEAM`]->_588
create _32-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2013-12-29"}]->_451
create _32-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-01-01"}]->_30
create _32-[:`FROM_TEAM`]->_754
create _36-[:`IN_TEAM` {`fee`:"Signed", `from`:"2000-12-31", `to`:"2006-01-01"}]->_35
create _36-[:`FROM_TEAM`]->_539
create _37-[:`IN_TEAM` {`fee`:"Signed", `from`:"2000-12-31", `to`:"2001-12-30"}]->_308
create _37-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2010-12-26"}]->_157
create _37-[:`IN_TEAM` {`fee`:"Signed", `from`:"1998-12-27", `to`:"2000-12-31"}]->_35
create _37-[:`FROM_TEAM`]->_750
create _37-[:`FROM_TEAM`]->_649
create _37-[:`FROM_TEAM`]->_538
create _39-[:`IN_TEAM` {`fee`:"Signed", `from`:"2001-12-30", `to`:"2003-12-28"}]->_217
create _39-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2012-12-30"}]->_212
create _39-[:`IN_TEAM` {`fee`:"Signed", `from`:"2001-12-30", `to`:"2006-12-31"}]->_98
create _39-[:`IN_TEAM` {`fee`:"Loan", `from`:"2004-12-26", `to`:"2004-12-26"}]->_38
create _39-[:`FROM_TEAM`]->_782
create _39-[:`FROM_TEAM`]->_615
create _39-[:`FROM_TEAM`]->_554
create _40-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2004-12-26"}]->_38
create _40-[:`FROM_TEAM`]->_569
create _41-[:`IN_TEAM` {`fee`:"Signed", `from`:"2001-12-30", `to`:"2003-12-28"}]->_38
create _41-[:`FROM_TEAM`]->_568
create _42-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2012-12-30"}]->_445
create _42-[:`IN_TEAM` {`fee`:"Loan", `from`:"2000-12-31", `to`:"2000-12-31"}]->_38
create _42-[:`FROM_TEAM`]->_510
create _43-[:`IN_TEAM` {`fee`:"Signed", `from`:"2001-12-30", `to`:"2002-12-29"}]->_329
create _43-[:`IN_TEAM` {`fee`:"Signed", `from`:"2001-12-30", `to`:"2014-12-28"}]->_168
create _43-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2009-12-27"}]->_143
create _43-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2013-12-29"}]->_78
create _43-[:`IN_TEAM` {`fee`:"Signed", `from`:"1999-12-26", `to`:"2001-12-30"}]->_38
create _43-[:`FROM_TEAM`]->_795
create _43-[:`FROM_TEAM`]->_777
create _43-[:`FROM_TEAM`]->_713
create _43-[:`FROM_TEAM`]->_694
create _43-[:`FROM_TEAM`]->_567
create _45-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2010-12-26"}]->_471
create _45-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2012-01-01"}]->_324
create _45-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2010-12-26"}]->_230
create _45-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_173
create _45-[:`IN_TEAM` {`fee`:"Loan", `from`:"2014-12-28", `to`:"2014-12-28"}]->_169
create _45-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2012-01-01"}]->_123
create _45-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2009-12-27"}]->_44
create _45-[:`FROM_TEAM`]->_678
create _47-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2013-12-29"}]->_192
create _47-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01", `to`:"2012-12-30"}]->_149
create _47-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2012-12-30"}]->_46
create _47-[:`FROM_TEAM`]->_692
create _47-[:`FROM_TEAM`]->_612
create _47-[:`FROM_TEAM`]->_531
create _48-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2007-12-30"}]->_46
create _48-[:`FROM_TEAM`]->_610
create _51-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2013-12-29"}]->_274
create _51-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01", `to`:"2014-12-28"}]->_271
create _51-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2012-12-30"}]->_254
create _51-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2013-12-29"}]->_235
create _51-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2007-12-30"}]->_50
create _51-[:`FROM_TEAM`]->_589
create _51-[:`FROM_TEAM`]->_576
create _51-[:`FROM_TEAM`]->_579
create _51-[:`FROM_TEAM`]->_520
create _52-[:`IN_TEAM` {`fee`:"Signed", `from`:"2000-12-31", `to`:"2004-12-26"}]->_425
create _52-[:`IN_TEAM` {`fee`:"Loan", `from`:"2008-12-28", `to`:"2009-12-27"}]->_389
create _52-[:`IN_TEAM` {`fee`:"Loan", `from`:"1999-12-26", `to`:"1999-12-26"}]->_325
create _52-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2007-12-30"}]->_300
create _52-[:`IN_TEAM` {`fee`:"Signed", `from`:"2002-12-29", `to`:"2009-12-27"}]->_253
create _52-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2010-12-26"}]->_50
create _52-[:`FROM_TEAM`]->_739
create _52-[:`FROM_TEAM`]->_634
create _52-[:`FROM_TEAM`]->_571
create _54-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2006-12-31"}]->_53
create _54-[:`FROM_TEAM`]->_533
create _56-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30", `to`:"2013-12-29"}]->_476
create _56-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2010-12-26"}]->_150
create _56-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2012-12-30"}]->_55
create _56-[:`FROM_TEAM`]->_723
create _56-[:`FROM_TEAM`]->_696
create _57-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2012-12-30"}]->_349
create _57-[:`IN_TEAM` {`fee`:"Signed", `from`:"2002-12-29", `to`:"2003-12-28"}]->_345
create _57-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2012-01-01"}]->_326
create _57-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2007-12-30"}]->_132
create _57-[:`IN_TEAM` {`fee`:"Signed", `from`:"2002-12-29", `to`:"2003-12-28"}]->_55
create _57-[:`FROM_TEAM`]->_747
create _57-[:`FROM_TEAM`]->_698
create _57-[:`FROM_TEAM`]->_622
create _57-[:`FROM_TEAM`]->_644
create _57-[:`FROM_TEAM`]->_542
create _59-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2006-12-31"}]->_104
create _59-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2006-01-01"}]->_58
create _59-[:`FROM_TEAM`]->_629
create _59-[:`FROM_TEAM`]->_508
create _62-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2013-12-29"}]->_410
create _62-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2010-12-26"}]->_397
create _62-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2009-12-27"}]->_370
create _62-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2010-12-26"}]->_359
create _62-[:`IN_TEAM` {`fee`:"Loan", `from`:"2007-12-30", `to`:"2008-12-28"}]->_297
create _62-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01", `to`:"2012-12-30"}]->_286
create _62-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-01-01", `to`:"2006-12-31"}]->_221
create _62-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2013-12-29"}]->_61
create _62-[:`FROM_TEAM`]->_565
create _62-[:`FROM_TEAM`]->_562
create _63-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2013-12-29"}]->_61
create _67-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-12-30"}]->_66
create _68-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2012-01-01"}]->_66
create _69-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2010-12-26"}]->_66
create _74-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2012-01-01"}]->_73
create _74-[:`FROM_TEAM`]->_626
create _75-[:`IN_TEAM` {`fee`:"Loan", `from`:"2007-12-30", `to`:"2008-12-28"}]->_73
create _76-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2008-12-28"}]->_73
create _76-[:`FROM_TEAM`]->_624
create _79-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2012-12-30"}]->_341
create _79-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2010-12-26"}]->_78
create _79-[:`FROM_TEAM`]->_715
create _79-[:`FROM_TEAM`]->_712
create _80-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-01-01", `to`:"2006-01-01"}]->_78
create _81-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2006-01-01"}]->_78
create _81-[:`FROM_TEAM`]->_711
create _83-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2013-12-29"}]->_472
create _83-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2010-12-26"}]->_456
create _83-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2012-12-30"}]->_434
create _83-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2012-01-01"}]->_393
create _83-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2009-12-27"}]->_297
create _83-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-12-30"}]->_264
create _83-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-12-31", `to`:"2006-12-31"}]->_184
create _83-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2010-12-26"}]->_82
create _83-[:`FROM_TEAM`]->_745
create _83-[:`FROM_TEAM`]->_658
create _83-[:`FROM_TEAM`]->_684
create _83-[:`FROM_TEAM`]->_679
create _83-[:`FROM_TEAM`]->_604
create _84-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2007-12-30"}]->_429
create _84-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2010-12-26"}]->_286
create _84-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01", `to`:"2012-01-01"}]->_98
create _84-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2009-12-27"}]->_82
create _84-[:`FROM_TEAM`]->_600
create _84-[:`FROM_TEAM`]->_557
create _85-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2013-12-29"}]->_82
create _85-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26"}]->_164
create _85-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26"}]->_165
create _85-[:`IN_TEAM` {`fee`:"Signed", `from`:"2014-12-28"}]->_168
create _85-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30"}]->_169
create _85-[:`IN_TEAM` {`fee`:"Loan", `from`:"2014-12-28"}]->_173
create _85-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30"}]->_175
create _85-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_177
create _85-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26"}]->_178
create _85-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_180
create _85-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01"}]->_184
create _85-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27"}]->_185
create _85-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_187
create _85-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_189
create _85-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26"}]->_190
create _85-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_191
create _85-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_192
create _85-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_194
create _85-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_196
create _85-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_197
create _85-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01"}]->_198
create _85-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_200
create _85-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26"}]->_203
create _85-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_204
create _85-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_207
create _85-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28"}]->_211
create _85-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_212
create _85-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_213
create _85-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29"}]->_215
create _85-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28"}]->_217
create _85-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_218
create _85-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_220
create _85-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2013", `fee`:"Youth", `number`:49, `position`:"Forward"}]->_220
create _85-[:`CURRENT_TEAM` {`contractSigned`:"17 Aug, 2012", `fee`:"£24,000,000", `number`:20, `position`:"Forward"}]->_218
create _85-[:`CURRENT_TEAM` {`contractSigned`:"31 Aug, 2004", `fee`:"£20,000,000", `number`:10, `position`:"Forward"}]->_217
create _85-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2013", `fee`:"£52,000,000", `number`:9, `position`:"Forward"}]->_215
create _85-[:`CURRENT_TEAM` {`contractSigned`:"01 Aug, 2014", `fee`:"Signed", `number`:44, `position`:"Midfielder"}]->_213
create _85-[:`CURRENT_TEAM` {`contractSigned`:"02 Sep, 2013", `fee`:"£27,500,000", `number`:31, `position`:"Midfielder"}]->_212
create _85-[:`CURRENT_TEAM` {`contractSigned`:"30 Jun, 2009", `fee`:"£16,000,000", `number`:25, `position`:"Midfielder"}]->_211
create _85-[:`CURRENT_TEAM` {`contractSigned`:"12 Jun, 2012", `fee`:"£4,000,000", `number`:22, `position`:"Midfielder"}]->_207
create _85-[:`CURRENT_TEAM` {`contractSigned`:"26 Jun, 2014", `fee`:"£29,000,000", `number`:21, `position`:"Midfielder"}]->_204
create _85-[:`CURRENT_TEAM` {`contractSigned`:"23 Jun, 2011", `fee`:"£17,000,000", `number`:18, `position`:"Midfielder"}]->_203
create _85-[:`CURRENT_TEAM` {`contractSigned`:"01 Sep, 2014", `fee`:"£13,800,000", `number`:17, `position`:"Midfielder"}]->_200
create _85-[:`CURRENT_TEAM` {`contractSigned`:"31 Jul, 2006", `fee`:"£18,600,000", `number`:16, `position`:"Midfielder"}]->_198
create _85-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2012", `fee`:"Youth", `number`:11, `position`:"Midfielder"}]->_197
create _85-[:`CURRENT_TEAM` {`contractSigned`:"29 Jun, 2011", `fee`:"£18,900,000", `number`:1, `position`:"Goalkeeper"}]->_164
create _85-[:`CURRENT_TEAM` {`contractSigned`:"01 Jan, 2011", `fee`:"£3,500,000", `number`:13, `position`:"Goalkeeper"}]->_165
create _85-[:`CURRENT_TEAM` {`contractSigned`:"08 Jan, 2015", `fee`:"Free", `number`:32, `position`:"Goalkeeper"}]->_168
create _85-[:`CURRENT_TEAM` {`contractSigned`:"01 Aug, 2008", `fee`:"Trainee", `number`:40, `position`:"Goalkeeper"}]->_169
create _85-[:`CURRENT_TEAM` {`contractSigned`:"19 Sep, 2013", `fee`:"Youth", `number`:-1, `position`:"Defender"}]->_173
create _85-[:`CURRENT_TEAM` {`contractSigned`:"01 Aug, 2008", `fee`:"Signed", `number`:2, `position`:"Defender"}]->_175
create _85-[:`CURRENT_TEAM` {`contractSigned`:"27 Jun, 2014", `fee`:"£27,000,000", `number`:3, `position`:"Defender"}]->_177
create _85-[:`CURRENT_TEAM` {`contractSigned`:"13 Jun, 2011", `fee`:"£16,500,000", `number`:4, `position`:"Defender"}]->_178
create _85-[:`CURRENT_TEAM` {`contractSigned`:"20 Aug, 2014", `fee`:"£16,000,000", `number`:5, `position`:"Defender"}]->_180
create _85-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2006", `fee`:"Trainee", `number`:6, `position`:"Defender"}]->_184
create _85-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2010", `fee`:"£10,000,000", `number`:12, `position`:"Defender"}]->_185
create _85-[:`CURRENT_TEAM` {`contractSigned`:"07 Jun, 2013", `fee`:"£2,400,000", `number`:30, `position`:"Defender"}]->_187
create _85-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2014", `fee`:"Trainee", `number`:33, `position`:"Defender"}]->_189
create _85-[:`CURRENT_TEAM` {`contractSigned`:"01 Aug, 2011", `fee`:"Trainee", `number`:39, `position`:"Defender"}]->_190
create _85-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2013", `fee`:"Youth", `number`:42, `position`:"Defender"}]->_191
create _85-[:`CURRENT_TEAM` {`contractSigned`:"26 Aug, 2014", `fee`:"£59,700,000", `number`:7, `position`:"Midfielder"}]->_192
create _85-[:`CURRENT_TEAM` {`contractSigned`:"25 Jan, 2014", `fee`:"£37,100,000", `number`:8, `position`:"Midfielder"}]->_194
create _85-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2014", `fee`:"Trainee", `number`:9, `position`:"Midfielder"}]->_196
create _85-[:`IN_TOURNAMENT`]->_0
create _85-[:`FROM_TEAM`]->_618
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2012-12-30"}]->_476
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2008-12-28"}]->_471
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2012-12-30"}]->_441
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01", `to`:"2013-12-29"}]->_266
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_87
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_89
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01"}]->_90
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_95
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_98
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_102
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_104
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30"}]->_105
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30"}]->_108
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27"}]->_111
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_114
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26"}]->_117
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_119
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28"}]->_123
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_126
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_127
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27"}]->_128
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26"}]->_132
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_133
create _86-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29"}]->_135
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27"}]->_138
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_141
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27"}]->_143
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_147
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_148
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_149
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26"}]->_150
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26"}]->_154
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2014-12-28"}]->_157
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26"}]->_159
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_160
create _86-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_163
create _86-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2014", `fee`:"Youth", `number`:61, `position`:"Forward"}]->_163
create _86-[:`CURRENT_TEAM` {`contractSigned`:"19 Jul, 2013", `fee`:"£22,000,000", `number`:35, `position`:"Forward"}]->_160
create _86-[:`CURRENT_TEAM` {`contractSigned`:"27 Jul, 2011", `fee`:"£38,000,000", `number`:16, `position`:"Forward"}]->_159
create _86-[:`CURRENT_TEAM` {`contractSigned`:"14 Jan, 2015", `fee`:"£28,000,000", `number`:14, `position`:"Forward"}]->_157
create _86-[:`CURRENT_TEAM` {`contractSigned`:"07 Jan, 2011", `fee`:"£27,000,000", `number`:10, `position`:"Forward"}]->_154
create _86-[:`CURRENT_TEAM` {`contractSigned`:"01 Aug, 2011", `fee`:"Signed", `number`:-1, `position`:"Forward"}]->_150
create _86-[:`CURRENT_TEAM` {`contractSigned`:"01 Jun, 2013", `fee`:"Signed", `number`:78, `position`:"Midfielder"}]->_149
create _86-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2014", `fee`:"Trainee", `number`:73, `position`:"Midfielder"}]->_148
create _86-[:`CURRENT_TEAM` {`contractSigned`:"04 Jan, 2014", `fee`:"Youth", `number`:59, `position`:"Midfielder"}]->_147
create _86-[:`CURRENT_TEAM` {`contractSigned`:"02 Jul, 2010", `fee`:"£24,000,000", `number`:42, `position`:"Midfielder"}]->_143
create _86-[:`CURRENT_TEAM` {`contractSigned`:"06 Jun, 2013", `fee`:"£30,000,000", `number`:25, `position`:"Midfielder"}]->_141
create _86-[:`CURRENT_TEAM` {`contractSigned`:"30 Jun, 2010", `fee`:"£26,000,000", `number`:21, `position`:"Midfielder"}]->_138
create _86-[:`CURRENT_TEAM` {`contractSigned`:"", `fee`:"", `number`:18, `position`:"Midfielder"}]->_135
create _86-[:`CURRENT_TEAM` {`contractSigned`:"11 Jun, 2013", `fee`:"£14,900,000", `number`:15, `position`:"Midfielder"}]->_133
create _86-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2012", `fee`:"Trainee", `number`:-1, `position`:"Goalkeeper"}]->_87
create _86-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2012", `fee`:"Trainee", `number`:-1, `position`:"Goalkeeper"}]->_89
create _86-[:`CURRENT_TEAM` {`contractSigned`:"22 May, 2006", `fee`:"£600,000", `number`:1, `position`:"Goalkeeper"}]->_90
create _86-[:`CURRENT_TEAM` {`contractSigned`:"08 Jul, 2014", `fee`:"£6,000,000", `number`:13, `position`:"Goalkeeper"}]->_95
create _86-[:`CURRENT_TEAM` {`contractSigned`:"31 Aug, 2012", `fee`:"Free", `number`:29, `position`:"Goalkeeper"}]->_98
create _86-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2012", `fee`:"", `number`:-1, `position`:"Defender"}]->_102
create _86-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2014", `fee`:"Free", `number`:3, `position`:"Defender"}]->_104
create _86-[:`CURRENT_TEAM` {`contractSigned`:"22 Aug, 2008", `fee`:"£6,000,000", `number`:4, `position`:"Defender"}]->_105
create _86-[:`CURRENT_TEAM` {`contractSigned`:"31 Aug, 2008", `fee`:"£6,450,000", `number`:5, `position`:"Defender"}]->_108
create _86-[:`CURRENT_TEAM` {`contractSigned`:"24 Jul, 2010", `fee`:"£19,000,000", `number`:11, `position`:"Defender"}]->_111
create _86-[:`CURRENT_TEAM` {`contractSigned`:"11 Aug, 2014", `fee`:"£32,000,000", `number`:20, `position`:"Defender"}]->_114
create _86-[:`CURRENT_TEAM` {`contractSigned`:"04 Jul, 2011", `fee`:"£7,000,000", `number`:22, `position`:"Defender"}]->_117
create _86-[:`CURRENT_TEAM` {`contractSigned`:"01 Sep, 2013", `fee`:"", `number`:26, `position`:"Defender"}]->_119
create _86-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2009", `fee`:"Trainee", `number`:38, `position`:"Defender"}]->_123
create _86-[:`CURRENT_TEAM` {`contractSigned`:"01 Dec, 2014", `fee`:"Unknown", `number`:69, `position`:"Defender"}]->_126
create _86-[:`CURRENT_TEAM` {`contractSigned`:"26 Jun, 2014", `fee`:"£12,000,000", `number`:6, `position`:"Midfielder"}]->_127
create _86-[:`CURRENT_TEAM` {`contractSigned`:"18 Aug, 2010", `fee`:"£26,000,000", `number`:7, `position`:"Midfielder"}]->_128
create _86-[:`CURRENT_TEAM` {`contractSigned`:"24 Aug, 2011", `fee`:"£24,000,000", `number`:8, `position`:"Midfielder"}]->_132
create _86-[:`IN_TOURNAMENT`]->_0
create _86-[:`FROM_TEAM`]->_722
create _86-[:`FROM_TEAM`]->_638
create _86-[:`FROM_TEAM`]->_609
create _88-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-12-30"}]->_398
create _88-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-01-01"}]->_286
create _88-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2012-12-30"}]->_87
create _88-[:`FROM_TEAM`]->_759
create _91-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2013-12-29"}]->_465
create _91-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2006-12-31"}]->_374
create _91-[:`IN_TEAM` {`fee`:"Loan", `from`:"2004-12-26", `to`:"2004-12-26"}]->_267
create _91-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2013-12-29"}]->_266
create _91-[:`IN_TEAM` {`fee`:"Loan", `from`:"1999-12-26", `to`:"1999-12-26"}]->_198
create _91-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2013-12-29"}]->_191
create _91-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2013-12-29"}]->_190
create _91-[:`IN_TEAM` {`fee`:"Loan", `from`:"2008-12-28", `to`:"2009-12-27"}]->_90
create _91-[:`FROM_TEAM`]->_767
create _92-[:`IN_TEAM` {`fee`:"Signed", `from`:"1997-12-28", `to`:"1999-12-26"}]->_469
create _92-[:`IN_TEAM` {`fee`:"Loan", `from`:"2002-12-29", `to`:"2002-12-29"}]->_432
create _92-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_393
create _92-[:`IN_TEAM` {`fee`:"Loan", `from`:"2007-12-30", `to`:"2007-12-30"}]->_300
create _92-[:`IN_TEAM` {`fee`:"Loan", `from`:"2014-12-28", `to`:"2014-12-28"}]->_196
create _92-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2013-12-29"}]->_191
create _92-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-12-31", `to`:"2006-12-31"}]->_90
create _92-[:`FROM_TEAM`]->_486
create _93-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2008-12-28"}]->_382
create _93-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-12-31", `to`:"2006-12-31"}]->_90
create _93-[:`FROM_TEAM`]->_528
create _94-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2014-12-28"}]->_392
create _94-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2008-12-28"}]->_300
create _94-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2010-12-26"}]->_226
create _94-[:`IN_TEAM` {`fee`:"Signed", `from`:"2002-12-29", `to`:"2006-01-01"}]->_90
create _94-[:`FROM_TEAM`]->_714
create _94-[:`FROM_TEAM`]->_635
create _96-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2010-12-26"}]->_95
create _96-[:`FROM_TEAM`]->_505
create _97-[:`IN_TEAM` {`fee`:"Signed", `from`:"2002-12-29", `to`:"2003-12-28"}]->_95
create _97-[:`FROM_TEAM`]->_504
create _99-[:`IN_TEAM` {`fee`:"Signed", `from`:"1995-01-01", `to`:"2000-12-31"}]->_98
create _99-[:`FROM_TEAM`]->_552
create _100-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2012-01-01"}]->_400
create _100-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2009-12-27"}]->_393
create _100-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-12-31", `to`:"2007-12-30"}]->_324
create _100-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2013-12-29"}]->_238
create _100-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2010-12-26"}]->_98
create _100-[:`FROM_TEAM`]->_590
create _100-[:`FROM_TEAM`]->_556
create _100-[:`FROM_TEAM`]->_524
create _101-[:`IN_TEAM` {`fee`:"Signed", `from`:"2000-12-31", `to`:"2002-12-29"}]->_438
create _101-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26"}]->_422
create _101-[:`IN_TEAM` {`fee`:"Signed", `from`:"1997-12-28", `to`:"2003-12-28"}]->_198
create _101-[:`IN_TEAM` {`fee`:"Signed", `from`:"1991-12-29", `to`:"2000-12-31"}]->_135
create _101-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2007-12-30"}]->_98
create _101-[:`FROM_TEAM`]->_719
create _101-[:`FROM_TEAM`]->_680
create _101-[:`FROM_TEAM`]->_594
create _101-[:`FROM_TEAM`]->_555
create _103-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2012-12-30"}]->_102
create _106-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2007-12-30"}]->_105
create _106-[:`FROM_TEAM`]->_702
create _107-[:`IN_TEAM` {`fee`:"Signed", `from`:"2002-12-29", `to`:"2006-01-01"}]->_105
create _107-[:`FROM_TEAM`]->_701
create _109-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-01-01"}]->_453
create _109-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2007-12-30"}]->_108
create _109-[:`FROM_TEAM`]->_725
create _110-[:`IN_TEAM` {`fee`:"Signed", `from`:"2001-12-30", `to`:"2004-12-26"}]->_108
create _110-[:`FROM_TEAM`]->_724
create _112-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2009-12-27"}]->_111
create _112-[:`FROM_TEAM`]->_756
create _113-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2006-12-31"}]->_111
create _113-[:`FROM_TEAM`]->_755
create _115-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2010-12-26"}]->_215
create _115-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2013-12-29"}]->_127
create _115-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2013-12-29"}]->_114
create _115-[:`FROM_TEAM`]->_797
create _115-[:`FROM_TEAM`]->_705
create _115-[:`FROM_TEAM`]->_614
create _116-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2007-12-30"}]->_212
create _116-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2010-12-26"}]->_114
create _116-[:`FROM_TEAM`]->_781
create _116-[:`FROM_TEAM`]->_704
create _118-[:`IN_TEAM` {`fee`:"Signed", `from`:"2000-12-31", `to`:"2002-12-29"}]->_117
create _118-[:`FROM_TEAM`]->_726
create _120-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_447
create _120-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2013-12-29"}]->_352
create _120-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2013-12-29"}]->_320
create _120-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2012-01-01"}]->_311
create _120-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-12-30"}]->_215
create _120-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2010-12-26"}]->_164
create _120-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2010-12-26"}]->_159
create _120-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30", `to`:"2012-12-30"}]->_119
create _120-[:`FROM_TEAM`]->_798
create _120-[:`FROM_TEAM`]->_776
create _120-[:`FROM_TEAM`]->_697
create _120-[:`FROM_TEAM`]->_570
create _120-[:`FROM_TEAM`]->_501
create _120-[:`FROM_TEAM`]->_492
create _121-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01", `to`:"2012-12-30"}]->_460
create _121-[:`IN_TEAM` {`fee`:"Signed", `from`:"2001-12-30", `to`:"2010-12-26"}]->_119
create _121-[:`FROM_TEAM`]->_497
create _121-[:`FROM_TEAM`]->_500
create _122-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2008-12-28"}]->_215
create _122-[:`IN_TEAM` {`fee`:"Signed", `from`:"2001-12-30", `to`:"2001-12-30"}]->_119
create _122-[:`FROM_TEAM`]->_796
create _122-[:`FROM_TEAM`]->_499
create _124-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-12-30"}]->_123
create _125-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2008-12-28"}]->_123
create _125-[:`FROM_TEAM`]->_706
create _129-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2009-12-27"}]->_389
create _129-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2007-12-30"}]->_324
create _129-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2013-12-29"}]->_300
create _129-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-12-31", `to`:"2007-12-30"}]->_221
create _129-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2010-12-26"}]->_203
create _129-[:`IN_TEAM` {`fee`:"Loan", `from`:"2004-12-26", `to`:"2006-01-01"}]->_128
create _129-[:`FROM_TEAM`]->_780
create _129-[:`FROM_TEAM`]->_733
create _129-[:`FROM_TEAM`]->_677
create _130-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-12-30"}]->_410
create _130-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-12-30"}]->_380
create _130-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-01-01"}]->_286
create _130-[:`IN_TEAM` {`fee`:"Loan", `from`:"1998-12-27", `to`:"1998-12-27"}]->_198
create _130-[:`IN_TEAM` {`fee`:"Loan", `from`:"2002-12-29", `to`:"2002-12-29"}]->_128
create _130-[:`FROM_TEAM`]->_753
create _130-[:`FROM_TEAM`]->_549
create _131-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01", `to`:"2012-12-30"}]->_284
create _131-[:`IN_TEAM` {`fee`:"Loan", `from`:"2002-12-29", `to`:"2003-12-28"}]->_267
create _131-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_256
create _131-[:`IN_TEAM` {`fee`:"Signed", `from`:"2002-12-29", `to`:"2004-12-26"}]->_221
create _131-[:`IN_TEAM` {`fee`:"Signed", `from`:"2000-12-31", `to`:"2003-12-28"}]->_128
create _131-[:`FROM_TEAM`]->_784
create _131-[:`FROM_TEAM`]->_769
create _131-[:`FROM_TEAM`]->_502
create _134-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01", `to`:"2013-12-29"}]->_446
create _134-[:`IN_TEAM` {`fee`:"Signed", `from`:"2002-12-29", `to`:"2012-12-30"}]->_133
create _134-[:`FROM_TEAM`]->_703
create _134-[:`FROM_TEAM`]->_596
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2010-12-26"}]->_472
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2012-12-30"}]->_471
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"2002-12-29", `to`:"2006-12-31"}]->_438
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2006-01-01"}]->_410
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"2000-12-31", `to`:"2013-12-29"}]->_135
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2013-12-29"}]->_194
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28"}]->_308
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26"}]->_311
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_313
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26"}]->_314
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_315
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_316
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30"}]->_318
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_320
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_322
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_324
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"1996-12-29"}]->_325
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_326
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_327
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_328
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_329
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27"}]->_330
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_331
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_334
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01"}]->_335
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2009-12-27"}]->_336
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_338
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"2014-12-28"}]->_341
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_343
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_344
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2012-01-01"}]->_345
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_349
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_352
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_357
create _136-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_358
create _136-[:`CURRENT_TEAM` {`contractSigned`:"01 Aug, 2013", `fee`:"Signed", `number`:37, `position`:"Forward"}]->_358
create _136-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2014", `fee`:"Trainee", `number`:35, `position`:"Forward"}]->_357
create _136-[:`CURRENT_TEAM` {`contractSigned`:"15 Jul, 2014", `fee`:"£32,000,000", `number`:19, `position`:"Forward"}]->_352
create _136-[:`CURRENT_TEAM` {`contractSigned`:"31 Aug, 2014", `fee`:"£8,500,000", `number`:18, `position`:"Forward"}]->_349
create _136-[:`CURRENT_TEAM` {`contractSigned`:"25 Jul, 2014", `fee`:"Free", `number`:11, `position`:"Forward"}]->_345
create _136-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2014", `fee`:"Trainee", `number`:36, `position`:"Midfielder"}]->_344
create _136-[:`CURRENT_TEAM` {`contractSigned`:"15 Jul, 2014", `fee`:"Trainee", `number`:32, `position`:"Midfielder"}]->_343
create _136-[:`CURRENT_TEAM` {`contractSigned`:"02 Feb, 2015", `fee`:"£26,100,000", `number`:23, `position`:"Midfielder"}]->_341
create _136-[:`CURRENT_TEAM` {`contractSigned`:"28 Aug, 2013", `fee`:"£32,000,000", `number`:22, `position`:"Midfielder"}]->_338
create _136-[:`CURRENT_TEAM` {`contractSigned`:"15 Jan, 2014", `fee`:"£21,000,000", `number`:21, `position`:"Midfielder"}]->_336
create _136-[:`CURRENT_TEAM` {`contractSigned`:"01 Jun, 2004", `fee`:"£7,000,000", `number`:1, `position`:"Goalkeeper"}]->_308
create _136-[:`CURRENT_TEAM` {`contractSigned`:"03 Jun, 2011", `fee`:"£5,000,000", `number`:13, `position`:"Goalkeeper"}]->_311
create _136-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2014", `fee`:"Youth", `number`:33, `position`:"Goalkeeper"}]->_313
create _136-[:`CURRENT_TEAM` {`contractSigned`:"01 Aug, 2011", `fee`:"Trainee", `number`:46, `position`:"Goalkeeper"}]->_314
create _136-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2013", `fee`:"Signed", `number`:-1, `position`:"Defender"}]->_315
create _136-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2013", `fee`:"Youth", `number`:-1, `position`:"Defender"}]->_316
create _136-[:`CURRENT_TEAM` {`contractSigned`:"16 Jan, 2008", `fee`:"£9,000,000", `number`:2, `position`:"Defender"}]->_318
create _136-[:`CURRENT_TEAM` {`contractSigned`:"16 Jul, 2014", `fee`:"£16,000,000", `number`:3, `position`:"Defender"}]->_320
create _136-[:`CURRENT_TEAM` {`contractSigned`:"31 Jan, 2014", `fee`:"£12,500,000", `number`:5, `position`:"Defender"}]->_322
create _136-[:`CURRENT_TEAM` {`contractSigned`:"16 Jan, 2012", `fee`:"£7,000,000", `number`:24, `position`:"Defender"}]->_324
create _136-[:`CURRENT_TEAM` {`contractSigned`:"01 Aug, 1997", `fee`:"Trainee", `number`:26, `position`:"Defender"}]->_325
create _136-[:`CURRENT_TEAM` {`contractSigned`:"24 Aug, 2012", `fee`:"£6,500,000", `number`:28, `position`:"Defender"}]->_326
create _136-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2012", `fee`:"Youth", `number`:31, `position`:"Defender"}]->_327
create _136-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2014", `fee`:"Trainee", `number`:-1, `position`:"Midfielder"}]->_328
create _136-[:`CURRENT_TEAM` {`contractSigned`:"12 Jun, 2014", `fee`:"£30,000,000", `number`:4, `position`:"Midfielder"}]->_329
create _136-[:`CURRENT_TEAM` {`contractSigned`:"13 Aug, 2010", `fee`:"£19,800,000", `number`:7, `position`:"Midfielder"}]->_330
create _136-[:`CURRENT_TEAM` {`contractSigned`:"25 Jul, 2012", `fee`:"£25,000,000", `number`:8, `position`:"Midfielder"}]->_331
create _136-[:`CURRENT_TEAM` {`contractSigned`:"04 Jun, 2012", `fee`:"£32,000,000", `number`:10, `position`:"Midfielder"}]->_334
create _136-[:`CURRENT_TEAM` {`contractSigned`:"03 Jun, 2006", `fee`:"Signed", `number`:12, `position`:"Midfielder"}]->_335
create _136-[:`IN_TOURNAMENT`]->_0
create _136-[:`FROM_TEAM`]->_709
create _136-[:`FROM_TEAM`]->_639
create _136-[:`FROM_TEAM`]->_645
create _136-[:`FROM_TEAM`]->_640
create _136-[:`FROM_TEAM`]->_595
create _136-[:`FROM_TEAM`]->_517
create _136-[:`FROM_TEAM`]->_511
create _137-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2010-12-26"}]->_472
create _137-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2012-01-01"}]->_462
create _137-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-01-01", `to`:"2006-12-31"}]->_374
create _137-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30", `to`:"2014-12-28"}]->_157
create _137-[:`IN_TEAM` {`fee`:"Loan", `from`:"1995-01-01", `to`:"1995-12-31"}]->_135
create _137-[:`FROM_TEAM`]->_648
create _137-[:`FROM_TEAM`]->_651
create _139-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2010-12-26"}]->_194
create _139-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2009-12-27"}]->_138
create _139-[:`FROM_TEAM`]->_688
create _139-[:`FROM_TEAM`]->_516
create _140-[:`IN_TEAM` {`fee`:"Loan", `from`:"2004-12-26", `to`:"2004-12-26"}]->_439
create _140-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-12-31", `to`:"2007-12-30"}]->_352
create _140-[:`IN_TEAM` {`fee`:"Loan", `from`:"2004-12-26", `to`:"2006-01-01"}]->_138
create _142-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2012-12-30"}]->_338
create _142-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2012-12-30"}]->_141
create _142-[:`FROM_TEAM`]->_765
create _142-[:`FROM_TEAM`]->_700
create _144-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30", `to`:"2014-12-28"}]->_248
create _144-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2006-12-31"}]->_143
create _144-[:`FROM_TEAM`]->_794
create _144-[:`FROM_TEAM`]->_774
create _145-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2004-12-26"}]->_143
create _145-[:`FROM_TEAM`]->_793
create _146-[:`IN_TEAM` {`fee`:"Signed", `from`:"2000-12-31", `to`:"2003-12-28"}]->_143
create _146-[:`FROM_TEAM`]->_792
create _151-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2013-12-29"}]->_150
create _152-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-01-01", `to`:"2006-12-31"}]->_438
create _152-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-01-01"}]->_150
create _152-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2006-12-31"}]->_256
create _152-[:`IN_TEAM` {`fee`:"Loan", `from`:"2008-12-28", `to`:"2008-12-28"}]->_267
create _152-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_359
create _152-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_363
create _152-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_366
create _152-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_369
create _152-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_370
create _152-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_374
create _152-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_375
create _152-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_376
create _152-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26"}]->_377
create _152-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_379
create _152-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_380
create _152-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_382
create _152-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29"}]->_387
create _152-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_389
create _152-[:`IN_TEAM` {`fee`:"Loan", `from`:"2014-12-28"}]->_392
create _152-[:`IN_TEAM` {`fee`:"Loan", `from`:"2014-12-28"}]->_393
create _152-[:`IN_TEAM` {`fee`:"Loan", `from`:"2014-12-28"}]->_394
create _152-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_395
create _152-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_396
create _152-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2012-12-30"}]->_397
create _152-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_398
create _152-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_399
create _152-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_400
create _152-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_403
create _152-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_405
create _152-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_407
create _152-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_408
create _152-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2013-12-29"}]->_410
create _152-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_411
create _152-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_412
create _152-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_413
create _152-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_414
create _152-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_417
create _152-[:`IN_TEAM` {`fee`:"Loan", `from`:"2014-12-28"}]->_420
create _152-[:`IN_TEAM` {`fee`:"Loan", `from`:"2014-12-28"}]->_422
create _152-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_425
create _152-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2012-12-30"}]->_429
create _152-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_431
create _152-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2012", `fee`:"", `number`:30, `position`:"Forward"}]->_431
create _152-[:`CURRENT_TEAM` {`contractSigned`:"08 May, 2013", `fee`:"Free", `number`:23, `position`:"Forward"}]->_429
create _152-[:`CURRENT_TEAM` {`contractSigned`:"17 Jun, 2014", `fee`:"Signed", `number`:20, `position`:"Forward"}]->_425
create _152-[:`CURRENT_TEAM` {`contractSigned`:"31 Jan, 2011", `fee`:"Signed", `number`:15, `position`:"Forward"}]->_422
create _152-[:`CURRENT_TEAM` {`contractSigned`:"30 Jan, 2012", `fee`:"Signed", `number`:14, `position`:"Forward"}]->_420
create _152-[:`CURRENT_TEAM` {`contractSigned`:"12 May, 2013", `fee`:"Free", `number`:10, `position`:"Forward"}]->_417
create _152-[:`CURRENT_TEAM` {`contractSigned`:"09 Jan, 2014", `fee`:"Free", `number`:9, `position`:"Forward"}]->_414
create _152-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2014", `fee`:"Unknown", `number`:36, `position`:"Midfielder"}]->_413
create _152-[:`CURRENT_TEAM` {`contractSigned`:"01 Jan, 2014", `fee`:"", `number`:33, `position`:"Midfielder"}]->_412
create _152-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2014", `fee`:"Youth", `number`:30, `position`:"Midfielder"}]->_411
create _152-[:`CURRENT_TEAM` {`contractSigned`:"22 May, 2014", `fee`:"Free", `number`:29, `position`:"Midfielder"}]->_410
create _152-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2012", `fee`:"Trainee", `number`:26, `position`:"Midfielder"}]->_408
create _152-[:`CURRENT_TEAM` {`contractSigned`:"19 Jun, 2014", `fee`:"Signed", `number`:25, `position`:"Midfielder"}]->_407
create _152-[:`CURRENT_TEAM` {`contractSigned`:"24 Jun, 2014", `fee`:"Free", `number`:21, `position`:"Midfielder"}]->_405
create _152-[:`CURRENT_TEAM` {`contractSigned`:"16 Jan, 2014", `fee`:"Free", `number`:19, `position`:"Midfielder"}]->_403
create _152-[:`CURRENT_TEAM` {`contractSigned`:"31 Aug, 2012", `fee`:"Free", `number`:13, `position`:"Midfielder"}]->_400
create _152-[:`CURRENT_TEAM` {`contractSigned`:"01 Jan, 2012", `fee`:"Youth", `number`:8, `position`:"Midfielder"}]->_399
create _152-[:`CURRENT_TEAM` {`contractSigned`:"20 May, 2013", `fee`:"Free", `number`:7, `position`:"Midfielder"}]->_398
create _152-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2013", `fee`:"Signed", `number`:-1, `position`:"Midfielder"}]->_397
create _152-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2013", `fee`:"Trainee", `number`:-1, `position`:"Midfielder"}]->_396
create _152-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2012", `fee`:"Trainee", `number`:34, `position`:"Defender"}]->_395
create _152-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2014", `fee`:"Youth", `number`:28, `position`:"Defender"}]->_394
create _152-[:`CURRENT_TEAM` {`contractSigned`:"21 Nov, 2014", `fee`:"Free", `number`:24, `position`:"Defender"}]->_393
create _152-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2013", `fee`:"Trainee", `number`:18, `position`:"Defender"}]->_392
create _152-[:`CURRENT_TEAM` {`contractSigned`:"09 Jan, 2014", `fee`:"Free", `number`:17, `position`:"Defender"}]->_389
create _152-[:`CURRENT_TEAM` {`contractSigned`:"01 Aug, 2001", `fee`:"Trainee", `number`:16, `position`:"Defender"}]->_387
create _152-[:`CURRENT_TEAM` {`contractSigned`:"21 Jan, 2014", `fee`:"Free", `number`:6, `position`:"Defender"}]->_382
create _152-[:`CURRENT_TEAM` {`contractSigned`:"14 May, 2013", `fee`:"Free", `number`:5, `position`:"Defender"}]->_380
create _152-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2012", `fee`:"Trainee", `number`:3, `position`:"Defender"}]->_379
create _152-[:`CURRENT_TEAM` {`contractSigned`:"16 May, 2013", `fee`:"Free", `number`:-1, `position`:"Goalkeeper"}]->_359
create _152-[:`CURRENT_TEAM` {`contractSigned`:"04 Jun, 2014", `fee`:"Free", `number`:1, `position`:"Goalkeeper"}]->_363
create _152-[:`CURRENT_TEAM` {`contractSigned`:"24 Jun, 2014", `fee`:"Free", `number`:22, `position`:"Goalkeeper"}]->_366
create _152-[:`CURRENT_TEAM` {`contractSigned`:"01 Aug, 2014", `fee`:"", `number`:31, `position`:"Goalkeeper"}]->_369
create _152-[:`CURRENT_TEAM` {`contractSigned`:"24 Jan, 2013", `fee`:"Free", `number`:-1, `position`:"Defender"}]->_370
create _152-[:`CURRENT_TEAM` {`contractSigned`:"15 Aug, 2013", `fee`:"Free", `number`:-1, `position`:"Defender"}]->_374
create _152-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2013", `fee`:"Trainee", `number`:-1, `position`:"Defender"}]->_375
create _152-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2013", `fee`:"Trainee", `number`:-1, `position`:"Defender"}]->_376
create _152-[:`CURRENT_TEAM` {`contractSigned`:"01 Aug, 2011", `fee`:"Trainee", `number`:2, `position`:"Defender"}]->_377
create _152-[:`IN_TOURNAMENT`]->_0
create _152-[:`FROM_TEAM`]->_583
create _153-[:`IN_TEAM` {`fee`:"Loan", `from`:"2004-12-26", `to`:"2004-12-26"}]->_366
create _153-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-12-31", `to`:"2006-12-31"}]->_286
create _153-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2010-12-26"}]->_169
create _153-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2012-01-01"}]->_150
create _155-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2010-12-26"}]->_154
create _155-[:`FROM_TEAM`]->_628
create _156-[:`IN_TEAM` {`fee`:"Signed", `from`:"2002-12-29", `to`:"2004-12-26"}]->_154
create _156-[:`FROM_TEAM`]->_627
create _158-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2010-12-26"}]->_336
create _158-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2012-12-30"}]->_315
create _158-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-12-30"}]->_157
create _158-[:`FROM_TEAM`]->_650
create _161-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-12-30"}]->_341
create _161-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2012-12-30"}]->_160
create _161-[:`FROM_TEAM`]->_602
create _162-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-12-30"}]->_478
create _162-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2007-12-30"}]->_160
create _162-[:`FROM_TEAM`]->_601
create _162-[:`FROM_TEAM`]->_493
create _166-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2010-12-26"}]->_165
create _166-[:`FROM_TEAM`]->_690
create _167-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2009-12-27"}]->_165
create _167-[:`FROM_TEAM`]->_689
create _170-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2013-12-29"}]->_169
create _171-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2010-12-26"}]->_297
create _171-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_238
create _171-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-12-30"}]->_169
create _172-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2010-12-26"}]->_363
create _172-[:`IN_TEAM` {`fee`:"Loan", `from`:"2008-12-28", `to`:"2008-12-28"}]->_169
create _174-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-01-01", `to`:"2006-01-01"}]->_286
create _174-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2014-12-28"}]->_173
create _176-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2007-12-30"}]->_175
create _176-[:`FROM_TEAM`]->_582
create _179-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2010-12-26"}]->_178
create _179-[:`FROM_TEAM`]->_603
create _181-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01", `to`:"2013-12-29"}]->_180
create _181-[:`FROM_TEAM`]->_675
create _182-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-01-01"}]->_180
create _182-[:`FROM_TEAM`]->_674
create _183-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2009-12-27"}]->_180
create _183-[:`FROM_TEAM`]->_673
create _186-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_392
create _186-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2009-12-27"}]->_389
create _186-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2013-12-29"}]->_278
create _186-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2009-12-27"}]->_185
create _186-[:`FROM_TEAM`]->_519
create _188-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-12-30"}]->_187
create _188-[:`FROM_TEAM`]->_606
create _193-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30", `to`:"2013-12-29"}]->_478
create _193-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2013-12-29"}]->_336
create _193-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2009-12-27"}]->_330
create _193-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2009-12-27"}]->_192
create _193-[:`FROM_TEAM`]->_666
create _193-[:`FROM_TEAM`]->_691
create _193-[:`FROM_TEAM`]->_494
create _195-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2006-12-31"}]->_194
create _195-[:`FROM_TEAM`]->_515
create _199-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2007-12-30"}]->_398
create _199-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2006-01-01"}]->_198
create _199-[:`FROM_TEAM`]->_757
create _199-[:`FROM_TEAM`]->_681
create _201-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2009-12-27"}]->_200
create _202-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2013-12-29"}]->_200
create _202-[:`FROM_TEAM`]->_483
create _205-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2013-12-29"}]->_204
create _205-[:`FROM_TEAM`]->_708
create _206-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2010-12-26"}]->_267
create _206-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2010-12-26"}]->_204
create _206-[:`FROM_TEAM`]->_707
create _206-[:`FROM_TEAM`]->_665
create _208-[:`IN_TEAM` {`fee`:"Loan", `from`:"2008-12-28", `to`:"2009-12-27"}]->_297
create _208-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2008-12-28"}]->_285
create _208-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2014-12-28"}]->_207
create _208-[:`FROM_TEAM`]->_659
create _209-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2013-12-29"}]->_207
create _209-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-01-01", `to`:"2006-12-31"}]->_211
create _209-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_221
create _209-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27"}]->_226
create _209-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2010-12-26"}]->_230
create _209-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_233
create _209-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_234
create _209-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_235
create _209-[:`IN_TEAM` {`fee`:"Loan", `from`:"2014-12-28"}]->_238
create _209-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27"}]->_239
create _209-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01"}]->_245
create _209-[:`IN_TEAM` {`fee`:"Signed", `from`:"2014-12-28"}]->_248
create _209-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_250
create _209-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_253
create _209-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_254
create _209-[:`IN_TEAM` {`fee`:"Loan", `from`:"2014-12-28"}]->_256
create _209-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26"}]->_259
create _209-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_261
create _209-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_262
create _209-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_264
create _209-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2013-12-29"}]->_266
create _209-[:`IN_TEAM` {`fee`:"Signed", `from`:"2014-12-28"}]->_267
create _209-[:`IN_TEAM` {`fee`:"Signed", `from`:"2014-12-28"}]->_271
create _209-[:`IN_TEAM` {`fee`:"Loan", `from`:"2014-12-28"}]->_273
create _209-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_274
create _209-[:`IN_TEAM` {`fee`:"Loan", `from`:"2014-12-28"}]->_277
create _209-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_278
create _209-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_281
create _209-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_282
create _209-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_283
create _209-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_284
create _209-[:`IN_TEAM` {`fee`:"Signed", `from`:"2014-12-28"}]->_285
create _209-[:`IN_TEAM` {`fee`:"Loan", `from`:"2014-12-28"}]->_286
create _209-[:`IN_TEAM` {`fee`:"Loan", `from`:"2014-12-28"}]->_292
create _209-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_293
create _209-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_297
create _209-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_299
create _209-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_300
create _209-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_306
create _209-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_307
create _209-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2014", `fee`:"Youth", `number`:46, `position`:"Forward"}]->_307
create _209-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2014", `fee`:"Trainee", `number`:43, `position`:"Forward"}]->_306
create _209-[:`CURRENT_TEAM` {`contractSigned`:"08 Jul, 2013", `fee`:"£2,000,000", `number`:42, `position`:"Forward"}]->_300
create _209-[:`CURRENT_TEAM` {`contractSigned`:"01 Aug, 2014", `fee`:"Trainee", `number`:37, `position`:"Forward"}]->_299
create _209-[:`CURRENT_TEAM` {`contractSigned`:"31 Jan, 2014", `fee`:"Signed", `number`:33, `position`:"Forward"}]->_297
create _209-[:`CURRENT_TEAM` {`contractSigned`:"05 Jul, 2013", `fee`:"Free", `number`:32, `position`:"Forward"}]->_293
create _209-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2012", `fee`:"Youth", `number`:31, `position`:"Forward"}]->_292
create _209-[:`CURRENT_TEAM` {`contractSigned`:"30 Jan, 2014", `fee`:"£750,000", `number`:21, `position`:"Forward"}]->_286
create _209-[:`CURRENT_TEAM` {`contractSigned`:"30 Jan, 2015", `fee`:"Signed", `number`:10, `position`:"Forward"}]->_285
create _209-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2013", `fee`:"Free", `number`:-1, `position`:"Forward"}]->_284
create _209-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2013", `fee`:"Trainee", `number`:-1, `position`:"Forward"}]->_283
create _209-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2013", `fee`:"Trainee", `number`:39, `position`:"Midfielder"}]->_282
create _209-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2013", `fee`:"Trainee", `number`:38, `position`:"Midfielder"}]->_281
create _209-[:`CURRENT_TEAM` {`contractSigned`:"01 Sep, 2014", `fee`:"Free", `number`:36, `position`:"Midfielder"}]->_278
create _209-[:`CURRENT_TEAM` {`contractSigned`:"01 Aug, 2012", `fee`:"Trainee", `number`:27, `position`:"Midfielder"}]->_277
create _209-[:`CURRENT_TEAM` {`contractSigned`:"10 Jul, 2014", `fee`:"Free", `number`:19, `position`:"Midfielder"}]->_274
create _209-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2014", `fee`:"Youth", `number`:18, `position`:"Midfielder"}]->_273
create _209-[:`CURRENT_TEAM` {`contractSigned`:"05 Feb, 2015", `fee`:"Signed", `number`:16, `position`:"Midfielder"}]->_271
create _209-[:`CURRENT_TEAM` {`contractSigned`:"21 Feb, 2015", `fee`:"Free", `number`:15, `position`:"Midfielder"}]->_267
create _209-[:`CURRENT_TEAM` {`contractSigned`:"01 Sep, 2014", `fee`:"Signed", `number`:14, `position`:"Midfielder"}]->_266
create _209-[:`CURRENT_TEAM` {`contractSigned`:"09 Aug, 2013", `fee`:"Signed", `number`:11, `position`:"Midfielder"}]->_264
create _209-[:`CURRENT_TEAM` {`contractSigned`:"26 Jun, 2013", `fee`:"Free", `number`:7, `position`:"Midfielder"}]->_262
create _209-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2013", `fee`:"Trainee", `number`:-1, `position`:"Midfielder"}]->_261
create _209-[:`CURRENT_TEAM` {`contractSigned`:"30 Aug, 2011", `fee`:"Signed", `number`:-1, `position`:"Midfielder"}]->_259
create _209-[:`CURRENT_TEAM` {`contractSigned`:"03 Aug, 2012", `fee`:"Signed", `number`:28, `position`:"Defender"}]->_256
create _209-[:`CURRENT_TEAM` {`contractSigned`:"01 Aug, 2013", `fee`:"Signed", `number`:25, `position`:"Defender"}]->_254
create _209-[:`CURRENT_TEAM` {`contractSigned`:"03 Jul, 2013", `fee`:"£750,000", `number`:24, `position`:"Defender"}]->_253
create _209-[:`CURRENT_TEAM` {`contractSigned`:"04 Jun, 2014", `fee`:"Free", `number`:22, `position`:"Defender"}]->_250
create _209-[:`CURRENT_TEAM` {`contractSigned`:"04 Jul, 2013", `fee`:"Signed", `number`:1, `position`:"Goalkeeper"}]->_221
create _209-[:`CURRENT_TEAM` {`contractSigned`:"01 Jan, 2010", `fee`:"Trainee", `number`:13, `position`:"Goalkeeper"}]->_226
create _209-[:`CURRENT_TEAM` {`contractSigned`:"04 Jul, 2011", `fee`:"£4,000,000", `number`:26, `position`:"Goalkeeper"}]->_230
create _209-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2013", `fee`:"Youth", `number`:-1, `position`:"Defender"}]->_233
create _209-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2013", `fee`:"Trainee", `number`:-1, `position`:"Defender"}]->_234
create _209-[:`CURRENT_TEAM` {`contractSigned`:"03 Jun, 2014", `fee`:"Free", `number`:3, `position`:"Defender"}]->_235
create _209-[:`CURRENT_TEAM` {`contractSigned`:"29 Jul, 2014", `fee`:"£2,500,000", `number`:4, `position`:"Defender"}]->_238
create _209-[:`CURRENT_TEAM` {`contractSigned`:"13 Jan, 2010", `fee`:"Signed", `number`:5, `position`:"Defender"}]->_239
create _209-[:`CURRENT_TEAM` {`contractSigned`:"01 Aug, 2006", `fee`:"£1,000,000", `number`:17, `position`:"Defender"}]->_245
create _209-[:`CURRENT_TEAM` {`contractSigned`:"02 Feb, 2015", `fee`:"Free", `number`:20, `position`:"Defender"}]->_248
create _209-[:`IN_TOURNAMENT`]->_0
create _210-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2012-01-01"}]->_207
create _210-[:`FROM_TEAM`]->_676
create _214-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01", `to`:"2013-12-29"}]->_213
create _214-[:`FROM_TEAM`]->_693
create _216-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_215
create _219-[:`IN_TEAM` {`fee`:"Signed", `from`:"2000-12-31", `to`:"2003-12-28"}]->_218
create _219-[:`FROM_TEAM`]->_481
create _222-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-12-30"}]->_221
create _222-[:`FROM_TEAM`]->_772
create _223-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2012-01-01"}]->_389
create _223-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30", `to`:"2012-12-30"}]->_358
create _223-[:`IN_TEAM` {`fee`:"Loan", `from`:"2008-12-28", `to`:"2008-12-28"}]->_293
create _223-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2010-12-26"}]->_254
create _223-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2010-12-26"}]->_221
create _223-[:`FROM_TEAM`]->_771
create _223-[:`FROM_TEAM`]->_734
create _223-[:`FROM_TEAM`]->_544
create _223-[:`FROM_TEAM`]->_485
create _224-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-01-01", `to`:"2006-01-01"}]->_432
create _224-[:`IN_TEAM` {`fee`:"Signed", `from`:"2002-12-29", `to`:"2003-12-28"}]->_300
create _224-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2009-12-27"}]->_286
create _224-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2010-12-26"}]->_226
create _224-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-01-01", `to`:"2006-01-01"}]->_221
create _224-[:`FROM_TEAM`]->_632
create _224-[:`FROM_TEAM`]->_548
create _225-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2007-12-30"}]->_221
create _225-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2008-12-28"}]->_267
create _225-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_273
create _225-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_292
create _225-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27"}]->_432
create _225-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_434
create _225-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_436
create _225-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28"}]->_438
create _225-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26"}]->_439
create _225-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_441
create _225-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_443
create _225-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_445
create _225-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_446
create _225-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29"}]->_447
create _225-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30"}]->_448
create _225-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27"}]->_450
create _225-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_451
create _225-[:`IN_TEAM` {`fee`:"Signed", `from`:"1997-12-28"}]->_452
create _225-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_453
create _225-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26"}]->_456
create _225-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_457
create _225-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31"}]->_458
create _225-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_460
create _225-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_462
create _225-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27"}]->_463
create _225-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_464
create _225-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_465
create _225-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_467
create _225-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26"}]->_468
create _225-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_469
create _225-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_471
create _225-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_472
create _225-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_475
create _225-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_476
create _225-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_478
create _225-[:`CURRENT_TEAM` {`contractSigned`:"15 Jul, 2014", `fee`:"£20,000,000", `number`:50, `position`:"Forward"}]->_478
create _225-[:`CURRENT_TEAM` {`contractSigned`:"25 Aug, 2014", `fee`:"£16,000,000", `number`:45, `position`:"Forward"}]->_476
create _225-[:`CURRENT_TEAM` {`contractSigned`:"31 Aug, 2012", `fee`:"£1,000,000", `number`:36, `position`:"Forward"}]->_475
create _225-[:`CURRENT_TEAM` {`contractSigned`:"09 Jul, 2012", `fee`:"£10,500,000", `number`:29, `position`:"Forward"}]->_472
create _225-[:`CURRENT_TEAM` {`contractSigned`:"02 Jan, 2013", `fee`:"£12,000,000", `number`:15, `position`:"Forward"}]->_471
create _225-[:`CURRENT_TEAM` {`contractSigned`:"02 Jun, 2014", `fee`:"£4,000,000", `number`:9, `position`:"Forward"}]->_469
create _225-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2011", `fee`:"Youth", `number`:-1, `position`:"Forward"}]->_468
create _225-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2013", `fee`:"Youth", `number`:46, `position`:"Midfielder"}]->_467
create _225-[:`CURRENT_TEAM` {`contractSigned`:"01 Jan, 2012", `fee`:"Signed", `number`:33, `position`:"Midfielder"}]->_465
create _225-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2013", `fee`:"Trainee", `number`:32, `position`:"Midfielder"}]->_464
create _225-[:`CURRENT_TEAM` {`contractSigned`:"01 Aug, 2010", `fee`:"£600,000", `number`:31, `position`:"Midfielder"}]->_463
create _225-[:`CURRENT_TEAM` {`contractSigned`:"10 Aug, 2012", `fee`:"£15,000,000", `number`:24, `position`:"Midfielder"}]->_462
create _225-[:`CURRENT_TEAM` {`contractSigned`:"03 Jul, 2014", `fee`:"£10,000,000", `number`:23, `position`:"Midfielder"}]->_460
create _225-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2007", `fee`:"£5,000,000", `number`:21, `position`:"Midfielder"}]->_458
create _225-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2014", `fee`:"£25,000,000", `number`:20, `position`:"Midfielder"}]->_457
create _225-[:`CURRENT_TEAM` {`contractSigned`:"10 Jun, 2011", `fee`:"£16,000,000", `number`:14, `position`:"Midfielder"}]->_456
create _225-[:`CURRENT_TEAM` {`contractSigned`:"17 Aug, 2010", `fee`:"£2,300,000", `number`:1, `position`:"Goalkeeper"}]->_432
create _225-[:`CURRENT_TEAM` {`contractSigned`:"25 Jun, 2013", `fee`:"£9,000,000", `number`:22, `position`:"Goalkeeper"}]->_434
create _225-[:`CURRENT_TEAM` {`contractSigned`:"30 Jan, 2012", `fee`:"£100,000", `number`:52, `position`:"Goalkeeper"}]->_436
create _225-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2009", `fee`:"£18,000,000", `number`:2, `position`:"Defender"}]->_438
create _225-[:`CURRENT_TEAM` {`contractSigned`:"12 Aug, 2011", `fee`:"£5,000,000", `number`:3, `position`:"Defender"}]->_439
create _225-[:`CURRENT_TEAM` {`contractSigned`:"02 Jul, 2013", `fee`:"Free", `number`:4, `position`:"Defender"}]->_441
create _225-[:`CURRENT_TEAM` {`contractSigned`:"27 Jul, 2014", `fee`:"£20,000,000", `number`:6, `position`:"Defender"}]->_443
create _225-[:`CURRENT_TEAM` {`contractSigned`:"02 Sep, 2013", `fee`:"£18,000,000", `number`:17, `position`:"Defender"}]->_445
create _225-[:`CURRENT_TEAM` {`contractSigned`:"16 Aug, 2014", `fee`:"£12,000,000", `number`:18, `position`:"Defender"}]->_446
create _225-[:`CURRENT_TEAM` {`contractSigned`:"02 May, 2012", `fee`:"Youth", `number`:19, `position`:"Defender"}]->_447
create _225-[:`CURRENT_TEAM` {`contractSigned`:"11 Jan, 2008", `fee`:"£6,000,000", `number`:37, `position`:"Defender"}]->_448
create _225-[:`CURRENT_TEAM` {`contractSigned`:"01 Aug, 2010", `fee`:"Trainee", `number`:38, `position`:"Defender"}]->_450
create _225-[:`CURRENT_TEAM` {`contractSigned`:"01 Jul, 2012", `fee`:"Trainee", `number`:43, `position`:"Defender"}]->_451
create _225-[:`CURRENT_TEAM` {`contractSigned`:"01 Aug, 1998", `fee`:"Trainee", `number`:8, `position`:"Midfielder"}]->_452
create _225-[:`CURRENT_TEAM` {`contractSigned`:"30 Jan, 2013", `fee`:"£8,500,000", `number`:10, `position`:"Midfielder"}]->_453
create _225-[:`IN_TOURNAMENT`]->_0
create _225-[:`FROM_TEAM`]->_770
create _225-[:`FROM_TEAM`]->_664
create _227-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-12-30"}]->_468
create _227-[:`IN_TEAM` {`fee`:"Loan", `from`:"2004-12-26", `to`:"2004-12-26"}]->_366
create _227-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2010-12-26"}]->_285
create _227-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-12-30"}]->_266
create _227-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-12-30"}]->_226
create _227-[:`FROM_TEAM`]->_660
create _228-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-01-01"}]->_226
create _229-[:`IN_TEAM` {`fee`:"Loan", `from`:"2007-12-30", `to`:"2007-12-30"}]->_417
create _229-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2009-12-27"}]->_226
create _231-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2008-12-28"}]->_403
create _231-[:`IN_TEAM` {`fee`:"Loan", `from`:"2007-12-30", `to`:"2007-12-30"}]->_397
create _231-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2009-12-27"}]->_374
create _231-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2012-01-01"}]->_366
create _231-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2008-12-28"}]->_359
create _231-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2013-12-29"}]->_230
create _231-[:`FROM_TEAM`]->_717
create _231-[:`FROM_TEAM`]->_668
create _231-[:`FROM_TEAM`]->_535
create _232-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2006-01-01"}]->_335
create _232-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2006-01-01"}]->_230
create _232-[:`FROM_TEAM`]->_748
create _232-[:`FROM_TEAM`]->_763
create _236-[:`IN_TEAM` {`fee`:"Loan", `from`:"2004-12-26", `to`:"2006-01-01"}]->_235
create _237-[:`IN_TEAM` {`fee`:"Signed", `from`:"1999-12-26", `to`:"2009-12-27"}]->_432
create _237-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2008-12-28"}]->_417
create _237-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2013-12-29"}]->_314
create _237-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2010-12-26"}]->_235
create _237-[:`FROM_TEAM`]->_654
create _237-[:`FROM_TEAM`]->_575
create _237-[:`FROM_TEAM`]->_613
create _240-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2009-12-27"}]->_293
create _240-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2009-12-27"}]->_239
create _240-[:`FROM_TEAM`]->_788
create _240-[:`FROM_TEAM`]->_790
create _241-[:`IN_TEAM` {`fee`:"Loan", `from`:"2001-12-30", `to`:"2001-12-30"}]->_239
create _242-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2014-12-28"}]->_465
create _242-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2010-12-26"}]->_432
create _242-[:`IN_TEAM` {`fee`:"Loan", `from`:"2002-12-29", `to`:"2002-12-29"}]->_239
create _243-[:`IN_TEAM` {`fee`:"Loan", `from`:"2008-12-28", `to`:"2008-12-28"}]->_456
create _243-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2012-12-30"}]->_286
create _243-[:`IN_TEAM` {`fee`:"Loan", `from`:"2008-12-28", `to`:"2009-12-27"}]->_254
create _243-[:`IN_TEAM` {`fee`:"Loan", `from`:"2001-12-30", `to`:"2002-12-29"}]->_239
create _244-[:`IN_TEAM` {`fee`:"Loan", `from`:"2000-12-31", `to`:"2000-12-31"}]->_239
create _246-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2009-12-27"}]->_400
create _246-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2006-01-01"}]->_245
create _246-[:`FROM_TEAM`]->_496
create _246-[:`FROM_TEAM`]->_523
create _247-[:`IN_TEAM` {`fee`:"Loan", `from`:"2007-12-30", `to`:"2008-12-28"}]->_417
create _247-[:`IN_TEAM` {`fee`:"Signed", `from`:"2001-12-30", `to`:"2006-12-31"}]->_254
create _247-[:`IN_TEAM` {`fee`:"Signed", `from`:"1997-12-28", `to`:"2003-12-28"}]->_245
create _247-[:`FROM_TEAM`]->_495
create _247-[:`FROM_TEAM`]->_484
create _249-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2012-12-30"}]->_248
create _249-[:`FROM_TEAM`]->_773
create _251-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2013-12-29"}]->_468
create _251-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2013-12-29"}]->_250
create _251-[:`FROM_TEAM`]->_592
create _252-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2010-12-26"}]->_250
create _252-[:`FROM_TEAM`]->_591
create _255-[:`IN_TEAM` {`fee`:"Loan", `from`:"2003-12-28", `to`:"2004-12-26"}]->_254
create _257-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-12-31", `to`:"2006-12-31"}]->_457
create _257-[:`IN_TEAM` {`fee`:"Loan", `from`:"2007-12-30", `to`:"2007-12-30"}]->_420
create _257-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2010-12-26"}]->_410
create _257-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2013-12-29"}]->_403
create _257-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30", `to`:"2012-12-30"}]->_374
create _257-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2010-12-26"}]->_256
create _257-[:`FROM_TEAM`]->_768
create _257-[:`FROM_TEAM`]->_710
create _257-[:`FROM_TEAM`]->_584
create _257-[:`FROM_TEAM`]->_537
create _258-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-01-01", `to`:"2006-12-31"}]->_366
create _258-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-12-31", `to`:"2006-12-31"}]->_256
create _260-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2010-12-26"}]->_259
create _260-[:`FROM_TEAM`]->_593
create _263-[:`IN_TEAM` {`fee`:"Loan", `from`:"2003-12-28", `to`:"2004-12-26"}]->_324
create _263-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2012-12-30"}]->_262
create _263-[:`FROM_TEAM`]->_563
create _265-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2010-12-26"}]->_264
create _265-[:`FROM_TEAM`]->_683
create _268-[:`IN_TEAM` {`fee`:"Signed", `from`:"2002-12-29", `to`:"2006-12-31"}]->_286
create _268-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-12-30"}]->_267
create _268-[:`FROM_TEAM`]->_547
create _269-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2009-12-27"}]->_267
create _270-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2010-12-26"}]->_425
create _270-[:`IN_TEAM` {`fee`:"Signed", `from`:"1997-12-28", `to`:"1998-12-27"}]->_267
create _270-[:`FROM_TEAM`]->_742
create _270-[:`FROM_TEAM`]->_662
create _272-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2012-01-01"}]->_271
create _272-[:`FROM_TEAM`]->_578
create _275-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2014-12-28"}]->_285
create _275-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2008-12-28"}]->_274
create _275-[:`FROM_TEAM`]->_661
create _275-[:`FROM_TEAM`]->_587
create _276-[:`IN_TEAM` {`fee`:"Signed", `from`:"1999-12-26", `to`:"2006-12-31"}]->_274
create _276-[:`FROM_TEAM`]->_586
create _279-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2013-12-29"}]->_278
create _279-[:`FROM_TEAM`]->_800
create _280-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2010-12-26"}]->_278
create _280-[:`FROM_TEAM`]->_799
create _287-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2012-01-01"}]->_420
create _287-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01", `to`:"2013-12-29"}]->_363
create _287-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-01-01"}]->_286
create _287-[:`FROM_TEAM`]->_653
create _288-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-12-30"}]->_425
create _288-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2010-12-26"}]->_286
create _288-[:`FROM_TEAM`]->_743
create _289-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2009-12-27"}]->_463
create _289-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2012-01-01"}]->_429
create _289-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_394
create _289-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30", `to`:"2013-12-29"}]->_349
create _289-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-01-01", `to`:"2006-01-01"}]->_286
create _289-[:`FROM_TEAM`]->_543
create _289-[:`FROM_TEAM`]->_514
create _290-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-12-31", `to`:"2007-12-30"}]->_286
create _291-[:`IN_TEAM` {`fee`:"Loan", `from`:"2003-12-28", `to`:"2003-12-28"}]->_286
create _294-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2010-12-26"}]->_293
create _295-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2008-12-28"}]->_293
create _295-[:`FROM_TEAM`]->_787
create _296-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2006-12-31"}]->_293
create _296-[:`FROM_TEAM`]->_786
create _298-[:`IN_TEAM` {`fee`:"Loan", `from`:"2001-12-30", `to`:"2001-12-30"}]->_438
create _298-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2010-12-26"}]->_429
create _298-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-12-30"}]->_397
create _298-[:`IN_TEAM` {`fee`:"Signed", `from`:"2000-12-31"}]->_387
create _298-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2010-12-26"}]->_359
create _298-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2012-12-30"}]->_297
create _298-[:`FROM_TEAM`]->_718
create _301-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2013-12-29"}]->_300
create _302-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2006-01-01"}]->_469
create _302-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-01-01"}]->_422
create _302-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2006-01-01"}]->_300
create _302-[:`FROM_TEAM`]->_633
create _302-[:`FROM_TEAM`]->_489
create _303-[:`IN_TEAM` {`fee`:"Loan", `from`:"2000-12-31", `to`:"2000-12-31"}]->_300
create _304-[:`IN_TEAM` {`fee`:"Signed", `from`:"1998-12-27", `to`:"2000-12-31"}]->_300
create _304-[:`FROM_TEAM`]->_631
create _305-[:`IN_TEAM` {`fee`:"Signed", `from`:"1998-12-27", `to`:"1998-12-27"}]->_300
create _305-[:`FROM_TEAM`]->_630
create _309-[:`IN_TEAM` {`fee`:"Signed", `from`:"2001-12-30", `to`:"2003-12-28"}]->_308
create _309-[:`FROM_TEAM`]->_751
create _310-[:`IN_TEAM` {`fee`:"Signed", `from`:"1999-12-26", `to`:"2000-12-31"}]->_308
create _310-[:`FROM_TEAM`]->_749
create _312-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2010-12-26"}]->_311
create _312-[:`FROM_TEAM`]->_783
create _317-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2014-12-28"}]->_394
create _317-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-01-01"}]->_359
create _317-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2012-12-30"}]->_316
create _319-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2007-12-30"}]->_318
create _319-[:`FROM_TEAM`]->_656
create _321-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2009-12-27"}]->_320
create _321-[:`FROM_TEAM`]->_775
create _323-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2013-12-29"}]->_322
create _323-[:`FROM_TEAM`]->_561
create _332-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2012-01-01"}]->_331
create _332-[:`FROM_TEAM`]->_546
create _333-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2009-12-27"}]->_331
create _333-[:`FROM_TEAM`]->_545
create _337-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28"}]->_336
create _337-[:`FROM_TEAM`]->_641
create _339-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30", `to`:"2012-12-30"}]->_338
create _339-[:`FROM_TEAM`]->_766
create _340-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2006-12-31"}]->_338
create _340-[:`FROM_TEAM`]->_764
create _342-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2012-01-01"}]->_341
create _346-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30", `to`:"2013-12-29"}]->_345
create _347-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01", `to`:"2012-12-30"}]->_345
create _347-[:`FROM_TEAM`]->_646
create _348-[:`IN_TEAM` {`fee`:"Signed", `from`:"1997-12-28", `to`:"2001-12-30"}]->_345
create _348-[:`FROM_TEAM`]->_642
create _350-[:`IN_TEAM` {`fee`:"Loan", `from`:"2007-12-30", `to`:"2007-12-30"}]->_349
create _351-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2012-12-30"}]->_443
create _351-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2007-12-30"}]->_349
create _351-[:`FROM_TEAM`]->_686
create _351-[:`FROM_TEAM`]->_540
create _353-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-01-01"}]->_352
create _354-[:`IN_TEAM` {`fee`:"Loan", `from`:"2008-12-28", `to`:"2009-12-27"}]->_352
create _355-[:`IN_TEAM` {`fee`:"Loan", `from`:"2007-12-30", `to`:"2008-12-28"}]->_352
create _356-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-12-31", `to`:"2006-12-31"}]->_352
create _360-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2006-01-01"}]->_425
create _360-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2013-12-29"}]->_359
create _360-[:`FROM_TEAM`]->_740
create _361-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-01-01"}]->_422
create _361-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2014-12-28"}]->_420
create _361-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2012-12-30"}]->_359
create _362-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2010-12-26"}]->_359
create _364-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2009-12-27"}]->_414
create _364-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2012-01-01"}]->_405
create _364-[:`IN_TEAM` {`fee`:"Loan", `from`:"2003-12-28", `to`:"2004-12-26"}]->_363
create _364-[:`FROM_TEAM`]->_620
create _365-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-12-31", `to`:"2007-12-30"}]->_398
create _365-[:`IN_TEAM` {`fee`:"Signed", `from`:"1997-12-28", `to`:"2000-12-31"}]->_389
create _365-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2012-12-30"}]->_382
create _365-[:`IN_TEAM` {`fee`:"Signed", `from`:"2001-12-30", `to`:"2004-12-26"}]->_363
create _365-[:`FROM_TEAM`]->_731
create _365-[:`FROM_TEAM`]->_652
create _365-[:`FROM_TEAM`]->_529
create _367-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2012-12-30"}]->_422
create _367-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-01-01", `to`:"2006-01-01"}]->_410
create _367-[:`IN_TEAM` {`fee`:"Loan", `from`:"2003-12-28", `to`:"2004-12-26"}]->_387
create _367-[:`IN_TEAM` {`fee`:"Loan", `from`:"2007-12-30", `to`:"2007-12-30"}]->_366
create _368-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2008-12-28"}]->_469
create _368-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-01-01"}]->_366
create _368-[:`FROM_TEAM`]->_490
create _371-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-12-30"}]->_370
create _371-[:`FROM_TEAM`]->_566
create _372-[:`IN_TEAM` {`fee`:"Loan", `from`:"2008-12-28", `to`:"2009-12-27"}]->_370
create _373-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2006-12-31"}]->_370
create _373-[:`FROM_TEAM`]->_564
create _378-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2012-12-30"}]->_431
create _378-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2012-12-30"}]->_422
create _378-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2013-12-29"}]->_395
create _378-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2013-12-29"}]->_377
create _381-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2010-12-26"}]->_380
create _381-[:`FROM_TEAM`]->_752
create _383-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-01-01"}]->_429
create _383-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01", `to`:"2013-12-29"}]->_405
create _383-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30", `to`:"2013-12-29"}]->_382
create _383-[:`FROM_TEAM`]->_621
create _383-[:`FROM_TEAM`]->_530
create _384-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2003-12-28"}]->_429
create _384-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2012-12-30"}]->_410
create _384-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2010-12-26"}]->_398
create _384-[:`IN_TEAM` {`fee`:"Signed", `from`:"1997-12-28", `to`:"2004-12-26"}]->_393
create _384-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-01-01", `to`:"2006-12-31"}]->_382
create _384-[:`FROM_TEAM`]->_758
create _384-[:`FROM_TEAM`]->_657
create _384-[:`FROM_TEAM`]->_599
create _385-[:`IN_TEAM` {`fee`:"Loan", `from`:"2004-12-26", `to`:"2004-12-26"}]->_425
create _385-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2006-01-01"}]->_382
create _385-[:`FROM_TEAM`]->_527
create _386-[:`IN_TEAM` {`fee`:"Signed", `from`:"1997-12-28", `to`:"2003-12-28"}]->_429
create _386-[:`IN_TEAM` {`fee`:"Signed", `from`:"2002-12-29", `to`:"2003-12-28"}]->_382
create _386-[:`FROM_TEAM`]->_598
create _386-[:`FROM_TEAM`]->_526
create _388-[:`IN_TEAM` {`fee`:"Loan", `from`:"2000-12-31", `to`:"2001-12-30"}]->_387
create _390-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2009-12-27"}]->_429
create _390-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2013-12-29"}]->_414
create _390-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2013-12-29"}]->_393
create _390-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30", `to`:"2013-12-29"}]->_389
create _390-[:`FROM_TEAM`]->_735
create _390-[:`FROM_TEAM`]->_617
create _391-[:`IN_TEAM` {`fee`:"Signed", `from`:"2000-12-31", `to`:"2007-12-30"}]->_389
create _391-[:`FROM_TEAM`]->_732
create _401-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2007-12-30"}]->_400
create _401-[:`FROM_TEAM`]->_522
create _402-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2006-01-01"}]->_400
create _402-[:`FROM_TEAM`]->_521
create _404-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30", `to`:"2013-12-29"}]->_407
create _404-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2010-12-26"}]->_403
create _404-[:`FROM_TEAM`]->_760
create _404-[:`FROM_TEAM`]->_536
create _406-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2013-12-29"}]->_405
create _409-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2013-12-29"}]->_408
create _415-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-12-31", `to`:"2006-12-31"}]->_414
create _416-[:`IN_TEAM` {`fee`:"Loan", `from`:"2002-12-29", `to`:"2002-12-29"}]->_432
create _416-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2013-12-29"}]->_420
create _416-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2010-12-26"}]->_414
create _416-[:`FROM_TEAM`]->_616
create _418-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2012-12-30"}]->_417
create _418-[:`FROM_TEAM`]->_655
create _419-[:`IN_TEAM` {`fee`:"Loan", `from`:"2007-12-30", `to`:"2007-12-30"}]->_462
create _419-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-01-01"}]->_436
create _419-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-01-01", `to`:"2006-01-01"}]->_417
create _419-[:`FROM_TEAM`]->_507
create _421-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2009-12-27"}]->_420
create _421-[:`FROM_TEAM`]->_597
create _423-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2013-12-29"}]->_422
create _424-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2010-12-26"}]->_422
create _424-[:`FROM_TEAM`]->_716
create _426-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-12-30"}]->_425
create _427-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2008-12-28"}]->_425
create _427-[:`FROM_TEAM`]->_741
create _428-[:`IN_TEAM` {`fee`:"Loan", `from`:"2003-12-28", `to`:"2004-12-26"}]->_425
create _430-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2014-12-28"}]->_429
create _433-[:`IN_TEAM` {`fee`:"Signed", `from`:"2001-12-30", `to`:"2004-12-26"}]->_469
create _433-[:`IN_TEAM` {`fee`:"Loan", `from`:"2001-12-30", `to`:"2002-12-29"}]->_432
create _433-[:`FROM_TEAM`]->_488
create _435-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2009-12-27"}]->_434
create _435-[:`FROM_TEAM`]->_744
create _437-[:`IN_TEAM` {`fee`:"Loan", `from`:"2014-12-28", `to`:"2014-12-28"}]->_436
create _440-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2004-12-26"}]->_439
create _440-[:`FROM_TEAM`]->_558
create _442-[:`IN_TEAM` {`fee`:"Signed", `from`:"1999-12-26", `to`:"2001-12-30"}]->_441
create _442-[:`FROM_TEAM`]->_607
create _444-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2008-12-28"}]->_443
create _444-[:`FROM_TEAM`]->_685
create _449-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2007-12-30"}]->_448
create _449-[:`FROM_TEAM`]->_550
create _454-[:`IN_TEAM` {`fee`:"Loan", `from`:"2008-12-28", `to`:"2009-12-27"}]->_453
create _455-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2009-12-27"}]->_476
create _455-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2012-12-30"}]->_453
create _455-[:`FROM_TEAM`]->_721
create _455-[:`FROM_TEAM`]->_647
create _459-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2006-12-31"}]->_458
create _459-[:`FROM_TEAM`]->_728
create _461-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01", `to`:"2012-01-01"}]->_475
create _461-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30", `to`:"2013-12-29"}]->_460
create _461-[:`FROM_TEAM`]->_791
create _461-[:`FROM_TEAM`]->_498
create _466-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-01-01"}]->_465
create _466-[:`FROM_TEAM`]->_605
create _470-[:`IN_TEAM` {`fee`:"Signed", `from`:"2000-12-31", `to`:"2001-12-30"}]->_469
create _470-[:`FROM_TEAM`]->_487
create _473-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-01-01"}]->_472
create _473-[:`FROM_TEAM`]->_513
create _474-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2010-12-26"}]->_472
create _474-[:`FROM_TEAM`]->_512
create _477-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2006-01-01"}]->_476
create _477-[:`FROM_TEAM`]->_720
create _481-[:`TO_TEAM`]->_1
create _481-[:`TRANSFERRED_PLAYER`]->_218
create _482-[:`TO_TEAM`]->_85
create _482-[:`TRANSFERRED_PLAYER`]->_218
create _483-[:`TO_TEAM`]->_85
create _483-[:`TRANSFERRED_PLAYER`]->_200
create _484-[:`TO_TEAM`]->_223
create _484-[:`TRANSFERRED_PLAYER`]->_254
create _485-[:`TO_TEAM`]->_209
create _485-[:`TRANSFERRED_PLAYER`]->_254
create _486-[:`TO_TEAM`]->_470
create _486-[:`TRANSFERRED_PLAYER`]->_469
create _487-[:`TO_TEAM`]->_433
create _487-[:`TRANSFERRED_PLAYER`]->_469
create _488-[:`TO_TEAM`]->_302
create _488-[:`TRANSFERRED_PLAYER`]->_469
create _489-[:`TO_TEAM`]->_368
create _489-[:`TRANSFERRED_PLAYER`]->_469
create _490-[:`TO_TEAM`]->_29
create _490-[:`TRANSFERRED_PLAYER`]->_469
create _491-[:`TO_TEAM`]->_225
create _491-[:`TRANSFERRED_PLAYER`]->_469
create _492-[:`TO_TEAM`]->_85
create _492-[:`TRANSFERRED_PLAYER`]->_164
create _493-[:`TO_TEAM`]->_193
create _493-[:`TRANSFERRED_PLAYER`]->_478
create _494-[:`TO_TEAM`]->_225
create _494-[:`TRANSFERRED_PLAYER`]->_478
create _495-[:`TO_TEAM`]->_246
create _495-[:`TRANSFERRED_PLAYER`]->_245
create _496-[:`TO_TEAM`]->_209
create _496-[:`TRANSFERRED_PLAYER`]->_245
create _497-[:`TO_TEAM`]->_461
create _497-[:`TRANSFERRED_PLAYER`]->_460
create _498-[:`TO_TEAM`]->_225
create _498-[:`TRANSFERRED_PLAYER`]->_460
create _499-[:`TO_TEAM`]->_121
create _499-[:`TRANSFERRED_PLAYER`]->_119
create _500-[:`TO_TEAM`]->_120
create _500-[:`TRANSFERRED_PLAYER`]->_119
create _501-[:`TO_TEAM`]->_86
create _501-[:`TRANSFERRED_PLAYER`]->_119
create _502-[:`TO_TEAM`]->_11
create _502-[:`TRANSFERRED_PLAYER`]->_128
create _503-[:`TO_TEAM`]->_86
create _503-[:`TRANSFERRED_PLAYER`]->_128
create _504-[:`TO_TEAM`]->_96
create _504-[:`TRANSFERRED_PLAYER`]->_95
create _505-[:`TO_TEAM`]->_26
create _505-[:`TRANSFERRED_PLAYER`]->_95
create _506-[:`TO_TEAM`]->_86
create _506-[:`TRANSFERRED_PLAYER`]->_95
create _507-[:`TO_TEAM`]->_225
create _507-[:`TRANSFERRED_PLAYER`]->_436
create _508-[:`TO_TEAM`]->_1
create _508-[:`TRANSFERRED_PLAYER`]->_104
create _509-[:`TO_TEAM`]->_86
create _509-[:`TRANSFERRED_PLAYER`]->_104
create _510-[:`TO_TEAM`]->_225
create _510-[:`TRANSFERRED_PLAYER`]->_445
create _511-[:`TO_TEAM`]->_474
create _511-[:`TRANSFERRED_PLAYER`]->_472
create _512-[:`TO_TEAM`]->_473
create _512-[:`TRANSFERRED_PLAYER`]->_472
create _513-[:`TO_TEAM`]->_225
create _513-[:`TRANSFERRED_PLAYER`]->_472
create _514-[:`TO_TEAM`]->_225
create _514-[:`TRANSFERRED_PLAYER`]->_463
create _515-[:`TO_TEAM`]->_139
create _515-[:`TRANSFERRED_PLAYER`]->_194
create _516-[:`TO_TEAM`]->_136
create _516-[:`TRANSFERRED_PLAYER`]->_194
create _517-[:`TO_TEAM`]->_85
create _517-[:`TRANSFERRED_PLAYER`]->_194
create _518-[:`TO_TEAM`]->_1
create _518-[:`TRANSFERRED_PLAYER`]->_77
create _519-[:`TO_TEAM`]->_85
create _519-[:`TRANSFERRED_PLAYER`]->_185
create _520-[:`TO_TEAM`]->_1
create _520-[:`TRANSFERRED_PLAYER`]->_50
create _521-[:`TO_TEAM`]->_401
create _521-[:`TRANSFERRED_PLAYER`]->_400
create _522-[:`TO_TEAM`]->_246
create _522-[:`TRANSFERRED_PLAYER`]->_400
create _523-[:`TO_TEAM`]->_100
create _523-[:`TRANSFERRED_PLAYER`]->_400
create _524-[:`TO_TEAM`]->_152
create _524-[:`TRANSFERRED_PLAYER`]->_400
create _525-[:`TO_TEAM`]->_386
create _525-[:`TRANSFERRED_PLAYER`]->_382
create _526-[:`TO_TEAM`]->_385
create _526-[:`TRANSFERRED_PLAYER`]->_382
create _527-[:`TO_TEAM`]->_93
create _527-[:`TRANSFERRED_PLAYER`]->_382
create _528-[:`TO_TEAM`]->_365
create _528-[:`TRANSFERRED_PLAYER`]->_382
create _529-[:`TO_TEAM`]->_383
create _529-[:`TRANSFERRED_PLAYER`]->_382
create _530-[:`TO_TEAM`]->_152
create _530-[:`TRANSFERRED_PLAYER`]->_382
create _531-[:`TO_TEAM`]->_86
create _531-[:`TRANSFERRED_PLAYER`]->_149
create _532-[:`TO_TEAM`]->_54
create _532-[:`TRANSFERRED_PLAYER`]->_53
create _533-[:`TO_TEAM`]->_26
create _533-[:`TRANSFERRED_PLAYER`]->_53
create _534-[:`TO_TEAM`]->_1
create _534-[:`TRANSFERRED_PLAYER`]->_53
create _535-[:`TO_TEAM`]->_404
create _535-[:`TRANSFERRED_PLAYER`]->_403
create _536-[:`TO_TEAM`]->_257
create _536-[:`TRANSFERRED_PLAYER`]->_403
create _537-[:`TO_TEAM`]->_152
create _537-[:`TRANSFERRED_PLAYER`]->_403
create _538-[:`TO_TEAM`]->_36
create _538-[:`TRANSFERRED_PLAYER`]->_35
create _539-[:`TO_TEAM`]->_1
create _539-[:`TRANSFERRED_PLAYER`]->_35
create _540-[:`TO_TEAM`]->_6
create _540-[:`TRANSFERRED_PLAYER`]->_349
create _541-[:`TO_TEAM`]->_57
create _541-[:`TRANSFERRED_PLAYER`]->_349
create _542-[:`TO_TEAM`]->_289
create _542-[:`TRANSFERRED_PLAYER`]->_349
create _543-[:`TO_TEAM`]->_136
create _543-[:`TRANSFERRED_PLAYER`]->_349
create _544-[:`TO_TEAM`]->_136
create _544-[:`TRANSFERRED_PLAYER`]->_358
create _545-[:`TO_TEAM`]->_332
create _545-[:`TRANSFERRED_PLAYER`]->_331
create _546-[:`TO_TEAM`]->_136
create _546-[:`TRANSFERRED_PLAYER`]->_331
create _547-[:`TO_TEAM`]->_224
create _547-[:`TRANSFERRED_PLAYER`]->_286
create _548-[:`TO_TEAM`]->_130
create _548-[:`TRANSFERRED_PLAYER`]->_286
create _549-[:`TO_TEAM`]->_62
create _549-[:`TRANSFERRED_PLAYER`]->_286
create _550-[:`TO_TEAM`]->_225
create _550-[:`TRANSFERRED_PLAYER`]->_448
create _551-[:`TO_TEAM`]->_225
create _551-[:`TRANSFERRED_PLAYER`]->_457
create _552-[:`TO_TEAM`]->_1
create _552-[:`TRANSFERRED_PLAYER`]->_98
create _553-[:`TO_TEAM`]->_39
create _553-[:`TRANSFERRED_PLAYER`]->_98
create _554-[:`TO_TEAM`]->_101
create _554-[:`TRANSFERRED_PLAYER`]->_98
create _555-[:`TO_TEAM`]->_100
create _555-[:`TRANSFERRED_PLAYER`]->_98
create _556-[:`TO_TEAM`]->_84
create _556-[:`TRANSFERRED_PLAYER`]->_98
create _557-[:`TO_TEAM`]->_86
create _557-[:`TRANSFERRED_PLAYER`]->_98
create _558-[:`TO_TEAM`]->_19
create _558-[:`TRANSFERRED_PLAYER`]->_439
create _559-[:`TO_TEAM`]->_11
create _559-[:`TRANSFERRED_PLAYER`]->_439
create _560-[:`TO_TEAM`]->_225
create _560-[:`TRANSFERRED_PLAYER`]->_439
create _561-[:`TO_TEAM`]->_136
create _561-[:`TRANSFERRED_PLAYER`]->_322
create _562-[:`TO_TEAM`]->_298
create _562-[:`TRANSFERRED_PLAYER`]->_397
create _563-[:`TO_TEAM`]->_209
create _563-[:`TRANSFERRED_PLAYER`]->_262
create _564-[:`TO_TEAM`]->_62
create _564-[:`TRANSFERRED_PLAYER`]->_370
create _565-[:`TO_TEAM`]->_371
create _565-[:`TRANSFERRED_PLAYER`]->_370
create _566-[:`TO_TEAM`]->_152
create _566-[:`TRANSFERRED_PLAYER`]->_370
create _567-[:`TO_TEAM`]->_41
create _567-[:`TRANSFERRED_PLAYER`]->_38
create _568-[:`TO_TEAM`]->_40
create _568-[:`TRANSFERRED_PLAYER`]->_38
create _569-[:`TO_TEAM`]->_1
create _569-[:`TRANSFERRED_PLAYER`]->_38
create _570-[:`TO_TEAM`]->_136
create _570-[:`TRANSFERRED_PLAYER`]->_352
create _571-[:`TO_TEAM`]->_11
create _571-[:`TRANSFERRED_PLAYER`]->_253
create _572-[:`TO_TEAM`]->_209
create _572-[:`TRANSFERRED_PLAYER`]->_253
create _573-[:`TO_TEAM`]->_136
create _573-[:`TRANSFERRED_PLAYER`]->_334
create _574-[:`TO_TEAM`]->_1
create _574-[:`TRANSFERRED_PLAYER`]->_2
create _575-[:`TO_TEAM`]->_51
create _575-[:`TRANSFERRED_PLAYER`]->_235
create _576-[:`TO_TEAM`]->_209
create _576-[:`TRANSFERRED_PLAYER`]->_235
create _577-[:`TO_TEAM`]->_1
create _577-[:`TRANSFERRED_PLAYER`]->_65
create _578-[:`TO_TEAM`]->_51
create _578-[:`TRANSFERRED_PLAYER`]->_271
create _579-[:`TO_TEAM`]->_209
create _579-[:`TRANSFERRED_PLAYER`]->_271
create _580-[:`TO_TEAM`]->_6
create _580-[:`TRANSFERRED_PLAYER`]->_5
create _581-[:`TO_TEAM`]->_1
create _581-[:`TRANSFERRED_PLAYER`]->_5
create _582-[:`TO_TEAM`]->_85
create _582-[:`TRANSFERRED_PLAYER`]->_175
create _583-[:`TO_TEAM`]->_257
create _583-[:`TRANSFERRED_PLAYER`]->_256
create _584-[:`TO_TEAM`]->_131
create _584-[:`TRANSFERRED_PLAYER`]->_256
create _585-[:`TO_TEAM`]->_85
create _585-[:`TRANSFERRED_PLAYER`]->_211
create _586-[:`TO_TEAM`]->_275
create _586-[:`TRANSFERRED_PLAYER`]->_274
create _587-[:`TO_TEAM`]->_31
create _587-[:`TRANSFERRED_PLAYER`]->_274
create _588-[:`TO_TEAM`]->_51
create _588-[:`TRANSFERRED_PLAYER`]->_274
create _589-[:`TO_TEAM`]->_209
create _589-[:`TRANSFERRED_PLAYER`]->_274
create _590-[:`TO_TEAM`]->_171
create _590-[:`TRANSFERRED_PLAYER`]->_238
create _591-[:`TO_TEAM`]->_251
create _591-[:`TRANSFERRED_PLAYER`]->_250
create _592-[:`TO_TEAM`]->_209
create _592-[:`TRANSFERRED_PLAYER`]->_250
create _593-[:`TO_TEAM`]->_209
create _593-[:`TRANSFERRED_PLAYER`]->_259
create _594-[:`TO_TEAM`]->_136
create _594-[:`TRANSFERRED_PLAYER`]->_438
create _595-[:`TO_TEAM`]->_225
create _595-[:`TRANSFERRED_PLAYER`]->_438
create _596-[:`TO_TEAM`]->_86
create _596-[:`TRANSFERRED_PLAYER`]->_133
create _597-[:`TO_TEAM`]->_287
create _597-[:`TRANSFERRED_PLAYER`]->_420
create _598-[:`TO_TEAM`]->_384
create _598-[:`TRANSFERRED_PLAYER`]->_429
create _599-[:`TO_TEAM`]->_84
create _599-[:`TRANSFERRED_PLAYER`]->_429
create _600-[:`TO_TEAM`]->_289
create _600-[:`TRANSFERRED_PLAYER`]->_429
create _601-[:`TO_TEAM`]->_161
create _601-[:`TRANSFERRED_PLAYER`]->_160
create _602-[:`TO_TEAM`]->_86
create _602-[:`TRANSFERRED_PLAYER`]->_160
create _603-[:`TO_TEAM`]->_85
create _603-[:`TRANSFERRED_PLAYER`]->_178
create _604-[:`TO_TEAM`]->_225
create _604-[:`TRANSFERRED_PLAYER`]->_456
create _605-[:`TO_TEAM`]->_225
create _605-[:`TRANSFERRED_PLAYER`]->_465
create _606-[:`TO_TEAM`]->_85
create _606-[:`TRANSFERRED_PLAYER`]->_187
create _607-[:`TO_TEAM`]->_1
create _607-[:`TRANSFERRED_PLAYER`]->_441
create _608-[:`TO_TEAM`]->_86
create _608-[:`TRANSFERRED_PLAYER`]->_441
create _609-[:`TO_TEAM`]->_225
create _609-[:`TRANSFERRED_PLAYER`]->_441
create _610-[:`TO_TEAM`]->_16
create _610-[:`TRANSFERRED_PLAYER`]->_46
create _611-[:`TO_TEAM`]->_47
create _611-[:`TRANSFERRED_PLAYER`]->_46
create _612-[:`TO_TEAM`]->_1
create _612-[:`TRANSFERRED_PLAYER`]->_46
create _613-[:`TO_TEAM`]->_225
create _613-[:`TRANSFERRED_PLAYER`]->_432
create _614-[:`TO_TEAM`]->_86
create _614-[:`TRANSFERRED_PLAYER`]->_127
create _615-[:`TO_TEAM`]->_85
create _615-[:`TRANSFERRED_PLAYER`]->_217
create _616-[:`TO_TEAM`]->_390
create _616-[:`TRANSFERRED_PLAYER`]->_414
create _617-[:`TO_TEAM`]->_152
create _617-[:`TRANSFERRED_PLAYER`]->_414
create _618-[:`TO_TEAM`]->_1
create _618-[:`TRANSFERRED_PLAYER`]->_82
create _619-[:`TO_TEAM`]->_364
create _619-[:`TRANSFERRED_PLAYER`]->_405
create _620-[:`TO_TEAM`]->_383
create _620-[:`TRANSFERRED_PLAYER`]->_405
create _621-[:`TO_TEAM`]->_152
create _621-[:`TRANSFERRED_PLAYER`]->_405
create _622-[:`TO_TEAM`]->_1
create _622-[:`TRANSFERRED_PLAYER`]->_55
create _623-[:`TO_TEAM`]->_56
create _623-[:`TRANSFERRED_PLAYER`]->_55
create _624-[:`TO_TEAM`]->_23
create _624-[:`TRANSFERRED_PLAYER`]->_73
create _625-[:`TO_TEAM`]->_74
create _625-[:`TRANSFERRED_PLAYER`]->_73
create _626-[:`TO_TEAM`]->_1
create _626-[:`TRANSFERRED_PLAYER`]->_73
create _627-[:`TO_TEAM`]->_155
create _627-[:`TRANSFERRED_PLAYER`]->_154
create _628-[:`TO_TEAM`]->_86
create _628-[:`TRANSFERRED_PLAYER`]->_154
create _629-[:`TO_TEAM`]->_1
create _629-[:`TRANSFERRED_PLAYER`]->_58
create _630-[:`TO_TEAM`]->_304
create _630-[:`TRANSFERRED_PLAYER`]->_300
create _631-[:`TO_TEAM`]->_224
create _631-[:`TRANSFERRED_PLAYER`]->_300
create _632-[:`TO_TEAM`]->_302
create _632-[:`TRANSFERRED_PLAYER`]->_300
create _633-[:`TO_TEAM`]->_52
create _633-[:`TRANSFERRED_PLAYER`]->_300
create _634-[:`TO_TEAM`]->_94
create _634-[:`TRANSFERRED_PLAYER`]->_300
create _635-[:`TO_TEAM`]->_14
create _635-[:`TRANSFERRED_PLAYER`]->_300
create _636-[:`TO_TEAM`]->_209
create _636-[:`TRANSFERRED_PLAYER`]->_300
create _637-[:`TO_TEAM`]->_1
create _637-[:`TRANSFERRED_PLAYER`]->_49
create _638-[:`TO_TEAM`]->_136
create _638-[:`TRANSFERRED_PLAYER`]->_471
create _639-[:`TO_TEAM`]->_225
create _639-[:`TRANSFERRED_PLAYER`]->_471
create _640-[:`TO_TEAM`]->_337
create _640-[:`TRANSFERRED_PLAYER`]->_336
create _641-[:`TO_TEAM`]->_193
create _641-[:`TRANSFERRED_PLAYER`]->_336
create _642-[:`TO_TEAM`]->_24
create _642-[:`TRANSFERRED_PLAYER`]->_345
create _643-[:`TO_TEAM`]->_57
create _643-[:`TRANSFERRED_PLAYER`]->_345
create _644-[:`TO_TEAM`]->_136
create _644-[:`TRANSFERRED_PLAYER`]->_345
create _645-[:`TO_TEAM`]->_347
create _645-[:`TRANSFERRED_PLAYER`]->_345
create _646-[:`TO_TEAM`]->_346
create _646-[:`TRANSFERRED_PLAYER`]->_345
create _647-[:`TO_TEAM`]->_225
create _647-[:`TRANSFERRED_PLAYER`]->_453
create _648-[:`TO_TEAM`]->_225
create _648-[:`TRANSFERRED_PLAYER`]->_462
create _649-[:`TO_TEAM`]->_158
create _649-[:`TRANSFERRED_PLAYER`]->_157
create _650-[:`TO_TEAM`]->_137
create _650-[:`TRANSFERRED_PLAYER`]->_157
create _651-[:`TO_TEAM`]->_86
create _651-[:`TRANSFERRED_PLAYER`]->_157
create _652-[:`TO_TEAM`]->_287
create _652-[:`TRANSFERRED_PLAYER`]->_363
create _653-[:`TO_TEAM`]->_152
create _653-[:`TRANSFERRED_PLAYER`]->_363
create _654-[:`TO_TEAM`]->_418
create _654-[:`TRANSFERRED_PLAYER`]->_417
create _655-[:`TO_TEAM`]->_152
create _655-[:`TRANSFERRED_PLAYER`]->_417
create _656-[:`TO_TEAM`]->_136
create _656-[:`TRANSFERRED_PLAYER`]->_318
create _657-[:`TO_TEAM`]->_83
create _657-[:`TRANSFERRED_PLAYER`]->_393
create _658-[:`TO_TEAM`]->_92
create _658-[:`TRANSFERRED_PLAYER`]->_393
create _659-[:`TO_TEAM`]->_227
create _659-[:`TRANSFERRED_PLAYER`]->_285
create _660-[:`TO_TEAM`]->_275
create _660-[:`TRANSFERRED_PLAYER`]->_285
create _661-[:`TO_TEAM`]->_209
create _661-[:`TRANSFERRED_PLAYER`]->_285
create _662-[:`TO_TEAM`]->_1
create _662-[:`TRANSFERRED_PLAYER`]->_267
create _663-[:`TO_TEAM`]->_225
create _663-[:`TRANSFERRED_PLAYER`]->_267
create _664-[:`TO_TEAM`]->_206
create _664-[:`TRANSFERRED_PLAYER`]->_267
create _665-[:`TO_TEAM`]->_209
create _665-[:`TRANSFERRED_PLAYER`]->_267
create _666-[:`TO_TEAM`]->_136
create _666-[:`TRANSFERRED_PLAYER`]->_330
create _667-[:`TO_TEAM`]->_231
create _667-[:`TRANSFERRED_PLAYER`]->_366
create _668-[:`TO_TEAM`]->_152
create _668-[:`TRANSFERRED_PLAYER`]->_366
create _669-[:`TO_TEAM`]->_26
create _669-[:`TRANSFERRED_PLAYER`]->_25
create _670-[:`TO_TEAM`]->_1
create _670-[:`TRANSFERRED_PLAYER`]->_25
create _671-[:`TO_TEAM`]->_11
create _671-[:`TRANSFERRED_PLAYER`]->_10
create _672-[:`TO_TEAM`]->_1
create _672-[:`TRANSFERRED_PLAYER`]->_10
create _673-[:`TO_TEAM`]->_182
create _673-[:`TRANSFERRED_PLAYER`]->_180
create _674-[:`TO_TEAM`]->_181
create _674-[:`TRANSFERRED_PLAYER`]->_180
create _675-[:`TO_TEAM`]->_85
create _675-[:`TRANSFERRED_PLAYER`]->_180
create _676-[:`TO_TEAM`]->_85
create _676-[:`TRANSFERRED_PLAYER`]->_207
create _677-[:`TO_TEAM`]->_45
create _677-[:`TRANSFERRED_PLAYER`]->_324
create _678-[:`TO_TEAM`]->_136
create _678-[:`TRANSFERRED_PLAYER`]->_324
create _679-[:`TO_TEAM`]->_209
create _679-[:`TRANSFERRED_PLAYER`]->_297
create _680-[:`TO_TEAM`]->_199
create _680-[:`TRANSFERRED_PLAYER`]->_198
create _681-[:`TO_TEAM`]->_85
create _681-[:`TRANSFERRED_PLAYER`]->_198
create _682-[:`TO_TEAM`]->_1
create _682-[:`TRANSFERRED_PLAYER`]->_28
create _683-[:`TO_TEAM`]->_83
create _683-[:`TRANSFERRED_PLAYER`]->_264
create _684-[:`TO_TEAM`]->_209
create _684-[:`TRANSFERRED_PLAYER`]->_264
create _685-[:`TO_TEAM`]->_351
create _685-[:`TRANSFERRED_PLAYER`]->_443
create _686-[:`TO_TEAM`]->_29
create _686-[:`TRANSFERRED_PLAYER`]->_443
create _687-[:`TO_TEAM`]->_225
create _687-[:`TRANSFERRED_PLAYER`]->_443
create _688-[:`TO_TEAM`]->_86
create _688-[:`TRANSFERRED_PLAYER`]->_138
create _689-[:`TO_TEAM`]->_166
create _689-[:`TRANSFERRED_PLAYER`]->_165
create _690-[:`TO_TEAM`]->_85
create _690-[:`TRANSFERRED_PLAYER`]->_165
create _691-[:`TO_TEAM`]->_47
create _691-[:`TRANSFERRED_PLAYER`]->_192
create _692-[:`TO_TEAM`]->_85
create _692-[:`TRANSFERRED_PLAYER`]->_192
create _693-[:`TO_TEAM`]->_85
create _693-[:`TRANSFERRED_PLAYER`]->_213
create _694-[:`TO_TEAM`]->_85
create _694-[:`TRANSFERRED_PLAYER`]->_168
create _695-[:`TO_TEAM`]->_85
create _695-[:`TRANSFERRED_PLAYER`]->_177
create _696-[:`TO_TEAM`]->_86
create _696-[:`TRANSFERRED_PLAYER`]->_150
create _697-[:`TO_TEAM`]->_86
create _697-[:`TRANSFERRED_PLAYER`]->_159
create _698-[:`TO_TEAM`]->_1
create _698-[:`TRANSFERRED_PLAYER`]->_132
create _699-[:`TO_TEAM`]->_86
create _699-[:`TRANSFERRED_PLAYER`]->_132
create _700-[:`TO_TEAM`]->_86
create _700-[:`TRANSFERRED_PLAYER`]->_141
create _701-[:`TO_TEAM`]->_106
create _701-[:`TRANSFERRED_PLAYER`]->_105
create _702-[:`TO_TEAM`]->_86
create _702-[:`TRANSFERRED_PLAYER`]->_105
create _703-[:`TO_TEAM`]->_225
create _703-[:`TRANSFERRED_PLAYER`]->_446
create _704-[:`TO_TEAM`]->_115
create _704-[:`TRANSFERRED_PLAYER`]->_114
create _705-[:`TO_TEAM`]->_86
create _705-[:`TRANSFERRED_PLAYER`]->_114
create _706-[:`TO_TEAM`]->_86
create _706-[:`TRANSFERRED_PLAYER`]->_123
create _707-[:`TO_TEAM`]->_205
create _707-[:`TRANSFERRED_PLAYER`]->_204
create _708-[:`TO_TEAM`]->_85
create _708-[:`TRANSFERRED_PLAYER`]->_204
create _709-[:`TO_TEAM`]->_257
create _709-[:`TRANSFERRED_PLAYER`]->_410
create _710-[:`TO_TEAM`]->_62
create _710-[:`TRANSFERRED_PLAYER`]->_410
create _711-[:`TO_TEAM`]->_79
create _711-[:`TRANSFERRED_PLAYER`]->_78
create _712-[:`TO_TEAM`]->_43
create _712-[:`TRANSFERRED_PLAYER`]->_78
create _713-[:`TO_TEAM`]->_1
create _713-[:`TRANSFERRED_PLAYER`]->_78
create _714-[:`TO_TEAM`]->_86
create _714-[:`TRANSFERRED_PLAYER`]->_90
create _715-[:`TO_TEAM`]->_136
create _715-[:`TRANSFERRED_PLAYER`]->_341
create _716-[:`TO_TEAM`]->_101
create _716-[:`TRANSFERRED_PLAYER`]->_422
create _717-[:`TO_TEAM`]->_298
create _717-[:`TRANSFERRED_PLAYER`]->_359
create _718-[:`TO_TEAM`]->_152
create _718-[:`TRANSFERRED_PLAYER`]->_359
create _719-[:`TO_TEAM`]->_136
create _719-[:`TRANSFERRED_PLAYER`]->_135
create _720-[:`TO_TEAM`]->_455
create _720-[:`TRANSFERRED_PLAYER`]->_476
create _721-[:`TO_TEAM`]->_86
create _721-[:`TRANSFERRED_PLAYER`]->_476
create _722-[:`TO_TEAM`]->_56
create _722-[:`TRANSFERRED_PLAYER`]->_476
create _723-[:`TO_TEAM`]->_225
create _723-[:`TRANSFERRED_PLAYER`]->_476
create _724-[:`TO_TEAM`]->_109
create _724-[:`TRANSFERRED_PLAYER`]->_108
create _725-[:`TO_TEAM`]->_86
create _725-[:`TRANSFERRED_PLAYER`]->_108
create _726-[:`TO_TEAM`]->_1
create _726-[:`TRANSFERRED_PLAYER`]->_117
create _727-[:`TO_TEAM`]->_86
create _727-[:`TRANSFERRED_PLAYER`]->_117
create _728-[:`TO_TEAM`]->_225
create _728-[:`TRANSFERRED_PLAYER`]->_458
create _729-[:`TO_TEAM`]->_19
create _729-[:`TRANSFERRED_PLAYER`]->_18
create _730-[:`TO_TEAM`]->_1
create _730-[:`TRANSFERRED_PLAYER`]->_18
create _731-[:`TO_TEAM`]->_391
create _731-[:`TRANSFERRED_PLAYER`]->_389
create _732-[:`TO_TEAM`]->_129
create _732-[:`TRANSFERRED_PLAYER`]->_389
create _733-[:`TO_TEAM`]->_223
create _733-[:`TRANSFERRED_PLAYER`]->_389
create _734-[:`TO_TEAM`]->_390
create _734-[:`TRANSFERRED_PLAYER`]->_389
create _735-[:`TO_TEAM`]->_152
create _735-[:`TRANSFERRED_PLAYER`]->_389
create _736-[:`TO_TEAM`]->_23
create _736-[:`TRANSFERRED_PLAYER`]->_21
create _737-[:`TO_TEAM`]->_22
create _737-[:`TRANSFERRED_PLAYER`]->_21
create _738-[:`TO_TEAM`]->_1
create _738-[:`TRANSFERRED_PLAYER`]->_21
create _739-[:`TO_TEAM`]->_360
create _739-[:`TRANSFERRED_PLAYER`]->_425
create _740-[:`TO_TEAM`]->_427
create _740-[:`TRANSFERRED_PLAYER`]->_425
create _741-[:`TO_TEAM`]->_270
create _741-[:`TRANSFERRED_PLAYER`]->_425
create _742-[:`TO_TEAM`]->_288
create _742-[:`TRANSFERRED_PLAYER`]->_425
create _743-[:`TO_TEAM`]->_152
create _743-[:`TRANSFERRED_PLAYER`]->_425
create _744-[:`TO_TEAM`]->_83
create _744-[:`TRANSFERRED_PLAYER`]->_434
create _745-[:`TO_TEAM`]->_225
create _745-[:`TRANSFERRED_PLAYER`]->_434
create _746-[:`TO_TEAM`]->_57
create _746-[:`TRANSFERRED_PLAYER`]->_326
create _747-[:`TO_TEAM`]->_136
create _747-[:`TRANSFERRED_PLAYER`]->_326
create _748-[:`TO_TEAM`]->_136
create _748-[:`TRANSFERRED_PLAYER`]->_335
create _749-[:`TO_TEAM`]->_37
create _749-[:`TRANSFERRED_PLAYER`]->_308
create _750-[:`TO_TEAM`]->_309
create _750-[:`TRANSFERRED_PLAYER`]->_308
create _751-[:`TO_TEAM`]->_136
create _751-[:`TRANSFERRED_PLAYER`]->_308
create _752-[:`TO_TEAM`]->_130
create _752-[:`TRANSFERRED_PLAYER`]->_380
create _753-[:`TO_TEAM`]->_152
create _753-[:`TRANSFERRED_PLAYER`]->_380
create _754-[:`TO_TEAM`]->_1
create _754-[:`TRANSFERRED_PLAYER`]->_30
create _755-[:`TO_TEAM`]->_112
create _755-[:`TRANSFERRED_PLAYER`]->_111
create _756-[:`TO_TEAM`]->_86
create _756-[:`TRANSFERRED_PLAYER`]->_111
create _757-[:`TO_TEAM`]->_384
create _757-[:`TRANSFERRED_PLAYER`]->_398
create _758-[:`TO_TEAM`]->_88
create _758-[:`TRANSFERRED_PLAYER`]->_398
create _759-[:`TO_TEAM`]->_152
create _759-[:`TRANSFERRED_PLAYER`]->_398
create _760-[:`TO_TEAM`]->_152
create _760-[:`TRANSFERRED_PLAYER`]->_407
create _761-[:`TO_TEAM`]->_16
create _761-[:`TRANSFERRED_PLAYER`]->_15
create _762-[:`TO_TEAM`]->_1
create _762-[:`TRANSFERRED_PLAYER`]->_15
create _763-[:`TO_TEAM`]->_45
create _763-[:`TRANSFERRED_PLAYER`]->_230
create _764-[:`TO_TEAM`]->_142
create _764-[:`TRANSFERRED_PLAYER`]->_338
create _765-[:`TO_TEAM`]->_339
create _765-[:`TRANSFERRED_PLAYER`]->_338
create _766-[:`TO_TEAM`]->_136
create _766-[:`TRANSFERRED_PLAYER`]->_338
create _767-[:`TO_TEAM`]->_257
create _767-[:`TRANSFERRED_PLAYER`]->_374
create _768-[:`TO_TEAM`]->_152
create _768-[:`TRANSFERRED_PLAYER`]->_374
create _769-[:`TO_TEAM`]->_225
create _769-[:`TRANSFERRED_PLAYER`]->_221
create _770-[:`TO_TEAM`]->_223
create _770-[:`TRANSFERRED_PLAYER`]->_221
create _771-[:`TO_TEAM`]->_222
create _771-[:`TRANSFERRED_PLAYER`]->_221
create _772-[:`TO_TEAM`]->_209
create _772-[:`TRANSFERRED_PLAYER`]->_221
create _773-[:`TO_TEAM`]->_144
create _773-[:`TRANSFERRED_PLAYER`]->_248
create _774-[:`TO_TEAM`]->_209
create _774-[:`TRANSFERRED_PLAYER`]->_248
create _775-[:`TO_TEAM`]->_120
create _775-[:`TRANSFERRED_PLAYER`]->_320
create _776-[:`TO_TEAM`]->_136
create _776-[:`TRANSFERRED_PLAYER`]->_320
create _777-[:`TO_TEAM`]->_1
create _777-[:`TRANSFERRED_PLAYER`]->_329
create _778-[:`TO_TEAM`]->_136
create _778-[:`TRANSFERRED_PLAYER`]->_329
create _779-[:`TO_TEAM`]->_129
create _779-[:`TRANSFERRED_PLAYER`]->_203
create _780-[:`TO_TEAM`]->_85
create _780-[:`TRANSFERRED_PLAYER`]->_203
create _781-[:`TO_TEAM`]->_39
create _781-[:`TRANSFERRED_PLAYER`]->_212
create _782-[:`TO_TEAM`]->_85
create _782-[:`TRANSFERRED_PLAYER`]->_212
create _783-[:`TO_TEAM`]->_136
create _783-[:`TRANSFERRED_PLAYER`]->_311
create _784-[:`TO_TEAM`]->_209
create _784-[:`TRANSFERRED_PLAYER`]->_284
create _785-[:`TO_TEAM`]->_296
create _785-[:`TRANSFERRED_PLAYER`]->_293
create _786-[:`TO_TEAM`]->_295
create _786-[:`TRANSFERRED_PLAYER`]->_293
create _787-[:`TO_TEAM`]->_240
create _787-[:`TRANSFERRED_PLAYER`]->_293
create _788-[:`TO_TEAM`]->_209
create _788-[:`TRANSFERRED_PLAYER`]->_293
create _789-[:`TO_TEAM`]->_240
create _789-[:`TRANSFERRED_PLAYER`]->_239
create _790-[:`TO_TEAM`]->_209
create _790-[:`TRANSFERRED_PLAYER`]->_239
create _791-[:`TO_TEAM`]->_225
create _791-[:`TRANSFERRED_PLAYER`]->_475
create _792-[:`TO_TEAM`]->_145
create _792-[:`TRANSFERRED_PLAYER`]->_143
create _793-[:`TO_TEAM`]->_144
create _793-[:`TRANSFERRED_PLAYER`]->_143
create _794-[:`TO_TEAM`]->_43
create _794-[:`TRANSFERRED_PLAYER`]->_143
create _795-[:`TO_TEAM`]->_86
create _795-[:`TRANSFERRED_PLAYER`]->_143
create _796-[:`TO_TEAM`]->_115
create _796-[:`TRANSFERRED_PLAYER`]->_215
create _797-[:`TO_TEAM`]->_120
create _797-[:`TRANSFERRED_PLAYER`]->_215
create _798-[:`TO_TEAM`]->_216
create _798-[:`TRANSFERRED_PLAYER`]->_215
create _799-[:`TO_TEAM`]->_279
create _799-[:`TRANSFERRED_PLAYER`]->_278
create _800-[:`TO_TEAM`]->_209
create _800-[:`TRANSFERRED_PLAYER`]->_278
;
commit
