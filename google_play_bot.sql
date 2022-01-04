-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2020 at 04:32 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `google_play_bot`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `name`, `link`, `status`) VALUES
(10, 'Matt Franco - Acoustic Covers Selection', 'https://play.google.com/music/m/Bepyb5koswotcfkzgufkfotul6e?t=Acoustic_Covers_Selection_-_Matt_Franco', 'Active'),
(11, 'Matt Franco - Acústico Latino 2018', 'https://play.google.com/music/m/Bbak773z2ifucdubdca6umymy4e?t=Acustico_Latino_2018_-_Matt_Franco', 'Active'),
(12, 'Sophia Atwood - Happy Pop Hits', 'https://play.google.com/music/m/Buzu23j562t7mqwhcf35ie3pluu?t=Happy_Pop_Hits_-_Sophia_Atwood', 'Active'),
(13, 'Ellie Bennet - No Time To Die', 'https://play.google.com/music/m/Bsix22ig5crk53ivdchevowuqba?t=No_Time_To_Die_-_Ellie_Bennett', 'Active'),
(14, 'Janet Hill -  Soft Pop Hits', 'https://play.google.com/music/m/Boewmcg4yvthdgo3fpc5cxyyf3i?t=Soft_Pop_Hits_-_Janet_Hill', 'Active'),
(15, 'Dance Time Trio - Dance Hits 2020', 'https://play.google.com/music/m/Bbgsb3uxghymvxn2hdxuqcuya2a?t=Dance_Hits_2020_-_Dance_Time_Trio', 'Active'),
(16, 'Mariano Lombardo - Pop Latino 2020', 'https://play.google.com/music/m/Bp2gpjv3wvfgfgxd773ahh2erea?t=Pop_Latino_2020_-_Mariano_Lombardo', 'Active'),
(17, 'DJ Challenge - TikTok Dances 2020', 'https://play.google.com/music/m/Bfp5wl3tyunqfsjraimbetrfncq?t=TikTok_Dances_2020_-_Metrixx', 'Active'),
(18, 'Alex Lenard - Chill Hits 2020', 'https://play.google.com/music/m/Bz4fhpw2x5mlqzsjtbfrowflkfm?t=Chill_Hits_2020_-_Alex_Lenard', 'Active'),
(19, 'Thomas Vee - Top Pop 2020', 'https://play.google.com/music/m/Blca4tjrm7bwln26buzbqcpgolm?t=Top_Pop_2020_-_Thomas_Vee', 'Active'),
(20, 'Dirty Land - Rock Hits', 'https://play.google.com/music/m/Bcx4gai33gswlnwgahx7rdniodu?t=Rock_Hits_-_Dirty_Land', 'Active'),
(21, 'Ray-X Pop Hits 2020', 'https://play.google.com/music/m/Bblweygonz3xbvuv3v4ltgobecm?t=Pop_Hits_2020_-_Ray-X', 'Active'),
(22, 'Cooper Lee - Pop Music Hits', 'https://play.google.com/music/m/Bsy4fvw7pd4pxfc2blox3wp6wcq?t=Pop_Music_Hits_-_Cooper_Lee', 'Active'),
(23, 'Lil Heavy Chainz - Rap Hits 2020', 'https://play.google.com/music/m/B7drjgwa2huqzx6glbkeh2hleky?t=Rap_Hits_2020_-_Lil_Heavy_Chainz', 'Active'),
(24, 'Lil Deal - Top HipHop 2020', 'https://play.google.com/music/m/Bkb5lsdaxesmrkinudip23tmlk4?t=Top_HipHop_2020_-_Lil_Deal', 'Active'),
(25, 'Best Hip Hop Selection 2018', 'https://play.google.com/music/m/Bqc2dboqnrjj5kxlvf4tmlpwwse?t=Best_Hip_Hop_Selection_2018_-_Various_Artists', 'Active'),
(26, 'Metrixx - Summer Hits', 'https://play.google.com/music/m/Bja4rtxpaa7nhfh5yte6iql4h3q?t=Summer_Hits_-_Metrixx', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`, `link`, `status`) VALUES
(16, 'Lil Heavy Chainz', 'https://play.google.com/music/m/Azhg75bovgapzudxrg4wk6ofroe?t=Lil_Heavy_Chainz', 'Active'),
(17, 'Alex Lenard', 'https://play.google.com/music/m/Adfd6nfu2ubnytufks3em52v3ja?t=Alex_Lenard', 'Active'),
(18, 'Cooper Lee', 'https://play.google.com/music/m/Aeaw6k4mw42bfamt7obhypcq3ie?t=Cooper_Lee', 'Active'),
(19, 'Ray-X', 'https://play.google.com/music/m/A6e4ca2kdwjmb4th3lvotbopi4y?t=Ray-X', 'Active'),
(20, 'Ashley Price', 'https://play.google.com/music/m/A7n7qnxqy5yjf53nqka37g2tpzu?t=Ashley_Price', 'Active'),
(21, 'Ashley Price', 'https://play.google.com/music/m/Appg7ltc7kowdbbizyrch4slodm?t=Ashley_Price', 'Active'),
(22, 'Jilly Queen', 'https://play.google.com/music/m/Ahkzabwj556qw2su7unkernwjwy?t=Jilly_Queen', 'Active'),
(23, 'Giulia Falls', 'https://play.google.com/music/m/Afvjbn6srvjoybkewu7xzqzxczu?t=Giulia_Falls', 'Active'),
(24, 'Don Blaine', 'https://play.google.com/music/m/Asli5nar3pudeer535b3m3offgu?t=Don_Blaine', 'Active'),
(25, 'Thomas Vee', 'https://play.google.com/music/m/Aedoipd2bzysdbtqjdfsgg6xleq?t=Thomas_Vee', 'Active'),
(26, 'Life Loops', 'https://play.google.com/music/m/Ahayu4ywevbbltlugk7dxilaknq?t=Life_Loops', 'Active'),
(27, 'Lil Deal', 'https://play.google.com/music/m/Ahdperntom72f64cwphkdxfd6ny?t=Lil_Deal', 'Active'),
(28, 'Bryan Moore', 'https://play.google.com/music/m/A66jaslwnqpicorqglfbw6usqzm?t=Bryan_Moore', 'Active'),
(29, 'Easy Smith', 'https://play.google.com/music/m/Al2m3hguez6hei7xcag2esw6woi?t=Easy_Smith', 'Active'),
(30, 'Jenny Style', 'https://play.google.com/music/m/A5zhyy3clufdbi24fdabokcu6dq?t=Jenny_Style', 'Active'),
(31, 'Steve Collins', 'https://play.google.com/music/m/Ag5jclx4h32wvn37ddu2evjpcai?t=Steve_Collins', 'Active'),
(32, 'RapGem', 'https://play.google.com/music/m/A545ku6mqn5maagejyvumyqnsry?t=RapGem', 'Active'),
(33, 'Brown Skies', 'https://play.google.com/music/m/Aoybcqxsbs7hsevbl4nwfo2zfd4?t=Brown_Skies', 'Active'),
(34, 'Mike Bry', 'https://play.google.com/music/m/Aq6iax6exwnlozdfx7x5cpvpsii?t=Mike_Bry', 'Active'),
(35, 'Ashley Craig', 'https://play.google.com/music/m/Abkelzlmm5geqd2jgzmds75u2ve?t=Ashley_Craig', 'Active'),
(36, 'Thomas Rivera', 'https://play.google.com/music/m/Adauawto3d3monbcgfjphco2qzy?t=Thomas_Rivera', 'Active'),
(37, 'Yung Nazty', 'https://play.google.com/music/m/Awcjkpp4msk5qmcjkko7txnblfq?t=Yung_Nazty', 'Active'),
(38, 'Manuel Furtado', 'https://play.google.com/music/m/Akfabfo5blx3k3fkqglbhqzejtm?t=Manuel_Furtado', 'Active'),
(39, 'Lil Glory', 'https://play.google.com/music/m/Ah7z4pjeipu4ahooon4mjtyuemy?t=Lil_Glory', 'Active'),
(40, 'Lil Golden Shades', 'https://play.google.com/music/m/A4hqtllu5sfcn55asazlt4x72mi?t=Lil_Golden_Shades', 'Active'),
(41, 'Lisa Lauper', 'https://play.google.com/music/m/Aclsqr5n3ytwygeiturvkmhgyuu?t=Lisa_Lauper', 'Active'),
(42, 'Leon Jaar', 'https://play.google.com/music/m/A4udxopupmmrcvymrskmqvijgym?t=Leon_Jaar', 'Active'),
(43, 'Train to Mars', 'https://play.google.com/music/m/Aqidabgbdmuzjz3khh5rjeqd4ke?t=Train_to_Mars', 'Active'),
(44, 'Dooly Live', 'https://play.google.com/music/m/Axpjfzfnql5pseq3pmfhgqy7pwq?t=Dooly_Live', 'Active'),
(45, 'Quincy Rider', 'https://play.google.com/music/m/Afup7weqebeehsyqhee5isetkry?t=Quincy_Rider', 'Active'),
(46, 'Ryan Howard', 'https://play.google.com/music/m/Ahtdb3fdv32oq6trommgymglnce?t=Ryan_Howard', 'Active'),
(47, 'Lil Skeet', 'https://play.google.com/music/m/Abmbpvra7ozrgifwwq3blvintli?t=Lil_Skeet', 'Active'),
(48, 'Ritmo Fuerte', 'https://play.google.com/music/m/A5obdr62yqmlqlmdozvgabu2nee?t=Ritmo_Fuerte', 'Active'),
(49, 'Metrixx', 'https://play.google.com/music/m/Afpblpnrmx3gs2xlpqoxrooaviq?t=Metrixx', 'Active'),
(50, 'Eva Cooper', 'https://play.google.com/music/m/A5y42b4jguyzjvnwifk7f2w6kny?t=Eva_Cooper', 'Active'),
(51, 'Janet Hill', 'https://play.google.com/music/m/Azrocqph75e7wor3xnjmyk2tf7u?t=Janet_Hill', 'Active'),
(52, 'Pappas Move', 'https://play.google.com/music/m/Aimswn7npcmzclh3y5hzp4rbbtq?t=Pappas_Move', 'Active'),
(53, 'Mariano Lombardo', 'https://play.google.com/music/m/Ats6xouxmddidbj5ef4glzbv75q?t=Mariano_Lombardo', 'Active'),
(54, 'Franklin James', 'https://play.google.com/music/m/Awsaiypcyvyiish4eswa56c3bui?t=Franklin_James', 'Active'),
(55, 'Ava Watson', 'https://play.google.com/music/m/Aa23sc2pxfdcda7oncxq6menvai?t=Ava_Watson', 'Active'),
(56, 'Dem Rap Bolz', 'https://play.google.com/music/m/Avkfzx5bmsko7i7zxowwfn6dfbq?t=Dem_Rap_Bolz', 'Active'),
(57, 'Kevin Close', 'https://play.google.com/music/m/A7yph6iwfzzgrhnkss54znt5rxq?t=Kevin_Close', 'Active'),
(58, 'Lil Deela', 'https://play.google.com/music/m/Ah2bffyey5cu77vne5i6flgljny?t=Lil_Deela', 'Active'),
(59, 'West Jack', 'https://play.google.com/music/m/Ajsotvnukvdleb2njobm4kecz3m?t=West_Jack', 'Active'),
(60, 'Will Shepard', 'https://play.google.com/music/m/Akblcnpqy2ouidsqj42hc3lz4fu?t=Will_Shepard', 'Active'),
(61, 'Lil Flop', 'https://play.google.com/music/m/Alfc2riklahcijhtq3in5s6zcpe?t=Lil_Flop', 'Active'),
(62, 'Lilly Gray', 'https://play.google.com/music/m/Apfg2dbiwvvbyw6a7ikeakqmzy4?t=Lilly_Gray', 'Active'),
(63, 'Christian Barnett', 'https://play.google.com/music/m/A2fpdissehxoa5yarmqlfshpfhm?t=Christian_Barnett', 'Active'),
(64, 'Lil Crazy Style', 'https://play.google.com/music/m/A77zrorvw3xvpamwiwdo6w7cpzu?t=Lil_Crazy_Style', 'Active'),
(65, 'Dreaming High', 'https://play.google.com/music/m/Aaf7lpwoqb24bqlg2y7dcviemoa?t=Dreaming_High', 'Active'),
(66, 'Jenny Jewel', 'https://play.google.com/music/m/Azoclkgmeswpynbenk7zkz72cjm?t=Jenny_Jewel', 'Active'),
(67, 'Dirty Land', 'https://play.google.com/music/m/Amzwcxw4bvln2igf5f6afhwm4wm?t=Dirty_Land', 'Active'),
(68, 'Juan Perales', 'https://play.google.com/music/m/Az5tl5ojv6hghumvryejuyqxxwu?t=Juan_Perales', 'Active'),
(69, 'Carlito Flores', 'https://play.google.com/music/m/Alqf3qwteexph6uxyf65df64uay?t=Carlito_Flores', 'Active'),
(70, 'Walton Green', 'https://play.google.com/music/m/A7wo6ei7crj5wrmsmppywrxs6tu?t=Walton_Green', 'Active'),
(71, 'Jack Suarez', 'https://play.google.com/music/m/Axi4pxtwqf7jwpcz2jtqovl627y?t=Jack_Suarez', 'Active'),
(72, 'Sarah Walsh', 'https://play.google.com/music/m/Ahzz4sbelvvrglheq3xi4pmvsje?t=SARAH_WALSH', 'Active'),
(73, 'Toya Madison', 'https://play.google.com/music/m/Apocahjw2nevdn65mydiwzcsffy?t=Toya_Madison', 'Active'),
(74, 'Carlos Viernes', 'https://play.google.com/music/m/Auvovwrm7qnbsxfwdd3aqnpmrsm?t=Carlos_Viernes', 'Active'),
(75, 'Martin Malon', 'https://play.google.com/music/m/Aexy7phj7cf33b4qb4khohcgany?t=Martin_Malon', 'Active'),
(76, 'Lilly Oxford', 'https://play.google.com/music/m/A4flvj7fuspagwhh6ouv7vdagiu?t=Lilly_Oxford', 'Active'),
(77, 'Lil Massive', 'https://play.google.com/music/m/Awgc3tccpb4fuvs22fwqixsri5q?t=Lil_Massive', 'Active'),
(78, 'Platinum Tape', 'https://play.google.com/music/m/Azxnzjwubfrmv5wmvpsqq6bfv4m?t=Platinum_Tape', 'Active'),
(79, 'Natalie Summer', 'https://play.google.com/music/m/A7fthhtffmbs5zineax5tia3fkq?t=Natalie_Summer', 'Active'),
(80, 'JK Jones', 'https://play.google.com/music/m/Aqglede5647afgfnabmxgjxf7pi?t=JK_Jones', 'Active'),
(81, 'Lil Collins', 'https://play.google.com/music/m/A2wjjjcji7gqte2o3uc5ifemg2y?t=Lil_Collins', 'Active'),
(82, 'Dance Time Trio', 'https://play.google.com/music/m/Acg6wgoby2fb633tcejfammn2wu?t=Dance_Time_Trio', 'Active'),
(83, 'Young Rhymes', 'https://play.google.com/music/m/Aop4pfavxv7aovmjncobbqkkrzi?t=Young_Rhymes', 'Active'),
(84, 'Buss Crew', 'https://play.google.com/music/m/Ackvfkkcuu6qu7ghweb2urh6dpa?t=Buss_Crew', 'Active'),
(85, 'King Stitch', 'https://play.google.com/music/m/Abqcy7rddaykpxbx3bjxafmigua?t=King_Stitch', 'Active'),
(86, 'Calvin Sparks', 'https://play.google.com/music/m/Acsrwvtqdkvriulghgdhaolmrqm?t=Calvin_Sparks', 'Active'),
(87, 'Noah Foster', 'https://play.google.com/music/m/Ascku4vzlpc3sajdrmc34o3jda4?t=Noah_Foster', 'Active'),
(88, 'Lil C West', 'https://play.google.com/music/m/Abnc64zzwjn2w56imhqk2gjhmla?t=Lil_C_West', 'Active'),
(89, 'Falan Dave', 'https://play.google.com/music/m/Anhalwxpsmys5quzw5gc6qjum7e?t=Falan_Dave', 'Active'),
(90, 'Janet Cyrus', 'https://play.google.com/music/m/Axuunqib5ztgbpwlu47r3abqmsi?t=Janet_Cyrus', 'Active'),
(91, 'Eden Mary', 'https://play.google.com/music/m/Ad4eodwlumlj7vnghnehxgdpvli?t=Eden_Mary', 'Active'),
(92, 'Mike Da Mellow', 'https://play.google.com/music/m/Auoquwa7fjjabr2xklfzwkmld4a?t=Mike_Da_Mellow', 'Active'),
(93, 'Aaron Rivera', 'https://play.google.com/music/m/A7x5gtngorxdejgl2ace74vm4ii?t=Aaron_Rivera', 'Active'),
(94, 'Janet Jones', 'https://play.google.com/music/m/Ars2eogla5j3usoxgucdk24vyfm?t=Janet_Jones', 'Active'),
(95, 'Lil D Nasty', 'https://play.google.com/music/m/A7oksnfgcx5pmfbaz436hommwi4?t=Lil_D_Nasty', 'Active'),
(96, 'Juanito Del Sur', 'https://play.google.com/music/m/Aszpxrggxbqclltgxrw4sa3kkbi?t=Juanito_Del_Sur', 'Active'),
(97, 'Charlotte Reed', 'https://play.google.com/music/m/Aivnypgsqsr53sqa2a37ri2i2wa?t=Charlotte_Reed', 'Active'),
(98, 'Brian Fergison', 'https://play.google.com/music/m/Anubqbjepkucmxfpq5ecfqtdc7e?t=Brian_Fergison', 'Active'),
(99, 'Real Hustler', 'https://play.google.com/music/m/Alb7jo4qngc7u5zvbritjuepery?t=Real_Hustler', 'Active'),
(100, 'EZ Hustler', 'https://play.google.com/music/m/Auhgx5t42wp7wqf2seaok47go6y?t=EZ_Hustler', 'Active'),
(101, 'Dante Pérez', 'https://play.google.com/music/m/Avk2r7vb3qreaedvkzajywzki4e?t=Dante_Perez', 'Active'),
(102, 'Lucy Alvaro', 'https://play.google.com/music/m/Ar6hrufxks5yrqnce5uuvup3ndy?t=Lucy_Alvaro', 'Active'),
(103, 'Robert Joe', 'https://play.google.com/music/m/A7d5hxd62ghavjh7sglz4rc7hqe?t=Robert_Joe', 'Active'),
(104, 'Kenneth Robers', 'https://play.google.com/music/m/Ar3zuog5cw5tf34dgzemtoijhzi?t=Kenneth_Robers', 'Active'),
(105, 'Justin Morris', 'https://play.google.com/music/m/A55vsl5w3h5lwrhcsi3fx47ggpi?t=Justin_Morris', 'Active'),
(106, 'Camilo González', 'https://play.google.com/music/m/Ahekmftvj7njjczdlybbvo5g2f4?t=Camilo_Gonzalez', 'Active'),
(107, 'Emiliano Garcia', 'https://play.google.com/music/m/Azkc3av4nljrzlpxsdgyqocxewq?t=Emiliano_Garcia', 'Active'),
(108, 'Royal Da Rapper', 'https://play.google.com/music/m/Aasbiwnxjfsclsgkvfujmuaurba?t=Royal_Da_Rapper', 'Active'),
(109, 'Max Mazing', 'https://play.google.com/music/m/A72ewu34zfgm7utrzqp5ycyuzuq?t=Max_Mazing', 'Active'),
(110, 'Nathan Jackson', 'https://play.google.com/music/m/As4gu53tw3bsdhf2hsngoqk3pg4?t=Nathan_Jackson', 'Active'),
(111, 'Clara Sánchez', 'https://play.google.com/music/m/Aiqdfjwmy5kxtznildt65h7g56m?t=Clara_Sanchez', 'Active'),
(112, 'Nala Williams', 'https://play.google.com/music/m/Anyhoqyoxyivos6zbi2qde3cmvu?t=Nala_Williams', 'Active'),
(113, 'Nicholas Lentz', 'https://play.google.com/music/m/Agj2fa67eo47ibd5hksvkqywvze?t=Nicholas_Lentz', 'Active'),
(114, 'Jelly Drops', 'https://play.google.com/music/m/Ajj2voh2q4bj2tkvdvv2vfwrtwq?t=Jelly_Drops', 'Active'),
(115, 'Layla Foster', 'https://play.google.com/music/m/Ajb6im4moiuadjdtz5v4x7oesqm?t=Layla_Foster', 'Active'),
(116, 'Mark Bentley', 'https://play.google.com/music/m/Ajoaij2ydc3btu5avltys5duwii?t=Mar_Bentley', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `bot_id` int(11) NOT NULL,
  `proxy` varchar(255) NOT NULL,
  `active` varchar(255) DEFAULT '0',
  `assign` tinyint(1) DEFAULT 0,
  `security` varchar(255) DEFAULT NULL,
  `coupon` varchar(100) DEFAULT NULL,
  `is_coupon_expired` tinyint(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `email`, `pwd`, `country`, `bot_id`, `proxy`, `active`, `assign`, `security`, `coupon`, `is_coupon_expired`) VALUES
(26, 'anthonyross198353@gmail.com', 'Android1234!', 'US', 1, '158.51.103.155:65083:breakingbots:6bda424ff3', 'Active', NULL, 'ufkfteik', 'B0DJP360NUUE60DX', 0),
(27, 'vivianbrown1916@gmail.com', 'Android123!', 'US', 15, '158.51.103.55:65083:breakingbots:6bda424ff3', 'Active', NULL, 'kzvvcfui', '27MTK7RA6HWDUTHR', 0),
(28, 'joelgraves19835@gmail.com', 'Android1234!', 'US', 2, '158.51.103.155:65083:breakingbots:6bda424ff3', 'Active', NULL, 'qkupquuk', 'GK6S1MKY32TCGPY5', 0),
(29, 'jessiefox186@gmail.com', 'Android1234!', 'US', 16, '158.51.103.25:65083:breakingbots:6bda424ff3', 'Active', NULL, 'ferzbwar', '9KCTR7A6HH65JS5R', 0),
(30, 'meredithro62@gmail.com', 'Android1234!', 'US', 3, '158.51.103.255:65083:breakingbots:6bda424ff3', 'Active', NULL, 'tssrgqdb', 'BN8XMXST924MMCE3', 0),
(31, 'cherylmorgan552@gmail.com', 'androidqwer1234!', 'US', 4, '158.51.101.7:65083:breakingbots:6bda424ff3', 'Active', NULL, 'klmcodgd', '1V69KXRRL7SBH31D', 0),
(32, 'rosewhite198249@gmail.com', 'Android1234!', 'US', 4, '158.51.101.77:65083:breakingbots:6bda424ff3', 'Active', NULL, 'playcsjv', 'DN6GZLRN7KN6NCXC', 0),
(33, 'davidgarza199@gmail.com', 'Android1234!', 'US', 18, '158.51.101.177:65083:breakingbots:6bda424ff3', 'Active', NULL, 'mfzajurq', '3XKUHMY32NCD08RZ', 0),
(34, 'bonniegonzalez115@gmail.com', 'hcgrglfa', 'US', 5, '158.51.101.37:65083:breakingbots:6bda424ff3', 'Active', NULL, 'fuziuoml', '09Z0T78RNAL63X2L', 0),
(35, 'krystalholmes1995@gmail.com', 'sojwqzao', 'US', 19, '158.51.101.90:65083:breakingbots:6bda424ff3', 'Active', NULL, 'xjisbbxz', 'KGAJ2HT22215A878', 0),
(36, 'pennywells19756@gmail.com', 'Android1234!', 'US', 6, '158.51.100.3:65083:breakingbots:6bda424ff3', 'Active', NULL, 'zkficchw', '6BRZ300X2AP9VE4P', 0),
(37, 'sharonwood198041@gmail.com', 'kwlvrpok', 'US', 20, '158.51.100.33:65083:breakingbots:6bda424ff3', 'Active', NULL, 'evxaktio', '8XVX08MVPXCDLGWF', 0),
(38, 'rosasimmons1935@gmail.com', 'Android1234!', 'US', 7, '158.51.100.133:65083:breakingbots:6bda424ff3', 'Active', NULL, 'djgxzglm', 'H2YA42JRA717285V', 0),
(39, 'addiecoleman133@gmail.com', 'Android1234!', 'US', 21, '158.51.100.233:65083:breakingbots:6bda424ff3', 'Active', NULL, 'nnyhhtpz', '2ALB4XMJJCSUPE07', 0),
(41, 'candybryant1972@gmail.com', 'Android1234!', 'US', 8, '158.51.102.1:65083:breakingbots:6bda424ff3', 'Active', NULL, 'vcloarfy', 'GYJKW4PS1KZH5XHU', 0),
(42, 'lauriecook19733@gmail.com', 'ieysdmmg', 'US', 22, '158.51.102.11:65083:breakingbots:6bda424ff3', 'Active', NULL, 'hpeddyqu', 'HPF2BUWH50Z0252Z', 0),
(43, 'jimmymyers1929@gmail.com', 'Android1234!', 'US', 9, '158.51.102.111:65083:breakingbots:6bda424ff3', 'Active', NULL, 'sfuqhlok', '1PAWUCPKE2KBW6BJ', 0),
(45, 'amydavis19858@gmail.com', 'Android1234!', 'US', 23, '158.51.102.91:65083:breakingbots:6bda424ff3', 'Active', NULL, 'irzxfrhs', 'CFYVFY1J9R0714C8', 0),
(65, 'coreycolli26@gmail.com', 'knqnfech', 'US', 10, '158.51.103.25:65083:breakingbots:6bda424ff3', 'Active', NULL, 'wqumhahg', '', 0),
(66, 'eddiepeterson166@gmail.com', 'nactsthb', 'US', 24, '158.51.101.7:65083:breakingbots:6bda424ff3', 'Active', NULL, 'pivhvdlr', '', 0),
(67, 'nancylong198480@gmail.com', 'crnnuixj', 'US', 11, '158.51.101.7:65083:breakingbots:6bda424ff3', 'Active', NULL, 'ftfvshel', '', 0),
(68, 'juanromero197653@gmail.com', 'pxekggzc', 'US', 25, '158.51.101.90:65083:breakingbots:6bda424ff3', 'Active', NULL, 'rhdameue', '', 0),
(69, 'yolandacun40@gmail.com', 'ooafihah', 'US', 12, '158.51.100.3:65083:breakingbots:6bda424ff3', 'Active', NULL, 'aokkgmot', '', 0),
(70, 'lilalowe198@gmail.com', 'sohrdjgc', 'US', 26, '158.51.100.63:65083:breakingbots:6bda424ff3', 'Active', NULL, 'jcbedzwe', '', 0),
(71, 'dianameyer199942@gmail.com', 'uydjgsil', 'US', 13, '158.51.102.1:65083:breakingbots:6bda424ff3', 'Active', NULL, 'nibuefep', '', 0),
(72, 'dianadavidson1955@gmail.com', 'ezkvimnd', 'US', 27, '158.51.102.211:65083:breakingbots:6bda424ff3', 'Active', NULL, 'quuedstg', '', 0),
(73, 'danielholmes275@gmail.com', 'ughqutra', 'US', 14, '158.51.102.91:65083:breakingbots:6bda424ff3', 'Active', NULL, 'ictnylco', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `log_time` datetime DEFAULT NULL,
  `type` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `account_id`, `content`, `log_time`, `type`) VALUES
(1, 31, 'Started playing track on https://play.google.com/music/m/Tr7rt7khfef3t2t4lwv2gwpnj5m?t=Id_Spent_Ten_Thousand_Hours_-_Max_Mazing for 111 seconds', '2020-06-09 14:31:58', 0);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `min_play` int(11) NOT NULL,
  `max_play` int(11) NOT NULL,
  `percent_play` int(11) NOT NULL,
  `min_rotation` int(11) NOT NULL,
  `max_rotation` int(11) NOT NULL,
  `local_time` tinyint(1) NOT NULL,
  `min_stream` int(11) NOT NULL,
  `max_stream` int(11) NOT NULL,
  `min_pause` int(11) NOT NULL,
  `max_pause` int(11) NOT NULL,
  `min_pause_frequency` int(11) NOT NULL,
  `max_pause_frequency` int(11) NOT NULL,
  `library_rotation` int(11) DEFAULT NULL,
  `add_library` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `min_play`, `max_play`, `percent_play`, `min_rotation`, `max_rotation`, `local_time`, `min_stream`, `max_stream`, `min_pause`, `max_pause`, `min_pause_frequency`, `max_pause_frequency`, `library_rotation`, `add_library`) VALUES
(1, 90, 120, 30, 30, 50, 1, 12, 16, 20, 50, 5, 10, 40, 20);

-- --------------------------------------------------------

--
-- Table structure for table `tracks`
--

CREATE TABLE `tracks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tracks`
--

INSERT INTO `tracks` (`id`, `name`, `link`, `status`) VALUES
(26, 'Feeling Good Like I Should', 'https://play.google.com/music/m/Tmacrwkcanowihkp3aw2w5gghmu?t=Feeling_Good_Like_I_Should_-_Brown_Skies', 'Active'),
(27, 'I Love It When You Call Me Señorita', 'https://play.google.com/music/m/Tnsc3676bwxh4w3zykqhr6mujrm?t=I_Love_It_When_You_Call_Me_Senorita_-_Thomas_Rivera__Ashley_Price', 'Active'),
(28, 'I Sold My Soul to the Devil for Designer', 'https://play.google.com/music/m/Tq3exbjc4zfwunykprkg4t47iba?t=I_Sold_My_Soul_to_the_Devil_for_Designer_-_Train_to_Mars', 'Active'),
(29, 'Two Step Then Cowboy Boogie Song', 'https://play.google.com/music/m/Tgfnx44wozitxpfuay43262zgkq?t=Two_Step_Then_Cowboy_Boogie_Song_-_Quincy_Rider', 'Active'),
(30, '2 Step Then Cowboy Boogie Song', 'https://play.google.com/music/m/Thoqlka66smqlw42qhhsql3vc6q?t=2_Step_Then_Cowboy_Boogie_-_Jimmy_Westside', 'Active'),
(31, 'I Was Getting Kinda Used to Being Someone You Loved', 'https://play.google.com/music/m/Tgce2pyyt5qt5ez2l7qrivwkrqq?t=I_Was_Getting_Kinda_Used_to_Being_Someone_You_Loved_-_Ryan_Howard', 'Active'),
(32, 'She Can Get a Taste', 'https://play.google.com/music/m/Tmetno4mnemilctxz67kpcpuxdq?t=She_Can_Get_a_Taste_-_Lil_Heavy_Chainz', 'Active'),
(33, 'Rythym of The Night', 'https://play.google.com/music/m/Txvgdldveo52tp2liatqobpfps4?t=Rythym_of_The_Night_-_Ritmo_Fuerte', 'Active'),
(34, 'Don\'t Stay Awake for Too Long', 'https://play.google.com/music/m/Txuhddcwx3maf2qdvvjfcvtqb3i?t=Dont_Stay_Awake_For_Too_Long_-_Cooper_Lee', 'Active'),
(35, 'Don\'t Stay Awake for Too Long', 'https://play.google.com/music/m/Twjuvvkx6fphy2chh67ps7jpgxi?t=Dont_Stay_Awake_for_Too_Long_-_JK_Jones', 'Active'),
(36, 'You\'re Such a Fucking Hoe', 'https://play.google.com/music/m/Tdxy2ik7dzhccarzszzsqa5h5xa?t=Youre_Such_a_Fucking_Hoe_-_Yung_Chainz', 'Active'),
(37, 'I\'m Gonna Take My Horse to the Old Town Road', 'https://play.google.com/music/m/Tj4afyhedt2zmdyxhy2r5psd4s4?t=Im_Gonna_Take_My_Horse_to_the_Old_Town_Road_-_Lil_Golden_Shades', 'Active'),
(38, 'Super Lonely', 'https://play.google.com/music/m/Tfudiramepukr6nrn5fpabn6lom?t=Super_Lonely_-_Lisa_Lauper', 'Active'),
(39, 'If the World Was Ending You\'d Come Over Right', 'https://play.google.com/music/m/Tzdtr7w2xozzifvzfykpapxkgtm?t=If_the_World_Was_Ending_Youd_Come_Over_Right_-_Ashley_Price__Bryan_Moore', 'Active'),
(40, 'I Got Hoes Calling', 'https://play.google.com/music/m/Tyxwsz52kfymeubgve4e3q5ny3y?t=I_Got_Hoes_Calling_-_Lil_Deal', 'Active'),
(41, 'Thinking You Could Live Without Me', 'https://play.google.com/music/m/T3lfm3xisjkmpkg267du5a3tbwm?t=Without_Me_-_Ashley_Craig', 'Active'),
(42, 'Thinking You Could Live Without Me', 'https://play.google.com/music/m/Tdx4yfokfsxh4d5fgcimhiv4c4q?t=Without_Me_Acoustic_-_Ashley_Craig', 'Active'),
(43, 'Thinking You Could Live Without Me', 'https://play.google.com/music/m/Tadog4mqs4cpknbhj5nzsd4jkwy?t=Thinking_You_Could_Live_Without_Me_-_Ashley_Craig', 'Active'),
(44, 'You Got It Girl', 'https://play.google.com/music/m/Tmmzniv6tlcp3phjwweweuwexre?t=You_Got_It_Girl_-_Yung_Nazty', 'Active'),
(45, '3 Nights at the Motel', 'https://play.google.com/music/m/Tjgyhmqnctamx7zu4j7hjqk7kna?t=3_Nights_at_the_Motel_-_Christian_Barnett', 'Active'),
(46, 'There Must Be Something in the Water', 'https://play.google.com/music/m/Ti2repihunjt4ju7r2kfx7pgta4?t=There_Must_Be_Something_in_the_Water_-_Kevin_Close', 'Active'),
(47, 'Did a Full 180', 'https://play.google.com/music/m/T5dxthnwk4ymg4a6cju5blsuzly?t=Did_a_Full_180_-_Lilly_Grayy', 'Active'),
(48, 'Nice to Nice to Know You Let\'s Do It Again', 'https://play.google.com/music/m/Tcqlprxfiecwv3nmrd2pcq5bxsm?t=Nice_to_Nice_to_Know_You_Lets_Do_It_Again_feat_Lil_Crazy_Style_-_Jenny_Jewel', 'Active'),
(49, 'I Got The Horses In The Back', 'https://play.google.com/music/m/Tb2exlkwxwqeo3mn4fgsgab7req?t=I_Got_The_Horses_In_The_Back_-_Lil_Miracle', 'Active'),
(50, 'Just Let Me Adore You', 'https://play.google.com/music/m/Tjldfuwcd5ygvpzx6tca5zgppve?t=Just_Let_Me_Adore_You_-_Franklin_James', 'Active'),
(51, 'I\'m a Bad Guy', 'https://play.google.com/music/m/Td7qrogw5lwfzwgj3ppu4fvma4e?t=Im_a_Bad_Guy_-_Giulia_Falls', 'Active'),
(52, 'I Hope She Cheats', 'https://play.google.com/music/m/Tfasu2b2qdb626vhw74ilfttuv4?t=I_Hope_She_Cheats_-_Eva_Cooper', 'Active'),
(53, 'Then I Hope She Cheats', 'https://play.google.com/music/m/Th6w6lnimfjvmygj5j4nsrjcjcq?t=Then_I_Hope_She_Cheats_-_Clarice_Morris', 'Active'),
(54, 'I Do My Hair Toss', 'https://play.google.com/music/m/T67t5eh5itnvufy5clgxahb45ky?t=I_Do_My_Hair_Toss_-_Jenny_Style', 'Active'),
(55, 'Era Mi Reina Ahora Es Mi Diosa', 'https://play.google.com/music/m/Tfs24djc4gimsdtl7rex2klzd3q?t=Era_Mi_Reina_Ahora_Es_Mi_Diosa_-_Manuel_Furtado', 'Active'),
(56, 'When I\'m with My Baby Yeah', 'https://play.google.com/music/m/Twuau54hkig2vknsgjvnyyy4obe?t=When_Im_with_My_Baby_Yeah_-_Leon_Jaar', 'Active'),
(57, 'Don\'t Stay Away for Too Long', 'https://play.google.com/music/m/Tnkbsx32yflrwvswokxnipp65kq?t=Dont_Stay_Away_for_Too_Long_-_Walton_Green', 'Active'),
(58, 'Feeling Good as Hell', 'https://play.google.com/music/m/Toxuov7ts72odmln62ormh4ktkm?t=Feeling_Good_as_Hell_-_Sarah_Walsh', 'Active'),
(59, 'This City (Gonna Break My Heart)', 'https://play.google.com/music/m/Tz2zfaubvcdn7jby6qkyg5y2fme?t=This_City_Gonna_Break_My_Heart_-_Will_Shepard', 'Active'),
(60, 'Renegade TikTok', 'https://play.google.com/music/m/Tsqvezp3m57cdsobjka77gepsii?t=Renegade_TikTok_-_Lil_Massive', 'Active'),
(61, 'We Party Like Post Malone', 'https://play.google.com/music/m/T4mwqxpqwtcnitpgqef3jcjr5h4?t=We_Party_Like_Post_Malone_-_Beets', 'Active'),
(62, 'I Still See The Shadows In My Room', 'https://play.google.com/music/m/Tjuu24wcz3o2knp66xpzveas6eq?t=I_Still_See_The_Shadows_In_My_Room_-_Dem_Rap_Bolz', 'Active'),
(63, 'If You Don\'t Wanna See Me Dancing With Somebody', 'https://play.google.com/music/m/Tr2o6than3vu6gsbhocm6m6itjy?t=If_You_Dont_Wanna_See_Me_Dancing_With_Somebody_-_Toya_Madison', 'Active'),
(64, 'It Isn\'t In My Blood', 'https://play.google.com/music/m/Twn4is3gyrtomasoa64q3okpaui?t=It_Isnt_In_My_Blood_-_Cooper_Lee', 'Active'),
(65, 'Vamos Pa La Playa', 'https://play.google.com/music/m/Thmypho7vm4setttmjvhe2cisfy?t=Vamos_Pa_La_Playa_-_Manuel_Furtado', 'Active'),
(66, 'I Could Dance Like Michael Jackson', 'https://play.google.com/music/m/Txvtmdeo7vl7oy2r6dn4wlgpp3i?t=I_Could_Dance_Like_Michael_Jackson_-_Dem_Rap_Bolz', 'Active'),
(67, 'I\'m a Savage TikTok', 'https://play.google.com/music/m/Twtxufrxi2v4lircwta5zzevd7y?t=Im_a_Savage_TikTok_-_Jenny_Style', 'Active'),
(68, 'The House Don\'t Fall When the Bones Are Good', 'https://play.google.com/music/m/Ts7imf4rrc4gxeo45dinu7bpa5e?t=The_House_Dont_Fall_When_the_Bones_Are_Good_-_Ava_Watson', 'Active'),
(69, 'Estar Soltera Está de Moda', 'https://play.google.com/music/m/Tznn6s222lzsjj54xlorsbrgywm?t=Estar_Soltera_Esta_de_Moda_-_Juan_Perales', 'Active'),
(70, 'This That Hot Girl Bummer Anthem', 'https://play.google.com/music/m/Ten2e4uaj2laub6keahd7cegc5a?t=This_That_Hot_Girl_Bummer_Anthem_-_Platinum_Tape', 'Active'),
(71, 'Fast 400 on the Dash', 'https://play.google.com/music/m/Tt3rk5ix2cavwuy3n5lhdxyydr4?t=Fast_400_on_the_Dash_Instrumental_-_Metrixx', 'Active'),
(72, 'Fast 400 on the Dash', 'https://play.google.com/music/m/Tkjylnabwkfhttcaiwykghslddy?t=Fast_400_on_the_Dash_-_Golden_Chain', 'Active'),
(73, 'Dancing Is What to Do', 'https://play.google.com/music/m/Twesrckavw5viefldolij44kcbm?t=Dancing_Is_What_to_Do_-_Ray-X', 'Active'),
(74, 'Drink Till I\'m Drunk', 'https://play.google.com/music/m/Twsgxcvfhwqbjgokgt4ltmbadoq?t=Drink_Till_Im_Drunk_-_Lil_Heavy_Chainz', 'Active'),
(75, 'Baby I Got One Thing Right', 'https://play.google.com/music/m/T4w4dowxmyf4wafki2h7edpddn4?t=Baby_I_Got_One_Thing_Right_-_Bryan_Moore', 'Active'),
(76, 'Y Si Veo a Tu Mama', 'https://play.google.com/music/m/T52a4trfznfxkkk5wqcknukyt7m?t=Y_Si_Veo_a_Tu_Mama_-_Jack_Suarez', 'Active'),
(77, 'Everything Means Nothing If I Can\'t Have You', 'https://play.google.com/music/m/Tl6fzfakysxk6wpo3orjsebkdie?t=Everything_Means_Nothing_If_I_Cant_Have_You_-_Thomas_Rivera', 'Active'),
(78, 'Nope Yup', 'https://play.google.com/music/m/Tjlyufjo666vvhbi46uahqc47fa?t=Nope_Yup_-_Lil_Skeet', 'Active'),
(79, 'Now the Day Bleeds Into Nightfall', 'https://play.google.com/music/m/Teg3gpx5i5wdfmlvqgd3pfdzltq?t=Now_the_Day_Bleeds_Into_Nightfall_-_Noah_Foster', 'Active'),
(80, 'Now the Day Bleeds Into Nightfall', 'https://play.google.com/music/m/Tz42fm7xxuatlnivjdhqp2xy564?t=Now_the_Day_Bleeds_in_to_Nightfall_-_Kevin_Close', 'Active'),
(81, 'Go Shorty It\'s Your Birthday', 'https://play.google.com/music/m/Tesph2oaejelbifdemzq57o7oo4?t=Go_Shorty_Its_Your_Birthday_-_Lil_C_West', 'Active'),
(82, 'She Put My Name in Yellow Hearts', 'https://play.google.com/music/m/Tjdrkbopp3kt5mdisth3k5ayade?t=She_Put_My_Name_in_Yellow_Hearts_-_Lil_Deal', 'Active'),
(83, 'You Like Me My Gucci Shoes TikTok', 'https://play.google.com/music/m/Tc4jyjotqrxmsrtkqib6qyoo6de?t=You_Like_Me_My_Gucci_Shoes_TikTok_-_Sirav_Salu', 'Active'),
(84, 'My Last Made Me Feel like I Would Never Try Again', 'https://play.google.com/music/m/T3f6gq7cva4xvkigpflxlpiyeim?t=My_Last_Made_Me_Feel_like_I_Would_Never_Try_Again_-_Life_Loops', 'Active'),
(85, 'Electrify My Heart', 'https://play.google.com/music/m/Tevdkzzgnerzrinfhiu3c22nrru?t=Electrify_My_Heart_-_Dreaming_High', 'Active'),
(86, 'Cause You Had a Bad Day', 'https://play.google.com/music/m/Tkroom3aj6zcf67n6y3uoarz5ni?t=Cause_You_Had_a_Bad_Day_-_Cooper_Lee', 'Active'),
(87, 'I Just Poured Something in My Cup', 'https://play.google.com/music/m/Tgxcf6ue3uqnkkloqygs5ruac7q?t=I_Just_Poured_Something_in_My_Cup_-_Lil_Deela', 'Active'),
(88, 'Stupid Boy Think That I Need Him', 'https://play.google.com/music/m/Tv46xhz3q6wgogmqwrtkmybebgu?t=Stupid_Boy_Think_That_I_Need_Him_-_Jilly_Queen', 'Active'),
(89, 'Vamos a Pasar Un Buen Rato', 'https://play.google.com/music/m/Tckik7swhjp3ko5q45fvagzzmje?t=Vamos_a_Pasar_Un_Buen_Rato_-_Manuel_Furtado', 'Active'),
(90, 'Vamos a Pasar Un Buen Rato', 'https://play.google.com/music/m/Tkeadwgy52zkkosoyqs2p4h6onm?t=Vamos_a_Pasar_Un_Buen_Rato_-_Nicolas_Rivas', 'Active'),
(91, 'Yo Pedi Un Trago y Ella La Botella', 'https://play.google.com/music/m/Ty5i6uzlkm4kr53ebyijlv2i4wa?t=Yo_Pedi_Un_Trago_y_Ella_La_Botella_-_Manuel_Furtado', 'Active'),
(92, 'Yo Pedi Un Trago y Ella La Botella', 'https://play.google.com/music/m/T3zrpxewcl6vmcgbfsfyv522kfe?t=Yo_Pedi_un_Trago_y_Ella_la_Botella_-_Juanito_Del_Sur', 'Active'),
(93, 'These Are My Only Intentions', 'https://play.google.com/music/m/Txsrlwomdwdakzmfv565tp6dbje?t=These_Are_My_Only_Intentions_-_Franklin_James', 'Active'),
(94, 'I Know I\'m Super Fly', 'https://play.google.com/music/m/Tbw4hbi6y6aruqd6ava46ugfzge?t=I_Know_Im_Super_Fly_-_Lil_Deal', 'Active'),
(95, 'Why Don\'t You Say So', 'https://play.google.com/music/m/Tlkuuybjkj65yutmj3prvjeiccq?t=Why_Dont_You_Say_So_-_Ashley_Price', 'Active'),
(96, 'One Kiss is All it Takes', 'https://play.google.com/music/m/Tgslkk3yvwmsunm53rpnyst4l5y?t=One_Kiss_is_All_it_Takes_-_Ashley_Craig', 'Active'),
(97, 'One Kiss is All it Takes', 'https://play.google.com/music/m/T7mguydlaz3mib3pxiy7vnk6aoy?t=One_Kiss_is_All_it_Takes_-_Natalie_Summer__Calvin_Sparks', 'Active'),
(98, 'Feeling Blessed Never Stressed', 'https://play.google.com/music/m/Th3udayfkawizpvwvo35bhjgnlu?t=Feeling_Blessed_Never_Stressed_-_Yung_Nazty', 'Active'),
(99, 'It\'s Been a Long Day Without You My Friend', 'https://play.google.com/music/m/T2p5r2hvhms4xghsvz4zeeilpwe?t=Its_Been_a_Long_Day_Without_You_My_Friend_-_Mike_Da_Mellow', 'Active'),
(100, 'I Don’t Wanna Be a One Man Band', 'https://play.google.com/music/m/Tinnmplqbzg6pytcrjmimd4dosy?t=I_Dont_Wanna_Be_a_One_Man_Band_-_Aaron_Rivera', 'Active'),
(101, 'Me Decido Por Ti Te Decides Por Mi', 'https://play.google.com/music/m/Txz2wcorhxbddmv7nd6uwzptxeq?t=Me_Decido_Por_Ti_Te_Decides_Por_Mi_-_Carlito_Flores', 'Active'),
(102, 'Sunday Best', 'https://play.google.com/music/m/Txgto64imm2dm7shd2qgzzc2oca?t=Sunday_Best_-_Alex_Lenard', 'Active'),
(103, 'Watch Me Dissolve Slowly', 'https://play.google.com/music/m/Ti5q3mnpsanbc2c5vbsk27dnkgu?t=Watch_Me_Dissolve_Slowly_-_Dreaming_High', 'Active'),
(104, 'My Milkshake Brings All the Boys to the Yard', 'https://play.google.com/music/m/T3ky4daru4zp5mhngmittehrlha?t=My_Milkshake_Brings_All_the_Boys_to_the_Yard_-_Jenny_Style', 'Active'),
(105, 'Why Men Great Til They Gotta Be Great?', 'https://play.google.com/music/m/Tuh2w7b5xznix3w5h4hcudorram?t=Why_Men_Great_Til_They_Gotta_Be_Great_-_Ashley_Price', 'Active'),
(106, 'Oh No I Got a Disease', 'https://play.google.com/music/m/T2o3szgr464wg2cb4xuagozr3bq?t=Oh_No_I_Got_a_Disease_-_Buss_Crew', 'Active'),
(107, 'We Are Never Ever Going Home', 'https://play.google.com/music/m/Tistmfkt4qysgaz5l2klddvqjeu?t=We_Are_Never_Ever_Going_Home_-_Calvin_Sparks', 'Active'),
(108, 'Fuck You and Jennifer', 'https://play.google.com/music/m/Tkkgv3heknvdotwv4dutesiiqr4?t=You__Jennifer_-_Fuck_and_Go', 'Active'),
(109, 'Fuck You and Jennifer', 'https://play.google.com/music/m/Toxwrb67ypu7cp7mp573smt2mdy?t=Fuck_You_and_Jennifer_-_Jilly_Queen', 'Active'),
(110, 'I Get Knocked Down But I Get Up Again', 'https://play.google.com/music/m/Tblgn4hlwkkqz4xatbpdyvddqgi?t=I_Get_Knocked_Down_But_I_Get_Up_Again_-_Dirty_Land', 'Active'),
(111, 'When I Die Put My Money in the Grave', 'https://play.google.com/music/m/Tfjof2aqtbgpvcnhpsixcyzcwwe?t=When_I_Die_Put_My_Money_in_the_Grave_-_Young_Rhymes', 'Active'),
(112, 'Deathbed', 'https://play.google.com/music/m/T2k4sa5573bftjcxb7ncf46snii?t=death_bed_coffee_for_your_head_-_Dreaming_High', 'Active'),
(113, 'Deathbed', 'https://play.google.com/music/m/Tiwr6ngt5qyxclbttrdte7dwmzu?t=Deathbed_-_Alex_Lenard', 'Active'),
(114, 'Don\'t Show Up Don\'t Come Out', 'https://play.google.com/music/m/T6qyg5wl24yzf37pc4f7y5pqhh4?t=Dont_Show_Up_Dont_Come_Out_-_Charlotte_Reed', 'Active'),
(115, 'Don\'t Show Up Don\'t Come Out', 'https://play.google.com/music/m/T6kt2mevl76mmuoaktbm5in6i2q?t=Dont_Show_Up_Dont_Come_Out_-_Charlotte_Reed', 'Active'),
(116, 'Don\'t Show Up Don\'t Come Out', 'https://play.google.com/music/m/Tod77cohaoeimludy3o7qiltjzu?t=dont_show_up_dont_come_out_-_Megan_Mier', 'Active'),
(117, 'Had to Put a Stick in the Box', 'https://play.google.com/music/m/T4mazjg3bdbnig7cwdxtk223a3y?t=Had_to_Put_a_Stick_in_the_Box_-_Lil_Collins', 'Active'),
(118, 'Meet Me at The London', 'https://play.google.com/music/m/Tbiends72tnga6xctosiyeaka64?t=Meet_Me_at_The_London_-_Yung_Nazty', 'Active'),
(119, 'Three Nights', 'https://play.google.com/music/m/Td63adyhk2gogjsuker5scm2wf4?t=Three_Nights_-_Don_Blaine', 'Active'),
(120, 'Come On Come On Turn the Radio On', 'https://play.google.com/music/m/Tubyjzkclnpndiehhilnqunxqpm?t=Come_On_Come_On_Turn_the_Radio_On_-_Lilly_Oxford', 'Active'),
(121, '10000 Hours', 'https://play.google.com/music/m/T6wipyt4qwficdy435sqwq63sbq?t=10000_Hours_-_Thomas_Vee', 'Active'),
(122, 'Why You So Obsessed With Me', 'https://play.google.com/music/m/T4lk26wlaboewzgwc5umfs7igeq?t=Why_You_So_Obsessed_With_Me_-_Ashley_Craig', 'Active'),
(123, 'Why You So Obsessed With Me', 'https://play.google.com/music/m/Te3yearauzemgpihtkltl7k5uru?t=Why_U_So_Obsessed_With_Me_-_Margaret_Reed', 'Active'),
(124, 'Why You So Obsessed With Me', 'https://play.google.com/music/m/Ts4job3gkgxvf73gsay4riu5sle?t=Why_Are_You_So_Obsessed_With_Me_-_Monica_Loomer', 'Active'),
(125, 'I Will Always Remember the Day You Kissed My Lips', 'https://play.google.com/music/m/Tscqwy5pdnmjaqtosuvzwerud2i?t=I_Will_Always_Remember_the_Day_You_Kissed_My_Lips_-_Janet_Cyrus', 'Active'),
(126, 'Didn\'t Even Notice', 'https://play.google.com/music/m/Tii6ypahcl6ouqpwe7dhrsznlra?t=Didnt_Even_Notice_-_Ashley_Craig', 'Active'),
(127, 'When I Popped off and Your Girl Gave Me Just a Little Bit', 'https://play.google.com/music/m/Tzvfbnwlnnbyhmittgms6fr6pma?t=When_I_Popped_off_and_Your_Girl_Gave_Me_Just_a_Little_Bit_-_Real_Hustler', 'Active'),
(128, 'You Just Gotta Be Worth It', 'https://play.google.com/music/m/Tur3lhneqeo73j5qrcpp6pzhnzq?t=You_Just_Gotta_Be_Worth_It_-_Lil_Skeet', 'Active'),
(129, 'Cuando El DJ Pone La Música', 'https://play.google.com/music/m/Tbzabkr5fhgvwnnbajhbhndtscm?t=Cuando_El_DJ_Pone_La_Musica_-_Pablo_Velazquez', 'Active'),
(130, 'I Needed to Lose You to Find Me', 'https://play.google.com/music/m/Tbegp7h3zzraojmcrgyi4dydcyy?t=I_Needed_to_Lose_You_to_Find_Me_-_Lisa_Lauper', 'Active'),
(131, 'BOP on Broadway', 'https://play.google.com/music/m/Txh3okjc6ftim5mh6ujg6ga7pxq?t=BOP_on_Broadway_-_King_Stitch', 'Active'),
(132, 'I Fucking Love You', 'https://play.google.com/music/m/Tavs57tlcae6m3dshv6slxvr5ta?t=I_Fucking_Love_You_-_Yung_Nazty', 'Active'),
(133, 'Yeah We\'re Golden Baby Girl We\'re Golden', 'https://play.google.com/music/m/Tofmf2arur7io2h3qqeeq2qepvy?t=Yeah_Were_Golden_Baby_Girl_Were_Golden_-_Justin_Morris', 'Active'),
(134, 'Just Say to Me What You Want From Me', 'https://play.google.com/music/m/Ty7kfuldi56edvc7ox2pjpj5z2u?t=Just_Say_to_Me_What_You_Want_From_Me_-_Lil_Skeet', 'Active'),
(135, 'Bust That Pussy Open', 'https://play.google.com/music/m/Tlkk64kbuvfd3ijetpmer3kmebq?t=Bust_That_Pussy_Open_-_EZ_Hustler', 'Active'),
(136, 'I\'m a Creep I\'m a Weirdo', 'https://play.google.com/music/m/Tpkdikp37am3kgxvhdzzz5744ei?t=Im_a_Creep_Im_a_Weirdo_-_Train_to_Mars', 'Active'),
(137, 'I Hate Your Friends and They Hate Me Too', 'https://play.google.com/music/m/Tfa3jnpusfari6hfrt4pczpjamy?t=I_Hate_Your_Friends_and_They_Hate_Me_Too_-_Easy_Smith', 'Active'),
(138, 'I Hate Your Friends and They Hate Me Too', 'https://play.google.com/music/m/T2b3j4lu6hk5zlsf4jixmij6cne?t=I_Hate_Your_Friends_and_They_Hate_Me_Too_-_JK_Jones', 'Active'),
(139, 'I\'m a Savage Classy Bougie Ratchet', 'https://play.google.com/music/m/Tobaicehi5aliei3rmhkx66v254?t=Im_a_Savage_Classy_Bougie_Ratchet_-_Janet_Jones', 'Active'),
(140, 'Working on the Weekend Like Usual', 'https://play.google.com/music/m/Ttjmmvzinetdc7hrw6qwmmrypim?t=Working_on_the_Weekend_Like_Usual_-_Lil_Deela', 'Active'),
(141, 'Y Cuando Yo Te Vi', 'https://play.google.com/music/m/Trnb3m3vwajywcl5ekdjct7rcbe?t=Y_Cuando_Yo_Te_Vi_-_Martin_Mariano', 'Active'),
(142, 'Ride Till I Can\'t No More', 'https://play.google.com/music/m/T65644zqbezhueeak57fgny4d6y?t=Ride_Till_I_Cant_No_More_-_Lil_Glory', 'Active'),
(143, 'Somebody You Loved', 'https://play.google.com/music/m/Tnd5lvzudrbaa5ikwgn25uum7uq?t=Somebody_You_Loved_-_Nicholas_Lentz', 'Active'),
(144, 'Come Closer I\'ll Give You All My Love', 'https://play.google.com/music/m/Txusl5njw3ant2zqmypscolo7wm?t=Come_Closer_Ill_Give_You_All_My_Love_-_Jelly_Drops', 'Active'),
(145, 'I\'m a Lonely Bitch', 'https://play.google.com/music/m/Turpxggj7h3slqfmrbhvvbfs6su?t=Im_a_Lonely_Bitch_-_Lilly_Oxford', 'Active'),
(146, 'Memories Bring Back You', 'https://play.google.com/music/m/Tqkdloynieu4m3b3xade24kmlny?t=Memories_Bring_Back_You_-_Kenneth_Robers', 'Active'),
(147, 'Pero Si Le Ponen La Cancion', 'https://play.google.com/music/m/Tjo4t352use6dibskkeimjsna3u?t=Pero_Si_Le_Ponen_La_Cancion_-_Clara_Sanchez', 'Active'),
(148, 'Gonna Do the Two Step', 'https://play.google.com/music/m/Te6z53blq4ito63hzzome4ntqji?t=Gonna_Do_the_Two_Step_-_Mark_Bentley', 'Active'),
(149, 'I Let My Guard Down and Then You Pulled the Rug', 'https://play.google.com/music/m/Th6bddjg4ud4ebxiknuh5aj2ab4?t=I_Let_My_Guard_Down_and_Then_You_Pulled_the_Rug_-_Ricky_Strauss', 'Active'),
(150, 'I Work Hard Everyday', 'https://play.google.com/music/m/Tlb3elkafpkj2yw3upkjguvqgye?t=I_Work_Hard_Everyday_-_Yung_Chainz', 'Active'),
(151, 'But I Got One Thing Right', 'https://play.google.com/music/m/T5oidwkomyfvlhkvhf7m5iulmga?t=But_I_Got_One_Thing_Right_-_Thomas_Rivera', 'Active'),
(152, 'I Have Died Everyday Waiting for You', 'https://play.google.com/music/m/Tlmxqtel23pkfocv7haqcwujy4i?t=I_Have_Died_Everyday_Waiting_for_You_-_Layla_Foster', 'Active'),
(153, 'I Just Want You to Know Who I Am', 'https://play.google.com/music/m/T4suv3uhefkhfnewcxldv6g7tpy?t=I_Just_Want_You_to_Know_Who_I_Am_-_Cooper_Lee', 'Active'),
(154, 'Don\'t Stay Awake for Too Long', 'https://play.google.com/music/m/Txuhddcwx3maf2qdvvjfcvtqb3i?t=Dont_Stay_Awake_For_Too_Long_-_Cooper_Lee', 'Active'),
(155, 'Don\'t Stay Awake for Too Long', 'https://play.google.com/music/m/Twjuvvkx6fphy2chh67ps7jpgxi?t=Dont_Stay_Awake_for_Too_Long_-_JK_Jones', 'Active'),
(156, 'He Comes Alive at Midnight', 'https://play.google.com/music/m/Tkrz5dro5vzuaqsn6up7dip55eu?t=He_Comes_Alive_at_Midnight_-_Cora_Brooks', 'Active'),
(157, 'Baby Si Te Vas Consigue Dos', 'https://play.google.com/music/m/Tjnoiyrafucjziqip3kwprceyea?t=Baby_Si_Te_Vas_Consigue_Dos_-_Martin_Malon', 'Active'),
(158, 'That\'s the Moral of the Story', 'https://play.google.com/music/m/Thmyiguxcudihcutyvwlkyy5ln4?t=Thats_the_Moral_of_the_Story_-_Natalie_Summer', 'Active'),
(159, 'I Just Took a DNA Test', 'https://play.google.com/music/m/Temeyyvrmsiluwtq2bgnmaqpt44?t=I_Just_Took_a_DNA_Test_-_Nala_Williams', 'Active'),
(160, 'I Never Feel so Loved', 'https://play.google.com/music/m/Tvhoi2vqtzzegdah4mfvklcaxba?t=I_Never_Feel_so_Loved_-_Lisa_Lauper', 'Active'),
(161, 'It Go Right Foot up Left Foot Slide', 'https://play.google.com/music/m/Taa3yc5z4mhvhzqbnifqvq3r5nq?t=It_Go_Right_Foot_up_Left_Foot_Slide_-_Lil_Deela', 'Active'),
(162, 'You Are the Reason Why I\'m Still Hanging On', 'https://play.google.com/music/m/Tn42ooh6tw6jyanvbcn2s6mflgq?t=You_Are_the_Reason_Why_Im_Still_Hanging_On_-_Don_Blaine', 'Active'),
(163, 'I\'m the Highest in the Room', 'https://play.google.com/music/m/Tnrwgengcgf66gkptpliokfpwna?t=Im_the_Highest_in_the_Room_-_Lil_Deal', 'Active'),
(164, 'Please Don\'t Break My Heart', 'https://play.google.com/music/m/Tqfsybsqhm7qmmbbsovdurdglqe?t=Please_Dont_Break_My_Heart_-_Will_Shepard', 'Active'),
(165, 'Hoy Se Bebe Hoy Se Gasta', 'https://play.google.com/music/m/Trdvtf2bymwuuiljoaggid2hyje?t=Hoy_Se_Bebe_Hoy_Se_Gasta_-_Martin_Malon', 'Active'),
(166, 'I Would Give You the World', 'https://play.google.com/music/m/Teivbirz4ydskn3mg6hfuu67lye?t=I_Would_Give_You_the_World_-_Yung_Nazty', 'Active'),
(167, 'Si Veo a Tu Mamá', 'https://play.google.com/music/m/Trufym2ngebr63o3pt7lnkna46m?t=Si_Veo_a_Tu_Mama_-_Mariano_Lombardo', 'Active'),
(168, 'I\'m Never Gonna Dance Again', 'https://play.google.com/music/m/Tcloaxwkyqixg4uajbbd2hygkb4?t=Im_Never_Gonna_Dance_Again_-_Will_Shepard', 'Active'),
(169, 'You Did Me Wrong', 'https://play.google.com/music/m/Tpob6h3lvfl2q6gfzxdcnmwotcm?t=You_Did_Me_Wrong_-_Lil_Skeet', 'Active'),
(170, 'Open up the Safe Bitches Got a Lot to Say', 'https://play.google.com/music/m/Tfepjimn5umj6gskiyijbb2ax2m?t=Open_up_the_Safe_Bitches_Got_a_Lot_to_Say_-_Lil_Clear', 'Active'),
(171, 'Do You Ever Feel Like a Misfit?', 'https://play.google.com/music/m/T2jgtogwcacjzq7gpsivtr6whc4?t=Do_You_Ever_Feel_Like_a_Misfit_-_Lisa_Lauper', 'Active'),
(172, 'Everybody in the Club Getting Tipsy', 'https://play.google.com/music/m/Tduc5yykv7citmj6l5u5y3iqxw4?t=Everybody_in_the_Club_Getting_Tipsy_-_KJ_LOW', 'Active'),
(173, 'I Got Hoes Callin\'', 'https://play.google.com/music/m/Tqswvxd2muu4i4scaa6dbuiw2e4?t=I_Got_Hoes_Callin_-_Lil_Deela', 'Active'),
(174, 'I Got Hoes Callin\'', 'https://play.google.com/music/m/Tyxwsz52kfymeubgve4e3q5ny3y?t=I_Got_Hoes_Calling_-_Lil_Deal', 'Active'),
(175, 'I\'m No Good at Goodbyes', 'https://play.google.com/music/m/Twtmqk2rg4qvaxzwzomgwbtjwmu?t=Im_No_Good_at_Goodbyes_-_Brown_Skies', 'Active'),
(176, 'So Before You Go', 'https://play.google.com/music/m/Tg24ccwqrjquz2qbura7zgnarue?t=So_Before_You_Go_-_Kevin_Close', 'Active'),
(177, 'Right Foot Up Left Foot Slide', 'https://play.google.com/music/m/Tpnme2ep6ihthaiuotguyvg4vw4?t=Right_Foot_Up_Left_Foot_Slide_-_RapGem', 'Active'),
(178, 'Everything Litty I Love It When Its Hot', 'https://play.google.com/music/m/Tnrx4etlxhnstvspl6elwe7zaua?t=Everything_Litty_I_Love_It_When_Its_Hot_-_Lil_Deal', 'Active'),
(179, 'Hey Macarena', 'https://play.google.com/music/m/Tlh7k4l5spad32efbk6zjavwyci?t=Hey_Macarena_-_Carlito_Flores', 'Active'),
(180, 'Left Foot Up Right Foot Slide', 'https://play.google.com/music/m/Txcl6wqxwovzsvtfbuzfnpd5vbm?t=Left_Foot_Up_Right_Foot_Slide_-_Yung_Nazty', 'Active'),
(181, 'Blueberry Fuego', 'https://play.google.com/music/m/Tw4uffitztgtgxrejhyiizrpwmq?t=Blueberry_Fuego_-_RapGem', 'Active'),
(182, 'I Want Your Stupid Love', 'https://play.google.com/music/m/Tfesnodsabjecsa26raoxauaxga?t=I_Want_Your_Stupid_Love_-_Mary_Cry', 'Active'),
(183, 'Shorty Is a Like a Melody in My Head', 'https://play.google.com/music/m/T5yyvaf456vjll6gtpzsuuzwx2q?t=Shorty_Is_a_Like_a_Melody_in_My_Head_-_Lil_Collins', 'Active'),
(184, 'Drinks Bring Back All the Memories', 'https://play.google.com/music/m/Tokag5zxwzxk7ub4aebtxifv5mq?t=Drinks_Bring_Back_All_the_Memories_-_Brian_Fergison', 'Active'),
(185, 'Drinks Bring Back All the Memories', 'https://play.google.com/music/m/T5kdl5wvomwwktozeq64upoz5sa?t=Drinks_Bring_Back_All_the_Memories_-_Brian_Fergison', 'Active'),
(186, 'I\'d Spent Ten Thousand Hours', 'https://play.google.com/music/m/Tr7rt7khfef3t2t4lwv2gwpnj5m?t=Id_Spent_Ten_Thousand_Hours_-_Max_Mazing', 'Active'),
(187, 'I\'d Spent Ten Thousand Hours', 'https://play.google.com/music/m/Tjbngoyd2q3iyjjlrx4yy6qnpje?t=Id_Spent_10000_Hours_-_Mike_Bry', 'Active'),
(188, 'Walk It Like I Talk It', 'https://play.google.com/music/m/Tm4s6ooshzyvgbvxshqxyatw4ym?t=Walk_It_Like_I_Talk_It_-_King_Stitch', 'Active'),
(189, 'I Don\'t Want No Scrubs', 'https://play.google.com/music/m/Tako7hw65xps5dpcq3w7a2ervo4?t=I_Dont_Want_No_Scrubs_-_Ashley_Price', 'Active'),
(190, 'Like a Red Nose', 'https://play.google.com/music/m/Tdnxvt5i7difirzcjcyrawzdey4?t=Like_a_Red_Nose_-_Yung_Nazty', 'Active'),
(191, 'Tu Estas Pa Comerte Toda Todita', 'https://play.google.com/music/m/T2ryxh5thd6pufleycaeym6tnf4?t=Tu_Estas_Pa_Comerte_Toda_Todita_-_Martin_Malon', 'Active'),
(192, 'Bust Down Thotiana', 'https://play.google.com/music/m/Tfpsytgp3aabnohltk6g4mkra3u?t=Bust_Down_Thotiana_-_Buss_Crew', 'Active'),
(193, 'It\'s Hard to Breath But That\'s Alright', 'https://play.google.com/music/m/Tertwqskukyfywtzkb7nmsibig4?t=Its_Hard_to_Breath_But_Thats_Alright_-_Owen_King', 'Active'),
(194, 'Que Tu Haras Si Te Digo Mis Fantasias Contigo', 'https://play.google.com/music/m/Tpfp6vonnermbya5kq5eaceiyqy?t=Que_Tu_Haras_Si_Te_Digo_Mis_Fantasias_Contigo_-_Emiliano_Garcia', 'Active'),
(195, 'Uno Dos Tres She a Thot Tho', 'https://play.google.com/music/m/Troyznjx3dvowd4cez2ra7ndc7e?t=Uno_Dos_Tres_She_a_Thot_Tho_-_Royal_Da_Rapper', 'Active'),
(196, 'You Can Have Whatever You Like', 'https://play.google.com/music/m/Thqgfxxu5aicrbpodnjdemxd7sq?t=You_Can_Have_Whatever_You_Like_-_Lil_Heavy_Chainz', 'Active'),
(197, 'Cause I Keep Digging Myself down Deeper', 'https://play.google.com/music/m/T63qqyg5ibmp6cbbikwfq4x6ei4?t=Cause_I_Keep_Digging_Myself_down_Deeper_-_Janet_Cyrus', 'Active'),
(198, 'I Swear to God You Stupid Bitch', 'https://play.google.com/music/m/Tztt6vfdieydjt7fp55ldhcc2b4?t=I_Swear_to_God_You_Stupid_Bitch_-_Lil_D_Nasty', 'Active'),
(199, 'Tú Me Tienes Loco Contigo', 'https://play.google.com/music/m/T7btjgqzv3oneybudd3oh7tqesy?t=Tu_Me_Tienes_Loco_Contigo_-_Camilo_Gonzalez', 'Active'),
(200, 'Turn The Lights Down Low', 'https://play.google.com/music/m/Tumigf6j3lalhq2rxf4ep7dttbe?t=Turn_The_Lights_Down_Low_-_Nathan_Jackson', 'Active'),
(201, 'I Don\'t Care at All', 'https://play.google.com/music/m/Toh5ptitpph6moaserpnah2bs4q?t=I_Dont_Care_at_All_-_Lucy_Alvaro', 'Active'),
(202, 'I\'m a Savage Classy Bouji Ratchet', 'https://play.google.com/music/m/Tlmfv5igv44zo5lfz4l37uepqle?t=Im_a_Savage_Classy_Bouji_Ratchet_-_Nasty_Power', 'Active'),
(203, 'Maya Hee Maya Hoo', 'https://play.google.com/music/m/Tksz5rvcvabcfqrcofefnztphle?t=Maya_Hee_Maya_Hoo_-_Dragon_Days', 'Active'),
(204, 'Get Up On The Floor', 'https://play.google.com/music/m/Tnmjocca4t2f3j55kw3kkl5n3qy?t=Get_Up_On_The_Floor_-_Calvin_Sparks', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracks`
--
ALTER TABLE `tracks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `library`
--
ALTER TABLE `library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tracks`
--
ALTER TABLE `tracks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
