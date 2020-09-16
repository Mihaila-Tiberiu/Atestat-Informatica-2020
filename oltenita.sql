-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: mart. 20, 2020 la 06:02 PM
-- Versiune server: 10.4.8-MariaDB
-- Versiune PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `oltenita`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `hoteluri`
--

CREATE TABLE `hoteluri` (
  `idHotel` int(10) UNSIGNED NOT NULL,
  `nume` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `poza` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `adresa` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `telefon` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `orar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `descriere` text CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `hoteluri`
--

INSERT INTO `hoteluri` (`idHotel`, `nume`, `poza`, `adresa`, `telefon`, `orar`, `descriere`) VALUES
(1, 'Villa Europa', 'villaeuropa.jpg', '24 Șoseaua Călărași\r\n915400 Oltenita', '0752066510', 'Deschis toata Saptamana', 'Vila Europa se află în Olteniţa şi oferă acces gratuit la internet WiFi. Oaspeţii au la dispoziţie un restaurant. Parcarea privată este gratuită. Sunt disponibile diverse activităţi, cum ar fi ciclism şi pescuit. Aeroportul Internaţional Bucureşti este situat la 69 km.'),
(3, 'Motel Alexander', 'alexander.jpg', 'B-DUL 22 DECEMBRIE NR 3H, Olteniţa', '0770556832', 'Deschis toata Saptamana', 'Oferind biciclete gratuite, motelul Alexander este la 1,5 km de Olteniţa. Conexiunea WiFi este gratuită.\r\n\r\nDotate cu aer condiţionat şi frigider, toate camerele au o baie privată cu duş şi articole de toaletă gratuite.\r\n\r\nMotelul Alexander are o terasă şi un bar. Facilităţile includ un depozit de bagaje. Proprietatea asigură parcare gratuită.\r\n\r\nPortul este la 5 km. Aeroportul Henri Coandă este situat la 68 km.\r\n\r\nVorbim limba dumneavoastră!');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `magazine`
--

CREATE TABLE `magazine` (
  `idMagazin` int(10) UNSIGNED NOT NULL,
  `nume` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `poza` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `adresa` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `telefon` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `orar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `descriere` text CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `magazine`
--

INSERT INTO `magazine` (`idMagazin`, `nume`, `poza`, `adresa`, `telefon`, `orar`, `descriere`) VALUES
(1, 'Carrefour', 'carrefour.jpg', 'Strada Cuza Vodă nr.131, Oltenița 915400', '0242511776', 'joi	07:30–22 <br>\r\nvineri	07:30–22 <br>\r\nsâmbătă	07:30–22 <br>\r\nduminică	08–22 <br>\r\nluni	07:30–22 <br>\r\nmarți	07:30–22 <br>\r\nmiercuri 07:30–22', 'PRODUSE ALIMENTARE CU AUTOSERVIRE\r\nPrincipala noastra grija este ca toate produsele pe care vi le oferim sa fie de cea mai buna calitate, intotdeauna pe masura asteptarilor dumneavoastra!In acest departament puteti gasi o multime de produse: fructe, legume, carne, peste, paine. Toate acestea sunt de o calitate si de o prospetime ireprosabile. Produse alimentare proaspete includ raioanele: macelarie, gastronomie, legume fructe, mezeluri si branzeturi cu servire asistata, produse panificatie.\r\n\r\nPRODUSE ALIMENTARE TRADITIONALE\r\nLa raionul cu autoservire veti putea alege dintre cele mai proaspete produse din lapte si derivate din lapte (cascaval, margarina, unt etc...), care pot fi savurate la micul dejun alaturi de mezeluri traditionale si specialitati din carne care fac deliciul oricarei mese. Categoria este completata de o selectie atenta de tipuri de peste si semipreparate din peste (salate de icre, specialita]i marine), pui proaspeti, legume si produse congelate, precum si inghetata simpla sau cu topping, care completeaza cele mai gustoase meniuri.\r\n\r\nPRODUSE DE LARG CONSUM\r\nRaionul BAUTURI va propune o crama special amenjata unde veti putea gasi o gama variata de vinuri autohtone, dar si vinuri fine din toata lumea. Tot in acest raion veti gasi o gama larga de ape minerale, sucuri, bere si bauturi alcoolice aranjate ideal pentru a fi usor reperate. Impartit in mai multe zone, departamentul include si biscuiti, bomboane, produse vrac, cafea sau produse din import provenind din Franta, China, Italia, Mexic etc... Produse de larg consum inseamna: produse alimentare de baza, dulciuri, conserve, detergenti, bauturi, tigari, mancare animale.'),
(2, 'Lidl Oltenita', 'lidl.jpg', 'Blvd. 1 Dec. 1918, 35 c, Oltenița 915400', '0800896622', 'luni	07:30–21 <br>\r\nmarți	07:30–21 <br>\r\nmiercuri	07:30–21 <br>\r\njoi	07:30–21 <br>\r\nvineri	07:30–21 <br>\r\nsâmbătă	07:30–21 <br>\r\nduminică	08–20 <br>', 'Ne respectăm promisiunea de a le aduce clienților nostri cele mai bune produse la cel mai bun preț cu aju­torul mărcilor proprii. Dezvoltate atent, pe baza experienței noastre la nivel internațional, acestea respectă cele mai înalte standarde de calitate și siguranță alimentară.\r\n\r\nActiv în România din 2011, Lidl își definește poziția pe piața locală prin cel mai bun raport calitate-preț. Misiunea Lidl în România este aceea de a le oferi zilnic românilor, în zone din imediata lor proximitate, produse de calitate la cel mai bun preț, direct de la producători, într-o largă varietate de sortimente.\r\n\r\nModelul business Lidl este unic pe piața locală, iar activitatea sa este ghidată de o serie de valori: calitate, responsabilitate, originalitate, dinamism, proximitate, simplitate, prospețime.'),
(3, 'Penny Market Oltenita', 'penny.jpg', 'Bulevardul Tineretului, Oltenița 915400', '0800110111', 'luni	07–22 <br>\r\nmarți	07–22 <br>\r\nmiercuri	07–22 <br>\r\njoi	07–22 <br>\r\nvineri	07–21 <br>\r\nsâmbătă	07–21 <br>\r\nduminică	07–19 <br>\r\n', 'Mulțumirea clienților noștri reprezintă obiectivul nostru principal, de aceea, am creat mărcile proprii Penny Market.'),
(4, 'Aura si Rares ', 'aura.jpg', 'Bulevardul Republicii, Oltenița 915400', '0721926924', 'luni	08–21 <br>\r\nmarți	08–21 <br>\r\nmiercuri	08–21 <br>\r\njoi	08–21 <br>\r\nvineri	08–21 <br>\r\nsâmbătă	08–21 <br>\r\nduminică	Închis <br>\r\n ', 'Super Marketul Aura&Rares vine in intampinarea dumneavoastra cu gama vasta de produse la un pret foarte mic.'),
(5, 'Profi Market Oltenita', 'profi.jpg', 'Bulevardul Republicii, Oltenița 915400', '0800800804', 'luni	07–22 <br>\r\nmarți	07–22 <br>\r\nmiercuri	07–22 <br>\r\njoi	07–22 <br>\r\nvineri	07–22 <br>\r\nsâmbătă	07–22 <br>\r\nduminică	08–20 <br>', 'Cu toții știm că prețul unui produs nu reflectă mereu calitatea acestuia și că deseori, plătim mai mult marca și mai puțin produsul.\r\nLa fel de des, însă produsele de calitate se ascund modeste îndărătul unor mărci mai puțin cunoscute sau vizibile în piață. Tocmai de accea, am creat produsele PROFI și am lansat această gamă, ca tu să ai parte de o varietate care îți acoperă integral nevoile, dar și dorințele și capriciile.\r\nȘi am făcut toate acestea pentru că prețuim calitatea la prețuri cinstite.\r\nDar mai ales pentru că te prețuim pe tine.'),
(6, 'Piata Agro-Alimentara Oltenita', 'piata.jpg', 'Bulevardul Republicii', '-', 'In functie de vanzatori.', 'Piata agro-alimentara din Oltenita');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `monumente`
--

CREATE TABLE `monumente` (
  `idMonument` int(10) UNSIGNED NOT NULL,
  `nume` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `poza` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `adresa` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `telefon` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `orar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `descriere` text CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `monumente`
--

INSERT INTO `monumente` (`idMonument`, `nume`, `poza`, `adresa`, `telefon`, `orar`, `descriere`) VALUES
(1, 'Monumentul Eroilor', 'eroilor.jpg', '41 Bulevardul Republicii', '-', 'Disponibil tot timpul', 'Inaugurat la 29 iunie 1930, monumentul este aflat în centrul orașului și este opera sculptorului Ion Iordănescu. De forma unui trunchi de piramidă alungit, piedestalul este realizat din blocuri paralelipipedice de calcar, este surmontat de un grup statuar ronde-bosse, turnat în bronz, înalt de 2,50 m și personifică două personaje: un soldat în ținută de campanie, care ține în mâna dreaptă o armă în cumpănire, cu stângă indicând direcția înainte, și o femeie reprezentând Victoria, având în mâna stângă o trâmbiță din care sună începerea atacului, iar în mâna dreaptă o cunună de lauri.\r\n\r\nUrmătorul text este gravat pe plăcile de bronz de pe fațadele piedestalului: „Eroilor din Oltenița, adâncă recunoștință”. Pe monument sunt înscrise numele a 166 de militari, fii ai localității, căzuți la datorie în luptele din Primul Război Mondial.\r\n\r\nJudețul Călărași a fost prezent în evenimentele de mare rezonanță istorică din secolele XIX-XX: Revoluția de la 1848, Unirea Principatelor de la 24 ianuarie 1859, războiul pentru cucerirea independenței de stat din anii 1877-1878, unde au participat numeroși ostași călărășeni, răscoalele țărănești din 1888, începute la Urziceni și cu ecou în Armășești, Broșteni, Alexeni, Condeești, Miloșești, Misleanu, Grivița și Slobozia, Primul Război Mondial (1916-1918) și cel de-Al Doilea Război Mondial (1941-1945), în care jertfa a mii de ostași din Călărași a fost pusă la temelia apărării și eliberării țării.\r\n\r\nÎn ceea ce privește momentul pe care îl marchează Statuia Eroilor, Primul Război Mondial, din punct de vedere al statutului de beligeranță, România a fost pe rând: țară neutră în perioada 28 iulie 1914 – 27 august 1916, țară beligerantă de partea Antantei în perioada 27 august 1916 – 27 noiembrie 1917, în stare de armistițiu în perioada 27 noiembrie 1917 – 7 mai 1918, țară necombatantă în perioada 7 mai1918 – 9 noiembrie 1918, țară beligerantă de partea Antantei în perioada 9 noiembrie 1918 – 11 noiembrie 1918.\r\n\r\nÎn august 1916, România primește un ultimatum să decidă dacă dorește să se alăture Antantei „acum ori niciodată”. Sub presiunea cererii ultimative, guvernul român acceptă să intre în război de partea Antantei, deși situația de pe fronturile de luptă nu era una favorabilă.\r\n\r\nDupă o serie de victorii tactice rapide în Transilvania asupra unor forțe austro-ungare copleșite din punct de vedere numeric, armata română va suferi în toamna anului 1916 o serie de înfrângeri zdrobitoare, ceea ce va forța autoritățile statului să se refugieze în Moldova, permițând inamicului să ocupe două treimi din teritoriul național, inclusiv capitala București. Campania din vara anului 1917 a fost una de succes, reușindu-se, în faza inițială, înfrângerea trupelor Puterilor Centrale în bătăliile de la Mărăști, Oituz și Mărășești. Situația pe frontul de est a evoluat într-un mod negativ, astfel încât după ce Rusia a încheiat pacea de la Brest-Litovsk cu Puterile Centrale, România a fost nevoită să ceară armistițiul și apoi să fie nevoită să iasă din război și să semneze o pace separată în condiții umilitoare, în primăvara lui 1918. Din fericire, refuzul regelui Ferdinand, care a amânat la nesfârșit gestul formal de a semna acest tratat, a făcut posibilă reînceperea ostilităților în ultimele două zile ale războiului, prezervând în acest mod statutul României de stat beligerant la Conferința de Pace de la Paris.'),
(2, 'Monumentul Aparatorilor Patriei', 'parc.jpg', 'Bulevardul Marasesti, Oltenița 915400', '-', 'Disponibil tot timpul', 'Monument in Parcul Mare din Oltenita.');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `muzee`
--

CREATE TABLE `muzee` (
  `idMuzeu` int(10) UNSIGNED NOT NULL,
  `nume` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `poza` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `adresa` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `telefon` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `orar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `descriere` text CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `muzee`
--

INSERT INTO `muzee` (`idMuzeu`, `nume`, `poza`, `adresa`, `telefon`, `orar`, `descriere`) VALUES
(1, 'Muzeul Civilizaţiei Gumelniţa', 'gumelnita.jpg', 'Strada Argeșului 101, Oltenița 915400', '0242511174', 'joi	08–16 <br>\r\nvineri	08–16 <br>\r\nsâmbătă	Închis <br>\r\nduminică	Închis <br>\r\nluni	08–16 <br>\r\nmarți	08–16 <br>\r\nmiercuri	08–16\r\n', 'Muzeul a fost înfiinţat în 1957, pe baza unei donaţii formate din 902 piese arheologice, făcută de Barbu Ionescu, de profesie contabil, care a fost şi primul director al muzeului până în 1968.\r\n\r\nÎn 1968 a fost numit director Done Şerbănescu, care a reorganizat şi modernizat muzeul. Colecţiile muzeului au sporit considerabil, ajungând la 15.500 obiecte arheologice şi numismatice. Clădirea este construită în 1926 (arh. Ion Cernescu). Iniţial a fost destinată găzduirii de manifestări culturale, apoi o parte din local a găzduit temporar filiala Olteniţa a Băncii Naţionale şi Sfatul Popular Raional.\r\n\r\nSunt expuse materiale ale culturii eneolitice Gumelniţa (unelte de piatră şi corn de cerb, ceramică, figurine, vase antropomorfe şi zoomorfe, harpoane, topoare din piatră, plastică), tezaure din mileniul I p.Chr., tezaure de bijuterii de la Colibaşi, Chirnogi.\r\n\r\nExpoziţia de bază. Sunt expuse obiecte care au aparţinut civilizaţiilor ce au evoluat în centrul Câmpiei Române, cum sunt cultura Dudeşti, descoperită la Căsciorele şi Vasilaţi, cultura Boian ilustrată prin descoperirile de la Spanţov, Căsciorele sau Vlădiceasca. Un loc aparte a fost rezervat prezentării civilizaţiei Gumelniţa, căreia i s-a acordat un spaţiu generos. Colecţia muzeului este expusă pe situri pentru ca vizitatorul să aibă în faţă vestigiile fiecărei comunităţi şi să-şi formeze o imagine completă despre ocupaţiile şi modul de viaţă ale omului din timpuri străvechi.'),
(2, 'Muzeul de Arta al Municipiului Oltenita', 'arta.jpg', 'Strada Argeșului 3, Oltenița 915400', '0242511174', 'luni	08–17 <br>\r\nmarți	08–17 <br>\r\nmiercuri	08–17 <br>\r\njoi	08–17 <br>\r\nvineri	08–17 <br>\r\nsâmbătă	Închis <br>\r\nduminică	Închis <br>', 'Muzeul de Artă al municipiului Olteniţa a fost deschis pentru public în anul 2001. Acest muzeu, până în prezent unic în ţară, deoarece este amenajat într-un spaţiu neconvenţional, într-o construcţie destinată special pentru redistribuirea apei potabile locuitorilor oraşului, este un punct de atracţie pentru turişti. Turnul de Apă, după ce şi-a făcut datoria cu prisosinţă timp de cinci decenii, timp de 30 de ani a fost o vestită cârcimă, iar pentru că cei ce l-au avut în administraţie nu s-au îngrijit să-l repare şi a fost părăsit, a căpătat o trista destinaţie, loc de refugiu al aurolacilor locali.\r\nCineva s-a gândit însă, că în acest spaţiu s-ar putea amenaja un muzeu şi încă un muzeu de artă. Cum patrimoniul pentru un muzeu de artă nu exista, clădirea a funcţionat timp de 2 ani ca o galerie de artă. Câţiva artişti locali, aproape toţi pictori amatori, au expus din creaţiile lor, dar în toate cazurile, după două - trei săptămâni şi-au retras exponatele şi muzeul a fost mult timp închis. În anul 2003, printr-un efort deosebit şi cu ajutorul unor artişti plastici olteniţeni, care au făcut donaţii, Muzeul de Artă şi-a alcătuit patrimoniul său. Cu toate că numărul obiectelor de artă din patrimoniul muzeului este încă destul de modest, numeric dar şi din punct de vedere artistic, sunt câteva exponate susceptibile să facă parte din patrimoniul cultural naţional. Unele realizări artistice vor fi chiar propuse Comisiei Naţionale a Muzeelor şi Colecţiilor, pentru a fi clasate în categoria tezaur. Vom prezenta aceste realizări artistice remarcabile, cu speranţa ca publicul avizat, în timpul liber, îşi va îndrepta atenţia spre acest lăcaş de cultură.');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `recenziihoteluri`
--

CREATE TABLE `recenziihoteluri` (
  `idRecenzie` int(10) UNSIGNED NOT NULL,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `idInstitutie` int(10) UNSIGNED NOT NULL,
  `comentariu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `stele` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `recenziihoteluri`
--

INSERT INTO `recenziihoteluri` (`idRecenzie`, `username`, `idInstitutie`, `comentariu`, `stele`) VALUES
(1, 'tibimihaila', 1, 'Foarte Tare!', 5),
(100, 'antoniomihaila', 1, 'Mi-am schimbat parerea! Este super!', 4),
(103, 'popescudan', 1, 'Mancarea este foarte buna!', 4);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `recenziimagazine`
--

CREATE TABLE `recenziimagazine` (
  `idRecenzie` int(10) UNSIGNED NOT NULL,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `idInstitutie` int(10) UNSIGNED NOT NULL,
  `comentariu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `stele` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `recenziimagazine`
--

INSERT INTO `recenziimagazine` (`idRecenzie`, `username`, `idInstitutie`, `comentariu`, `stele`) VALUES
(2, 'tibimihaila', 1, 'Imi place sa cumpar lucruri de la Carrefour, dar e \r\ncam scump! In plus, e mai frumos la Lidl!', 3),
(5, 'tibimihaila', 2, 'Cel mai tare supermarket din Oltenita!', 5),
(6, 'tibimihaila', 3, 'O gama de produse destul de saraca...', 2),
(7, 'tibimihaila', 4, 'Unul dintre cele mai ieftine si mai de calitate \r\nmagazine din Oltenita!', 4),
(8, 'tibimihaila', 5, 'Locatia si produsele sunt de o calitate SLABA.', 1),
(9, 'tibimihaila', 6, 'Produse bio, fara conservanti. Recomand!', 5),
(10, 'popescudan', 2, 'Cel mai bun supermarket din Oltenita!', 5),
(11, 'popescudan', 4, 'Un magazin foarte OK!', 4),
(12, 'popescudan', 5, 'Nu se compara cu alte megazine, dar tot este bun!', 4),
(13, 'popescudan', 6, 'Vanzatorii nu sunt foarte politicosi, dar \r\nprodusele sunt foarte bune!', 4);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `recenziimonumente`
--

CREATE TABLE `recenziimonumente` (
  `idRecenzie` int(10) UNSIGNED NOT NULL,
  `username` varchar(30) NOT NULL,
  `idInstitutie` int(10) UNSIGNED NOT NULL,
  `comentariu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `stele` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `recenziimonumente`
--

INSERT INTO `recenziimonumente` (`idRecenzie`, `username`, `idInstitutie`, `comentariu`, `stele`) VALUES
(2, 'tibimihaila', 1, 'Un adevarat punct turistic al orasului!', 4),
(4, 'tibimihaila', 2, 'Dezamagitor.', 2),
(5, 'popescudan', 1, 'Imaginea Oltenitei!', 5);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `recenziimuzee`
--

CREATE TABLE `recenziimuzee` (
  `idRecenzie` int(10) UNSIGNED NOT NULL,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `idInstitutie` int(10) UNSIGNED NOT NULL,
  `comentariu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `stele` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `recenziimuzee`
--

INSERT INTO `recenziimuzee` (`idRecenzie`, `username`, `idInstitutie`, `comentariu`, `stele`) VALUES
(2, 'tibimihaila', 1, 'Exponate foarte frumoase!', 5),
(5, 'tibimihaila', 2, 'Iubesc acest coltisor de cultura din Oltenita!', 5),
(6, 'popescudan', 2, 'Nu imi place noul mod de aranjare al acestui loc, \r\ndar in rest totul este perfect!', 4);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `recenziirestaurante`
--

CREATE TABLE `recenziirestaurante` (
  `idRecenzie` int(10) UNSIGNED NOT NULL,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `idInstitutie` int(10) UNSIGNED NOT NULL,
  `comentariu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `stele` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `recenziirestaurante`
--

INSERT INTO `recenziirestaurante` (`idRecenzie`, `username`, `idInstitutie`, `comentariu`, `stele`) VALUES
(3, 'tibimihaila', 1, 'Foarte buna! recomand!', 5),
(8, 'tibimihaila', 2, 'Un local excelent pentru petreceri mari!', 4),
(9, 'tibimihaila', 3, 'Mancarea nu este foarte buna.', 3),
(10, 'tibimihaila', 4, 'Distractia este maxima in acest local! Mancarea, \r\nin schimb, lasa de dorit...', 3),
(11, 'tibimihaila', 5, 'Au schimbat bucatarul si acum nu imi mai place \r\nacest restaurant la fel de mult!', 3),
(12, 'tibimihaila', 6, 'Super fain! Dar pizza nu se compara cu cea de la \r\nfaraon...', 4),
(13, 'tibimihaila', 8, 'Cel mai bun snitel din Oltenita!', 5),
(14, 'tibimihaila', 9, 'Atmosfera si priveliste frumoase!', 5),
(15, 'tibimihaila', 10, 'Al doilea cel mai bun snitel din Oltenita!', 4),
(16, 'popescudan', 2, 'Nu prea imi place mancarea...', 3),
(17, 'popescudan', 3, 'Nu prea imi place..', 2),
(18, 'popescudan', 4, 'Chelnerii sunt foarte de treaba si mancarea este \r\nbuna!', 5),
(19, 'popescudan', 8, 'Oribil!', 1);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `restaurante`
--

CREATE TABLE `restaurante` (
  `idRestaurant` int(10) UNSIGNED NOT NULL,
  `nume` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `poza` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `adresa` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `telefon` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `orar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `descriere` text CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `restaurante`
--

INSERT INTO `restaurante` (`idRestaurant`, `nume`, `poza`, `adresa`, `telefon`, `orar`, `descriere`) VALUES
(1, 'Faraon', 'faraon.jpg', 'Strada Argeșului 23, Oltenița 915400', '0731113377', 'joi	08–00 <br>\r\nvineri	08–00 <br>\r\nsâmbătă	09–00 <br>\r\nduminică	09–00 <br>\r\nluni	08–00 <br>\r\nmarți	08–00 <br>\r\nmiercuri	08–00 <br>', 'Faraon café-bar dispune de un spatiu intim si elegant, destinat intalnirilor cu cei dragi. Puteti savura cafea, ceaiuri sau racoritoare in timp ce purtati o conversatie, va uitati la televizor sau navigati pe internet. Indiferent de numarul persoanelor din grup, avem locuri disponibile in interior sau pe terasa. Va oferim nu numai produse, ci si servicii de calitate, la cel mai bun pret.'),
(2, 'Modern', 'modern.jpg', 'Bulevardul Republicii nr. 41-43, Oltenița 915400', '0728304607', 'luni	09:30–23 <br>\r\nmarți	09:30–22 <br>\r\nmiercuri	09:30–23 <br>\r\njoi	09:30–23 <br>\r\nvineri	09:30–23 <br>\r\nsâmbătă	09:30–23 <br>\r\nduminică	09:30–23 <br>\r\n', '45 de ani de istorie – Infiintat in 1969, restaurantul a devenit un brand-etalon al serviciilor de alimentatie publica si productie proprie din municipiul Oltenita si chiar din judet , prin meniul variat si complex de o calitate ridicata pregatit de bucatari profesionisti , ambianta placuta , spatiul amenajat corespunzator , profesionalismul si servirea ireprosabila asigurata de echipa restaurantului.\r\nIn decursul celor 45 de ani, aici au fost sarbatoriti tinerii casatoriti, copii nou nascuti, festivitati culturale ( amintim Festivalul de Dans “ DUNAREA ALBASTRA”), parade de moda cu Dna. ZINA DUMITRESCU si CASA VENUS, serate muzicale gen “ JOIA in FAMILIE” cu actori si cantareti celebrii ( Stefan Banica senior, Mirabela Dauer, Angela Similea, Corina Chiriac, Dan Spataru, Nelu Ploiesteanu, Octavian Ursulescu, Stela Popescu, Arsinel, Maria Ciobanu, Maria Dragomiroiu, formatia “Trubadurii” si Dumitru Dragon si, de curand, chiar si artisti aparuti dupa anii 90 (amintim Andra, Paula Selling, Alexandra Usurelu etc). Cea mai apreciata formatie din judetul Calarasi, Rechinii, este o prezenta regulata aici, incantand miri si invitati la zeci de nunti.\r\n\r\nRestaurantul Modern a dainuit trecerii “Timpului” prin performanta manageriala in domeniu si prin angajati profesionisti dedicati activitatii lor, realizandu-se nu mai putin de 5 reparatii capitale, reamenajari si remodelari, reinventandu-se si renascand precum Pasarea “ Phoenix”.\r\n\r\nIn anul 2015, localul a cunoscut o schimbare de imagine totala , datorita unei investitii de mare amploare ( ce va continua), realizand o noua “Fata” atat ca interior cat si ca servicii . Complex Restaurant Modern este un loc primitor si poate raspunde oricaror exigente in materie de evenimente speciale, fiind potrivit pentru petreceri de familie si pentru petreceri de firma: nunti, botezuri, aniversari, mese festive, petreceri corporate, petreceri pentru copii, seminarii. Evenimentele se pot desfasura atat in salon, cat si in aer liber in sezonul potrivit.'),
(3, 'Comtot', 'comtot.jpg', 'Strada Mihai Bravu, nr. 110\r\nOltenita', '0723198885', 'luni	10–00 <br>\r\nmarți	10–00 <br>\r\nmiercuri	10–00 <br>\r\njoi	10–00 <br>\r\nvineri	10–00 <br>\r\nsâmbătă	10–00 <br>\r\nduminică	10–00 <br>', 'Restaurant cu specific romanesc.'),
(4, 'Restaurant GEO Libanezi', 'libanezi.jpg', 'Strada Argeșului Nr. 98, Oltenița 915400', '0724810000', 'luni	09–00 <br>\r\nmarți	09–00 <br>\r\nmiercuri	09–00 <br>\r\njoi	09–00 <br>\r\nvineri	09–01 <br>\r\nsâmbătă	09–01 <br>\r\nduminică	09–01 <br>\r\n', 'Restaurant cu specific libanez.'),
(5, 'Brizz Bar', 'brizz.jpg', 'Strada Argeșului 103, Oltenița 915400', '0731102720', 'luni	09–00 <br>\r\nmarți	09–00 <br>\r\nmiercuri	09–00 <br>\r\njoi	09–00 <br>\r\nvineri	09–00 <br>\r\nsâmbătă	09–00 <br>\r\nduminică	09–00 <br>\r\n', 'Best in town.'),
(6, 'Angels', 'angels.jpg', 'Bulevardul Republicii 64, Oltenița 915400', '', 'luni	10–00 <br>\r\nmarți	10–00 <br>\r\nmiercuri	10–00 <br>\r\njoi	10–00 <br>\r\nvineri	10–00 <br>\r\nsâmbătă	10–00 <br>\r\nduminică	10–00 <br>\r\n', 'Pizzerie in Oltenita.'),
(7, 'Viky Stoica', 'viky.jpg', 'Bd. Tineretului, nr.10 Oltenita', '0721231844', 'Deschis non-stop', 'Organizam petreceri festive, evenimente importante din viata dumneavoastra : nunti, botezuri.Meniuri diversificate incepand de la 160 lei/ persoana'),
(8, 'Union', 'union.jpg', 'Bulevardul Mărășești, Oltenița 915400', '0732709508', 'Deschis non-stop', 'Shaorma pui / vita-oaie, Kebap pui, Hamburger, Cheeseburger, Snitel pui /vienez, Burger, Cordon Bleu, Hot-dog, Sandwich, Meniu Aripioare, Meniu Crispy.'),
(9, 'Terasa Port Oltenita', 'port.jpg', 'Șoseaua Portului 50, Oltenița 915400', '-', 'Deschis non-stop', 'Portul Oltenița este unul dintre cele mai mari porturi fluviale românești, situat în orașul Oltenița pe Dunăre.'),
(10, 'You & Me', 'youme.jpg', 'Șoseaua Portului 8A, Oltenița 915400', '0721812921', 'duminică	10–22 <br>\r\nluni	07–22 <br>\r\nmarți	07–22 <br>\r\nmiercuri	07–22 <br>\r\njoi	07–22 <br>\r\nvineri	07–22 <br>\r\nsâmbătă	10–22 <br>\r\n', 'You and Me inseamna calitate, gust si sanatate, pentru ca asta servim clientilor in fiecare zi. You and Me, tu si eu, familia, prietenii, cu totii putem alege dintr-o variata gama de preparate culinare realizate in fiecare zi din ingrediente proaspete.Preparatele noastre savuroase pot fi livrate si la domiciliul clientului. Comanda minima, 15 lei. In perioada pranzului, pentru a onora comenzile in timp ultil, clientul este rugat sa comande cu 60 minute inainte. NOU! Acum poti servi micul dejun, pranzul sau cina pe terasa din incinta You and Me, str Portului 8A, vis-a-vis de Pompieri.');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `utilizatori`
--

CREATE TABLE `utilizatori` (
  `idUtilizator` int(10) UNSIGNED NOT NULL,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `nume` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL,
  `telefon` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_romanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `utilizatori`
--

INSERT INTO `utilizatori` (`idUtilizator`, `username`, `password`, `nume`, `email`, `telefon`) VALUES
(1, 'admin', '350c9d901b7f1c73a481e240ec1b7c0b', 'admin', 'admin', 'admin'),
(6, 'tibimihaila', '81dc9bdb52d04dc20036dbd8313ed055', 'Tiberiu Mihaila', 'tiberiu@rocketmail.com', '1111111111'),
(9, 'pizzarainbow', '827ccb0eea8a706c4c34a16891f84e7b', 'Vasile', 'denisvasile@gmail.com', '0785984356'),
(15, 'antoniomihaila', '81dc9bdb52d04dc20036dbd8313ed055', 'Antonio Mihaila', 'antonio.mihaila@gmail.com', '0733456789'),
(16, 'popescudan', 'e369853df766fa44e1ed0ff613f563bd', 'Popescu Daniel', 'popescudaniel6@gmail.com', '0723567890');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `hoteluri`
--
ALTER TABLE `hoteluri`
  ADD PRIMARY KEY (`idHotel`);

--
-- Indexuri pentru tabele `magazine`
--
ALTER TABLE `magazine`
  ADD PRIMARY KEY (`idMagazin`);

--
-- Indexuri pentru tabele `monumente`
--
ALTER TABLE `monumente`
  ADD PRIMARY KEY (`idMonument`);

--
-- Indexuri pentru tabele `muzee`
--
ALTER TABLE `muzee`
  ADD PRIMARY KEY (`idMuzeu`);

--
-- Indexuri pentru tabele `recenziihoteluri`
--
ALTER TABLE `recenziihoteluri`
  ADD PRIMARY KEY (`idRecenzie`),
  ADD KEY `idInstitutie` (`idInstitutie`);

--
-- Indexuri pentru tabele `recenziimagazine`
--
ALTER TABLE `recenziimagazine`
  ADD PRIMARY KEY (`idRecenzie`),
  ADD KEY `idInstitutie` (`idInstitutie`);

--
-- Indexuri pentru tabele `recenziimonumente`
--
ALTER TABLE `recenziimonumente`
  ADD PRIMARY KEY (`idRecenzie`),
  ADD KEY `idInstitutie` (`idInstitutie`);

--
-- Indexuri pentru tabele `recenziimuzee`
--
ALTER TABLE `recenziimuzee`
  ADD PRIMARY KEY (`idRecenzie`),
  ADD KEY `idInstitutie` (`idInstitutie`);

--
-- Indexuri pentru tabele `recenziirestaurante`
--
ALTER TABLE `recenziirestaurante`
  ADD PRIMARY KEY (`idRecenzie`),
  ADD KEY `idInstitutie` (`idInstitutie`);

--
-- Indexuri pentru tabele `restaurante`
--
ALTER TABLE `restaurante`
  ADD PRIMARY KEY (`idRestaurant`);

--
-- Indexuri pentru tabele `utilizatori`
--
ALTER TABLE `utilizatori`
  ADD PRIMARY KEY (`idUtilizator`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `hoteluri`
--
ALTER TABLE `hoteluri`
  MODIFY `idHotel` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pentru tabele `magazine`
--
ALTER TABLE `magazine`
  MODIFY `idMagazin` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pentru tabele `monumente`
--
ALTER TABLE `monumente`
  MODIFY `idMonument` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pentru tabele `muzee`
--
ALTER TABLE `muzee`
  MODIFY `idMuzeu` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pentru tabele `recenziihoteluri`
--
ALTER TABLE `recenziihoteluri`
  MODIFY `idRecenzie` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT pentru tabele `recenziimagazine`
--
ALTER TABLE `recenziimagazine`
  MODIFY `idRecenzie` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pentru tabele `recenziimonumente`
--
ALTER TABLE `recenziimonumente`
  MODIFY `idRecenzie` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pentru tabele `recenziimuzee`
--
ALTER TABLE `recenziimuzee`
  MODIFY `idRecenzie` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pentru tabele `recenziirestaurante`
--
ALTER TABLE `recenziirestaurante`
  MODIFY `idRecenzie` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pentru tabele `restaurante`
--
ALTER TABLE `restaurante`
  MODIFY `idRestaurant` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pentru tabele `utilizatori`
--
ALTER TABLE `utilizatori`
  MODIFY `idUtilizator` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
