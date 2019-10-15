-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 13, 2019 at 05:38 AM
-- Server version: 8.0.13-4
-- PHP Version: 7.2.19-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `3XCpN5NUQo`
--

-- --------------------------------------------------------

--
-- Table structure for table `ExamPaper`
--

CREATE TABLE `ExamPaper` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Url` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ExamPaper`
--

INSERT INTO `ExamPaper` (`ID`, `Name`, `Url`) VALUES
(1, 'IsiZulu FAL P1 May-June 2018 Memo Grd12', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fltnpuozputjtjwx9kmeh3s?alt=media&token=336c5b45-0110-47af-9480-95aa4e72474a'),
(4, 'Life Sciences P1 Nov 2018 Grd12', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2FLife%20Sciences%20P1%20Nov%202018%20Grd12.pdf?alt=media&token=c611607b-6368-4c90-aaa5-d76ee251c537'),
(5, 'Life Sciences P1 Nov 2018 FINALMemo Gr12', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2FLife%20Sciences%20P1%20Nov%202018%20FINALMemo%20Gr12.pdf?alt=media&token=192cac92-d7cc-4a66-a5ab-efb853143d02'),
(6, 'Mathematics P1 Nov 2018 Grd12', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2FMathematics%20P1%20Nov%202018%20Eng.pdf?alt=media&token=6b15f8dc-b347-46f6-98ce-ddaee64a2d89'),
(7, 'Mathematics P1 Nov 2018 FINAL Memo Grd12\r\n', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2FMathematics%20P1%20Nov%202018%20FINAL%20Memo%20Afr%20%26%20Eng..pdf?alt=media&token=b29e1a66-fe4c-498c-909c-5dbe436b4267'),
(8, 'Physical Sciences P1 Nov 2018 Grd12', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2FPhysical%20Sciences%20P1%20Nov%202018%20Eng.pdf?alt=media&token=a8cb5308-e04e-44ff-8e91-17605f7076f5'),
(9, 'Physical Sciences P1 Nov 2018 FINAL Memo Grd12', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2FPhysical%20Sciences%20P1%20Nov%202018%20FINAL%20Memo%20Afr%20%26%20Eng..pdf?alt=media&token=be3c810b-fcc1-47e3-a8f7-dd6a3e2aae79'),
(10, 'Mathematics P1 Nov 2018 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fpz5s0692wczvrx5tcx7z?alt=media&token=a4538b92-36b5-4654-83cc-8e32c2ced149'),
(11, 'Physical Sciences P1 Feb-March 2018 Memo Afr & Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fwklkoatz55am27skddnz?alt=media&token=f4ca30ca-89df-4e71-9ee7-78aa7c9c86de'),
(12, 'Physical Sciences P2 Feb-March 2018 Memo Afr & Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Frazvsfhcyrbsnvr223a55?alt=media&token=acadc5cb-2986-4863-809f-c568e61ce97a'),
(13, 'Physical Sciences P1 Feb-March 2018 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Feb9gm1rcrzbl94f30d6up?alt=media&token=a3c736c6-29df-465c-b004-dd2750e2d521'),
(14, 'Physical Sciences P2 Feb-March 2018 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fib6x5gviq9c135vubgcam?alt=media&token=dd000265-7bde-48c2-b787-bfbcd26e12fa'),
(15, 'Mathematical Literacy P1 Feb-March 2018 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F6714ximjuowp09hr7ag84?alt=media&token=ca53a376-3268-40c5-a895-9f257f0c518c'),
(16, 'Mathematical Literacy P2 Feb-March 2018 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F66h0o1xsst8npzyqn1qa5?alt=media&token=5c3c0123-6646-4443-b4c0-de0dcc24a678'),
(17, 'Mathematical Literacy P1 Feb-March 2018 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fe5ynal249nkwy929gxa09?alt=media&token=32da2e92-0fbd-4e89-a968-cb16fe180063'),
(18, 'Mathematical Literacy P1 Feb-March 2018 Addendum Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F45766mslqc2obpjrhfk8ge?alt=media&token=f0ef2ed3-78f0-4c3a-8899-c78be913fe18'),
(19, 'Mathematical Literacy P2 Feb-March 2018 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F3pz84094x3kzmpiyr2isw?alt=media&token=211ee2c3-24d8-41ed-9e84-1582e35382d7'),
(20, 'Mathematical Literacy P2 Feb-March 2018 Addendum Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fa3180wsms4hen63qkypqj?alt=media&token=0bc7523e-3db2-41e5-93a2-5505edb5e9df'),
(21, 'Mathematics P1 Feb-Marcg 2018 Memo Afr & Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Flk9p5esglq9pho8kxr2ct?alt=media&token=5c11677e-2403-4e77-9151-537c12bf4272'),
(22, 'Mathematics P2 Feb-March 2018 Memo Afr & Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fvj0f0lvgf1appv093kfu79?alt=media&token=5587b948-e611-48a5-876a-7a495276ad55'),
(23, 'Mathematics P1 Feb-March 2018 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fnfapc81kjrgnc4cpnkf7k?alt=media&token=9def3619-306f-45b2-98d6-1b56b98d2cc8'),
(24, 'Mathematics P2 Feb-March 2018 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fr3yjgxauu3isbfd196z1f?alt=media&token=e063fa1e-31d7-4a11-82fc-442c1b266514'),
(25, 'Mathematics P2 Feb-March 2018 Answer Book Afr & Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Ffyuw2sdlichn06n0hov11q?alt=media&token=6d75f58e-abae-4c77-83a1-e75cbb88a591'),
(26, 'Life Sciences P2 Feb-March 2018 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fi1h9u4qtk7qp2v845gz4us?alt=media&token=f8cb9c2f-717a-4043-a2aa-7815c5747bde'),
(27, 'Life Sciences P1 Feb-March 2018 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fbm5tyigwilsyz6bqkzbc8?alt=media&token=8c72724e-7830-46d7-bb8f-6f6a7531716d'),
(28, 'Life Sciences P2 Feb-March 2018 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fdhe2lqzbcmnwaytc20blxh?alt=media&token=334a0d78-29f6-4631-adf8-fdab17a399f6'),
(29, 'Life Sciences P1 Feb-March 2018 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fesndcv4qknjnk5zfvgy3?alt=media&token=6b3f8828-b4f5-4b20-a6fe-15612fd8ae2d'),
(30, 'History P2 Feb-March 2018 Addendum Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F0k700v2gt4ml93bcbx8otcu?alt=media&token=c926406a-a41d-49e1-82b7-88f858b196cd'),
(31, 'History P2 Feb-March 2018 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fpj01r67nlop0fp3x5rpv3v5?alt=media&token=9ca273f5-5972-4cce-9e97-426b749c74ab'),
(32, 'History P1 Feb-March 2018 Addendum Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Flyxei5fxqojjp7w1hkrp8c?alt=media&token=a8dc2392-8bb5-4ce3-8fae-9f4a203fab22'),
(33, 'History P1 Feb-March 2018 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Ftvzpe1fuphi2avxqpkcob?alt=media&token=fa7981b6-4a90-4552-90db-061fb2932019'),
(34, 'History P2 Feb-March 2018 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F541a4d5kvxla3kov84yu1h?alt=media&token=226c9b1a-9e96-417d-b6aa-779e687ccb63'),
(35, 'History P1 Feb-March 2018 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Ftiuifedhsknu15hy345be?alt=media&token=aba1a2f9-8180-4928-b212-eb10087c7997'),
(36, 'Geography P2 Feb-March 2018 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fxlomesuv429jdv8hfkxmz8?alt=media&token=06cea065-a86f-4bb1-a49a-4a8aef66c9eb'),
(37, 'Geography P1 Feb-March 2018 Annexure Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fpxa9orugzi5z6e6f35aqo?alt=media&token=1a34bdee-ab02-449a-bcc1-31119aa468db'),
(38, 'Geography P1 Feb-March 2018 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F4cgv4j5gwux8mmwy12bu0h?alt=media&token=1fe5b0a7-ada8-490d-a148-b86dbd47a08a'),
(39, 'Geography P2 Feb-March 2018 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F6yi6x2x4a57zr08luho9mq?alt=media&token=8df7b27f-8e44-4dda-b5ef-558d43b770ba'),
(40, 'Geography P1 Feb-March 2018 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F237mq4ehkkat2x523cael?alt=media&token=103cb716-1b99-476f-8d43-c5a81c3696e1'),
(41, 'Economics P2 Feb-March 2018 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Ftolf7q3goxn9enyegwwxnm?alt=media&token=3fa98b84-25bd-46ce-bbc8-a03008307e14'),
(42, 'Economics P1 Feb-March 2018 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fhm8efh8q8gjfflybz1244f?alt=media&token=71f22406-385c-4baf-af96-d691059b7807'),
(43, 'Economics P2 Feb-March 2018 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fn3f05o86kb8q2t1q91ddr?alt=media&token=d7844b29-a6a7-4d8e-9e08-995de450df08'),
(44, 'Economics P1 Feb-March 2018 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F88302rlzxpqe96jskds5i?alt=media&token=a7eb5db1-4b34-44cd-b6b5-4b00c8b1e5be'),
(45, 'Business Studies Feb-March 2018 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fnm72noglfy75f6d6jann8?alt=media&token=f0bd4d1b-b5a1-48aa-8948-313ac70b2224'),
(46, 'Business Studies Feb-March 2018 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fnsncp0fm0zhrpib6kbyajs?alt=media&token=ea01f419-f47e-4cc9-85ec-c6590aab98a7'),
(47, 'Accounting Feb-March 2018 Answer Book Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fn31ae5ewv7acq2omyw4kbm?alt=media&token=bffb8a13-a9e8-4de1-9d89-f8951f1551d2'),
(48, 'Accounting Feb-March 2018 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fhrz9icf6jmcf2z8v5z6fh6?alt=media&token=dcf2cd58-1db2-4a4e-978c-e95156f617df'),
(49, 'Accounting Feb-March 2018 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fc6ipxhcjh3uqiifkmwbsjl?alt=media&token=dbbbe7d9-8e65-45a4-87fc-2a47cde39ae2'),
(50, 'IsiZulu FAL P3 Feb-March 2018 Memo', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fffuqlbnaw0bqn1ohkywa4?alt=media&token=83d3e67b-b32f-4563-b98a-be244bde24ab'),
(51, 'IsiZulu FAL P3 Feb-March 2018', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Flu2b18znwjcum9v9bjfvsn?alt=media&token=112f38ae-1987-4983-8e64-fa27332532f0'),
(52, 'IsiZulu FAL P2 Feb-March 2018 Memo', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F8j9jkpnrkhx1csem4hpswb?alt=media&token=f14f41d9-bbde-4149-926f-b31a6e8aa509'),
(53, 'IsiZulu FAL P2 Feb-March 2018', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fu4d6aq2gnbooq0l8mjewm?alt=media&token=4035e78f-ffd5-41d8-9da2-225ee9045754'),
(54, 'IsiZulu FAL P1 Feb-March 2018 Memo', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fainfu57y5z6opus43uz4xm?alt=media&token=c9efc671-d3bd-472a-af42-1c70fdb0ad37'),
(55, 'IsiZulu FAL P1 Feb-March 2018', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fw49ay7ex1u34677h7rojt?alt=media&token=4bb450c7-9d69-48e4-a3f8-f3e198a5ed6c'),
(56, 'English FAL P3 Feb-March 2018 Memo', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fdc3oghx9pfl2gwg9mft75c?alt=media&token=4112852d-3a30-44c4-97f9-20bed3818086'),
(57, 'English FAL P3 Feb-March 2018', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fmu4fm0puj3j6sqgxfrgowy?alt=media&token=b1cf2fdd-94d9-4333-bee0-decae7f023a0'),
(58, 'English FAL P2 Feb-March 2018 Memo', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F84i7goinl0r4lv2h77a95g?alt=media&token=0f2bc8ec-a75f-44d9-8802-009d6b7b0821'),
(59, 'English FAL P2 Feb-March 2018', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fer1qagrh4ikddfnyyj5w?alt=media&token=a27f535d-b60e-450e-a9a1-2b20e6ccc36e'),
(60, 'English FAL P1 Feb-March 2018 Memo', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fxtcv2kmq7yo9a6769kjhzj?alt=media&token=cdbccc27-408f-4d39-9030-c7009334aee8'),
(61, 'English FAL P1 Feb-March 2018', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fkvxwtp9zmfnfyw5rwud1i8?alt=media&token=22d35aba-3514-4f50-820c-7150e0de4f1f'),
(62, 'Mathematics P2 Nov 2018 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fbjvok63p8gbg4co8yhktt8?alt=media&token=752c83ce-b2c1-4664-a9a8-16ad80a1257b'),
(63, 'Mathematics P2 Nov 2018 Answer Book Afr & Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fcauno2jume4oqepyb8lc9?alt=media&token=31cd0532-804b-4201-9337-818898aeef74'),
(64, 'Physical Sciences P2 Nov 2018 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fiz1jgpli648wfal0b87beq?alt=media&token=9bd553be-4614-446b-aebf-7fdcffc2ebaf'),
(65, 'Mathematical Literacy P2 Nov 2018 Addendum Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fn5tpnxvjhdn1pghyf0t5po?alt=media&token=92ace624-65b4-45b1-9f49-6b3f5bb66474'),
(66, 'Mathematical Literacy P2 Nov 2018 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fenkuvr7j1e5zjj5jiy5ims?alt=media&token=3e8616c8-e4dd-4c3f-ba24-65e7cb846fd3'),
(67, 'Mathematical Literacy P1 Nov 2018 Addendum Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F1b34fhbkzdm1lc0tzjp69i?alt=media&token=2948348a-6cfd-4c5e-b535-ea9998291bf9'),
(68, 'Mathematical Literacy P1 Nov 2018 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fzd2ixs9blfqz3kqzc1x1n?alt=media&token=6cd5a330-62e6-4b64-9141-c4f6c0d288d4'),
(69, 'History P2 Nov 2018 Addendum Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fzja07rbljmbqs9dufn1be?alt=media&token=b202696b-33ac-428f-84ed-05404630d1a5'),
(70, 'History P2 Nov 2018 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F7ny3afff1lv357mqjhhig?alt=media&token=5a64c916-3f43-4743-ba9c-db22a671c27f'),
(71, 'Geography P2 Nov 2018 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fxsn9rf5tsxm57pwiqxqkwf?alt=media&token=3d06f4c2-0a9d-45b0-9036-3506992fa95f'),
(72, 'History P1 Nov 2018 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Ffnca6eq7u1uws87cqa9t4?alt=media&token=d2a49574-ad9a-46ab-ab45-0a70b9d85140'),
(73, 'Geography P1 Nov 2018 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F1391eqycrb9icdet2oa7fzb?alt=media&token=5ccd6733-77ab-4de7-bba7-b51246e28857'),
(74, 'History P1 Nov 2018 Addendum Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Faz3i0ffvtei5qd1ue6qe?alt=media&token=c9e3ed01-8c88-41be-b0c1-32c15282bf16'),
(75, 'History P1 Nov 2018 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Frr95ljlyo8n4mv3grpnrpq?alt=media&token=ddc1c3f0-2e0d-4139-bdfb-dc1ab2e17af3'),
(76, 'History P2 Nov 2018 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F6qfuuy71y6b7uxncqdqqv9?alt=media&token=1391852c-f41b-490d-91e8-a5b8b160c7f6'),
(77, 'Geography P1 Nov 2018 Annexure Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Feuq3j4pg4an0kmh0zrtocji?alt=media&token=61507064-e27e-4342-a2c2-cde069d0dc55'),
(78, 'Geography P1 Nov 2018 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fghomnmrrqgefnqsfd5vjga?alt=media&token=200c7fea-387c-4f08-b32b-3c443f1bb624'),
(79, 'Geography P1 Nov 2018 Annexure Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fqqlsdlfzord8jr3oyulyh?alt=media&token=c811fa35-f4fc-4723-b4fe-7d13d03c8d45'),
(80, 'Economics P1 Nov 2018 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fb2ymosev0wq7s34s3eu1fc?alt=media&token=ecad1b6a-69b8-42c5-bc29-9dbf23dca24f'),
(81, 'Economics P2 Nov 2018 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F78t0489wxtoj9tdphy2laq?alt=media&token=a800e332-8492-4071-aacb-fa08bd5ff9d7'),
(82, 'Business Studies Nov 2018 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fdwxqb0hja8jd2dallx0bp?alt=media&token=ee8357a5-7ffa-4470-bf09-9bebd2af3aa6'),
(83, 'Accounting Nov 2018 Answer Book Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fnetn0zx1sfp2csartxg2yo?alt=media&token=fd4ede9e-4194-4dfa-b3f0-99210e6bf670'),
(84, 'Accounting Nov 2018 Afr', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Foalo9c1piyr80cp6pnu8ma?alt=media&token=77278e0c-7159-49ca-ad4b-4629e820a880'),
(85, 'Accounting Nov 2018 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F6jqn38oa4itfbmddlnlyo?alt=media&token=5ada1fac-4e88-4c3d-9a5b-7dbb83d0db07'),
(86, 'Accounting Nov 2018 Afr', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F5fqpckuu0njey1jcwe0bj9?alt=media&token=c3984608-c948-4d78-ac8b-1bed1ae97954'),
(87, 'Physical Sciences P1 Grade 11 Nov 2016 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F5qsq87ao8c4cg4799ao8j5?alt=media&token=c2f17488-d729-4e41-b5ab-d057bbc9f934'),
(88, 'English FAL P3 Grade 11 Nov 2017 Memo', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fexxldza3oldzcs0tbib1ll?alt=media&token=d0f0c36a-f289-45f0-8ec0-eca00c56b329'),
(89, 'English FAL P3 Grade 11 Nov 2017', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F4tknuxcjway643uobfw5k?alt=media&token=79fd6dfb-96b2-4228-b289-677c9ddc0e1e'),
(90, 'English FAL P3 Grade 11 Nov 2018 Memo', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F0d4lmaw1w25cwjog7w81rf?alt=media&token=2bba47cd-3820-4072-b452-ba14eba8c079'),
(91, 'English FAL P3 Grade 11 Nov 2018', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Ffvpcvp3c4dd0zpm1sm5fpdn?alt=media&token=fa040ede-71fb-4e5b-b35e-41d54663479b'),
(92, 'Mathematics P1 Grade 11 Nov 2016 Afr & Eng Memo', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fkrvz3sp5d9ksz5ax1o5vq?alt=media&token=dedca4ef-f607-4458-b1ba-c4aa7d2d328f'),
(93, 'Mathematics P1 Grade 11 Nov 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fpboo7g1i72b8r97y1sjwqn?alt=media&token=51edfb89-e4de-4d90-92a5-5f33fd5dcfdd'),
(94, 'Mathematics P1 Grade 11 Nov 2017 Memo Afr & Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F381v9ti673jzxs4n3avwmh?alt=media&token=e1f8badc-7d39-4f4f-97b1-bfe69638926a'),
(95, 'Mathematics P1 Grade 11 Nov 2017 Memo Afr & Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fpo1se0km8mg9q3buj7hj84?alt=media&token=148edbb2-e393-4c31-bf4d-63d2fbd61eb1'),
(96, 'Mathematics P1 Grade 11 Nov 2018 Memo Eng & Afr', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fz373lz3r3db3ckm4zwyexh?alt=media&token=76e01eb8-512d-4d9e-a9fb-85e808ad7d8d'),
(97, 'Mathematics P2 Grade 11 Nov 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Frk79esmnhq5fu688e4wdx?alt=media&token=b4babd54-7d27-49f3-872c-5a715731ecc4'),
(98, 'Mathematics P2 Grade 11 Nov 2016  Eng & Afr Memo', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fs1481of9j2efe26t2b8mko?alt=media&token=33c30044-e42f-4ef1-927f-82f6029898d6'),
(99, '2020 School Calendar', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fed44zc67n4ulk0ns59qcf?alt=media&token=e33d79d8-4b02-4e04-b8cf-4493e2cb759c'),
(100, '2019 p1 revision material', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Ft73889803ac6rlr5s6ur?alt=media&token=95f4e47b-03d5-4228-ba8b-47a70de0a3e7'),
(101, '2019 p2 revision material', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F5v32sr2u74t8m70m4ett?alt=media&token=a6d33a63-4ec8-470e-b7a3-45cadb33acdd'),
(102, 'Business Studies Nov 2017 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Ffc468924wdqoared8jqwr?alt=media&token=8fd02990-17c6-429d-b928-f5b6a4e5598d'),
(103, 'Business Studies May-June 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fdalablxzrsr3klqwav56nv?alt=media&token=b63fef68-ad2c-4333-98df-1073802b0563'),
(104, 'Business Studies May-June 2017 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fz1vsdx44nbauhdid437ad?alt=media&token=c5b269b9-4781-4d82-aa92-b01c6a206eb2'),
(105, 'Business Studies Feb-March 2017 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F65mdrt1qud9e0tjswv17ec?alt=media&token=ff0a9501-9b0c-4334-9b98-8662bb3cc7ed'),
(106, 'Business Studies Feb-March 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fw25gbc3g4r2xxb6vyag0u?alt=media&token=11668ca4-814f-4ede-83c0-19d07ddd6cea'),
(107, 'Business Studies Feb-March 2016 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fwz2i0ucaznn13ryjqbxg?alt=media&token=c6e175d1-9b8b-43d8-9c9a-8a2ff43d9ca3'),
(108, 'Business Studies Feb-March 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fgty1lbxb8wqlslomhvx2?alt=media&token=9c07f1e7-aab9-4de5-8cde-f6105f719b06'),
(109, 'Business Studies May-June 2016 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fgr3m7zy7qaagpha5iggalt?alt=media&token=f1b0f200-a272-4d49-95e9-c466184420da'),
(110, 'Physical Sciences P1 Nov 2017 Memo Afr & Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fsregolcbcdj6csa0n0mro6?alt=media&token=a870258d-89d3-4c68-b63b-cc015e9cbd4a'),
(111, 'Physical Sciences P2 Nov 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F3dsnx454rucxnd9g4qfji?alt=media&token=1dbc9e07-8aed-4b3d-8571-486b9b4d097f'),
(112, 'Physical Sciences P2 Nov 2017 Memo Afr & Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Faautz3s8zi54vs4mzq7rh8?alt=media&token=6018dee2-02ee-4bc5-8e1d-6489acf118e8'),
(113, 'Physical Sciences P1 Nov 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fm62djd1sn09ydvvir2jwaj?alt=media&token=0078df36-7f2d-4302-9fe0-64b517cb6291'),
(114, 'Mathematical Literacy P1 Nov 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fcim5ajy9fob1q28li14paa?alt=media&token=9a226a55-15eb-4231-834e-633fa2a9f6c6'),
(115, 'Mathematical Literacy P2 Nov 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F58isayrvxsbpfllblnld1?alt=media&token=87003d0a-9ac2-44fc-b55e-b2a22f46c333'),
(116, 'Mathematical Literacy P1 Nov 2017 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F7h5g6wiukrerg5iqu50x8n?alt=media&token=9dda8485-175d-4a15-94a7-bb35d9381870'),
(117, 'Mathematical Literacy P2 Nov 2017 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fcrhojs94cps16aeaizkxh8?alt=media&token=18f51283-a205-4ec3-a25a-8883ba1ecedc'),
(118, 'Mathematics P2 Nov 2017 Memo Afr & Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F4jxx4ftp6su8i4a7lhkshx?alt=media&token=0f7c0199-43b3-4894-b552-18d1a819a4c3'),
(119, 'Mathematical Literacy P1 Nov 2017 Eng Addendum', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fk66a9jyjc82f2yk24f1i2?alt=media&token=052d11d8-3d36-4708-9056-ff27224cc696'),
(120, 'Mathematics P1 Nov 2017 Memo Afr & Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fsfqbmeun3zs313058bm0u2?alt=media&token=476f6a6f-ca77-410f-9cfc-bee5f0a5cc9d'),
(121, 'Mathematical Literacy P2 Nov 2017 Eng Addendum', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fg4p1f6fqrg62finsh1cq96?alt=media&token=938d876a-e935-439a-86b2-22e8f5943d37'),
(122, 'Mathematics P2 Nov 2017 Eng & Afr Answer Book', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fqau8x3sbq2ozuso5xivzo?alt=media&token=6da88cf8-63f6-4d32-882b-88a7dab29041'),
(123, 'Mathematics P2 Nov 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fs18rx0275wf64c9z2q7ee6?alt=media&token=63be2107-4ade-4d63-9342-8d34b69e8511'),
(124, 'Mathematics P1 Nov 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F9xry2ek47ibmbklazymhwf?alt=media&token=6ee012e4-08f0-4a60-a0f2-36ac383323af'),
(125, 'Life Sciences P2 Nov 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fdi8ohjea96i3pofhgkg5l?alt=media&token=25a05076-ac41-4804-9196-3dc8746a6ae2'),
(126, 'Life Sciences P1 Nov 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F1eavq1cr92t1z1pjkl5kx1?alt=media&token=c4e943d7-74b0-4f19-9d1a-9f6c43283e10'),
(127, 'Life Sciences P2 Nov 2017 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fh19hf5yd8quxqmj2xbbfwi?alt=media&token=e0b24caf-d169-4be9-ab17-9e38cd0e1338'),
(128, 'Life Sciences P1 Nov 2017 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fg9269z4hx82keoy7tfli?alt=media&token=ff0cac29-cbc1-4452-aa75-df3dee75225c'),
(129, 'History P1 Nov 2017 Addendum Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Ffmv4lpeu616kgf7j5jtjs?alt=media&token=69a56a82-4561-4ab5-a2b5-2a09a798a5ad'),
(130, 'History P1 Nov 2017 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F6cplfz3d21m4kz26c8m8n9?alt=media&token=2b5ea821-e08a-4c2c-bb5b-d35e06f752ac'),
(131, 'History P1 Nov 2017 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fqpsmxdqqfsi86sm8o02yd?alt=media&token=aa04925c-8d7d-4a6b-87b4-e787d19fb9f4'),
(132, 'History P2 Nov 2017 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F1tchvqvlxzksnnaihgxmk?alt=media&token=06a9280e-a3d0-430f-ab3b-2da34dc29188'),
(133, 'History P1 Nov 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Ffvszohs7b6v0v7qjk8xlo4g?alt=media&token=231b03d0-3817-4a26-bccb-f36728932e65'),
(134, 'Geography P1 Nov 2017 Annexure Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fx0qmvjaxsqa9fey9gkzoo?alt=media&token=c599a762-d125-4e26-905a-ca54b1dc3d72'),
(135, 'Geography P2 Nov 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fgq2rlx0hhl4g7s8djgdnf9?alt=media&token=c1889ea9-15e5-4c4a-951d-6993df00aad3'),
(136, 'Geography P2 Nov 2017 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fc31qr7c55xlyknqy60o2?alt=media&token=37b7795c-0d83-43c5-89ce-06640742b42d'),
(137, 'Geography P1 Nov 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fb5qqr7j44gaz1sn3cfai9a?alt=media&token=757883c5-cd3a-4022-b809-db9110527145'),
(138, 'Geography P1 Nov 2017 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fuz5kq3kjnjffgfhpdgigt?alt=media&token=8663b9b9-bcd0-455c-bfb7-d68003f2c3e6'),
(139, 'Economics P2 Nov 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fsuh21wk4sm2lkm66uemys?alt=media&token=bc39a69f-7364-4c54-a4f1-c239c34066aa'),
(140, 'Economics P1 Nov 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Frtgr6ymz349uk5o2k06nl?alt=media&token=0b91ebc9-b4f7-46a1-a9b9-0dcdf1427433'),
(141, 'Economics P1 Nov 2017 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fm5gtobph7gfctgc2tk4pq9?alt=media&token=c7da4b67-ae26-42db-ab53-044542434f47'),
(142, 'Economics P2 Nov 2017 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fpnqoaytizeioybqtux36sg?alt=media&token=f0b3d47f-cdc0-4930-af21-d7d8fe06c26c'),
(143, 'Business Studies Nov 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F7oopo28rteo1xyg2zrcvdli?alt=media&token=385b1968-9850-4b05-a84c-dda88256c82f'),
(144, 'Business Studies Nov 2017 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Ftv05xvdparuufkwbpe45o?alt=media&token=028314ab-db1a-4f93-8192-ad092b999cdf'),
(145, 'Accounting Nov 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fwbckbxdrjut2a1pwkwxlo?alt=media&token=c0ba7b11-c7f7-40d5-80a7-0e1a53c6555e'),
(146, 'Accounting Nov 2017 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Ftk2kieugivd1rz5g1r1l7?alt=media&token=31e19a14-9b99-4855-9577-af56b004293b'),
(147, 'Accounting Nov 2017 Answer Book Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fpujl1ibf82ej1pf33mzs?alt=media&token=a34428c8-c60a-4ced-b089-1536bac20833'),
(148, 'IsiZulu FAL P3 Nov 2017', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Flx72crux4crg468q9075xc?alt=media&token=ff700154-d527-4de5-811c-9f793df72289'),
(149, 'IsiZulu FAL P1 Nov 2017', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F31lsep7lycthu0wh0zbpk?alt=media&token=cc4dd5b8-bfe8-4174-93a7-b41cd064732d'),
(150, 'IsiZulu FAL P3 Nov 2017 Memo', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fe14nm5pcaee68mos0u5wn?alt=media&token=83711263-5faf-4cce-b666-5966b8478137'),
(151, 'IsiZulu FAL P2 Nov 2017 Memo', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Frow6nxmv69b8idv8cxejvd?alt=media&token=c63e1fcc-59b6-4470-b881-18e609be2d63'),
(152, 'IsiZulu FAL P3 Nov 2017 Memo', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fvcaxv0kwnpdyit2r1ctrnh?alt=media&token=b3e84bc8-056c-4c0c-939a-6918fe44383e'),
(153, 'IsiZulu FAL P1 May-June 2017 Memo', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F0mt7yz6kykimad7xsobrdy7?alt=media&token=ac286a01-cc12-4a4c-aa30-134d289ac5e6'),
(154, 'English FAL P1 Nov 2017', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Ftejpfbx8s9sxqcsy8kdq8?alt=media&token=10016894-38b5-41f3-aba3-0a37d70c0fca'),
(155, 'English FAL P3 Nov 2017', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fkkspjcicqe0y34uz7elk?alt=media&token=404faea7-70ab-4d88-a167-6009da421bf1'),
(156, 'English FAL P3 Nov 2017 Memo', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Faldc4qpgqhh36nj6cyffhw?alt=media&token=8f14bb73-c894-4f73-82e8-f8e6fb460038'),
(157, 'English FAL P2 Nov 2017 Memo', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fe9cw3u6082d2hytezuw1m?alt=media&token=0bb40742-52b7-47e9-b8e0-b309553adea0'),
(158, 'English FAL P2 Nov 2017', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fbkkunuw23157obga9j0xmu?alt=media&token=ae70a2a2-f673-49ac-80e3-5a0c8dbb7edd'),
(159, 'English FAL P1 Nov 2017 Memo', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fpfnrlmtzvbekli1chhg9si?alt=media&token=3354ea23-36b6-42a7-a23a-e76b56368caf'),
(160, 'Tutorial 8 - Electrochemistry_SOLUTIONS (1)', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fwpmys0ktw3tzu504vr4ye?alt=media&token=cf11b7cf-bf0e-4e87-a831-708d8c233480'),
(161, 'Chem120 Organic 2018 slide 5 Carboxylic Acids and their Derivatives - Students copy', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Ffdpcd7h2zyo7gq7d8gp3x2?alt=media&token=610751b7-5ed0-4063-ab75-9a3c31f03336'),
(162, '2 PHYSISCAL SCIENCES  P2 GRADE 12 JUNE 2017 MEMO-2', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Farcxrts9195ifu10nbtnj?alt=media&token=cdf17146-a84a-4cb2-ad22-4d83b593ae27'),
(163, '2018 Grade 11 Physical Sciences P2 Final Marking Guideline', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F16umbaxjtzbcnzq8985o9l?alt=media&token=abaf8ae4-9ef4-4406-bd2c-17fef7cd4d43'),
(164, 'PHYSICAL SCIENCES   JUNE PROV EXAM  PAPER 1   MEMORANDUM-2', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fiiocr43hir9xgpma0qsonp?alt=media&token=d2cf8315-037a-4e84-a2b0-205779de73f5'),
(165, 'PHYSICAL SCIENCES   JUNE PROV EXAM  PAPER 1   MEMORANDUM-2', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F4e3y40mxvl2j5a0vcz70l?alt=media&token=b8fa5e87-0784-4591-8c59-67a70223e2f8'),
(166, '2018 Grade 11 Physical Sciences P2 Final Marking Guideline', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fs4folyzua94vzyc5spfxj?alt=media&token=7bd60a5a-56c7-47f9-8bc8-da8cbe7ca636'),
(167, 'Final Marking Guideline  Grade 11 Physical Sciences P1 Common Examination-1', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fwfgzqrbgt6u07ohg7tjko?alt=media&token=203b0b68-90e5-4e3e-a1ef-ef1e2c191e58'),
(168, 'June 2017 p1 memo', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fukzlulmqbhg7wozybwydf?alt=media&token=3b37fef9-01e3-4a84-b5d5-ad5cbd81a6a8'),
(169, 'JUNE-2015-PHY-P2-QP-MEMO', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fs4g7wr5fceem7sgxwa2qjo?alt=media&token=b739ff14-4d20-476a-bb65-c9aa1dd82278'),
(170, 'PHYSICAL SCIENCES   JUNE PROV EXAM  PAPER 1   MEMORANDUM-2', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fzow15zdc9oo9s72d3xd3?alt=media&token=bde665d7-5506-40df-b758-5149e79c077a'),
(171, 'PHYSICAL SCIENCES  GRADE 11 P2 MEMO JUNE 2019', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F7wng3t3vd0xw2swks841lr?alt=media&token=1038a499-77e4-4bdf-a0ec-5916d7bada1c'),
(172, 'PHYSICAL SCIENCES  P1 JUNE 2019GR 11  MEMORANDUM-1', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fj3a16nsnkfdaq8keiblhws?alt=media&token=e022eb8d-eac5-4904-83b8-de218a1da93e'),
(173, 'Physical Sciences June 2019 P2 Memo-1', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fvgg2297qrsepjersu7sbf?alt=media&token=de11b701-a1a4-4ccc-a0f7-bd427d66e89e'),
(174, 'Physical Sciences P1 Grade 11 Nov 2015 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fhgpzzcf416fd4ytzryw9k?alt=media&token=e321607b-1a2f-41e0-a468-560402c328b0'),
(175, 'PHYSICAL SCIENCES GRADE 11 SEPTEMBER MEMO-2', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F3jbqvdhcanf6uqptt89oox?alt=media&token=d3f66b13-b98b-4e35-80ff-790ec2229141'),
(176, 'Physical Sciences P1 Grade 11 Nov 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F6snu92zfv3k309g37ng9it?alt=media&token=c4024410-6415-4dbf-84f7-dea11bd8948d'),
(177, 'Physical Sciences P1 Grade 11 Nov 2018 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Ft81w8pnkesoqa5a4rgq9e?alt=media&token=e6d93e3b-d5f6-4546-bdf0-77df5bb5b10d'),
(178, 'Physical Sciences P1 Grade 11 Nov 2018 Memo Afr & Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fungjjdppcuzga3q1ubsd?alt=media&token=19545ab4-c812-4373-8266-282648f8fdad'),
(179, 'Physical Sciences P1 May-June 2018 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F29xfzlwitcbtaeqbpw15zp?alt=media&token=86bcbfa0-8e75-48c4-a2d8-8d60fbb8ad25'),
(180, 'PHYSICAL SCIENCES P2  MEMORANDUM JUNE _FINAL(GR 10)', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F1pwx6t6h3dz23cpd32dpm1?alt=media&token=a4915da5-5d0b-416c-97a3-ee153b59d8a9'),
(181, 'PHYSICAL SCIENCES P2 GR 11 JUNE 2017 MEMORANDUM', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fp1zt3rxlumquafja0yilo?alt=media&token=c01fff5a-6172-4988-a890-01de0c6edad8'),
(182, 'Physical Sciences P2 Grade 11 Nov 2015 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fuzkxtrzs5oo4i6au2rhqd?alt=media&token=1446d3f4-cb7f-42c5-b3dc-52ee95d2e15e'),
(183, 'Physical Sciences P2 Grade 11 Nov 2016 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F281m4agbhfl06wgl2lxv7cp?alt=media&token=ec09495a-968b-4714-9432-65952559b211'),
(184, 'Physical Sciences P2 Grade 11 Nov 2016 Memo Eng & Afr-1', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F7msjvla9rh9r4ko491x3ia?alt=media&token=839656cd-1c61-4999-9f74-22bfa623b208'),
(185, 'Physical Sciences P2 Grade 11 Nov 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fituh40fwhbnv35yseza6s?alt=media&token=35e1284d-962e-4cf7-a3ce-a51565ccf5ca'),
(186, 'Solution_Xtut_Wave_Sound', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fb0rwdrdxh9ugqtbvi7cvgb?alt=media&token=4da88ad6-ec0d-4f0f-953a-67536225679b'),
(187, 'Physical Sciences P2 Grade 11 Nov 2017 Memo Afr & Eng-1', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Feur64s0lefulmh6wh9r16c?alt=media&token=d84bc12a-cb62-4699-a3d4-19f30894b558'),
(188, 'Physical Sciences P2 Grade 11 Nov 2018 Memo Eng & Afr final (No stamps yet)', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F1t8ifhhstxaa8z27tpd9v6?alt=media&token=f0ccdd80-3dbe-48c5-a297-0a46243ab7f5'),
(189, 'PHYSICAL SCIENCES P2 MARCH 2019 GRADE 12 MEMO', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Flgqy2yhyxsn0su8d2munp?alt=media&token=a9345b5e-3268-4098-ac6c-90fb560537c8'),
(190, 'Physical Sciences P2 May-June 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Frkzj09olj7a3thqrxzp2?alt=media&token=c5cab6c9-5186-4e8b-94c4-8f99c652f767'),
(191, 'Physical Sciences P2 May-June 2017 Memo Afr & Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fomvxn9s9l4934k49vd796r?alt=media&token=387443c3-e22f-424e-aa7f-f72aad29641d'),
(192, 'Physical Sciences P2 May-June 2018 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fmyp0zabu9slpfpxm8fa6?alt=media&token=6eaed747-2f8e-4135-9d0e-f61e5760ff23'),
(193, 'Physical Sciences P2 May-June 2019 Memo FINAL 27 MAY', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fyu1ldal957vpckfbxjejo?alt=media&token=ac41b8bc-48c1-48cb-a755-e41c860aa07f'),
(194, 'Physical Sciences P1 Nov 2016 Afr', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Foevh5935oxdjozsk9ks8s?alt=media&token=6f8e70aa-c220-4467-b3ac-a34fed319025'),
(195, 'Physical Sciences P1 Nov 2016 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fb1e1hegvyogv9qejbthsd?alt=media&token=ea41e560-dca6-472e-900b-f3fc6d6e94a7'),
(196, 'Physical Sciences P2 Nov 2016 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Ffmdmemnohafs7bgwo0mhde?alt=media&token=55e39aa4-74f0-45a6-ad49-aac9fc9e4cfe'),
(197, 'Mathematical Literacy P2 Nov 2016 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fh6z0zfgfptsra4ctr04xdo?alt=media&token=84a6cb44-becc-4e0b-8687-9281666bbac5'),
(198, 'Mathematical Literacy P2 Nov 2016 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fyxqwz3z5p2kd7mhnn2804g?alt=media&token=1bccf98f-f64e-46d6-aa11-32068d4fa201'),
(199, 'Mathematical Literacy P1 Nov 2016 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F0mx6emt5shdddicgd86nni?alt=media&token=1333e7c9-71fb-4039-ba16-cd51b1548907'),
(200, 'Physical Sciences P1 Nov 2016 Memo Afr & Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fuyft72csq2zzugom060do?alt=media&token=beb05135-a9fc-4b70-835a-ab288e247f8b'),
(201, 'Mathematics P1 Nov 2016 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F3471k6cnjm9t2bqe3hiqy?alt=media&token=e3d3b188-7dbe-4ea1-bca9-1dd307fa7d33'),
(202, 'Mathematics P1 Nov 2016 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Frpac0sxekj1c4pwqospcn?alt=media&token=531f9676-d906-40e4-b192-7d32e567a7f6'),
(203, 'Mathematics P2 Nov 2016 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Furpl07niqzc4cwpkb4objr?alt=media&token=29260fe6-128c-430b-a4f3-3b10703784c7'),
(204, 'Mathematical Literacy P1 Nov 2016 Addendum Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fxbtpoxfy9laj6fsijnq4e?alt=media&token=c94a2b96-e5e2-4a4d-b2c1-97d482b96aa1'),
(205, 'Mathematical Literacy P2 Nov 2016 Addendum Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F17vk7x8hum9jyutvhub3abi?alt=media&token=f6007cf2-840b-4654-a782-4edb3d24185b'),
(206, 'Mathematical Literacy P1 Nov 2016 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fyn9kvfri5as3zdbubnjwl4?alt=media&token=09c12ccb-42a5-4fb7-b75d-73355b4f4f04'),
(207, 'Mathematics P1 Nov 2016 Memo Afr & Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fw5pmbth4nthdtez82v6atw?alt=media&token=d8316465-8152-4a9e-9a15-db6aa7425325'),
(208, 'Life Sciences P2 Nov 2016 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Ftytid964xnefbzr5xa0a1?alt=media&token=a1dd1ba5-cb14-4ecb-9a2d-4ea0fd13672a'),
(209, 'Life Sciences P1 Nov 2016 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F3fu7yss1luj40shsz8fmcc?alt=media&token=43a5888b-5669-4560-a98b-1ad031a539ee'),
(210, 'Life Sciences P2 Nov 2016 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fb9d38vg6uzwqwmzqtkuoh?alt=media&token=d7b351fc-aa0c-456d-b7d4-1c690520d726'),
(211, 'Life Sciences P1 Nov 2016 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fzqn1eg82lcazrdxzwt0f5?alt=media&token=ded623f1-3edf-402f-b16d-f7867e9ec62b'),
(212, 'History P2 Nov 2016 Addendum Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fkjanb97i9kedzreywi8b6q?alt=media&token=a9f976a8-a516-4553-9110-7f6c9a4440f7'),
(213, 'History P1 Nov 2016 Addendum Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fmm7irzguhk72a0fypezm?alt=media&token=48133c1c-9959-47fb-b9d5-1e509459b25a'),
(214, 'History P2 Nov 2016 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fozim3yygp3oulkebltmxh?alt=media&token=26a945d4-9c82-49f7-9f63-06a326b8efbb'),
(215, 'History P1 Nov 2016 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Frigwe4csasnkjs7ked4z2m?alt=media&token=a62b3c5e-1615-46b6-9a5f-0069d43c5b54'),
(216, 'History P1 Nov 2016 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fxystiic8dlrokm373507wj?alt=media&token=155b61ed-6384-4671-9540-e1119ec02311'),
(217, 'History P2 Nov 2016 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F4zevpx4w1fdgd14o4wfi4o?alt=media&token=4808af59-7e91-4db2-ab95-2a065c91ec4e'),
(218, 'Geography P1 Nov 2016 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fzbj9kzm45l6wyfy9nlddj?alt=media&token=a69d98c3-781a-44ce-973d-4a5ca79b8425'),
(219, 'Geography P1 Nov 2016 Annexure Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fzoph4y3kmab3rg0e1rzkjc?alt=media&token=235d0e83-2319-437e-95f9-18917bc52783'),
(220, 'Geography P2 Nov 2016 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fwbr3x6yxnz9k3u1wzspq18?alt=media&token=6dcdc3b8-98aa-4aed-a9b9-106388798153'),
(221, 'Geography P2 Nov 2016 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fizqtgfl1z8pd7679kdbc2a?alt=media&token=fd1835fb-5945-4ef5-b6ae-c9c4ed642e84'),
(222, 'Geography P1 Nov 2016 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fpx42p5unst0tikgfs0us8?alt=media&token=c0e20cc9-df7a-4267-8236-3815b324e117'),
(223, 'Economics P1 Nov 2016 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F4fxzk43dxaiib0tk0dd3?alt=media&token=aec0646d-0ceb-4de2-9264-6d04f5af62c2'),
(224, 'Business Studies Nov 2016 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F6iufbdk14lmj13g23v7mlb?alt=media&token=2e652a3f-51f8-434b-9b72-e86d6b58ce25'),
(225, 'Business Studies Nov 2016 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fdowsdpf1p3ft6sgjccwly?alt=media&token=e94f79f8-01bc-43ed-ad2b-9f5f417f2bfd'),
(226, 'Economics P2 Nov 2016 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fqwmyso42ln6wyyc7okk2a?alt=media&token=ea07274f-42e3-41f4-b014-ae1039b6c2b9'),
(227, 'Accounting Nov 2016 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fx96uo16zkaeo4nxpzqiem?alt=media&token=20b9483f-f65a-4d35-a27b-bc3934e10c99'),
(228, 'Accounting Nov 2016 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F8zr1npecra3xh4lpqiaybe?alt=media&token=5a615ace-c979-4a69-b464-a31e1ebd7f8d'),
(229, 'Economics P1 Nov 2016 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Ftjz9gyjojlr8fre2zd3l5k?alt=media&token=d364ef19-8edc-4d8d-b1a2-163968dec005'),
(230, 'IsiZulu FAL P2 Nov 2016', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fruieuo9fbdonrxdec3q32j?alt=media&token=feaa70af-d49a-4837-b5ae-a83cbdca250d');
INSERT INTO `ExamPaper` (`ID`, `Name`, `Url`) VALUES
(231, 'IsiZulu FAL P3 Nov 2016', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F6l0yuwe61ji9danxw6iok?alt=media&token=204118f6-47e7-4429-b588-6c2f6256f0d2'),
(232, 'IsiZulu FAL P1 Nov 2016', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fwdyj62za71eoc9lc82e2i?alt=media&token=74c6a60c-e4be-47d4-b6ca-03cc814a6926'),
(233, 'IsiZulu FAL P2 Nov 2016 Memo', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fzvuq0178wuia8l9w5m5r?alt=media&token=1930ad96-1d05-4418-958d-4e78f4fbf6c9'),
(234, 'English HL P3 Nov 2016 Memo', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fptlr6f43guktzvgxbtayh?alt=media&token=b87fcfde-813e-471d-9be1-b60a3796684b'),
(235, 'English FAL P2 Nov 2016 Memo', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F57ij6dddl3qzzxsir11v?alt=media&token=89103970-6767-453b-a922-9b7e0f40f9e3'),
(236, 'English FAL P1 Nov 2016', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F77c8u37ngcgreanqyrnqkr?alt=media&token=33ee19dd-a2f4-4205-8d10-ed8ec8149eba'),
(237, 'English FAL P2 Nov 2016', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fizp8h884hchwfogkn9k8n?alt=media&token=80c1f109-aa3a-4456-a6f2-5afd7ee7d947'),
(238, 'English FAL P1 Nov 2016 Memo', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fr7kan488yghwlhc2ds3p4?alt=media&token=26d1dd1c-4586-4cc2-b329-d547d111782d'),
(239, 'Mathematical Literacy P1 Feb-March 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fybmuwu8ax4gp2ivmid6vfe?alt=media&token=43ed5475-6c23-44ad-9efb-26c37d163d49'),
(240, 'Physical Sciences P1 Feb-March 2017 Memo Afr & Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F1cz196sdqq18piyp9yand8?alt=media&token=4e840d70-4d5c-4a44-b0c1-4eeff0791388'),
(241, 'Physical Sciences P2 Feb-March 2017 Memo Afr & Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F3vdkts4yv0q3npcexnqren?alt=media&token=b4ad8661-43d3-4c57-b384-26d5f03816e9'),
(242, 'Mathematical Literacy P2 Feb-March 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fk94ug4ca7gq75kw9df77?alt=media&token=b37ae023-f0af-4086-ba37-2ce7ab9ecad4'),
(243, 'Mathematical Literacy P1 Feb-March 2017 Addendum Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fu500sn39t7ddrjwpebgph?alt=media&token=9df248af-ffef-474e-98e4-3e9886a6ca43'),
(244, 'Physical Sciences P2 Feb-March 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fegeiqnyuqboj628zp8jo1q?alt=media&token=c54c18f7-59c6-45c4-aa01-56e56b87380d'),
(245, 'Mathematical Literacy P2 Feb-March 2017 Addendum Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fgmhr5rw6ycp7q6nfrklmvp?alt=media&token=68a51afc-3454-4176-9e54-e719b59ebfb2'),
(246, 'Physical Sciences P1 Feb-March 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Ffmven0f0vwp51znxfsvn0b?alt=media&token=44be82a3-0736-4f2c-8e90-97f182cf6ae7'),
(247, 'Mathematical Literacy P2 Feb-March 2017 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fx2a39t0gzjikkbh3214ye?alt=media&token=49ec52ab-65f7-4aaa-a1cb-cfa1fd6db48f'),
(248, 'Mathematical Literacy P1 Feb-March 2017 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fml00heetf2orbnu2rba49q?alt=media&token=a53fed7f-c664-488e-b69d-a8a79b22a472'),
(249, 'Mathematics P1 Feb-March 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fly0eaainkl9utyugaphibp?alt=media&token=47aa6ba5-0a42-4d0b-b795-55289f6c4e21'),
(250, 'Mathematics P2 Feb-March 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fdbm5lpss537hoq2jljalm8?alt=media&token=e8cfed31-a66e-4139-a68c-dd4924d0ac2d'),
(251, 'Mathematics P1 Feb-March 2017 Memo Afr & Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Ffkrdepojttlr4y6zwakdm?alt=media&token=8ad88763-6a59-4cdb-b963-3224b2029ef0'),
(252, 'Mathematics P2 Feb-March 2017 Memo Afr & Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F04lbtxh0wku1g6v966v7q4q?alt=media&token=7ad1283f-8f4c-4a7d-b547-f84140d5501c'),
(253, 'Life Sciences P2 Feb-March 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fuqtgh24ck9cjwzn42rew3?alt=media&token=cec6faf5-08c0-4f98-a698-78fa3c4ef057'),
(254, 'Life Sciences P1 Feb-March 2017 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fimwakee8wlyx9wh2bvyh9?alt=media&token=d7a7b388-dcda-4cec-b324-55769f0873e4'),
(255, 'Life Sciences P2 Feb-March 2017 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fbm35q335ubrzbomrhiq77?alt=media&token=4e7a1e2b-d04f-4b6a-ad12-77645b65e318'),
(256, 'History P2 Feb-March 2017 Addendum Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fmjuqb51wngf14lupj0xr?alt=media&token=7123e81f-7fe7-4cef-a881-c09271533a81'),
(257, 'History P1 Feb-March 2017 Addendum Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fsllp9qkhw3jke6geag76?alt=media&token=8f76f448-a2ad-4e28-8637-8a8b12bbcf7b'),
(258, 'History P2 Feb-March 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fex25v3xj2079kbwqrk6p1c?alt=media&token=76324b9b-9a5c-4708-941e-21408879393d'),
(259, 'History P2 Feb-March 2017 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fth1pwvzp5sgbkhj7rkf3kd?alt=media&token=858ffdc8-f97e-41d8-938b-c9976bcee728'),
(260, 'History P1 Feb-March 2017 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F8z0g0rd0qo7jv4lcxm3onh?alt=media&token=93132558-f457-48e3-bf3b-59544e39fb93'),
(261, 'History P1 Feb-March 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F5cvpcmhubchuv9yj1wa6a?alt=media&token=e8565ab6-d756-48ac-9c2a-959776a89aca'),
(262, 'Geography P1 Feb-March 2017 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fs13kid74zkshiyx6qa0heu?alt=media&token=9e4c6259-dc07-4554-a7bf-56e988533f5d'),
(263, 'Geography P1 Feb-March 2017 Annexure Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fm41zbyugnfrslcyd9gw598?alt=media&token=e2a82254-b2c0-4639-9e22-12736c1e99b5'),
(264, 'Geography P2 Feb-March 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fxf0htje1qahsalfafansdk?alt=media&token=095999c1-dd46-4933-97d1-7316d7d73e9d'),
(265, 'Geography P2 Feb-March 2017 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F4lwwhx8w9i78od7hlwom5e?alt=media&token=ba722ac8-fe96-4e72-98cd-4533db876baa'),
(266, 'Geography P1 Feb-March 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fihpe6jlhmhqor94b74jai?alt=media&token=256dba12-f060-4820-b988-a0f2730cff6d'),
(267, 'Economics P1 Feb-March 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F9v8xtm5vkqfb11hoiw0u1?alt=media&token=9ba32038-6dcb-46d7-a0eb-dba253cb0192'),
(268, 'Economics P2 Feb-March 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fadzck8mevmp34j258irqkd?alt=media&token=7e81e161-ab9d-4461-b07d-3620b0d132d4'),
(269, 'Economics P2 Feb-March 2017 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fc9n2xwv9e7wgsmmwoym27r?alt=media&token=52d8bb95-89c5-48cf-b73f-47fa688021d2'),
(270, 'Economics P1 Feb-March 2017 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fys7zyjyshkyweooqc4r5?alt=media&token=eaa0a993-980b-46d4-8009-0834af627597'),
(271, 'Business Studies Feb-March 2017 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Frl7wqjfa7k1z2q81samps?alt=media&token=2bf4dc46-79ea-4ac9-90df-bc3de807d510'),
(272, 'Business Studies Feb-March 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fuv7a2dn4vpx87f61b657j?alt=media&token=51207267-b401-4323-b86b-dbf90775e4d8'),
(273, 'Accounting Feb-March 2017 Answer Book Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fi9le19qjymdglxy4oryx?alt=media&token=286488d9-4017-4b5e-bb54-5f61f7000a3b'),
(274, 'Accounting Feb-March 2017 Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fz7nhhxu63tnr6a1z3ns8g?alt=media&token=60506bf7-4404-44a6-863b-cbc88deddb93'),
(275, 'Accounting Feb-March 2017 Memo Eng', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F5lazs647xnxconk9315j6d?alt=media&token=43d146f6-2d2a-4494-87fc-bc0667ed5502'),
(276, 'IsiZulu FAL P1 Feb-March 2017', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F5t6bv7jsrsiofq0qlapimf?alt=media&token=f9045c76-1334-4af2-9d94-1555961cf013'),
(277, 'IsiZulu FAL P3 Feb-March 2017 Memo', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fkjb886ucxu3f3gkp679q?alt=media&token=3f8ad40d-ac54-4af2-a057-d7d16cb4831e'),
(278, 'IsiZulu FAL P3 Feb-March 2017', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F0szudddueb2gqp6lx1peb78?alt=media&token=c9ece6d8-9023-4431-82de-08b4ff320058'),
(279, 'IsiZulu FAL P1 Feb-March 2017 Memo', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F95b5ag9zagp5nbq3zlh5aq?alt=media&token=51d1d0cb-2151-4128-9cfe-3c10388e43a5'),
(280, 'IsiZulu FAL P2 Feb-March 2017 Memo', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F7yohyx7sh57ikv4wfrdl7?alt=media&token=dcd840a9-cd04-41d0-b11c-147dd3af5246'),
(281, 'IsiZulu FAL P2 Feb-March 2017', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fxo8u4zex6r9r0uo0zt2qe8?alt=media&token=465d66c7-03e3-4c49-9ac1-6afbc0a6f64f'),
(282, 'English FAL P3 Feb-March 2017', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fhpbttlgywtatycsvgri7a?alt=media&token=081efd4a-fe02-4c62-894d-8fe54b1c95e2'),
(283, 'English FAL P3 Feb-March 2017 Memo', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fpt50felibd9hqvs7pidhvg?alt=media&token=876f9f5f-3e54-4910-bb22-d8ca89b360aa'),
(284, 'English FAL P1 Feb-March 2017', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fahwjlvj78szrkqlfnaut?alt=media&token=7f24ec89-fffb-4490-8f46-ce583a069c0d'),
(285, 'English FAL P1 Feb-March 2017 Memo', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2F54hgcn8t0v4quxh1fj1k9q?alt=media&token=7efca989-e44a-4663-895c-35e79b6ef2be'),
(286, 'English FAL P2 Feb-March 2017', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fnaj5geixv6bzaxbc3wskko?alt=media&token=571dc101-3048-463a-8b17-6746832bdc05'),
(287, 'English FAL P2 Feb-March 2017 Memo', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/documents%2FProduction%2Fr42l9z19ntattm5nuoptri?alt=media&token=a25d26a9-368e-4224-8fd8-07b3e0044a58');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Avatar` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`ID`, `Name`, `Email`, `Password`, `Avatar`) VALUES
(1, 'Skhumbuzo', 'skhumbuzo.mkhungo@targetonline.co.za', '5iAkbP9/AqI2z9UWS62F8+vv+b+0z6xAc5Evw8dc1yE=', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/images%2FProduction%2Fv5mw6nslggow6rynx4c67?alt=media&token=a6162f4e-acd0-4e36-b7e2-400b59e590e4'),
(9, 'Sphamandla', 'Spha.dube1996@gmail.com', '5UT9AdwO1zD9f9InnNxhtBiIISrquwLHP2vAybQ76t0=', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/images%2FProduction%2F7r3228rblxhr2c18w2vdx?alt=media&token=d96960b1-82e5-47e4-b777-6f6660ad9866'),
(14, 'Snezelo', 'Nandiler.soulp@gmail', 'vsL9Ho7/gYr1UpwLONWo1GuF0cIj/4SGDa/mtISe3YY=', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/images%2FProduction%2Fv4g5milropm2bj9gjpoju?alt=media&token=fa0f82d7-c60e-43d9-96c3-6c8859a3eec4'),
(16, 'thobeka zikhali', 'thobekajulie461@gmail.com', 'm228Eg2tKgW21e3aMJRB41/0KA5DZeuPSPyTwJWibTI=', ''),
(19, 'Nothilekhomo', 'nothilekhomo756@gmail.com', 'me+qJALUhDSKy+pFyjP9YHwUps/ycRkMkVAKWMeuX+0=', ''),
(20, 'Noluthando', 'thandomagatsheni@gmail.com', 'OwxcDVtLOpDbq9Noqkq0cQe9CpiviHOP+Kep+fnx440=', ''),
(21, 'Sphesihle', 'ngibasphesihle@gmail.com', 'Krh1LmIVSXmn+AkNh8IowVjnCijrQt+dW8ENgqubZlQ=', ''),
(22, 'Anele Ntozakhe', 'anelentozakhe98@gmail.com', 'otQwgJAVel/skyOwirVOogYHzO+zQxhzP9qXiKYozT0=', ''),
(23, 'Sihle', 'sihleallenm@gmail.com', 'deMjTxVyUsVh0Y4tVGtiWBeO9Ig5Xgqlrjk7YsV5IkI=', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/images%2FProduction%2Ftt9m9r7kcznsygg5dkkqor?alt=media&token=e389d6a0-31ae-4501-84e0-59ee98fec69a'),
(24, 'Lungani', 'rlunganizamahlubi@gmail.com', 'kQ1//AhwoPlu+Zhk7JtitoMbc6wDmF41xvvu5Q56shk=', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/images%2FProduction%2Fksqw9v0miwd6copgx259mw?alt=media&token=98b4084f-c0d8-4191-9dab-9f9883432481'),
(25, 'Vumani ', 'vumanimthembu94@gmail.com', 'dTz5PMkcBNPvx3RUHNC9E2PW1ClL/XH2p9hjHctMcSs=', ''),
(26, 'Vumani Mthembu', 'vumanimthembu94@gmail.com', 'dTz5PMkcBNPvx3RUHNC9E2PW1ClL/XH2p9hjHctMcSs=', ''),
(27, 'Nceku', 'Anelentozakhe98@gmail.com', '6wuy88m17e2zq9c2PwoZomFY53ezJ4eBJEGV1FPRPok=', ''),
(28, 'Crackit', 'Bahlechonco97@gmail.com', 'PJXWnUjGJNO6axrghe/hDQ==', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/images%2FProduction%2Foqj8b3t01ydy8hr4u9frvb?alt=media&token=b3e79e8b-441c-4233-b0e0-67aaa8304b0c'),
(29, 'Shriana', 'shrianalall@gmail.com', 'kjeuAXe9AzyUxWWlMKpA0lWSW9B77g4TL8YbnWFJ1FQ=', ''),
(30, 'Thobeka', 'mpumihlongwane98@gmail.com', '5VsdVOZr40xhf+eNy0QPgS+vXhWcefsXD7u2Xgotxk4=', ''),
(31, 'Zethembe Madonsela ', 'Sgzethembmadonsela@gmail.com', 'RzEZFO7n/znGB4P1H4QlLlGQd8JJlXAKdlbHobhrC/o=', ''),
(32, 'Dharmesh Parsotam ', 'PARSOTAM04@GMAIL.COM', 'Uk7KV/XUZW3dr1Uz4G3nu1C4mOLtflYgg906U+Xw520=', ''),
(33, 'Faheem', 'faheemamanjee8@gmail.com', 'dYuBaDOEG/PA4Y1WhoaxJSrbx+E97pTrdLScD+0OZiQ=', ''),
(34, 'Musa', 'gumedemusaben@gmail.com', 'oIBnB2kR8U1oZOpBRY1QbSiKQ5shvFMTW8OdFGVs9mA=', ''),
(35, 'Musa Gumede', 'gumedemusaben@gmail.com', 'oIBnB2kR8U1oZOpBRY1QbSiKQ5shvFMTW8OdFGVs9mA=', ''),
(36, 'Bahle', 'Handsomebahle@gmail.com', '5SQZIfCKNFSdWJ9j8ul1hEr/BvVnUM0LJp+DXoUxu+A=', ''),
(37, 'Zama ntuli ', '0767168929', 'lWDEi1eoIefWTO/NHwlo7w==', ''),
(38, 'Tshegofatso boloka', 'boloka-mpho.3@hotmail.com', 'HQ4HyjkQfdkTcMmbWsp2xMhD1qJ/rPxV1VOotP5fULc=', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/images%2FProduction%2Fqsyorzfgeqcs9f4jqxgep?alt=media&token=c3dfada0-1149-4f70-88a3-7f2608e543b7'),
(39, 'Rumaanah ', 'Rumaanahg@gmail.com', 'IccbjLc/dp8qO3xPQvyNcU3yhe1ZF+HBrBqjya9v+/s=', ''),
(40, 'Bronwyn Smith ', 'Bronwyns.smith381@gmail.com', '8a1mG6xNauA2T9X5qOLxDqAOlWM/CxTjOR3cUL+H9bM=', ''),
(41, 'VEE Mthembu', 'vumanimthembu94@gmail.com', 'dTz5PMkcBNPvx3RUHNC9E2PW1ClL/XH2p9hjHctMcSs=', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/images%2FProduction%2Frp7vagkab5iaktpl0bxssa?alt=media&token=c6549d82-e698-4e64-bcae-ebde5f04d11c'),
(42, 'Sabelo Mkhize', 'shezi9371@gmail.com', 'u9zF9zTbzyR55ihlO3r7tNi4MPf4JOf/TMB7yvHNTjs=', ''),
(43, 'Tshegofatso ', 'boloka-mpho.3@hotmail.com', 'ZjzgLW2EGZHmZoBfHJvOCXUNRpyoe9d952NWNfPzqqg=', ''),
(44, 'Zami', 'zamingcamu@gmail.com', 'qHhqbzBWImVMKcOr4GTuGn+xATSvP0XWQPJ7DINxNCs=', 'https://firebasestorage.googleapis.com/v0/b/focus-ddfc9.appspot.com/o/images%2FProduction%2Fjdqqrxwne7dfv3zh2rtwk?alt=media&token=da9f3c7e-9ba4-4782-a3a6-099f6cfc6172'),
(45, 'Kwanele', 'kwanelezzimele@gmail.com', 'HWswWW6QUIfKcIcrhEN3EKeuoVKldVm5pNx6P/LeNVQ=', ''),
(46, 'Lwasfv', 'NChasGSNCl@gmail.com', 'xBaR92CPuCuEg8Ma6TY5M5dIdbQOglrrxmHO8FeolzM=', ''),
(47, 'Yagnash', 'yagi1519@gmail.com', 'QKnJeOyl5u4X7FS9bjh312TT2DRpwUXgfd4B5KX18q0=', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ExamPaper`
--
ALTER TABLE `ExamPaper`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ExamPaper`
--
ALTER TABLE `ExamPaper`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
