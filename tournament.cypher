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
create (_1:`Team` {`address1`:"Emirates Stadium", `address2`:"75 Drayton Park", `address3`:"London", `chairman`:"Sir Chips Keswick", `ground`:"Emirates Stadium", `name`:"Arsenal", `nickname`:"The Gunners", `postcode`:"N5 1BU", `slug`:"arsenal-1886", `trainer`:"Arsene Wenger", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=142", `website`:"www.arsenal.com", `yearFormed`:1886})
create (_2:`Player` {`age`:25, `birthday`:"18 Apr, 1990", `birthplace`:"Warszawa, Poland", `height`:"1.96m", `name`:"Wojciech Szczesny", `nationality`:"Poland", `slug`:"wojciech-szczesny-poland", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=51340", `weight`:"83.45kg"})
create (_3:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=378"})
create (_4:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1525"})
create (_5:`Player` {`age`:26, `birthday`:"31 Aug, 1988", `birthplace`:"Medellin, Colombia", `height`:"1.83m", `name`:"David Ospina", `nationality`:"Colombia", `slug`:"david-ospina-colombia", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=53996", `weight`:"76.64kg"})
create (_6:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1832"})
create (_7:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1809"})
create (_8:`Player` {`age`:18, `birthday`:"06 Mar, 1997", `birthplace`:"", `height`:"", `name`:"Ryan Huddart", `nationality`:"England", `slug`:"ryan-huddart-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=78597", `weight`:""})
create (_9:`Player` {`age`:20, `birthday`:"25 Feb, 1995", `birthplace`:"Strumica, Macedonia", `height`:"", `name`:"Deyan Iliev", `nationality`:"Macedonia", `slug`:"deyan-iliev-macedonia", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=79438", `weight`:""})
create (_10:`Player` {`age`:29, `birthday`:"28 Jul, 1985", `birthplace`:"Fretin, France", `height`:"1.78m", `name`:"Mathieu Debuchy", `nationality`:"France", `slug`:"mathieu-debuchy-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=40417", `weight`:"72.56kg"})
create (_11:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1823"})
create (_12:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1576"})
create (_13:`Player` {`age`:25, `birthday`:"26 Sep, 1989", `birthplace`:"Lambeth", `height`:"1.78m", `name`:"Kieran Gibbs", `nationality`:"England", `slug`:"kieran-gibbs-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=46514", `weight`:"69.84kg"})
create (_14:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1855"})
create (_15:`Player` {`age`:30, `birthday`:"29 Sep, 1984", `birthplace`:"Hannover, Germany", `height`:"1.98m", `name`:"Per Mertesacker", `nationality`:"Germany", `slug`:"per-mertesacker-germany", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=38092", `weight`:"89.34kg"})
create (_16:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2854"})
create (_17:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1320"})
create (_18:`Player` {`age`:24, `birthday`:"26 Nov, 1990", `birthplace`:"Fortaleza", `height`:"", `name`:"Gabriel Paulista", `nationality`:"Brazil", `slug`:"gabriel-paulista-brazil", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=71945", `weight`:""})
create (_19:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3123"})
create (_20:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=4004"})
create (_21:`Player` {`age`:29, `birthday`:"10 Sep, 1985", `birthplace`:"Tulle, France", `height`:"1.85m", `name`:"Laurent Koscielny", `nationality`:"France", `slug`:"laurent-koscielny-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=53837", `weight`:"73.47kg"})
create (_22:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3150"})
create (_23:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3160"})
create (_24:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1090"})
create (_25:`Player` {`age`:29, `birthday`:"26 Feb, 1986", `birthplace`:"Pamplona, Spain", `height`:"1.78m", `name`:"Nacho Monreal", `nationality`:"Spain", `slug`:"nacho-monreal-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=44874", `weight`:"71.2kg"})
create (_26:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3069"})
create (_27:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1951"})
create (_28:`Player` {`age`:20, `birthday`:"20 Jan, 1995", `birthplace`:"Petersfield", `height`:"1.83m", `name`:"Calum Chambers", `nationality`:"England", `slug`:"calum-chambers-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=66152", `weight`:""})
create (_29:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2471"})
create (_30:`Player` {`age`:20, `birthday`:"19 Mar, 1995", `birthplace`:"Barcelona", `height`:"1.78m", `name`:"Hector Bellerin", `nationality`:"Spain", `slug`:"hector-bellerin-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=67648", `weight`:""})
create (_31:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2741"})
create (_32:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=208"})
create (_33:`Player` {`age`:20, `birthday`:"22 Mar, 1995", `birthplace`:"", `height`:"1.88m", `name`:"Isaac Hayden", `nationality`:"England", `slug`:"isaac-hayden-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=72536", `weight`:""})
create (_34:`Player` {`age`:18, `birthday`:"23 Jan, 1997", `birthplace`:"", `height`:"", `name`:"Stefan O'Connor", `nationality`:"England", `slug`:"stefan-o'connor-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=79498", `weight`:""})
create (_35:`Player` {`age`:34, `birthday`:"04 Oct, 1980", `birthplace`:"Prague", `height`:"1.78m", `name`:"Tomas Rosicky", `nationality`:"Czech Republic", `slug`:"tomas-rosicky-czech-republic", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=17885", `weight`:"64.4kg"})
create (_36:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=398"})
create (_37:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2429"})
create (_38:`Player` {`age`:33, `birthday`:"26 Mar, 1982", `birthplace`:"San Sebastian, Spain", `height`:"1.78m", `name`:"Mikel Arteta", `nationality`:"Spain", `slug`:"mikel-arteta-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=24034", `weight`:"63.49kg"})
create (_39:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=942"})
create (_40:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2192"})
create (_41:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2104"})
create (_42:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2068"})
create (_43:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=224"})
create (_44:`Player` {`age`:23, `birthday`:"01 Jan, 1992", `birthplace`:"Stevenage, England", `height`:"1.73m", `name`:"Jack Wilshere", `nationality`:"England", `slug`:"jack-wilshere-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=49701", `weight`:"66.67kg"})
create (_45:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=354"})
create (_46:`Player` {`age`:26, `birthday`:"15 Oct, 1988", `birthplace`:"Gelsenkirchen, Germany", `height`:"1.8m", `name`:"Mesut Ozil", `nationality`:"Germany", `slug`:"mesut-ozil-germany", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=44921", `weight`:"69.84kg"})
create (_47:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2165"})
create (_48:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2260"})
create (_49:`Player` {`age`:21, `birthday`:"15 Aug, 1993", `birthplace`:"Portsmouth, England", `height`:"1.8m", `name`:"Alex Oxlade-Chamberlain", `nationality`:"England", `slug`:"alex-oxlade-chamberlain-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=53414", `weight`:"69.84kg"})
create (_50:`Player` {`age`:24, `birthday`:"26 Dec, 1990", `birthplace`:"Caerphilly", `height`:"1.78m", `name`:"Aaron Ramsey", `nationality`:"Wales", `slug`:"aaron-ramsey-wales", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=46488", `weight`:"69.84kg"})
create (_51:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=485"})
create (_52:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1845"})
create (_53:`Player` {`age`:30, `birthday`:"13 Dec, 1984", `birthplace`:"Asturias, Spain", `height`:"1.68m", `name`:"Santi Cazorla", `nationality`:"Spain", `slug`:"santi-cazorla-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=39658", `weight`:"64.85kg"})
create (_54:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3479"})
create (_55:`Player` {`age`:31, `birthday`:"07 Mar, 1984", `birthplace`:"Marseille, France", `height`:"1.78m", `name`:"Mathieu Flamini", `nationality`:"France", `slug`:"mathieu-flamini-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=37510", `weight`:"65.76kg"})
create (_56:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=41"})
create (_57:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1748"})
create (_58:`Player` {`age`:28, `birthday`:"11 May, 1986", `birthplace`:"Paris", `height`:"1.93m", `name`:"Abou Diaby", `nationality`:"France", `slug`:"abou-diaby-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=40243", `weight`:"72.56kg"})
create (_59:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=174"})
create (_60:`Player` {`age`:19, `birthday`:"14 Jul, 1995", `birthplace`:"Stuttgart", `height`:"1.73m", `name`:"Serge Gnabry", `nationality`:"Germany", `slug`:"serge-gnabry-germany", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=67650", `weight`:""})
create (_61:`Player` {`age`:23, `birthday`:"13 May, 1991", `birthplace`:"Laval, France", `height`:"1.83m", `name`:"Francis Coquelin", `nationality`:"France", `slug`:"francis-coquelin-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=49975", `weight`:"71.66kg"})
create (_62:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=527"})
create (_63:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1054"})
create (_64:`Player` {`age`:18, `birthday`:"26 Jan, 1997", `birthplace`:"Ethiopia", `height`:"1.8m", `name`:"Gedion Zelalem", `nationality`:"Germany", `slug`:"gedion-zelalem-germany", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=71924", `weight`:""})
create (_65:`Player` {`age`:17, `birthday`:"04 Jan, 1998", `birthplace`:"Poland", `height`:"", `name`:"Krystian Bielik", `nationality`:"Poland", `slug`:"krystian-bielik-poland", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=77500", `weight`:""})
create (_66:`Player` {`age`:23, `birthday`:"18 Apr, 1992", `birthplace`:"", `height`:"1.88m", `name`:"Samuel Galindo", `nationality`:"Bolivia", `slug`:"samuel-galindo-bolivia", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=57251", `weight`:"69.84kg"})
create (_67:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=5413"})
create (_68:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3655"})
create (_69:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2386"})
create (_70:`Player` {`age`:18, `birthday`:"03 May, 1996", `birthplace`:"Nigeria", `height`:"", `name`:"Alex Iwobi", `nationality`:"England", `slug`:"alex-iwobi-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=72651", `weight`:""})
create (_71:`Player` {`age`:19, `birthday`:"28 Oct, 1995", `birthplace`:"Tampere, Finland", `height`:"", `name`:"Glen Kamara", `nationality`:"Finland", `slug`:"glen-kamara-finland", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=79497", `weight`:""})
create (_72:`Player` {`age`:17, `birthday`:"29 Aug, 1997", `birthplace`:"", `height`:"", `name`:"Ainsley Maitland-Niles", `nationality`:"England", `slug`:"ainsley-maitland-niles-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=79373", `weight`:""})
create (_73:`Player` {`age`:28, `birthday`:"30 Sep, 1986", `birthplace`:"Chambery, France", `height`:"1.93m", `name`:"Olivier Giroud", `nationality`:"France", `slug`:"olivier-giroud-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=55730", `weight`:"86.17kg"})
create (_74:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1767"})
create (_75:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3524"})
create (_76:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3157"})
create (_77:`Player` {`age`:26, `birthday`:"16 Mar, 1989", `birthplace`:"Middlesex", `height`:"1.78m", `name`:"Theo Walcott", `nationality`:"England", `slug`:"theo-walcott-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=41643", `weight`:"66.67kg"})
create (_78:`Player` {`age`:26, `birthday`:"19 Dec, 1988", `birthplace`:"Tocopilla, Chile", `height`:"1.7m", `name`:"Alexis Sanchez", `nationality`:"Chile", `slug`:"alexis-sanchez-chile", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=43819", `weight`:"60.32kg"})
create (_79:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2634"})
create (_80:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=273"})
create (_81:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2286"})
create (_82:`Player` {`age`:24, `birthday`:"26 Nov, 1990", `birthplace`:"Manchester, England", `height`:"1.85m", `name`:"Danny Welbeck", `nationality`:"England", `slug`:"danny-welbeck-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=48971", `weight`:"71.66kg"})
create (_83:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2493"})
create (_84:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2054"})
create (_85:`Team` {`address1`:"Old Trafford", `address2`:"Sir Matt Busby Way", `address3`:"Manchester", `chairman`:"Joel Glazer & Avram Glazer", `ground`:"Old Trafford", `name`:"Man Utd", `nickname`:"The Red Devils", `postcode`:"M16 0RA", `slug`:"man-utd-1878", `trainer`:"Louis van Gaal", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1724", `website`:"www.manutd.com", `yearFormed`:1878})
create (_86:`Team` {`address1`:"City of Manchester Stadium", `address2`:"Rowsley Street", `address3`:"Manchester", `chairman`:"Khaldoon Al Mubarak", `ground`:"Etihad Stadium", `name`:"Man City", `nickname`:"The Citizens", `postcode`:"M11 3FF", `slug`:"man-city-1887", `trainer`:"Manuel Pellegrini", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1718", `website`:"www.mcfc.co.uk", `yearFormed`:1887})
create (_87:`Player` {`age`:22, `birthday`:"12 Jul, 1992", `birthplace`:"", `height`:"", `name`:"Erik Johansen", `nationality`:"Norway", `slug`:"erik-johansen-norway", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=66063", `weight`:""})
create (_88:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2263"})
create (_89:`Player` {`age`:20, `birthday`:"27 Oct, 1994", `birthplace`:"Dublin", `height`:"2.67m", `name`:"Ian Lawlor", `nationality`:"Ireland", `slug`:"ian-lawlor-ireland", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=76214", `weight`:""})
create (_90:`Player` {`age`:28, `birthday`:"19 Apr, 1987", `birthplace`:"Shrewsbury, England", `height`:"1.96m", `name`:"Joe Hart", `nationality`:"England", `slug`:"joe-hart-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=34502", `weight`:"78.46kg"})
create (_91:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=291"})
create (_92:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=317"})
create (_93:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2598"})
create (_94:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2325"})
create (_95:`Player` {`age`:33, `birthday`:"28 Sep, 1981", `birthplace`:"Santa Elena, Argentina", `height`:"1.85m", `name`:"Wilfredo Caballero", `nationality`:"Argentina", `slug`:"wilfredo-caballero-argentina", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=37239", `weight`:"82.54kg"})
create (_96:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3481"})
create (_97:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=349"})
create (_98:`Player` {`age`:37, `birthday`:"05 Nov, 1977", `birthplace`:"Ipswich", `height`:"1.88m", `name`:"Richard Wright", `nationality`:"England", `slug`:"richard-wright-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=8726", `weight`:"82.99kg"})
create (_99:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1372"})
create (_100:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2328"})
create (_101:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2802"})
create (_102:`Player` {`age`:21, `birthday`:"30 Nov, 1993", `birthplace`:"", `height`:"", `name`:"Dominic Oduro", `nationality`:"Ghana", `slug`:"dominic-oduro-ghana", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=70774", `weight`:""})
create (_103:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=20"})
create (_104:`Player` {`age`:32, `birthday`:"14 Feb, 1983", `birthplace`:"Sens, France", `height`:"1.75m", `name`:"Bacary Sagna", `nationality`:"France", `slug`:"bacary-sagna-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=40240", `weight`:"71.2kg"})
create (_105:`Player` {`age`:29, `birthday`:"10 Apr, 1986", `birthplace`:"Brussels, Belgium", `height`:"1.91m", `name`:"Vincent Kompany", `nationality`:"Belgium", `slug`:"vincent-kompany-belgium", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=36402", `weight`:"83.9kg"})
create (_106:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2503"})
create (_107:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=54"})
create (_108:`Player` {`age`:30, `birthday`:"16 Jan, 1985", `birthplace`:"Buenos Aires, Argentina", `height`:"1.75m", `name`:"Pablo Zabaleta", `nationality`:"Argentina", `slug`:"pablo-zabaleta-argentina", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=41964", `weight`:"72.56kg"})
create (_109:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=927"})
create (_110:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3953"})
create (_111:`Player` {`age`:29, `birthday`:"10 Nov, 1985", `birthplace`:"Belgrado, Serbia", `height`:"1.85m", `name`:"Aleksandar Kolarov", `nationality`:"Serbia", `slug`:"aleksandar-kolarov-serbia", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=47598", `weight`:"82.54kg"})
create (_112:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1501"})
create (_113:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1919"})
create (_114:`Player` {`age`:24, `birthday`:"13 Feb, 1991", `birthplace`:"Paris, France", `height`:"", `name`:"Eliaquim Mangala", `nationality`:"France", `slug`:"eliaquim-mangala-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=52280", `weight`:""})
create (_115:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=978"})
create (_116:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2363"})
create (_117:`Player` {`age`:29, `birthday`:"26 Jul, 1985", `birthplace`:"Toulouse, France", `height`:"1.78m", `name`:"Gael Clichy", `nationality`:"France", `slug`:"gael-clichy-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=35709", `weight`:"64.4kg"})
create (_118:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=602"})
create (_119:`Player` {`age`:34, `birthday`:"20 Dec, 1980", `birthplace`:"Cordoba, Argentina", `height`:"1.83m", `name`:"Martin Demichelis", `nationality`:"Argentina", `slug`:"martin-demichelis-argentina", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=34322", `weight`:"77.1kg"})
create (_120:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=163"})
create (_121:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=469"})
create (_122:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2208"})
create (_123:`Player` {`age`:24, `birthday`:"28 Nov, 1990", `birthplace`:"Brussels, Belgium", `height`:"1.88m", `name`:"Dedryck Boyata", `nationality`:"Belgium", `slug`:"dedryck-boyata-belgium", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=53095", `weight`:"83.45kg"})
create (_124:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2620"})
create (_125:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=4151"})
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
create (_136:`Team` {`address1`:"Stamford Bridge", `address2`:"London", `address3`:"", `chairman`:"Bruce Buck", `ground`:"Stamford Bridge", `name`:"Chelsea", `nickname`:"The Blues", `postcode`:"SW6 1HS", `slug`:"chelsea-1905", `trainer`:"Jose Mourinho", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=536", `website`:"www.chelseafc.co.uk", `yearFormed`:1905})
create (_137:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2513"})
create (_138:`Player` {`age`:29, `birthday`:"08 Jan, 1986", `birthplace`:"Arguineguin, Spain", `height`:"1.73m", `name`:"David Silva", `nationality`:"Spain", `slug`:"david-silva-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=41962", `weight`:"65.76kg"})
create (_139:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2697"})
create (_140:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=690"})
create (_141:`Player` {`age`:29, `birthday`:"04 May, 1985", `birthplace`:"Londrina, Brazil", `height`:"1.7m", `name`:"Fernandinho", `nationality`:"Brazil", `slug`:"fernandinho-brazil", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=44495", `weight`:"65.76kg"})
create (_142:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2312"})
create (_143:`Player` {`age`:31, `birthday`:"13 May, 1983", `birthplace`:"Bouake, Cote d'Ivoire", `height`:"1.91m", `name`:"Yaya Toure", `nationality`:"Ivory Coast", `slug`:"yaya-toure-ivory-coast", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=41835", `weight`:"89.34kg"})
create (_144:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1930"})
create (_145:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3299"})
create (_146:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=264"})
create (_147:`Player` {`age`:18, `birthday`:"09 Sep, 1996", `birthplace`:"", `height`:"", `name`:"Bersant Celina", `nationality`:"Norway", `slug`:"bersant-celina-norway", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=80308", `weight`:""})
create (_148:`Player` {`age`:19, `birthday`:"03 May, 1995", `birthplace`:"", `height`:"", `name`:"George Glendon", `nationality`:"England", `slug`:"george-glendon-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=79118", `weight`:""})
create (_149:`Player` {`age`:19, `birthday`:"15 Mar, 1996", `birthplace`:"Malaga", `height`:"", `name`:"Jose Pozo", `nationality`:"Spain", `slug`:"jose-pozo-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=78134", `weight`:""})
create (_150:`Player` {`age`:24, `birthday`:"15 Apr, 1991", `birthplace`:"Milan", `height`:"1.88m", `name`:"Luca Scapuzzi", `nationality`:"Italy", `slug`:"luca-scapuzzi-italy", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=62476", `weight`:""})
create (_151:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3589"})
create (_152:`Team` {`address1`:"Fratton Park", `address2`:"Frogmore Road", `address3`:"Portsmouth", `chairman`:"Iain McInnes", `ground`:"Fratton Park", `name`:"Portsmouth", `nickname`:"Pompey", `postcode`:"PO4 8RA", `slug`:"portsmouth-1898", `trainer`:"Gary Waddock", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2049", `website`:"www.pompeyfc.co.uk", `yearFormed`:1898})
create (_153:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1924"})
create (_154:`Player` {`age`:29, `birthday`:"17 Mar, 1986", `birthplace`:"Sarajevo, Bosnia and Herzegovi", `height`:"1.93m", `name`:"Edin Dzeko", `nationality`:"Bosnia-Herzegovina", `slug`:"edin-dzeko-bosnia-herzegovina", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=36509", `weight`:"83.45kg"})
create (_155:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2967"})
create (_156:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2918"})
create (_157:`Player` {`age`:26, `birthday`:"10 Dec, 1988", `birthplace`:"Bingerville, Cote d'Ivoire", `height`:"1.75m", `name`:"Wilfried Bony", `nationality`:"Ivory Coast", `slug`:"wilfried-bony-ivory-coast", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=55236", `weight`:"83.45kg"})
create (_158:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2692"})
create (_159:`Player` {`age`:26, `birthday`:"02 Jun, 1988", `birthplace`:"Buenos Aires, Argentina", `height`:"1.73m", `name`:"Sergio Aguero", `nationality`:"Argentina", `slug`:"sergio-aguero-argentina", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=44554", `weight`:"69.84kg"})
create (_160:`Player` {`age`:25, `birthday`:"02 Nov, 1989", `birthplace`:"Podgorica, Montenegro", `height`:"1.83m", `name`:"Stevan Jovetic", `nationality`:"Montenegro", `slug`:"stevan-jovetic-montenegro", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=45878", `weight`:"78kg"})
create (_161:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=999"})
create (_162:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2084"})
create (_163:`Player` {`age`:18, `birthday`:"28 Mar, 1997", `birthplace`:"", `height`:"", `name`:"Thierry Ambrose", `nationality`:"France", `slug`:"thierry-ambrose-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=80163", `weight`:""})
create (_164:`Player` {`age`:24, `birthday`:"07 Nov, 1990", `birthplace`:"Madrid, Spain", `height`:"1.93m", `name`:"David de Gea", `nationality`:"Spain", `slug`:"david-de-gea-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=52432", `weight`:"73.92kg"})
create (_165:`Player` {`age`:31, `birthday`:"13 Apr, 1984", `birthplace`:"Dyrup, Denmark", `height`:"1.93m", `name`:"Anders Lindegaard", `nationality`:"Denmark", `slug`:"anders-lindegaard-denmark", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=44089", `weight`:"78.46kg"})
create (_166:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=4016"})
create (_167:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1914"})
create (_168:`Player` {`age`:33, `birthday`:"14 Jan, 1982", `birthplace`:"Barcelona, Spain", `height`:"1.83m", `name`:"Victor Valdes", `nationality`:"Spain", `slug`:"victor-valdes-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=33066", `weight`:"77.1kg"})
create (_169:`Player` {`age`:25, `birthday`:"10 Apr, 1990", `birthplace`:"Macclesfield", `height`:"1.88m", `name`:"Ben Amos", `nationality`:"England", `slug`:"ben-amos-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=49987", `weight`:"69.84kg"})
create (_170:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=643"})
create (_171:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1310"})
create (_172:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1996"})
create (_173:`Player` {`age`:21, `birthday`:"10 Nov, 1993", `birthplace`:"Bolton", `height`:"", `name`:"Andy Kellett", `nationality`:"England", `slug`:"andy-kellett-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=72594", `weight`:""})
create (_174:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2036"})
create (_175:`Player` {`age`:24, `birthday`:"09 Jul, 1990", `birthplace`:"Petropolis, Brazil", `height`:"1.73m", `name`:"Rafael Da Silva", `nationality`:"Brazil", `slug`:"rafael-da-silva-brazil", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=49556", `weight`:"78.46kg"})
create (_176:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1020"})
create (_177:`Player` {`age`:19, `birthday`:"12 Jul, 1995", `birthplace`:"Kingston upon Thames, England", `height`:"1.85m", `name`:"Luke Shaw", `nationality`:"England", `slug`:"luke-shaw-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=62471", `weight`:""})
create (_178:`Player` {`age`:23, `birthday`:"21 Feb, 1992", `birthplace`:"Preston, England", `height`:"1.8m", `name`:"Phil Jones", `nationality`:"England", `slug`:"phil-jones-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=52124", `weight`:"71.2kg"})
create (_179:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=308"})
create (_180:`Player` {`age`:25, `birthday`:"20 Mar, 1990", `birthplace`:"La Plata, Argentina", `height`:"1.85m", `name`:"Marcos Rojo", `nationality`:"Argentina", `slug`:"marcos-rojo-argentina", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=58358", `weight`:"78.46kg"})
create (_181:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2421"})
create (_182:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2435"})
create (_183:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1464"})
create (_184:`Player` {`age`:27, `birthday`:"03 Jan, 1988", `birthplace`:"Belfast", `height`:"1.88m", `name`:"Jonny Evans", `nationality`:"Northern Ireland", `slug`:"jonny-evans-northern-ireland", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=44583", `weight`:"76.64kg"})
create (_185:`Player` {`age`:25, `birthday`:"22 Nov, 1989", `birthplace`:"Greenwich, England", `height`:"1.93m", `name`:"Chris Smalling", `nationality`:"England", `slug`:"chris-smalling-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=51128", `weight`:"89.34kg"})
create (_186:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1055"})
create (_187:`Player` {`age`:22, `birthday`:"24 Mar, 1993", `birthplace`:"", `height`:"", `name`:"Guillermo Varela", `nationality`:"Uruguay", `slug`:"guillermo-varela-uruguay", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=70369", `weight`:""})
create (_188:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2058"})
create (_189:`Player` {`age`:20, `birthday`:"27 Apr, 1995", `birthplace`:"Northern Ireland", `height`:"", `name`:"Patrick McNair", `nationality`:"Northern Ireland", `slug`:"patrick-mcnair-northern-ireland", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=77618", `weight`:""})
create (_190:`Player` {`age`:22, `birthday`:"13 Jan, 1993", `birthplace`:"", `height`:"", `name`:"Tom Thorpe", `nationality`:"England", `slug`:"tom-thorpe-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=62459", `weight`:""})
create (_191:`Player` {`age`:21, `birthday`:"02 Apr, 1994", `birthplace`:"", `height`:"1.83m", `name`:"Tyler Blackett", `nationality`:"England", `slug`:"tyler-blackett-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=73373", `weight`:""})
create (_192:`Player` {`age`:27, `birthday`:"14 Feb, 1988", `birthplace`:"Rosario, Argentina", `height`:"1.75m", `name`:"Angel Di Maria", `nationality`:"Argentina", `slug`:"angel-di-maria-argentina", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=47612", `weight`:"73.47kg"})
create (_193:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=257"})
create (_194:`Player` {`age`:27, `birthday`:"28 Apr, 1988", `birthplace`:"Burgos, Spain", `height`:"1.7m", `name`:"Juan Mata", `nationality`:"Spain", `slug`:"juan-mata-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=47417", `weight`:"63.95kg"})
create (_195:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=4618"})
create (_196:`Player` {`age`:20, `birthday`:"11 Jan, 1995", `birthplace`:"", `height`:"", `name`:"Joe Rothwell", `nationality`:"England", `slug`:"joe-rothwell-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=81065", `weight`:""})
create (_197:`Player` {`age`:20, `birthday`:"05 Feb, 1995", `birthplace`:"Brussels, Belgium", `height`:"", `name`:"Adnan Januzaj", `nationality`:"Belgium", `slug`:"adnan-januzaj-belgium", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=70148", `weight`:""})
create (_198:`Player` {`age`:33, `birthday`:"28 Jul, 1981", `birthplace`:"Wallsend, England", `height`:"1.88m", `name`:"Michael Carrick", `nationality`:"England", `slug`:"michael-carrick-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=17042", `weight`:"72.56kg"})
create (_199:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2590"})
create (_200:`Player` {`age`:25, `birthday`:"09 Mar, 1990", `birthplace`:"Amsterdam, Netherlands", `height`:"1.78m", `name`:"Daley Blind", `nationality`:"Netherlands", `slug`:"daley-blind-netherlands", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=55789", `weight`:"71.2kg"})
create (_201:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=973"})
create (_202:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=80"})
create (_203:`Player` {`age`:29, `birthday`:"09 Jul, 1985", `birthplace`:"Stevenage", `height`:"1.75m", `name`:"Ashley Young", `nationality`:"England", `slug`:"ashley-young-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=36330", `weight`:"64.4kg"})
create (_204:`Player` {`age`:25, `birthday`:"14 Aug, 1989", `birthplace`:"Bilbao, Spain", `height`:"1.83m", `name`:"Ander Herrera", `nationality`:"Spain", `slug`:"ander-herrera-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=53691", `weight`:"76.19kg"})
create (_205:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=207"})
create (_206:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2162"})
create (_207:`Player` {`age`:21, `birthday`:"23 Mar, 1994", `birthplace`:"Crewe", `height`:"1.83m", `name`:"Nick Powell", `nationality`:"England", `slug`:"nick-powell-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=55513", `weight`:""})
create (_208:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1527"})
create (_209:`Team` {`address1`:"JJB Stadium", `address2`:"Loire Drive", `address3`:"Wigan", `chairman`:"David Whelan", `ground`:"DW Stadium", `name`:"Wigan", `nickname`:"The Latics", `postcode`:"WN5 0UH", `slug`:"wigan-1932", `trainer`:"Gary Caldwell", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2783", `website`:"www.wiganlatics.co.uk", `yearFormed`:1932})
create (_210:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=652"})
create (_211:`Player` {`age`:29, `birthday`:"04 Aug, 1985", `birthplace`:"Lago Agrio, Ecuador", `height`:"1.8m", `name`:"Luis Antonio Valencia", `nationality`:"Ecuador", `slug`:"luis-antonio-valencia-ecuador", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=40454", `weight`:"77.1kg"})
create (_212:`Player` {`age`:27, `birthday`:"22 Nov, 1987", `birthplace`:"Brussels, Belgium", `height`:"1.93m", `name`:"Marouane Fellaini", `nationality`:"Belgium", `slug`:"marouane-fellaini-belgium", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=46145", `weight`:"83.9kg"})
create (_213:`Player` {`age`:19, `birthday`:"01 Jan, 1996", `birthplace`:"Belgium", `height`:"", `name`:"Andreas Pereira", `nationality`:"Brazil", `slug`:"andreas-pereira-brazil", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=77615", `weight`:""})
create (_214:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2071"})
create (_215:`Player` {`age`:29, `birthday`:"10 Feb, 1986", `birthplace`:"Santa Marta, Colombia", `height`:"1.78m", `name`:"Radamel Falcao", `nationality`:"Colombia", `slug`:"radamel-falcao-colombia", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=49207", `weight`:"71.2kg"})
create (_216:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1674"})
create (_217:`Player` {`age`:29, `birthday`:"24 Oct, 1985", `birthplace`:"Liverpool, England", `height`:"1.78m", `name`:"Wayne Rooney", `nationality`:"England", `slug`:"wayne-rooney-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=30921", `weight`:"77.1kg"})
create (_218:`Player` {`age`:31, `birthday`:"06 Aug, 1983", `birthplace`:"Rotterdam, Netherlands", `height`:"1.88m", `name`:"Robin van Persie", `nationality`:"Netherlands", `slug`:"robin-van-persie-netherlands", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=30289", `weight`:"70.29kg"})
create (_219:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=991"})
create (_220:`Player` {`age`:19, `birthday`:"01 Dec, 1995", `birthplace`:"Biddulph", `height`:"", `name`:"James Wilson", `nationality`:"England", `slug`:"james-wilson-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=75595", `weight`:""})
create (_221:`Player` {`age`:29, `birthday`:"03 Sep, 1985", `birthplace`:"Whitehaven", `height`:"1.83m", `name`:"Scott Carson", `nationality`:"England", `slug`:"scott-carson-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=35776", `weight`:"85.71kg"})
create (_222:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=387"})
create (_223:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2744"})
create (_224:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2330"})
create (_225:`Team` {`address1`:"Anfield Road", `address2`:"Liverpool", `address3`:"", `chairman`:"John W Henry.", `ground`:"Anfield", `name`:"Liverpool", `nickname`:"The Reds", `postcode`:"L4 OTH", `slug`:"liverpool-1892", `trainer`:"Brendan Rodgers", `uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1563", `website`:"www.liverpoolfc.tv", `yearFormed`:1892})
create (_226:`Player` {`age`:22, `birthday`:"05 Oct, 1992", `birthplace`:"", `height`:"1.91m", `name`:"Lee Nicholls", `nationality`:"England", `slug`:"lee-nicholls-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=53114", `weight`:"84.81kg"})
create (_227:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1867"})
create (_228:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=42"})
create (_229:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1190"})
create (_230:`Player` {`age`:33, `birthday`:"30 Dec, 1981", `birthplace`:"Muscat, Oman", `height`:"1.93m", `name`:"Ali Al Habsi", `nationality`:"Oman", `slug`:"ali-al-habsi-oman", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=43617", `weight`:"78.46kg"})
create (_231:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=381"})
create (_232:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1588"})
create (_233:`Player` {`age`:20, `birthday`:"11 Nov, 1994", `birthplace`:"", `height`:"", `name`:"Luke Ainscough", `nationality`:"England", `slug`:"luke-ainscough-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=74227", `weight`:""})
create (_234:`Player` {`age`:21, `birthday`:"15 Oct, 1993", `birthplace`:"", `height`:"", `name`:"Jack Phillips", `nationality`:"England", `slug`:"jack-phillips-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=74230", `weight`:""})
create (_235:`Player` {`age`:28, `birthday`:"01 Aug, 1986", `birthplace`:"Hartlepool", `height`:"1.78m", `name`:"Andrew Taylor", `nationality`:"England", `slug`:"andrew-taylor-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=39130", `weight`:"68.94kg"})
create (_236:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=234"})
create (_237:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1697"})
create (_238:`Player` {`age`:22, `birthday`:"05 Mar, 1993", `birthplace`:"", `height`:"", `name`:"Harry Maguire", `nationality`:"England", `slug`:"harry-maguire-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=58712", `weight`:""})
create (_239:`Player` {`age`:33, `birthday`:"12 Apr, 1982", `birthplace`:"Stirling", `height`:"1.8m", `name`:"Gary Caldwell", `nationality`:"Scotland", `slug`:"gary-caldwell-scotland", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=18874", `weight`:"74.83kg"})
create (_240:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=512"})
create (_241:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1227"})
create (_242:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=747"})
create (_243:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=621"})
create (_244:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=719"})
create (_245:`Player` {`age`:35, `birthday`:"24 Sep, 1979", `birthplace`:"Aylesbury", `height`:"1.8m", `name`:"Emmerson Boyce", `nationality`:"Barbados", `slug`:"emmerson-boyce-barbados", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=14944", `weight`:"73.02kg"})
create (_246:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=646"})
create (_247:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1628"})
create (_248:`Player` {`age`:27, `birthday`:"25 Apr, 1988", `birthplace`:"Sakbayeme, Cameroon", `height`:"1.83m", `name`:"Gaetan Bong", `nationality`:"Cameroon", `slug`:"gaetan-bong-cameroon", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=53880", `weight`:"72.56kg"})
create (_249:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3682"})
create (_250:`Player` {`age`:24, `birthday`:"08 Apr, 1991", `birthplace`:"Scotland", `height`:"1.85m", `name`:"Aaron Sinclair", `nationality`:"Scotland", `slug`:"aaron-sinclair-scotland", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=50806", `weight`:"73.02kg"})
create (_251:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2081"})
create (_252:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1730"})
create (_253:`Player` {`age`:29, `birthday`:"28 Sep, 1985", `birthplace`:"Mansfield", `height`:"1.8m", `name`:"James Perch", `nationality`:"England", `slug`:"james-perch-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=36468", `weight`:"76.19kg"})
create (_254:`Player` {`age`:29, `birthday`:"30 Nov, 1985", `birthplace`:"Luton", `height`:"1.85m", `name`:"Leon Barnett", `nationality`:"England", `slug`:"leon-barnett-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=33636", `weight`:"71.66kg"})
create (_255:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=188"})
create (_256:`Player` {`age`:27, `birthday`:"06 Dec, 1987", `birthplace`:"", `height`:"1.65m", `name`:"Jason Pearce", `nationality`:"England", `slug`:"jason-pearce-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=45984", `weight`:"70.29kg"})
create (_257:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=359"})
create (_258:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2847"})
create (_259:`Player` {`age`:32, `birthday`:"13 May, 1982", `birthplace`:"Barcelona", `height`:"1.7m", `name`:"Albert Crusat", `nationality`:"Spain", `slug`:"albert-crusat-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=53668", `weight`:"64.4kg"})
create (_260:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3110"})
create (_261:`Player` {`age`:20, `birthday`:"24 Jan, 1995", `birthplace`:"", `height`:"", `name`:"Ryan Meadows", `nationality`:"England", `slug`:"ryan-meadows-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=74041", `weight`:""})
create (_262:`Player` {`age`:27, `birthday`:"21 Jul, 1987", `birthplace`:"Dublin", `height`:"1.85m", `name`:"Chris McCann", `nationality`:"Ireland", `slug`:"chris-mccann-ireland", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=41613", `weight`:"74.83kg"})
create (_263:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=435"})
create (_264:`Player` {`age`:26, `birthday`:"22 Apr, 1989", `birthplace`:"Northern Ireland", `height`:"1.8m", `name`:"James McClean", `nationality`:"Ireland", `slug`:"james-mcclean-ireland", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=58543", `weight`:"69.84kg"})
create (_265:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=808"})
create (_266:`Player` {`age`:21, `birthday`:"30 Sep, 1993", `birthplace`:"Llanelli", `height`:"1.78m", `name`:"Emyr Huws", `nationality`:"Wales", `slug`:"emyr-huws-wales", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=67899", `weight`:"73.02kg"})
create (_267:`Player` {`age`:32, `birthday`:"15 Jan, 1983", `birthplace`:"Nottingham", `height`:"1.73m", `name`:"Jermaine Pennant", `nationality`:"England", `slug`:"jermaine-pennant-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=16001", `weight`:"63.49kg"})
create (_268:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2848"})
create (_269:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2477"})
create (_270:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1871"})
create (_271:`Player` {`age`:25, `birthday`:"06 Oct, 1989", `birthplace`:"Gurye, Korea Republic", `height`:"1.78m", `name`:"Kim Bo-Kyung", `nationality`:"South Korea", `slug`:"kim-bo-kyung-south-korea", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=54568", `weight`:""})
create (_272:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=4041"})
create (_273:`Player` {`age`:17, `birthday`:"19 Jun, 1997", `birthplace`:"", `height`:"", `name`:"Sheyi Ojo", `nationality`:"England", `slug`:"sheyi-ojo-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=80195", `weight`:""})
create (_274:`Player` {`age`:32, `birthday`:"15 Feb, 1983", `birthplace`:"Inverness", `height`:"1.78m", `name`:"Don Cowie", `nationality`:"Scotland", `slug`:"don-cowie-scotland", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=24698", `weight`:"71.66kg"})
create (_275:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=482"})
create (_276:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2117"})
create (_277:`Player` {`age`:20, `birthday`:"24 Feb, 1995", `birthplace`:"", `height`:"1.73m", `name`:"Josh Murphy", `nationality`:"England", `slug`:"josh-murphy-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=67647", `weight`:""})
create (_278:`Player` {`age`:30, `birthday`:"24 Feb, 1985", `birthplace`:"Odder, Denmark", `height`:"1.83m", `name`:"William Kvist", `nationality`:"Denmark", `slug`:"william-kvist-denmark", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=44671", `weight`:"78.46kg"})
create (_279:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2682"})
create (_280:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=616"})
create (_281:`Player` {`age`:19, `birthday`:"05 Sep, 1995", `birthplace`:"", `height`:"", `name`:"Declan Poole", `nationality`:"England", `slug`:"declan-poole-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=74270", `weight`:""})
create (_282:`Player` {`age`:21, `birthday`:"18 Jan, 1994", `birthplace`:"", `height`:"", `name`:"Tim Chow", `nationality`:"England", `slug`:"tim-chow-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=74247", `weight`:""})
create (_283:`Player` {`age`:22, `birthday`:"13 Oct, 1992", `birthplace`:"", `height`:"", `name`:"Guillermo Andres", `nationality`:"Spain", `slug`:"guillermo-andres-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=74353", `weight`:""})
create (_284:`Player` {`age`:21, `birthday`:"15 Mar, 1994", `birthplace`:"", `height`:"", `name`:"Patrick Antelmi", `nationality`:"Australia", `slug`:"patrick-antelmi-australia", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=74229", `weight`:""})
create (_285:`Player` {`age`:26, `birthday`:"22 Oct, 1988", `birthplace`:"England", `height`:"1.75m", `name`:"Billy McKay", `nationality`:"Northern Ireland", `slug`:"billy-mckay-northern-ireland", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=51707", `weight`:""})
create (_286:`Player` {`age`:30, `birthday`:"10 Feb, 1985", `birthplace`:"Wolverhampton", `height`:"1.88m", `name`:"Leon Clarke", `nationality`:"England", `slug`:"leon-clarke-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=36472", `weight`:"89.34kg"})
create (_287:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=649"})
create (_288:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=656"})
create (_289:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2093"})
create (_290:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2393"})
create (_291:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1436"})
create (_292:`Player` {`age`:18, `birthday`:"20 Sep, 1996", `birthplace`:"Birmingham", `height`:"", `name`:"Jerome Sinclair", `nationality`:"England", `slug`:"jerome-sinclair-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=67656", `weight`:""})
create (_293:`Player` {`age`:33, `birthday`:"02 Jul, 1981", `birthplace`:"Cayenne, France", `height`:"1.83m", `name`:"Marc-Antoine Fortune", `nationality`:"France", `slug`:"marc-antoine-fortune-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=32418", `weight`:"76.19kg"})
create (_294:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=800"})
create (_295:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1848"})
create (_296:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=981"})
create (_297:`Player` {`age`:25, `birthday`:"23 Jan, 1990", `birthplace`:"", `height`:"1.78m", `name`:"Martyn Waghorn", `nationality`:"England", `slug`:"martyn-waghorn-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=48366", `weight`:"82.54kg"})
create (_298:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1699"})
create (_299:`Player` {`age`:19, `birthday`:"04 Oct, 1995", `birthplace`:"", `height`:"", `name`:"Jordan Flores", `nationality`:"England", `slug`:"jordan-flores-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=77170", `weight`:""})
create (_300:`Player` {`age`:34, `birthday`:"12 Apr, 1981", `birthplace`:"Carlisle", `height`:"1.83m", `name`:"Grant Holt", `nationality`:"England", `slug`:"grant-holt-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=17954", `weight`:"76.64kg"})
create (_301:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1309"})
create (_302:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2175"})
create (_303:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=392"})
create (_304:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1186"})
create (_305:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2850"})
create (_306:`Player` {`age`:18, `birthday`:"02 Dec, 1996", `birthplace`:"", `height`:"", `name`:"Sam Cosgrove", `nationality`:"England", `slug`:"sam-cosgrove-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=80290", `weight`:""})
create (_307:`Player` {`age`:18, `birthday`:"11 Sep, 1996", `birthplace`:"", `height`:"", `name`:"Louis Robles", `nationality`:"England", `slug`:"louis-robles-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=81330", `weight`:""})
create (_308:`Player` {`age`:32, `birthday`:"20 May, 1982", `birthplace`:"Plzen", `height`:"1.96m", `name`:"Petr Cech", `nationality`:"Czech Republic", `slug`:"petr-cech-czech-republic", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=26534", `weight`:"85.71kg"})
create (_309:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2173"})
create (_310:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3236"})
create (_311:`Player` {`age`:22, `birthday`:"11 May, 1992", `birthplace`:"Bree, Belgium", `height`:"", `name`:"Thibaut Courtois", `nationality`:"Belgium", `slug`:"thibaut-courtois-belgium", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=60467", `weight`:""})
create (_312:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3048"})
create (_313:`Player` {`age`:19, `birthday`:"03 Oct, 1995", `birthplace`:"", `height`:"", `name`:"Mitchell Beeney", `nationality`:"England", `slug`:"mitchell-beeney-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=79262", `weight`:""})
create (_314:`Player` {`age`:21, `birthday`:"27 Oct, 1993", `birthplace`:"", `height`:"", `name`:"Jamal Blackman", `nationality`:"England", `slug`:"jamal-blackman-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=62864", `weight`:""})
create (_315:`Player` {`age`:20, `birthday`:"02 Apr, 1995", `birthplace`:"Rancagua", `height`:"", `name`:"Cristian Cuevas", `nationality`:"Chile", `slug`:"cristian-cuevas-chile", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=72156", `weight`:""})
create (_316:`Player` {`age`:21, `birthday`:"30 Dec, 1993", `birthplace`:"", `height`:"", `name`:"Daniel Pappoe", `nationality`:"England", `slug`:"daniel-pappoe-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=70734", `weight`:""})
create (_317:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=612"})
create (_318:`Player` {`age`:31, `birthday`:"22 Feb, 1984", `birthplace`:"Sremska Mitrovica, Yugoslavia", `height`:"1.85m", `name`:"Branislav Ivanovic", `nationality`:"Serbia", `slug`:"branislav-ivanovic-serbia", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=47694", `weight`:"83.45kg"})
create (_319:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1567"})
create (_320:`Player` {`age`:29, `birthday`:"09 Aug, 1985", `birthplace`:"Jaragua do Sul, Brazil", `height`:"1.85m", `name`:"Filipe Luis", `nationality`:"Brazil", `slug`:"filipe-luis-brazil", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=44807", `weight`:"76.64kg"})
create (_321:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=776"})
create (_322:`Player` {`age`:20, `birthday`:"27 Oct, 1994", `birthplace`:"", `height`:"", `name`:"Kurt Zouma", `nationality`:"France", `slug`:"kurt-zouma-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=61332", `weight`:""})
create (_323:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=935"})
create (_324:`Player` {`age`:29, `birthday`:"19 Dec, 1985", `birthplace`:"Dronfield, England", `height`:"1.88m", `name`:"Gary Cahill", `nationality`:"England", `slug`:"gary-cahill-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=40093", `weight`:"70.29kg"})
create (_325:`Player` {`age`:34, `birthday`:"07 Dec, 1980", `birthplace`:"London", `height`:"1.85m", `name`:"John Terry", `nationality`:"England", `slug`:"john-terry-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=15275", `weight`:"73.92kg"})
create (_326:`Player` {`age`:25, `birthday`:"28 Aug, 1989", `birthplace`:"Pamplona, Spain", `height`:"1.73m", `name`:"Cesar Azpilicueta", `nationality`:"Spain", `slug`:"cesar-azpilicueta-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=46344", `weight`:"69.84kg"})
create (_327:`Player` {`age`:19, `birthday`:"10 Apr, 1996", `birthplace`:"", `height`:"", `name`:"Andreas Christensen", `nationality`:"Denmark", `slug`:"andreas-christensen-denmark", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=70144", `weight`:""})
create (_328:`Player` {`age`:18, `birthday`:"04 Sep, 1996", `birthplace`:"London", `height`:"", `name`:"Charlie Colkett", `nationality`:"England", `slug`:"charlie-colkett-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=74220", `weight`:""})
create (_329:`Player` {`age`:27, `birthday`:"04 May, 1987", `birthplace`:"Arenys de Mar, Barcelona, Spai", `height`:"1.78m", `name`:"Cesc Fabregas", `nationality`:"Spain", `slug`:"cesc-fabregas-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=36694", `weight`:"72.56kg"})
create (_330:`Player` {`age`:28, `birthday`:"24 Mar, 1987", `birthplace`:"Barra do Pirai, Brazil", `height`:"1.73m", `name`:"Ramires", `nationality`:"Brazil", `slug`:"ramires-brazil", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=51604", `weight`:"64.4kg"})
create (_331:`Player` {`age`:23, `birthday`:"09 Sep, 1991", `birthplace`:"Sao Paulo, Brazil", `height`:"1.78m", `name`:"Oscar", `nationality`:"Brazil", `slug`:"oscar-brazil", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=62649", `weight`:"65.31kg"})
create (_332:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=4000"})
create (_333:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2233"})
create (_334:`Player` {`age`:24, `birthday`:"07 Jan, 1991", `birthplace`:"La Louviere, Belgium", `height`:"1.7m", `name`:"Eden Hazard", `nationality`:"Belgium", `slug`:"eden-hazard-belgium", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=53445", `weight`:"64.4kg"})
create (_335:`Player` {`age`:28, `birthday`:"22 Apr, 1987", `birthplace`:"Jos, Nigeria", `height`:"1.83m", `name`:"John Obi Mikel", `nationality`:"Nigeria", `slug`:"john-obi-mikel-nigeria", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=43353", `weight`:"78.46kg"})
create (_336:`Player` {`age`:26, `birthday`:"01 Aug, 1988", `birthplace`:"Vrelo, Serbia", `height`:"1.93m", `name`:"Nemanja Matic", `nationality`:"Serbia", `slug`:"nemanja-matic-serbia", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=52388", `weight`:"80.27kg"})
create (_337:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=976"})
create (_338:`Player` {`age`:26, `birthday`:"09 Aug, 1988", `birthplace`:"Ribeirao Pires, Brazil", `height`:"1.75m", `name`:"Willian", `nationality`:"Brazil", `slug`:"willian-brazil", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=47607", `weight`:"69.84kg"})
create (_339:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3281"})
create (_340:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=4001"})
create (_341:`Player` {`age`:26, `birthday`:"26 May, 1988", `birthplace`:"Necocli, Colombia", `height`:"1.7m", `name`:"Juan Guillermo Cuadrado", `nationality`:"Colombia", `slug`:"juan-guillermo-cuadrado-colombia", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=53525", `weight`:"64.85kg"})
create (_342:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1508"})
create (_343:`Player` {`age`:18, `birthday`:"03 Jan, 1997", `birthplace`:"", `height`:"", `name`:"Jeremie Boga", `nationality`:"France", `slug`:"jeremie-boga-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=79263", `weight`:""})
create (_344:`Player` {`age`:19, `birthday`:"23 Jan, 1996", `birthplace`:"", `height`:"1.93m", `name`:"Ruben Loftus-Cheek", `nationality`:"England", `slug`:"ruben-loftus-cheek-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=79669", `weight`:""})
create (_345:`Player` {`age`:37, `birthday`:"11 Mar, 1978", `birthplace`:"Abidjan, Cote d'Ivoire", `height`:"1.85m", `name`:"Didier Drogba", `nationality`:"Ivory Coast", `slug`:"didier-drogba-ivory-coast", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=29993", `weight`:"83.45kg"})
create (_346:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1125"})
create (_347:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2970"})
create (_348:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3259"})
create (_349:`Player` {`age`:28, `birthday`:"02 Jan, 1987", `birthplace`:"Rillieux-la-Pape, France", `height`:"1.85m", `name`:"Loic Remy", `nationality`:"France", `slug`:"loic-remy-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=45647", `weight`:"79.37kg"})
create (_350:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1590"})
create (_351:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1645"})
create (_352:`Player` {`age`:26, `birthday`:"07 Oct, 1988", `birthplace`:"Lagarto, Brazil", `height`:"1.85m", `name`:"Diego Costa", `nationality`:"Spain", `slug`:"diego-costa-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=53664", `weight`:"83.9kg"})
create (_353:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2221"})
create (_354:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2676"})
create (_355:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=57"})
create (_356:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2417"})
create (_357:`Player` {`age`:17, `birthday`:"14 Sep, 1997", `birthplace`:"", `height`:"", `name`:"Dominic Solanke", `nationality`:"England", `slug`:"dominic-solanke-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=78519", `weight`:""})
create (_358:`Player` {`age`:18, `birthday`:"07 Jan, 1997", `birthplace`:"", `height`:"", `name`:"Isaiah Brown", `nationality`:"England", `slug`:"isaiah-brown-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=69330", `weight`:""})
create (_359:`Player` {`age`:27, `birthday`:"08 Mar, 1988", `birthplace`:"Brighton", `height`:"1.85m", `name`:"John Sullivan", `nationality`:"England", `slug`:"john-sullivan-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=43058", `weight`:"88.89kg"})
create (_360:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=483"})
create (_361:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=4194"})
create (_362:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2905"})
create (_363:`Player` {`age`:28, `birthday`:"28 Jun, 1986", `birthplace`:"Maidstone", `height`:"1.91m", `name`:"Paul Jones", `nationality`:"England", `slug`:"paul-jones-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=33668", `weight`:""})
create (_364:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=947"})
create (_365:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1537"})
create (_366:`Player` {`age`:29, `birthday`:"21 Nov, 1985", `birthplace`:"Surrey", `height`:"1.85m", `name`:"Michael Poke", `nationality`:"England", `slug`:"michael-poke-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=38385", `weight`:"73.02kg"})
create (_367:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2589"})
create (_368:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=388"})
create (_369:`Player` {`age`:-1, `birthday`:"", `birthplace`:"", `height`:"", `name`:"Alex Bass", `nationality`:"England", `slug`:"alex-bass-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=77168", `weight`:""})
create (_370:`Player` {`age`:28, `birthday`:"18 Jul, 1986", `birthplace`:"Nice", `height`:"1.75m", `name`:"Yassin Moutaouakil", `nationality`:"France", `slug`:"yassin-moutaouakil-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=46557", `weight`:"72.11kg"})
create (_371:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=4822"})
create (_372:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1734"})
create (_373:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2985"})
create (_374:`Player` {`age`:28, `birthday`:"17 Aug, 1986", `birthplace`:"Birmingham", `height`:"1.8m", `name`:"Marcos Painter", `nationality`:"Ireland", `slug`:"marcos-painter-ireland", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=41646", `weight`:"71.66kg"})
create (_375:`Player` {`age`:20, `birthday`:"31 Oct, 1994", `birthplace`:"", `height`:"", `name`:"Liam Triggs", `nationality`:"England", `slug`:"liam-triggs-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=74509", `weight`:""})
create (_376:`Player` {`age`:20, `birthday`:"08 Feb, 1995", `birthplace`:"", `height`:"", `name`:"Joshua Warren", `nationality`:"England", `slug`:"joshua-warren-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=74505", `weight`:""})
create (_377:`Player` {`age`:20, `birthday`:"04 Jan, 1995", `birthplace`:"", `height`:"", `name`:"Adam Webster", `nationality`:"England", `slug`:"adam-webster-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=63578", `weight`:""})
create (_378:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=92"})
create (_379:`Player` {`age`:18, `birthday`:"19 Aug, 1996", `birthplace`:"", `height`:"", `name`:"Jack Whatmaugh", `nationality`:"England", `slug`:"jack-whatmaugh-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=66115", `weight`:""})
create (_380:`Player` {`age`:28, `birthday`:"06 Feb, 1987", `birthplace`:"", `height`:"1.88m", `name`:"Joe Devera", `nationality`:"England", `slug`:"joe-devera-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=42913", `weight`:"76.19kg"})
create (_381:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=344"})
create (_382:`Player` {`age`:32, `birthday`:"30 Sep, 1982", `birthplace`:"Sidcup", `height`:"1.91m", `name`:"Ben Chorley", `nationality`:"England", `slug`:"ben-chorley-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=28928", `weight`:"83.9kg"})
create (_383:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2499"})
create (_384:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1098"})
create (_385:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2812"})
create (_386:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=5257"})
create (_387:`Player` {`age`:33, `birthday`:"07 Jan, 1982", `birthplace`:"Barnet", `height`:"1.83m", `name`:"Paul Robinson", `nationality`:"England", `slug`:"paul-robinson-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=26805", `weight`:"72.56kg"})
create (_388:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1001"})
create (_389:`Player` {`age`:34, `birthday`:"19 Feb, 1981", `birthplace`:"Romford", `height`:"1.75m", `name`:"Nicky Shorey", `nationality`:"England", `slug`:"nicky-shorey-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=16942", `weight`:"65.76kg"})
create (_390:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=376"})
create (_391:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2125"})
create (_392:`Player` {`age`:20, `birthday`:"21 Nov, 1994", `birthplace`:"", `height`:"", `name`:"Joshua Passley", `nationality`:"England", `slug`:"joshua-passley-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=74565", `weight`:""})
create (_393:`Player` {`age`:34, `birthday`:"11 Oct, 1980", `birthplace`:"London", `height`:"1.83m", `name`:"Nyron Nosworthy", `nationality`:"Jamaica", `slug`:"nyron-nosworthy-jamaica", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=15462", `weight`:"78kg"})
create (_394:`Player` {`age`:18, `birthday`:"20 May, 1996", `birthplace`:"", `height`:"", `name`:"Cole Kpekawa", `nationality`:"England", `slug`:"cole-kpekawa-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=79063", `weight`:""})
create (_395:`Player` {`age`:20, `birthday`:"26 Aug, 1994", `birthplace`:"", `height`:"", `name`:"Dan Butler", `nationality`:"England", `slug`:"dan-butler-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=66111", `weight`:""})
create (_396:`Player` {`age`:20, `birthday`:"15 Oct, 1994", `birthplace`:"", `height`:"", `name`:"George Branford", `nationality`:"England", `slug`:"george-branford-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=74513", `weight`:""})
create (_397:`Player` {`age`:30, `birthday`:"01 May, 1984", `birthplace`:"", `height`:"1.73m", `name`:"Therry Racon", `nationality`:"France", `slug`:"therry-racon-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=47072", `weight`:"63.49kg"})
create (_398:`Player` {`age`:28, `birthday`:"16 Dec, 1986", `birthplace`:"Basildon", `height`:"1.78m", `name`:"Andy Barcham", `nationality`:"England", `slug`:"andy-barcham-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=45304", `weight`:"78kg"})
create (_399:`Player` {`age`:21, `birthday`:"26 Mar, 1994", `birthplace`:"Reading", `height`:"", `name`:"Jed Wallace", `nationality`:"England", `slug`:"jed-wallace-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=64940", `weight`:""})
create (_400:`Player` {`age`:32, `birthday`:"13 Nov, 1982", `birthplace`:"Graz", `height`:"1.85m", `name`:"Johannes Ertl", `nationality`:"Austria", `slug`:"johannes-ertl-austria", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=48003", `weight`:"78.46kg"})
create (_401:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2688"})
create (_402:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2308"})
create (_403:`Player` {`age`:27, `birthday`:"12 Apr, 1988", `birthplace`:"Brighton", `height`:"1.75m", `name`:"Wes Fogden", `nationality`:"England", `slug`:"wes-fogden-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=43977", `weight`:"73.02kg"})
create (_404:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3056"})
create (_405:`Player` {`age`:25, `birthday`:"18 Sep, 1989", `birthplace`:"Farnborough, England", `height`:"1.8m", `name`:"James Dunne", `nationality`:"England", `slug`:"james-dunne-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=51866", `weight`:"74.83kg"})
create (_406:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2472"})
create (_407:`Player` {`age`:25, `birthday`:"09 Sep, 1989", `birthplace`:"", `height`:"", `name`:"Nigel Atangana", `nationality`:"France", `slug`:"nigel-atangana-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=76511", `weight`:""})
create (_408:`Player` {`age`:19, `birthday`:"06 Nov, 1995", `birthplace`:"", `height`:"", `name`:"Bradley Tarbuck", `nationality`:"England", `slug`:"bradley-tarbuck-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=66116", `weight`:""})
create (_409:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=721"})
create (_410:`Player` {`age`:29, `birthday`:"06 Nov, 1985", `birthplace`:"Ashford", `height`:"1.75m", `name`:"Danny Hollands", `nationality`:"England", `slug`:"danny-hollands-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=43588", `weight`:"79.37kg"})
create (_411:`Player` {`age`:16, `birthday`:"06 Dec, 1998", `birthplace`:"England", `height`:"", `name`:"Adam May", `nationality`:"England", `slug`:"adam-may-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=82294", `weight`:""})
create (_412:`Player` {`age`:18, `birthday`:"08 Aug, 1996", `birthplace`:"", `height`:"", `name`:"Ben Close", `nationality`:"England", `slug`:"ben-close-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=75865", `weight`:""})
create (_413:`Player` {`age`:18, `birthday`:"16 Feb, 1997", `birthplace`:"", `height`:"", `name`:"Conor Chaplin", `nationality`:"England", `slug`:"conor-chaplin-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=79825", `weight`:""})
create (_414:`Player` {`age`:26, `birthday`:"04 May, 1988", `birthplace`:"", `height`:"1.85m", `name`:"Ryan Taylor", `nationality`:"England", `slug`:"ryan-taylor-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=42967", `weight`:"66.67kg"})
create (_415:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=427"})
create (_416:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2180"})
create (_417:`Player` {`age`:28, `birthday`:"14 Oct, 1986", `birthplace`:"", `height`:"1.8m", `name`:"Tom Craddock", `nationality`:"England", `slug`:"tom-craddock-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=43767", `weight`:"74.83kg"})
create (_418:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1964"})
create (_419:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2859"})
create (_420:`Player` {`age`:30, `birthday`:"15 Jul, 1984", `birthplace`:"", `height`:"1.75m", `name`:"Matt Tubbs", `nationality`:"England", `slug`:"matt-tubbs-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=45368", `weight`:"69.84kg"})
create (_421:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2229"})
create (_422:`Player` {`age`:21, `birthday`:"28 Jul, 1993", `birthplace`:"", `height`:"", `name`:"Paul McCallum", `nationality`:"England", `slug`:"paul-mccallum-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=58305", `weight`:""})
create (_423:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1289"})
create (_424:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=829"})
create (_425:`Player` {`age`:30, `birthday`:"29 Jan, 1985", `birthplace`:"Nottingham", `height`:"1.8m", `name`:"Craig Westcarr", `nationality`:"England", `slug`:"craig-westcarr-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=28581", `weight`:"82.09kg"})
create (_426:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2737"})
create (_427:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1428"})
create (_428:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1559"})
create (_429:`Player` {`age`:34, `birthday`:"29 Sep, 1980", `birthplace`:"Walthamstow", `height`:"1.85m", `name`:"Patrick Agyemang", `nationality`:"Ghana", `slug`:"patrick-agyemang-ghana", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=16754", `weight`:"88.89kg"})
create (_430:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=760"})
create (_431:`Player` {`age`:20, `birthday`:"08 Dec, 1994", `birthplace`:"", `height`:"", `name`:"Jack Maloney", `nationality`:"England", `slug`:"jack-maloney-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=66113", `weight`:""})
create (_432:`Player` {`age`:33, `birthday`:"19 Mar, 1982", `birthplace`:"Perth, Australia", `height`:"1.91m", `name`:"Brad Jones", `nationality`:"Australia", `slug`:"brad-jones-australia", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=29738", `weight`:"79.82kg"})
create (_433:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2473"})
create (_434:`Player` {`age`:27, `birthday`:"06 Mar, 1988", `birthplace`:"Sint-Truiden, Belgium", `height`:"1.93m", `name`:"Simon Mignolet", `nationality`:"Belgium", `slug`:"simon-mignolet-belgium", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=54991", `weight`:"85.71kg"})
create (_435:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2999"})
create (_436:`Player` {`age`:21, `birthday`:"22 Jun, 1993", `birthplace`:"", `height`:"", `name`:"Danny Ward", `nationality`:"Wales", `slug`:"danny-ward-wales", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=61498", `weight`:""})
create (_437:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1732"})
create (_438:`Player` {`age`:30, `birthday`:"23 Aug, 1984", `birthplace`:"Greenwich, England", `height`:"1.8m", `name`:"Glen Johnson", `nationality`:"England", `slug`:"glen-johnson-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=32697", `weight`:"69.84kg"})
create (_439:`Player` {`age`:29, `birthday`:"23 Jan, 1986", `birthplace`:"Valencia, Spain", `height`:"1.83m", `name`:"Jose Enrique", `nationality`:"Spain", `slug`:"jose-enrique-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=46761", `weight`:"73.92kg"})
create (_440:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3251"})
create (_441:`Player` {`age`:34, `birthday`:"19 Mar, 1981", `birthplace`:"Bouake, Cote d'Ivoire", `height`:"1.83m", `name`:"Kolo Toure", `nationality`:"Ivory Coast", `slug`:"kolo-toure-ivory-coast", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=27346", `weight`:"72.56kg"})
create (_442:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=3719"})
create (_443:`Player` {`age`:25, `birthday`:"05 Jul, 1989", `birthplace`:"Zenica, Bosnia and Herzegovina", `height`:"1.85m", `name`:"Dejan Lovren", `nationality`:"Croatia", `slug`:"dejan-lovren-croatia", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=44118", `weight`:"77.1kg"})
create (_444:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=679"})
create (_445:`Player` {`age`:25, `birthday`:"13 Feb, 1990", `birthplace`:"Paris, France", `height`:"1.85m", `name`:"Mamadou Sakho", `nationality`:"France", `slug`:"mamadou-sakho-france", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=50866", `weight`:"82.54kg"})
create (_446:`Player` {`age`:22, `birthday`:"05 Jul, 1992", `birthplace`:"Sevilla, Spain", `height`:"", `name`:"Alberto Moreno Perez", `nationality`:"Spain", `slug`:"alberto-moreno-perez-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=64850", `weight`:""})
create (_447:`Player` {`age`:20, `birthday`:"05 May, 1994", `birthplace`:"Madrid, Spain", `height`:"", `name`:"Javi Manquillo", `nationality`:"Spain", `slug`:"javi-manquillo-spain", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=64986", `weight`:""})
create (_448:`Player` {`age`:30, `birthday`:"15 Dec, 1984", `birthplace`:"Handlova, Czechoslovakia", `height`:"1.88m", `name`:"Martin Skrtel", `nationality`:"Slovakia", `slug`:"martin-skrtel-slovakia", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=41978", `weight`:"79.37kg"})
create (_449:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2919"})
create (_450:`Player` {`age`:22, `birthday`:"01 Jan, 1993", `birthplace`:"Liverpool, England", `height`:"1.8m", `name`:"Jon Flanagan", `nationality`:"England", `slug`:"jon-flanagan-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=58011", `weight`:"78kg"})
create (_451:`Player` {`age`:20, `birthday`:"30 Sep, 1994", `birthplace`:"Belfast", `height`:"", `name`:"Ryan McLaughlin", `nationality`:"Northern Ireland", `slug`:"ryan-mclaughlin-northern-ireland", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=68277", `weight`:""})
create (_452:`Player` {`age`:34, `birthday`:"30 May, 1980", `birthplace`:"Whiston, England", `height`:"1.83m", `name`:"Steven Gerrard", `nationality`:"England", `slug`:"steven-gerrard-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=15643", `weight`:"80.27kg"})
create (_453:`Player` {`age`:22, `birthday`:"12 Jun, 1992", `birthplace`:"Rio de Janeiro, Brazil", `height`:"1.7m", `name`:"Philippe Coutinho", `nationality`:"Brazil", `slug`:"philippe-coutinho-brazil", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=56220", `weight`:"70.29kg"})
create (_454:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1126"})
create (_455:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1370"})
create (_456:`Player` {`age`:24, `birthday`:"17 Jun, 1990", `birthplace`:"Sunderland, England", `height`:"1.83m", `name`:"Jordan Henderson", `nationality`:"England", `slug`:"jordan-henderson-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=49999", `weight`:"72.11kg"})
create (_457:`Player` {`age`:26, `birthday`:"10 May, 1988", `birthplace`:"St Albans, England", `height`:"1.68m", `name`:"Adam Lallana", `nationality`:"England", `slug`:"adam-lallana-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=44463", `weight`:"71.66kg"})
create (_458:`Player` {`age`:28, `birthday`:"09 Jan, 1987", `birthplace`:"Dourados, Brazil", `height`:"1.78m", `name`:"Lucas", `nationality`:"Brazil", `slug`:"lucas-brazil", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=47374", `weight`:"72.56kg"})
create (_459:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1024"})
create (_460:`Player` {`age`:21, `birthday`:"12 Jan, 1994", `birthplace`:"Frankfurt am Main, Germany", `height`:"1.88m", `name`:"Emre Can", `nationality`:"Germany", `slug`:"emre-can-germany", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=64176", `weight`:"76.19kg"})
create (_461:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=468"})
create (_462:`Player` {`age`:25, `birthday`:"14 Mar, 1990", `birthplace`:"Carmarthen", `height`:"1.68m", `name`:"Joe Allen", `nationality`:"Wales", `slug`:"joe-allen-wales", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=45981", `weight`:"78.46kg"})
create (_463:`Player` {`age`:20, `birthday`:"08 Dec, 1994", `birthplace`:"Kingston, Jamaica", `height`:"1.68m", `name`:"Raheem Sterling", `nationality`:"England", `slug`:"raheem-sterling-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=58401", `weight`:"67.57kg"})
create (_464:`Player` {`age`:18, `birthday`:"09 May, 1996", `birthplace`:"", `height`:"", `name`:"Cameron Brannigan", `nationality`:"England", `slug`:"cameron-brannigan-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=74212", `weight`:""})
create (_465:`Player` {`age`:19, `birthday`:"08 Dec, 1995", `birthplace`:"Southwark", `height`:"1.7m", `name`:"Jordon Ibe", `nationality`:"England", `slug`:"jordon-ibe-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=61224", `weight`:""})
create (_466:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2898"})
create (_467:`Player` {`age`:18, `birthday`:"24 Mar, 1997", `birthplace`:"", `height`:"", `name`:"Jordan Rossiter", `nationality`:"England", `slug`:"jordan-rossiter-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=74167", `weight`:""})
create (_468:`Player` {`age`:21, `birthday`:"20 Nov, 1993", `birthplace`:"", `height`:"", `name`:"Henoc Mukendi", `nationality`:"Congo", `slug`:"henoc-mukendi-congo", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=65890", `weight`:""})
create (_469:`Player` {`age`:33, `birthday`:"16 Feb, 1982", `birthplace`:"Kirkby, England", `height`:"1.85m", `name`:"Rickie Lambert", `nationality`:"England", `slug`:"rickie-lambert-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=16995", `weight`:"76.64kg"})
create (_470:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=1660"})
create (_471:`Player` {`age`:25, `birthday`:"01 Sep, 1989", `birthplace`:"Birmingham, England", `height`:"1.85m", `name`:"Daniel Sturridge", `nationality`:"England", `slug`:"daniel-sturridge-england", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=46104", `weight`:"73.92kg"})
create (_472:`Player` {`age`:24, `birthday`:"29 Mar, 1991", `birthplace`:"Bentivoglio, Italy", `height`:"1.73m", `name`:"Fabio Borini", `nationality`:"Italy", `slug`:"fabio-borini-italy", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=52228", `weight`:"71.66kg"})
create (_473:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2163"})
create (_474:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=2037"})
create (_475:`Player` {`age`:20, `birthday`:"25 May, 1994", `birthplace`:"Dusseldorf", `height`:"1.78m", `name`:"Samed Yesil", `nationality`:"Germany", `slug`:"samed-yesil-germany", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=63895", `weight`:"70.29kg"})
create (_476:`Player` {`age`:24, `birthday`:"12 Aug, 1990", `birthplace`:"Palermo, Italy", `height`:"1.88m", `name`:"Mario Balotelli", `nationality`:"Italy", `slug`:"mario-balotelli-italy", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=48766", `weight`:"86.17kg"})
create (_477:`Team` {`uri`:"http://www.soccerbase.com/teams/team.sd?team_id=5158"})
create (_478:`Player` {`age`:21, `birthday`:"02 Mar, 1994", `birthplace`:"Belgrade, Serbia", `height`:"", `name`:"Lazar Markovic", `nationality`:"Serbia", `slug`:"lazar-markovic-serbia", `uri`:"http://www.soccerbase.com/players/player.sd?player_id=65154", `weight`:""})
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
create _3-[:`IN_TEAM` {`fee`:"Loan", `from`:"1998-12-27", `to`:"1999-12-26"}]->_429
create _3-[:`IN_TEAM` {`fee`:"Loan", `from`:"2001-12-30", `to`:"2001-12-30"}]->_382
create _3-[:`IN_TEAM` {`fee`:"Loan", `from`:"2008-12-28", `to`:"2009-12-27"}]->_2
create _4-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29", `to`:"2014-12-28"}]->_65
create _4-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2007-12-30"}]->_2
create _6-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2009-12-27"}]->_349
create _6-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2013-12-29"}]->_5
create _7-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2008-12-28"}]->_5
create _11-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2010-12-26"}]->_439
create _11-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2013-12-29"}]->_349
create _11-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2012-12-30"}]->_253
create _11-[:`IN_TEAM` {`fee`:"Signed", `from`:"1998-12-27", `to`:"2003-12-28"}]->_239
create _11-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2007-12-30"}]->_128
create _11-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30", `to`:"2013-12-29"}]->_10
create _12-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2012-01-01"}]->_334
create _12-[:`IN_TEAM` {`fee`:"Signed", `from`:"2001-12-30", `to`:"2002-12-29"}]->_293
create _12-[:`IN_TEAM` {`fee`:"Signed", `from`:"2002-12-29", `to`:"2012-12-30"}]->_10
create _14-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2012-12-30"}]->_300
create _14-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_277
create _14-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2010-12-26"}]->_254
create _14-[:`IN_TEAM` {`fee`:"Loan", `from`:"2007-12-30", `to`:"2007-12-30"}]->_13
create _16-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2009-12-27"}]->_46
create _16-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2010-12-26"}]->_15
create _17-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2006-01-01"}]->_15
create _19-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2006-12-31"}]->_439
create _19-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2007-12-30"}]->_211
create _19-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2006-01-01"}]->_53
create _19-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30", `to`:"2014-12-28"}]->_18
create _20-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2012-12-30"}]->_18
create _22-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2010-12-26"}]->_61
create _22-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2009-12-27"}]->_21
create _23-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2009-12-27"}]->_73
create _23-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2008-12-28"}]->_21
create _24-[:`IN_TEAM` {`fee`:"Signed", `from`:"2001-12-30", `to`:"2002-12-29"}]->_345
create _24-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2006-12-31"}]->_21
create _26-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2010-12-26"}]->_119
create _26-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2013-12-29"}]->_95
create _26-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-01-01"}]->_53
create _26-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-12-30"}]->_25
create _27-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2009-12-27"}]->_326
create _27-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2010-12-26"}]->_25
create _29-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2013-12-29"}]->_469
create _29-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2013-12-29"}]->_457
create _29-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30", `to`:"2013-12-29"}]->_443
create _29-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2009-12-27"}]->_366
create _29-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2013-12-29"}]->_177
create _29-[:`IN_TEAM` {`fee`:"Loan", `from`:"2007-12-30", `to`:"2007-12-30"}]->_98
create _29-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2006-01-01"}]->_77
create _29-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2010-12-26"}]->_49
create _29-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01", `to`:"2013-12-29"}]->_28
create _31-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2012-01-01"}]->_393
create _31-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2010-12-26"}]->_274
create _31-[:`IN_TEAM` {`fee`:"Loan", `from`:"2001-12-30", `to`:"2001-12-30"}]->_267
create _31-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2010-12-26"}]->_235
create _31-[:`IN_TEAM` {`fee`:"Signed", `from`:"2001-12-30", `to`:"2006-12-31"}]->_203
create _31-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2013-12-29"}]->_30
create _32-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2013-12-29"}]->_451
create _32-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-01-01"}]->_30
create _36-[:`IN_TEAM` {`fee`:"Signed", `from`:"2000-12-31", `to`:"2006-01-01"}]->_35
create _37-[:`IN_TEAM` {`fee`:"Signed", `from`:"2000-12-31", `to`:"2001-12-30"}]->_308
create _37-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2010-12-26"}]->_157
create _37-[:`IN_TEAM` {`fee`:"Signed", `from`:"1998-12-27", `to`:"2000-12-31"}]->_35
create _39-[:`IN_TEAM` {`fee`:"Signed", `from`:"2001-12-30", `to`:"2003-12-28"}]->_217
create _39-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2012-12-30"}]->_212
create _39-[:`IN_TEAM` {`fee`:"Signed", `from`:"2001-12-30", `to`:"2006-12-31"}]->_98
create _39-[:`IN_TEAM` {`fee`:"Loan", `from`:"2004-12-26", `to`:"2004-12-26"}]->_38
create _40-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2004-12-26"}]->_38
create _41-[:`IN_TEAM` {`fee`:"Signed", `from`:"2001-12-30", `to`:"2003-12-28"}]->_38
create _42-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2012-12-30"}]->_445
create _42-[:`IN_TEAM` {`fee`:"Loan", `from`:"2000-12-31", `to`:"2000-12-31"}]->_38
create _43-[:`IN_TEAM` {`fee`:"Signed", `from`:"2001-12-30", `to`:"2002-12-29"}]->_329
create _43-[:`IN_TEAM` {`fee`:"Signed", `from`:"2001-12-30", `to`:"2014-12-28"}]->_168
create _43-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2009-12-27"}]->_143
create _43-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2013-12-29"}]->_78
create _43-[:`IN_TEAM` {`fee`:"Signed", `from`:"1999-12-26", `to`:"2001-12-30"}]->_38
create _45-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2010-12-26"}]->_471
create _45-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2012-01-01"}]->_324
create _45-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2010-12-26"}]->_230
create _45-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_173
create _45-[:`IN_TEAM` {`fee`:"Loan", `from`:"2014-12-28", `to`:"2014-12-28"}]->_169
create _45-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2012-01-01"}]->_123
create _45-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2009-12-27"}]->_44
create _47-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2013-12-29"}]->_192
create _47-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01", `to`:"2012-12-30"}]->_149
create _47-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2012-12-30"}]->_46
create _48-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2007-12-30"}]->_46
create _51-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2013-12-29"}]->_274
create _51-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01", `to`:"2014-12-28"}]->_271
create _51-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2012-12-30"}]->_254
create _51-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2013-12-29"}]->_235
create _51-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2007-12-30"}]->_50
create _52-[:`IN_TEAM` {`fee`:"Signed", `from`:"2000-12-31", `to`:"2004-12-26"}]->_425
create _52-[:`IN_TEAM` {`fee`:"Loan", `from`:"2008-12-28", `to`:"2009-12-27"}]->_389
create _52-[:`IN_TEAM` {`fee`:"Loan", `from`:"1999-12-26", `to`:"1999-12-26"}]->_325
create _52-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2007-12-30"}]->_300
create _52-[:`IN_TEAM` {`fee`:"Signed", `from`:"2002-12-29", `to`:"2009-12-27"}]->_253
create _52-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2010-12-26"}]->_50
create _54-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2006-12-31"}]->_53
create _56-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30", `to`:"2013-12-29"}]->_476
create _56-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2010-12-26"}]->_150
create _56-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2012-12-30"}]->_55
create _57-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2012-12-30"}]->_349
create _57-[:`IN_TEAM` {`fee`:"Signed", `from`:"2002-12-29", `to`:"2003-12-28"}]->_345
create _57-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2012-01-01"}]->_326
create _57-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2007-12-30"}]->_132
create _57-[:`IN_TEAM` {`fee`:"Signed", `from`:"2002-12-29", `to`:"2003-12-28"}]->_55
create _59-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2006-12-31"}]->_104
create _59-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2006-01-01"}]->_58
create _62-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2013-12-29"}]->_410
create _62-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2010-12-26"}]->_397
create _62-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2009-12-27"}]->_370
create _62-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2010-12-26"}]->_359
create _62-[:`IN_TEAM` {`fee`:"Loan", `from`:"2007-12-30", `to`:"2008-12-28"}]->_297
create _62-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01", `to`:"2012-12-30"}]->_286
create _62-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-01-01", `to`:"2006-12-31"}]->_221
create _62-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2013-12-29"}]->_61
create _63-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2013-12-29"}]->_61
create _67-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-12-30"}]->_66
create _68-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2012-01-01"}]->_66
create _69-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2010-12-26"}]->_66
create _74-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2012-01-01"}]->_73
create _75-[:`IN_TEAM` {`fee`:"Loan", `from`:"2007-12-30", `to`:"2008-12-28"}]->_73
create _76-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2008-12-28"}]->_73
create _79-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2012-12-30"}]->_341
create _79-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2010-12-26"}]->_78
create _80-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-01-01", `to`:"2006-01-01"}]->_78
create _81-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2006-01-01"}]->_78
create _83-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2013-12-29"}]->_472
create _83-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2010-12-26"}]->_456
create _83-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2012-12-30"}]->_434
create _83-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2012-01-01"}]->_393
create _83-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2009-12-27"}]->_297
create _83-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-12-30"}]->_264
create _83-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-12-31", `to`:"2006-12-31"}]->_184
create _83-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2010-12-26"}]->_82
create _84-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2007-12-30"}]->_429
create _84-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2010-12-26"}]->_286
create _84-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01", `to`:"2012-01-01"}]->_98
create _84-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2009-12-27"}]->_82
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
create _88-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-12-30"}]->_398
create _88-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-01-01"}]->_286
create _88-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2012-12-30"}]->_87
create _91-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2013-12-29"}]->_465
create _91-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2006-12-31"}]->_374
create _91-[:`IN_TEAM` {`fee`:"Loan", `from`:"2004-12-26", `to`:"2004-12-26"}]->_267
create _91-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2013-12-29"}]->_266
create _91-[:`IN_TEAM` {`fee`:"Loan", `from`:"1999-12-26", `to`:"1999-12-26"}]->_198
create _91-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2013-12-29"}]->_191
create _91-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2013-12-29"}]->_190
create _91-[:`IN_TEAM` {`fee`:"Loan", `from`:"2008-12-28", `to`:"2009-12-27"}]->_90
create _92-[:`IN_TEAM` {`fee`:"Signed", `from`:"1997-12-28", `to`:"1999-12-26"}]->_469
create _92-[:`IN_TEAM` {`fee`:"Loan", `from`:"2002-12-29", `to`:"2002-12-29"}]->_432
create _92-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_393
create _92-[:`IN_TEAM` {`fee`:"Loan", `from`:"2007-12-30", `to`:"2007-12-30"}]->_300
create _92-[:`IN_TEAM` {`fee`:"Loan", `from`:"2014-12-28", `to`:"2014-12-28"}]->_196
create _92-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2013-12-29"}]->_191
create _92-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-12-31", `to`:"2006-12-31"}]->_90
create _93-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2008-12-28"}]->_382
create _93-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-12-31", `to`:"2006-12-31"}]->_90
create _94-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2014-12-28"}]->_392
create _94-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2008-12-28"}]->_300
create _94-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2010-12-26"}]->_226
create _94-[:`IN_TEAM` {`fee`:"Signed", `from`:"2002-12-29", `to`:"2006-01-01"}]->_90
create _96-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2010-12-26"}]->_95
create _97-[:`IN_TEAM` {`fee`:"Signed", `from`:"2002-12-29", `to`:"2003-12-28"}]->_95
create _99-[:`IN_TEAM` {`fee`:"Signed", `from`:"1995-01-01", `to`:"2000-12-31"}]->_98
create _100-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2012-01-01"}]->_400
create _100-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2009-12-27"}]->_393
create _100-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-12-31", `to`:"2007-12-30"}]->_324
create _100-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2013-12-29"}]->_238
create _100-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2010-12-26"}]->_98
create _101-[:`IN_TEAM` {`fee`:"Signed", `from`:"2000-12-31", `to`:"2002-12-29"}]->_438
create _101-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26"}]->_422
create _101-[:`IN_TEAM` {`fee`:"Signed", `from`:"1997-12-28", `to`:"2003-12-28"}]->_198
create _101-[:`IN_TEAM` {`fee`:"Signed", `from`:"1991-12-29", `to`:"2000-12-31"}]->_135
create _101-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2007-12-30"}]->_98
create _103-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2012-12-30"}]->_102
create _106-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2007-12-30"}]->_105
create _107-[:`IN_TEAM` {`fee`:"Signed", `from`:"2002-12-29", `to`:"2006-01-01"}]->_105
create _109-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-01-01"}]->_453
create _109-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2007-12-30"}]->_108
create _110-[:`IN_TEAM` {`fee`:"Signed", `from`:"2001-12-30", `to`:"2004-12-26"}]->_108
create _112-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2009-12-27"}]->_111
create _113-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2006-12-31"}]->_111
create _115-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2010-12-26"}]->_215
create _115-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2013-12-29"}]->_127
create _115-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2013-12-29"}]->_114
create _116-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2007-12-30"}]->_212
create _116-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2010-12-26"}]->_114
create _118-[:`IN_TEAM` {`fee`:"Signed", `from`:"2000-12-31", `to`:"2002-12-29"}]->_117
create _120-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_447
create _120-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2013-12-29"}]->_352
create _120-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2013-12-29"}]->_320
create _120-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2012-01-01"}]->_311
create _120-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-12-30"}]->_215
create _120-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2010-12-26"}]->_164
create _120-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2010-12-26"}]->_159
create _120-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30", `to`:"2012-12-30"}]->_119
create _121-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01", `to`:"2012-12-30"}]->_460
create _121-[:`IN_TEAM` {`fee`:"Signed", `from`:"2001-12-30", `to`:"2010-12-26"}]->_119
create _122-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2008-12-28"}]->_215
create _122-[:`IN_TEAM` {`fee`:"Signed", `from`:"2001-12-30", `to`:"2001-12-30"}]->_119
create _124-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-12-30"}]->_123
create _125-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2008-12-28"}]->_123
create _129-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2009-12-27"}]->_389
create _129-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2007-12-30"}]->_324
create _129-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2013-12-29"}]->_300
create _129-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-12-31", `to`:"2007-12-30"}]->_221
create _129-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2010-12-26"}]->_203
create _129-[:`IN_TEAM` {`fee`:"Loan", `from`:"2004-12-26", `to`:"2006-01-01"}]->_128
create _130-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-12-30"}]->_410
create _130-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-12-30"}]->_380
create _130-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-01-01"}]->_286
create _130-[:`IN_TEAM` {`fee`:"Loan", `from`:"1998-12-27", `to`:"1998-12-27"}]->_198
create _130-[:`IN_TEAM` {`fee`:"Loan", `from`:"2002-12-29", `to`:"2002-12-29"}]->_128
create _131-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01", `to`:"2012-12-30"}]->_284
create _131-[:`IN_TEAM` {`fee`:"Loan", `from`:"2002-12-29", `to`:"2003-12-28"}]->_267
create _131-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01"}]->_256
create _131-[:`IN_TEAM` {`fee`:"Signed", `from`:"2002-12-29", `to`:"2004-12-26"}]->_221
create _131-[:`IN_TEAM` {`fee`:"Signed", `from`:"2000-12-31", `to`:"2003-12-28"}]->_128
create _134-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01", `to`:"2013-12-29"}]->_446
create _134-[:`IN_TEAM` {`fee`:"Signed", `from`:"2002-12-29", `to`:"2012-12-30"}]->_133
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
create _137-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2010-12-26"}]->_472
create _137-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2012-01-01"}]->_462
create _137-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-01-01", `to`:"2006-12-31"}]->_374
create _137-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30", `to`:"2014-12-28"}]->_157
create _137-[:`IN_TEAM` {`fee`:"Loan", `from`:"1995-01-01", `to`:"1995-12-31"}]->_135
create _139-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2010-12-26"}]->_194
create _139-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2009-12-27"}]->_138
create _140-[:`IN_TEAM` {`fee`:"Loan", `from`:"2004-12-26", `to`:"2004-12-26"}]->_439
create _140-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-12-31", `to`:"2007-12-30"}]->_352
create _140-[:`IN_TEAM` {`fee`:"Loan", `from`:"2004-12-26", `to`:"2006-01-01"}]->_138
create _142-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2012-12-30"}]->_338
create _142-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2012-12-30"}]->_141
create _144-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30", `to`:"2014-12-28"}]->_248
create _144-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2006-12-31"}]->_143
create _145-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2004-12-26"}]->_143
create _146-[:`IN_TEAM` {`fee`:"Signed", `from`:"2000-12-31", `to`:"2003-12-28"}]->_143
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
create _153-[:`IN_TEAM` {`fee`:"Loan", `from`:"2004-12-26", `to`:"2004-12-26"}]->_366
create _153-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-12-31", `to`:"2006-12-31"}]->_286
create _153-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2010-12-26"}]->_169
create _153-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2012-01-01"}]->_150
create _155-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2010-12-26"}]->_154
create _156-[:`IN_TEAM` {`fee`:"Signed", `from`:"2002-12-29", `to`:"2004-12-26"}]->_154
create _158-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2010-12-26"}]->_336
create _158-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2012-12-30"}]->_315
create _158-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-12-30"}]->_157
create _161-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-12-30"}]->_341
create _161-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2012-12-30"}]->_160
create _162-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-12-30"}]->_478
create _162-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2007-12-30"}]->_160
create _166-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2010-12-26"}]->_165
create _167-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2009-12-27"}]->_165
create _170-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2013-12-29"}]->_169
create _171-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2010-12-26"}]->_297
create _171-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_238
create _171-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-12-30"}]->_169
create _172-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2010-12-26"}]->_363
create _172-[:`IN_TEAM` {`fee`:"Loan", `from`:"2008-12-28", `to`:"2008-12-28"}]->_169
create _174-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-01-01", `to`:"2006-01-01"}]->_286
create _174-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2014-12-28"}]->_173
create _176-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2007-12-30"}]->_175
create _179-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2010-12-26"}]->_178
create _181-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01", `to`:"2013-12-29"}]->_180
create _182-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-01-01"}]->_180
create _183-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2009-12-27"}]->_180
create _186-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_392
create _186-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2009-12-27"}]->_389
create _186-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2013-12-29"}]->_278
create _186-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2009-12-27"}]->_185
create _188-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-12-30"}]->_187
create _193-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30", `to`:"2013-12-29"}]->_478
create _193-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2013-12-29"}]->_336
create _193-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2009-12-27"}]->_330
create _193-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2009-12-27"}]->_192
create _195-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2006-12-31"}]->_194
create _199-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2007-12-30"}]->_398
create _199-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2006-01-01"}]->_198
create _201-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2009-12-27"}]->_200
create _202-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2013-12-29"}]->_200
create _205-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2013-12-29"}]->_204
create _206-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2010-12-26"}]->_267
create _206-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2010-12-26"}]->_204
create _208-[:`IN_TEAM` {`fee`:"Loan", `from`:"2008-12-28", `to`:"2009-12-27"}]->_297
create _208-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2008-12-28"}]->_285
create _208-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2014-12-28"}]->_207
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
create _214-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01", `to`:"2013-12-29"}]->_213
create _216-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30"}]->_215
create _219-[:`IN_TEAM` {`fee`:"Signed", `from`:"2000-12-31", `to`:"2003-12-28"}]->_218
create _222-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-12-30"}]->_221
create _223-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2012-01-01"}]->_389
create _223-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30", `to`:"2012-12-30"}]->_358
create _223-[:`IN_TEAM` {`fee`:"Loan", `from`:"2008-12-28", `to`:"2008-12-28"}]->_293
create _223-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2010-12-26"}]->_254
create _223-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2010-12-26"}]->_221
create _224-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-01-01", `to`:"2006-01-01"}]->_432
create _224-[:`IN_TEAM` {`fee`:"Signed", `from`:"2002-12-29", `to`:"2003-12-28"}]->_300
create _224-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2009-12-27"}]->_286
create _224-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2010-12-26"}]->_226
create _224-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-01-01", `to`:"2006-01-01"}]->_221
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
create _227-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-12-30"}]->_468
create _227-[:`IN_TEAM` {`fee`:"Loan", `from`:"2004-12-26", `to`:"2004-12-26"}]->_366
create _227-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2010-12-26"}]->_285
create _227-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-12-30"}]->_266
create _227-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-12-30"}]->_226
create _228-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-01-01"}]->_226
create _229-[:`IN_TEAM` {`fee`:"Loan", `from`:"2007-12-30", `to`:"2007-12-30"}]->_417
create _229-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2009-12-27"}]->_226
create _231-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2008-12-28"}]->_403
create _231-[:`IN_TEAM` {`fee`:"Loan", `from`:"2007-12-30", `to`:"2007-12-30"}]->_397
create _231-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2009-12-27"}]->_374
create _231-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2012-01-01"}]->_366
create _231-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2008-12-28"}]->_359
create _231-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2013-12-29"}]->_230
create _232-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2006-01-01"}]->_335
create _232-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2006-01-01"}]->_230
create _236-[:`IN_TEAM` {`fee`:"Loan", `from`:"2004-12-26", `to`:"2006-01-01"}]->_235
create _237-[:`IN_TEAM` {`fee`:"Signed", `from`:"1999-12-26", `to`:"2009-12-27"}]->_432
create _237-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2008-12-28"}]->_417
create _237-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2013-12-29"}]->_314
create _237-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2010-12-26"}]->_235
create _240-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2009-12-27"}]->_293
create _240-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2009-12-27"}]->_239
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
create _247-[:`IN_TEAM` {`fee`:"Loan", `from`:"2007-12-30", `to`:"2008-12-28"}]->_417
create _247-[:`IN_TEAM` {`fee`:"Signed", `from`:"2001-12-30", `to`:"2006-12-31"}]->_254
create _247-[:`IN_TEAM` {`fee`:"Signed", `from`:"1997-12-28", `to`:"2003-12-28"}]->_245
create _249-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2012-12-30"}]->_248
create _251-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2013-12-29"}]->_468
create _251-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2013-12-29"}]->_250
create _252-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2010-12-26"}]->_250
create _255-[:`IN_TEAM` {`fee`:"Loan", `from`:"2003-12-28", `to`:"2004-12-26"}]->_254
create _257-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-12-31", `to`:"2006-12-31"}]->_457
create _257-[:`IN_TEAM` {`fee`:"Loan", `from`:"2007-12-30", `to`:"2007-12-30"}]->_420
create _257-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2010-12-26"}]->_410
create _257-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2013-12-29"}]->_403
create _257-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30", `to`:"2012-12-30"}]->_374
create _257-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2010-12-26"}]->_256
create _258-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-01-01", `to`:"2006-12-31"}]->_366
create _258-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-12-31", `to`:"2006-12-31"}]->_256
create _260-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2010-12-26"}]->_259
create _263-[:`IN_TEAM` {`fee`:"Loan", `from`:"2003-12-28", `to`:"2004-12-26"}]->_324
create _263-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2012-12-30"}]->_262
create _265-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2010-12-26"}]->_264
create _268-[:`IN_TEAM` {`fee`:"Signed", `from`:"2002-12-29", `to`:"2006-12-31"}]->_286
create _268-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-12-30"}]->_267
create _269-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2009-12-27"}]->_267
create _270-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2010-12-26"}]->_425
create _270-[:`IN_TEAM` {`fee`:"Signed", `from`:"1997-12-28", `to`:"1998-12-27"}]->_267
create _272-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2012-01-01"}]->_271
create _275-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2014-12-28"}]->_285
create _275-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2008-12-28"}]->_274
create _276-[:`IN_TEAM` {`fee`:"Signed", `from`:"1999-12-26", `to`:"2006-12-31"}]->_274
create _279-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2013-12-29"}]->_278
create _280-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2010-12-26"}]->_278
create _287-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2012-01-01"}]->_420
create _287-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01", `to`:"2013-12-29"}]->_363
create _287-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-01-01"}]->_286
create _288-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-12-30"}]->_425
create _288-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2010-12-26"}]->_286
create _289-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2009-12-27"}]->_463
create _289-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2012-01-01"}]->_429
create _289-[:`IN_TEAM` {`fee`:"Signed", `from`:"2013-12-29"}]->_394
create _289-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30", `to`:"2013-12-29"}]->_349
create _289-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-01-01", `to`:"2006-01-01"}]->_286
create _290-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-12-31", `to`:"2007-12-30"}]->_286
create _291-[:`IN_TEAM` {`fee`:"Loan", `from`:"2003-12-28", `to`:"2003-12-28"}]->_286
create _294-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2010-12-26"}]->_293
create _295-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-12-31", `to`:"2008-12-28"}]->_293
create _296-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2006-12-31"}]->_293
create _298-[:`IN_TEAM` {`fee`:"Loan", `from`:"2001-12-30", `to`:"2001-12-30"}]->_438
create _298-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2010-12-26"}]->_429
create _298-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-12-30"}]->_397
create _298-[:`IN_TEAM` {`fee`:"Signed", `from`:"2000-12-31"}]->_387
create _298-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2010-12-26"}]->_359
create _298-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2012-12-30"}]->_297
create _301-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2013-12-29"}]->_300
create _302-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2006-01-01"}]->_469
create _302-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-01-01"}]->_422
create _302-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2006-01-01"}]->_300
create _303-[:`IN_TEAM` {`fee`:"Loan", `from`:"2000-12-31", `to`:"2000-12-31"}]->_300
create _304-[:`IN_TEAM` {`fee`:"Signed", `from`:"1998-12-27", `to`:"2000-12-31"}]->_300
create _305-[:`IN_TEAM` {`fee`:"Signed", `from`:"1998-12-27", `to`:"1998-12-27"}]->_300
create _309-[:`IN_TEAM` {`fee`:"Signed", `from`:"2001-12-30", `to`:"2003-12-28"}]->_308
create _310-[:`IN_TEAM` {`fee`:"Signed", `from`:"1999-12-26", `to`:"2000-12-31"}]->_308
create _312-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2010-12-26"}]->_311
create _317-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2014-12-28"}]->_394
create _317-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-01-01"}]->_359
create _317-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2012-12-30"}]->_316
create _319-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2007-12-30"}]->_318
create _321-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2009-12-27"}]->_320
create _323-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2013-12-29"}]->_322
create _332-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2012-01-01"}]->_331
create _333-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2009-12-27"}]->_331
create _337-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28"}]->_336
create _339-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30", `to`:"2012-12-30"}]->_338
create _340-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2006-12-31"}]->_338
create _342-[:`IN_TEAM` {`fee`:"Loan", `from`:"2010-12-26", `to`:"2012-01-01"}]->_341
create _346-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30", `to`:"2013-12-29"}]->_345
create _347-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01", `to`:"2012-12-30"}]->_345
create _348-[:`IN_TEAM` {`fee`:"Signed", `from`:"1997-12-28", `to`:"2001-12-30"}]->_345
create _350-[:`IN_TEAM` {`fee`:"Loan", `from`:"2007-12-30", `to`:"2007-12-30"}]->_349
create _351-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2012-12-30"}]->_443
create _351-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2007-12-30"}]->_349
create _353-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-01-01"}]->_352
create _354-[:`IN_TEAM` {`fee`:"Loan", `from`:"2008-12-28", `to`:"2009-12-27"}]->_352
create _355-[:`IN_TEAM` {`fee`:"Loan", `from`:"2007-12-30", `to`:"2008-12-28"}]->_352
create _356-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-12-31", `to`:"2006-12-31"}]->_352
create _360-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2006-01-01"}]->_425
create _360-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2013-12-29"}]->_359
create _361-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-01-01"}]->_422
create _361-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2014-12-28"}]->_420
create _361-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2012-12-30"}]->_359
create _362-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2010-12-26"}]->_359
create _364-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2009-12-27"}]->_414
create _364-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2012-01-01"}]->_405
create _364-[:`IN_TEAM` {`fee`:"Loan", `from`:"2003-12-28", `to`:"2004-12-26"}]->_363
create _365-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-12-31", `to`:"2007-12-30"}]->_398
create _365-[:`IN_TEAM` {`fee`:"Signed", `from`:"1997-12-28", `to`:"2000-12-31"}]->_389
create _365-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2012-12-30"}]->_382
create _365-[:`IN_TEAM` {`fee`:"Signed", `from`:"2001-12-30", `to`:"2004-12-26"}]->_363
create _367-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2012-12-30"}]->_422
create _367-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-01-01", `to`:"2006-01-01"}]->_410
create _367-[:`IN_TEAM` {`fee`:"Loan", `from`:"2003-12-28", `to`:"2004-12-26"}]->_387
create _367-[:`IN_TEAM` {`fee`:"Loan", `from`:"2007-12-30", `to`:"2007-12-30"}]->_366
create _368-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2008-12-28"}]->_469
create _368-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-01-01"}]->_366
create _371-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-12-30"}]->_370
create _372-[:`IN_TEAM` {`fee`:"Loan", `from`:"2008-12-28", `to`:"2009-12-27"}]->_370
create _373-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2006-12-31"}]->_370
create _378-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2012-12-30"}]->_431
create _378-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2012-12-30"}]->_422
create _378-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2013-12-29"}]->_395
create _378-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2013-12-29"}]->_377
create _381-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2010-12-26"}]->_380
create _383-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-01-01"}]->_429
create _383-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01", `to`:"2013-12-29"}]->_405
create _383-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30", `to`:"2013-12-29"}]->_382
create _384-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2003-12-28"}]->_429
create _384-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2012-12-30"}]->_410
create _384-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2010-12-26"}]->_398
create _384-[:`IN_TEAM` {`fee`:"Signed", `from`:"1997-12-28", `to`:"2004-12-26"}]->_393
create _384-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-01-01", `to`:"2006-12-31"}]->_382
create _385-[:`IN_TEAM` {`fee`:"Loan", `from`:"2004-12-26", `to`:"2004-12-26"}]->_425
create _385-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2006-01-01"}]->_382
create _386-[:`IN_TEAM` {`fee`:"Signed", `from`:"1997-12-28", `to`:"2003-12-28"}]->_429
create _386-[:`IN_TEAM` {`fee`:"Signed", `from`:"2002-12-29", `to`:"2003-12-28"}]->_382
create _388-[:`IN_TEAM` {`fee`:"Loan", `from`:"2000-12-31", `to`:"2001-12-30"}]->_387
create _390-[:`IN_TEAM` {`fee`:"Loan", `from`:"2009-12-27", `to`:"2009-12-27"}]->_429
create _390-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2013-12-29"}]->_414
create _390-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2013-12-29"}]->_393
create _390-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30", `to`:"2013-12-29"}]->_389
create _391-[:`IN_TEAM` {`fee`:"Signed", `from`:"2000-12-31", `to`:"2007-12-30"}]->_389
create _401-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2007-12-30"}]->_400
create _402-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2006-01-01"}]->_400
create _404-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30", `to`:"2013-12-29"}]->_407
create _404-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2010-12-26"}]->_403
create _406-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2013-12-29"}]->_405
create _409-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2013-12-29"}]->_408
create _415-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-12-31", `to`:"2006-12-31"}]->_414
create _416-[:`IN_TEAM` {`fee`:"Loan", `from`:"2002-12-29", `to`:"2002-12-29"}]->_432
create _416-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-12-30", `to`:"2013-12-29"}]->_420
create _416-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2010-12-26"}]->_414
create _418-[:`IN_TEAM` {`fee`:"Signed", `from`:"2009-12-27", `to`:"2012-12-30"}]->_417
create _419-[:`IN_TEAM` {`fee`:"Loan", `from`:"2007-12-30", `to`:"2007-12-30"}]->_462
create _419-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-01-01"}]->_436
create _419-[:`IN_TEAM` {`fee`:"Loan", `from`:"2006-01-01", `to`:"2006-01-01"}]->_417
create _421-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2009-12-27"}]->_420
create _423-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2013-12-29"}]->_422
create _424-[:`IN_TEAM` {`fee`:"Signed", `from`:"2008-12-28", `to`:"2010-12-26"}]->_422
create _426-[:`IN_TEAM` {`fee`:"Loan", `from`:"2012-01-01", `to`:"2012-12-30"}]->_425
create _427-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2008-12-28"}]->_425
create _428-[:`IN_TEAM` {`fee`:"Loan", `from`:"2003-12-28", `to`:"2004-12-26"}]->_425
create _430-[:`IN_TEAM` {`fee`:"Loan", `from`:"2013-12-29", `to`:"2014-12-28"}]->_429
create _433-[:`IN_TEAM` {`fee`:"Signed", `from`:"2001-12-30", `to`:"2004-12-26"}]->_469
create _433-[:`IN_TEAM` {`fee`:"Loan", `from`:"2001-12-30", `to`:"2002-12-29"}]->_432
create _435-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2009-12-27"}]->_434
create _437-[:`IN_TEAM` {`fee`:"Loan", `from`:"2014-12-28", `to`:"2014-12-28"}]->_436
create _440-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2004-12-26"}]->_439
create _442-[:`IN_TEAM` {`fee`:"Signed", `from`:"1999-12-26", `to`:"2001-12-30"}]->_441
create _444-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2008-12-28"}]->_443
create _449-[:`IN_TEAM` {`fee`:"Signed", `from`:"2003-12-28", `to`:"2007-12-30"}]->_448
create _454-[:`IN_TEAM` {`fee`:"Loan", `from`:"2008-12-28", `to`:"2009-12-27"}]->_453
create _455-[:`IN_TEAM` {`fee`:"Signed", `from`:"2006-01-01", `to`:"2009-12-27"}]->_476
create _455-[:`IN_TEAM` {`fee`:"Signed", `from`:"2007-12-30", `to`:"2012-12-30"}]->_453
create _459-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2006-12-31"}]->_458
create _461-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-01-01", `to`:"2012-01-01"}]->_475
create _461-[:`IN_TEAM` {`fee`:"Signed", `from`:"2012-12-30", `to`:"2013-12-29"}]->_460
create _466-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-01-01"}]->_465
create _470-[:`IN_TEAM` {`fee`:"Signed", `from`:"2000-12-31", `to`:"2001-12-30"}]->_469
create _473-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2012-01-01"}]->_472
create _474-[:`IN_TEAM` {`fee`:"Signed", `from`:"2010-12-26", `to`:"2010-12-26"}]->_472
create _477-[:`IN_TEAM` {`fee`:"Signed", `from`:"2004-12-26", `to`:"2006-01-01"}]->_476
;
commit
