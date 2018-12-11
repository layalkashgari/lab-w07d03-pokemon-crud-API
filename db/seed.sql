DROP DATABASE IF EXISTS poke_pedia;
CREATE DATABASE poke_pedia;
\c poke_pedia

CREATE TABLE pokemon(
  id serial primary key, 
  name varchar, 
  type1 varchar, 
  type2 varchar, 
  hitpoints int,
  attack int,
  defense int,
  speed int, 
  legendary boolean,
  img varchar
);

INSERT INTO pokemon(name, type1, type2, hitpoints, attack, defense, speed, legendary, img) VALUES
('Bulbasaur','Grass','Poison',45,49,49,45,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891758-001bulbasaur.png'),
('Ivysaur','Grass','Poison',60,62,63,60,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891759-002ivysaur.png'),
('Venusaur','Grass','Poison',80,82,83,80,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891760-003venusaur.png'),
('Charmander','Fire','',39,52,43,65,false,'https://static.giantbomb.com/uploads/scale_small/0/6087/2438704-1202149925_t.png'),
('Charmeleon','Fire','',58,64,58,80,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891762-005charmeleon.png'),
('Charizard','Fire','Flying',78,84,78,100,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891763-006charizard.png'),
('Squirtle','Water','',44,48,65,43,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891764-007squirtle.png'),
('Wartortle','Water','',59,63,80,58,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891809-008wartortle.png'),
('Blastoise','Water','',79,83,100,78,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891810-009blastoise.png'),
('Caterpie','Bug','',45,30,35,45,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892132-010caterpie.png'),
('Metapod','Bug','',50,20,55,30,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1895815-011metapod.png'),
('Butterfree','Bug','Flying',60,45,50,70,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892298-012butterfree.png'),
('Weedle','Bug','Poison',40,35,30,50,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891817-013weedle.png'),
('Kakuna','Bug','Poison',45,25,50,35,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891818-014kakuna.png'),
('Beedrill','Bug','Poison',65,90,40,75,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891819-015beedrill.png'),
('Pidgey','Normal','Flying',40,45,40,56,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891631-016pidgey.png'),
('Pidgeotto','Normal','Flying',63,60,55,71,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891820-017pidgeotto.png'),
('Pidgeot','Normal','Flying',83,80,75,101,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891821-018pidgeot.png'),
('Rattata','Normal','',30,56,35,72,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898244-019rattata.png'),
('Raticate','Normal','',55,81,60,97,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898245-020raticate.png'),
('Spearow','Normal','Flying',40,60,30,70,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898246-021spearow.png'),
('Fearow','Normal','Flying',65,90,65,100,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898247-022fearow.png'),
('Ekans','Poison','',35,60,44,55,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898239-023ekans.png'),
('Arbok','Poison','',60,85,69,80,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1895870-024arbok.png'),
('Pikachu','Electric','',35,55,40,90,false,'https://static.giantbomb.com/uploads/scale_small/0/6087/2437349-pikachu.png'),
('Raichu','Electric','',60,90,55,110,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898248-026raichu.png'),
('Sandshrew','Ground','',50,75,85,40,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891822-027sandshrew.png'),
('Sandslash','Ground','',75,100,110,65,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891682-028sandslash.png'),
('Nidoran♀','Poison','',55,47,52,41,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898252-029nidoran.png'),
('Nidorina','Poison','',70,62,67,56,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898253-030nidorina.png'),
('Nidoqueen','Poison','Ground',90,92,87,76,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898254-031nidoqueen.png'),
('Nidoran♂','Poison','',46,57,40,50,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898249-032nidoran.png'),
('Nidorino','Poison','',61,72,57,65,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898250-033nidorino.png'),
('Nidoking','Poison','Ground',81,102,77,85,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898251-034nidoking.png'),
('Clefairy','Fairy','',70,45,48,35,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898255-035clefairy.png'),
('Clefable','Fairy','',95,70,73,60,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898256-036clefable.png'),
('Vulpix','Fire','',38,41,40,65,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891638-037vulpix.png'),
('Ninetales','Fire','',73,76,75,100,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891823-038ninetales.png'),
('Jigglypuff','Normal','Fairy',115,45,20,20,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892299-039jigglypuff.png'),
('Wigglytuff','Normal','Fairy',140,70,45,45,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891680-040wigglytuff.png'),
('Zubat','Poison','Flying',40,45,35,55,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891824-041zubat.png'),
('Golbat','Poison','Flying',75,80,70,90,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891826-042golbat.png'),
('Oddish','Grass','Poison',45,50,55,30,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891711-043oddish.png'),
('Gloom','Grass','Poison',60,65,70,40,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898257-044gloom.png'),
('Vileplume','Grass','Poison',75,80,85,50,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898258-045vileplume.png'),
('Paras','Bug','Grass',35,70,55,25,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898259-046paras.png'),
('Parasect','Bug','Grass',60,95,80,30,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898260-047parasect.png'),
('Venonat','Bug','Poison',60,55,50,45,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892300-048venonat.png'),
('Venomoth','Bug','Poison',70,65,60,90,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892301-049venomoth.png'),
('Diglett','Ground','',10,55,25,95,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892133-050diglett.png'),
('Dugtrio','Ground','',35,80,50,120,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1894634-051dugtrio.png'),
('Meowth','Normal','',40,45,35,90,false,'https://static.giantbomb.com/uploads/scale_small/2/26507/948297-meowth.jpg'),
('Persian','Normal','',65,70,60,115,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898262-053persian.png'),
('Psyduck','Water','',50,52,48,55,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892134-054psyduck.png'),
('Golduck','Water','',80,82,78,85,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892302-055golduck.png'),
('Mankey','Fighting','',40,80,35,70,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892135-056mankey.png'),
('Primeape','Fighting','',65,105,60,95,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892055-057primeape.png'),
('Growlithe','Fire','',55,70,45,60,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891827-058growlithe.png'),
('Arcanine','Fire','',90,110,80,95,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891828-059arcanine.png'),
('Poliwag','Water','',40,50,40,90,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891829-060poliwag.png'),
('Poliwhirl','Water','',65,65,65,90,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891830-061poliwhirl.png'),
('Poliwrath','Water','Fighting',90,95,95,70,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891831-062poliwrath.png'),
('Abra','Psychic','',25,20,15,90,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891834-063abra.png'),
('Kadabra','Psychic','',40,35,30,105,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891835-064kadabra.png'),
('Alakazam','Psychic','',55,50,45,120,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891836-065alakazam.png'),
('Machop','Fighting','',70,80,50,35,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892303-066machop.png'),
('Machoke','Fighting','',80,100,70,45,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892304-067machoke.png'),
('Machamp','Fighting','',90,130,80,55,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892305-068machamp.png'),
('Bellsprout','Grass','Poison',50,75,35,40,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898263-069bellsprout.png'),
('Weepinbell','Grass','Poison',65,90,50,55,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898264-070weepinbell.png'),
('Victreebel','Grass','Poison',80,105,65,70,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898265-071victreebel.png'),
('Tentacool','Water','Poison',40,40,35,70,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892306-072tentacool.png'),
('Tentacruel','Water','Poison',80,70,65,100,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892307-073tentacruel.png'),
('Geodude','Rock','Ground',40,80,100,20,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898243-074geodude.png'),
('Graveler','Rock','Ground',55,95,115,35,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898242-075graveler.png'),
('Golem','Rock','Ground',80,120,130,45,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892308-076golem.png'),
('Ponyta','Fire','',50,85,55,90,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892309-077ponyta.png'),
('Rapidash','Fire','',65,100,70,105,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892310-078rapidash.png'),
('Slowpoke','Water','Psychic',90,65,65,15,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892136-079slowpoke.png'),
('Slowbro','Water','Psychic',95,75,110,30,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892311-080slowbro.png'),
('Magnemite','Electric','Steel',25,35,70,45,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892312-081magnemite.png'),
('Magneton','Electric','Steel',50,60,95,70,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892313-082magneton.png'),
('Farfetchd','Normal','Flying',52,65,55,60,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891838-083farfetch_d.png'),
('Doduo','Normal','Flying',35,85,45,75,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892314-084doduo.png'),
('Dodrio','Normal','Flying',60,110,70,100,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892315-085dodrio.png'),
('Seel','Water','',65,45,55,45,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892316-086seel.png'),
('Dewgong','Water','Ice',90,70,80,70,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892317-087dewgong.png'),
('Grimer','Poison','',80,80,50,25,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898266-088grimer.png'),
('Muk','Poison','',105,105,75,50,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892056-089muk.png'),
('Shellder','Water','',30,65,100,40,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892137-090shellder.png'),
('Cloyster','Water','Ice',50,95,180,70,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892318-091cloyster.png'),
('Gastly','Ghost','Poison',30,35,30,80,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891839-092gastly.png'),
('Haunter','Ghost','Poison',45,50,45,95,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891840-093haunter.png'),
('Gengar','Ghost','Poison',60,65,60,110,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891841-094gengar.png'),
('Onix','Rock','Ground',35,45,160,70,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891842-095onix.png'),
('Drowzee','Psychic','',60,48,45,42,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898267-096drowzee.png'),
('Hypno','Psychic','',85,73,70,67,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898268-097hypno.png'),
('Krabby','Water','',30,105,90,50,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891843-098krabby.png'),
('Kingler','Water','',55,130,115,75,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891844-099kingler.png'),
('Voltorb','Electric','',40,30,50,100,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892678-100voltorb.png'),
('Electrode','Electric','',60,50,70,140,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892679-101electrode.png'),
('Exeggcute','Grass','Psychic',60,40,80,40,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898269-102exeggcute.png'),
('Exeggutor','Grass','Psychic',95,95,85,55,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898270-103exeggutor.png'),
('Cubone','Ground','',50,50,95,35,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891845-104cubone.png'),
('Marowak','Ground','',60,80,110,45,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891846-105marowak.png'),
('Hitmonlee','Fighting','',50,120,53,87,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892680-106hitmonlee.png'),
('Hitmonchan','Fighting','',50,105,79,76,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892681-107hitmonchan.png'),
('Lickitung','Normal','',90,55,75,30,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898271-108lickitung.png'),
('Koffing','Poison','',40,65,95,35,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892138-109koffing.png'),
('Weezing','Poison','',65,90,120,60,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898274-110weezing.png'),
('Rhyhorn','Ground','Rock',80,85,95,25,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892682-111rhyhorn.png'),
('Rhydon','Ground','Rock',105,130,120,40,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892683-112rhydon.png'),
('Chansey','Normal','',250,5,5,50,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892684-113chansey.png'),
('Tangela','Grass','',65,55,115,60,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898275-114tangela.png'),
('Kangaskhan','Normal','',105,95,80,90,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898276-115kangaskhan.png'),
('Horsea','Water','',30,40,70,60,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891847-116horsea.png'),
('Seadra','Water','',55,65,95,85,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891849-117seadra.png'),
('Goldeen','Water','',45,67,60,63,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898280-118goldeen.png'),
('Seaking','Water','',80,92,65,68,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898282-119seaking.png'),
('Staryu','Water','',30,45,55,85,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892685-120staryu.png'),
('Starmie','Water','Psychic',60,75,85,115,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892686-121starmie.png'),
('Mr. Mime','Psychic','Fairy',40,45,65,90,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898289-122mr._mime.png'),
('Scyther','Bug','Flying',70,110,80,105,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891850-123scyther.png'),
('Jynx','Ice','Psychic',65,50,35,95,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898290-124jynx.png'),
('Electabuzz','Electric','',65,83,57,105,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892687-125electabuzz.png'),
('Magmar','Fire','',65,95,57,93,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1895802-126magmar.png'),
('Pinsir','Bug','',65,125,100,85,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891851-127pinsir.png'),
('Tauros','Normal','',75,100,95,110,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891852-128tauros.png'),
('Magikarp','Water','',20,10,55,80,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898291-129magikarp.png'),
('Gyarados','Water','Flying',95,125,79,81,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891635-130gyarados.png'),
('Lapras','Water','Ice',130,85,80,60,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891870-131lapras.png'),
('Ditto','Normal','',48,48,48,48,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891871-132ditto.png'),
('Eevee','Normal','',55,55,50,55,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891681-133eevee.png'),
('Vaporeon','Water','',130,65,60,65,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891872-134vaporeon.png'),
('Jolteon','Electric','',65,65,60,130,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891873-135jolteon.png'),
('Flareon','Fire','',65,130,60,65,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891874-136flareon.png'),
('Porygon','Normal','',65,60,70,40,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1898292-137porygon.png'),
('Omanyte','Rock','Water',35,40,100,35,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892688-138omanyte.png'),
('Omastar','Rock','Water',70,60,125,55,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892689-139omastar.png'),
('Kabuto','Rock','Water',30,80,90,55,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891959-140kabuto.png'),
('Kabutops','Rock','Water',60,115,105,80,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891960-141kabutops.png'),
('Aerodactyl','Rock','Flying',80,105,65,130,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891961-142aerodactyl.png'),
('Snorlax','Normal','',160,110,65,30,false,'https://static.giantbomb.com/uploads/scale_small/0/4986/406919-143snorlax.png'),
('Articuno','Ice','Flying',90,85,100,85,true,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892690-144articuno.png'),
('Zapdos','Electric','Flying',90,90,85,100,true,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892691-145zapdos.png'),
('Moltres','Fire','Flying',90,100,90,90,true,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891710-146moltres.png'),
('Dratini','Dragon','',41,64,45,50,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1910790-147dratini_ag_anime.png'),
('Dragonair','Dragon','',61,84,65,70,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1891876-148dragonair.png'),
('Dragonite','Dragon','Flying',91,134,95,80,false,'https://static.giantbomb.com/uploads/scale_small/13/135472/1892692-149dragonite.png'),
('Mewtwo','Psychic','',106,110,90,130,true,'https://static.giantbomb.com/uploads/scale_small/13/135472/1895869-150mewtwo.png');