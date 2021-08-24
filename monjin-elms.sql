-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2021 at 08:47 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `monjin-elms`
--

-- --------------------------------------------------------

--
-- Table structure for table `jinlms_ass_answers`
--

CREATE TABLE `jinlms_ass_answers` (
  `ans_id` int(11) NOT NULL,
  `ans_topic_id` int(11) NOT NULL,
  `ans_user_id` int(11) NOT NULL,
  `ans_quetions_id` int(11) NOT NULL,
  `ans_quetions_answer` longtext DEFAULT NULL,
  `ans_status` int(11) DEFAULT NULL COMMENT '1 = Correct 2 = Wrong',
  `ans_marks` float DEFAULT 0,
  `ans_flag` int(2) NOT NULL DEFAULT 2 COMMENT '1 = Save 2 = Submit',
  `ans_isDelete` int(2) NOT NULL DEFAULT 0,
  `ans_createdOn` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jinlms_ass_answers`
--

INSERT INTO `jinlms_ass_answers` (`ans_id`, `ans_topic_id`, `ans_user_id`, `ans_quetions_id`, `ans_quetions_answer`, `ans_status`, `ans_marks`, `ans_flag`, `ans_isDelete`, `ans_createdOn`) VALUES
(1, 1, 8, 1, 'C', 1, 2, 2, 0, '2021-02-24 11:20:47'),
(2, 1, 8, 2, 'A', 2, 0, 2, 0, '2021-02-24 11:20:47');

-- --------------------------------------------------------

--
-- Table structure for table `jinlms_country`
--

CREATE TABLE `jinlms_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) NOT NULL,
  `country_isDelete` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jinlms_country_code`
--

CREATE TABLE `jinlms_country_code` (
  `id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jinlms_country_code`
--

INSERT INTO `jinlms_country_code` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, 0),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263);

-- --------------------------------------------------------

--
-- Table structure for table `jinlms_images`
--

CREATE TABLE `jinlms_images` (
  `image_id` int(11) NOT NULL,
  `image_for` int(1) NOT NULL COMMENT '1=Program 2=module',
  `image_for_id` int(11) NOT NULL,
  `image_path` blob NOT NULL,
  `image_isDelete` int(1) NOT NULL DEFAULT 0,
  `image_createdOn` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jinlms_module`
--

CREATE TABLE `jinlms_module` (
  `mod_id` int(11) NOT NULL,
  `mod_eng_name` varchar(100) DEFAULT NULL,
  `mod_hin_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `mod_mar_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `mod_passing_score` int(11) NOT NULL DEFAULT 0,
  `mod_stage_id` int(11) NOT NULL,
  `mod_createdBy` int(11) NOT NULL,
  `mod_isDelete` int(2) NOT NULL DEFAULT 0,
  `mod_createdOn` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jinlms_module`
--

INSERT INTO `jinlms_module` (`mod_id`, `mod_eng_name`, `mod_hin_name`, `mod_mar_name`, `mod_passing_score`, `mod_stage_id`, `mod_createdBy`, `mod_isDelete`, `mod_createdOn`) VALUES
(1, 'Module I', 'मॉड्यूल १', 'मॉड्यूल १', 0, 1, 0, 0, '2021-02-02 08:05:27'),
(2, 'Module II', 'मॉड्यूल २', 'मॉड्यूल २', 0, 1, 0, 0, '2021-02-02 08:06:47');

-- --------------------------------------------------------

--
-- Table structure for table `jinlms_stage`
--

CREATE TABLE `jinlms_stage` (
  `stage_id` int(11) NOT NULL,
  `stage_eng_name` varchar(100) NOT NULL,
  `stage_hin_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `stage_mar_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `stage_isDelete` int(11) NOT NULL DEFAULT 0,
  `stage_createdOn` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jinlms_stage`
--

INSERT INTO `jinlms_stage` (`stage_id`, `stage_eng_name`, `stage_hin_name`, `stage_mar_name`, `stage_isDelete`, `stage_createdOn`) VALUES
(1, 'Overview', 'निरीक्षण', 'निरीक्षण', 0, '2021-02-02 07:52:26');

-- --------------------------------------------------------

--
-- Table structure for table `jinlms_topic`
--

CREATE TABLE `jinlms_topic` (
  `topic_id` int(11) NOT NULL,
  `topic_module_id` int(11) DEFAULT NULL,
  `topic_eng_name` longtext DEFAULT NULL,
  `topic_hin_name` longtext DEFAULT NULL,
  `topic_mar_name` longtext DEFAULT NULL,
  `topic_eng_video_link` longtext DEFAULT NULL,
  `topic_hin_video_link` longtext DEFAULT NULL,
  `topic_mar_video_link` longtext DEFAULT NULL,
  `topic_passing_score` int(11) DEFAULT 0,
  `topic_assignment_quetions` int(2) DEFAULT 0,
  `topic_isDelete` int(2) DEFAULT 0,
  `topic_createdOn` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jinlms_topic`
--

INSERT INTO `jinlms_topic` (`topic_id`, `topic_module_id`, `topic_eng_name`, `topic_hin_name`, `topic_mar_name`, `topic_eng_video_link`, `topic_hin_video_link`, `topic_mar_video_link`, `topic_passing_score`, `topic_assignment_quetions`, `topic_isDelete`, `topic_createdOn`) VALUES
(1, 1, 'testing topic for Module', '', '', 'http://localhost/monjin-eLMS/assignment/topic_details', '', '', 20, 15, 0, '2021-02-12 11:17:29'),
(2, 1, 'testing topic for Module', '', '', 'http://localhost/monjin-eLMS/assignment/topic_details', '', '', 20, 15, 0, '2021-02-12 11:17:29');

-- --------------------------------------------------------

--
-- Table structure for table `jinlms_topic_ass_questions`
--

CREATE TABLE `jinlms_topic_ass_questions` (
  `ass_id` int(11) NOT NULL,
  `ass_topic_id` int(11) NOT NULL,
  `ass_eng_question` longtext DEFAULT NULL,
  `ass_mar_question` longtext DEFAULT NULL,
  `ass_hin_question` longtext DEFAULT NULL,
  `ass_eng_options` longtext DEFAULT NULL,
  `ass_hin_options` longtext DEFAULT NULL,
  `ass_mar_options` longtext DEFAULT NULL,
  `ass_ans_type` int(2) DEFAULT 3 COMMENT '1 = text 2 = checkbox 3 = radio 4 = textarea 5 = other ',
  `ass_eng_correct_answer` varchar(100) DEFAULT NULL,
  `ass_hin_correct_answer` varchar(100) DEFAULT NULL,
  `ass_mar_correct_answer` varchar(100) DEFAULT NULL,
  `ass_question_difficulty_level` int(2) DEFAULT 2 COMMENT '1 = High 2 = Medium 3 = Low',
  `ass_question_mark` int(5) DEFAULT 0,
  `ass_isDelete` int(2) DEFAULT 0,
  `ass_createdOn` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jinlms_topic_ass_questions`
--

INSERT INTO `jinlms_topic_ass_questions` (`ass_id`, `ass_topic_id`, `ass_eng_question`, `ass_mar_question`, `ass_hin_question`, `ass_eng_options`, `ass_hin_options`, `ass_mar_options`, `ass_ans_type`, `ass_eng_correct_answer`, `ass_hin_correct_answer`, `ass_mar_correct_answer`, `ass_question_difficulty_level`, `ass_question_mark`, `ass_isDelete`, `ass_createdOn`) VALUES
(1, 1, 'testing assignment quetions for topic', '', '', 'A,B,C,D', '', '', 3, 'C', '', '', 2, 2, 0, '2021-02-12 11:30:41'),
(2, 1, 'testing assignment 2 quetions for topic', '', '', 'A,B,C,D', '', '', 3, 'B', '', '', 2, 3, 0, '2021-02-12 11:30:41');

-- --------------------------------------------------------

--
-- Table structure for table `jinlms_user`
--

CREATE TABLE `jinlms_user` (
  `user_id` int(11) NOT NULL,
  `user_firstName` varchar(50) NOT NULL,
  `user_middleName` varchar(50) DEFAULT NULL,
  `user_lastName` varchar(50) NOT NULL,
  `user_mobile` varchar(15) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_adhar_card` varchar(12) DEFAULT NULL,
  `user_pan_card` varchar(10) DEFAULT NULL,
  `user_passport` varchar(10) DEFAULT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_role_id` int(11) NOT NULL,
  `user_vendor_id` int(11) NOT NULL DEFAULT 0,
  `user_isDelete` int(2) NOT NULL DEFAULT 0,
  `user_createdOn` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_createdBy` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jinlms_user`
--

INSERT INTO `jinlms_user` (`user_id`, `user_firstName`, `user_middleName`, `user_lastName`, `user_mobile`, `user_email`, `user_adhar_card`, `user_pan_card`, `user_passport`, `user_password`, `user_role_id`, `user_vendor_id`, `user_isDelete`, `user_createdOn`, `user_createdBy`) VALUES
(1, 'Nimble', NULL, 'eSolutions', '8237627185', 'info@nimble-esolutions.com', NULL, NULL, NULL, '$2y$10$lciyAML/2jdhYoM5xr7xH.HB5CNEBVxUTPzoCG.xDR4ZPNRiRqB2.', 1, 0, 0, '2021-01-27 06:50:07', 1),
(2, 'Ashutosh', NULL, 'Kulkarni', '9545350880', 'ashutosh@monjin.com', NULL, NULL, NULL, '$2y$10$myIerlWwZGS3KHIMTq757uufcX0SO..eLEwBO2EH8qtWylGrCtyKS', 2, 0, 0, '2021-01-27 07:33:56', 1),
(3, 'Web', NULL, 'Application', '8237627185', 'webapps@nimble-esolutions.com', NULL, NULL, NULL, '$2y$10$r2rQGAW9ZB8lBmv6wnsieuxjKTM4nIKWatsdwUXAGlKokzYlHuKYK', 2, 0, 0, '2021-01-27 07:44:17', 1),
(4, 'Vendor', NULL, 'Prion', '1234567890', 'vendor@gmail.com', NULL, NULL, NULL, '$2y$10$3J2UaIEjqD73ZuoMIkBpdu8zqE1DGx0p/TWZqKk/hJxUv5eI3kKKi', 4, 0, 0, '2021-01-27 09:36:51', 1),
(5, 'Sandip', NULL, 'Daphal', '9890575638', 'daphalsandip@gmail.com', NULL, NULL, NULL, '$2y$10$5MU3srsulJGos66ZB92GK.e6BaVgcwv1/UeoteX8YtPoyIxQnlJGK', 5, 4, 0, '2021-01-28 12:12:28', 0),
(6, 'Pradnya', NULL, 'Kulkarni', '9850977068', 'Pradnya.durga@gmail.com', NULL, NULL, NULL, '$2y$10$7nLtyagDtlXowMPwIkuT1ubKQfAKLAHVnpknO3JBJ3iP78Fpqw5UW', 5, 4, 0, '2021-01-28 12:12:31', 0),
(7, 'Kunjika', NULL, 'Dhapre', '9158418091', 'shkunjika@gmail.com', NULL, NULL, NULL, '$2y$10$ARkZEjclNmlfwjalxRFXj.IO2f9k26fIDFaEjpDsaXnv6/7ahANEq', 5, 4, 0, '2021-01-28 12:12:32', 0),
(8, 'Learner', NULL, 'Monjin', '1234567890', 'learner@monjin.com', NULL, NULL, NULL, '$2y$10$NddI/vQUuHDSwONs7TUXEe6h93440DIZlPW6yLD8eNwrtq59jKw0S', 5, 0, 0, '2021-02-08 12:16:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jinlms_user_login_links`
--

CREATE TABLE `jinlms_user_login_links` (
  `links_id` int(11) NOT NULL,
  `links_user_id` int(11) NOT NULL,
  `links_verifi_code` longtext NOT NULL,
  `links_gen_date` date NOT NULL,
  `links_isDelete` int(2) NOT NULL DEFAULT 0,
  `links_geneartedOn` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jinlms_user_login_links`
--

INSERT INTO `jinlms_user_login_links` (`links_id`, `links_user_id`, `links_verifi_code`, `links_gen_date`, `links_isDelete`, `links_geneartedOn`) VALUES
(1, 5, 'b8T3VGhdxQePBNW6iFnMUvqwLEOgtuHZ PJyxUDsR8QgSlfw9 H3R7mCn2', '2021-01-28', 0, '2021-01-28 12:12:28'),
(2, 6, 'avzHAydxTm1oihuVXcle87p9YFIJ5f62 gwt85UJBAGNhIlc1 GeQRFDUS', '2021-01-28', 0, '2021-01-28 12:12:31'),
(3, 7, 'w1aO4BDNrT3QPIzK7JnX2CjqEigc8lWy aHf4pl8mYkNjxtZL OzZs9vfm', '2021-01-28', 0, '2021-01-28 12:12:32');

-- --------------------------------------------------------

--
-- Table structure for table `jinlms_user_programs`
--

CREATE TABLE `jinlms_user_programs` (
  `up_id` int(11) NOT NULL,
  `up_user_id` int(11) NOT NULL,
  `up_mod_id` int(11) NOT NULL,
  `up_total_score` float DEFAULT NULL,
  `up_status` int(2) DEFAULT 0 COMMENT '1 = Pass 2 = Fail',
  `up_isDelete` int(2) NOT NULL DEFAULT 0,
  `up_createdOn` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jinlms_user_programs`
--

INSERT INTO `jinlms_user_programs` (`up_id`, `up_user_id`, `up_mod_id`, `up_total_score`, `up_status`, `up_isDelete`, `up_createdOn`) VALUES
(1, 8, 1, NULL, 0, 0, '2021-02-23 06:31:43');

-- --------------------------------------------------------

--
-- Table structure for table `jinlms_user_role`
--

CREATE TABLE `jinlms_user_role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL,
  `role_isValid` int(2) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jinlms_user_role`
--

INSERT INTO `jinlms_user_role` (`role_id`, `role_name`, `role_isValid`) VALUES
(1, 'Super Admin', 0),
(2, 'Admin', 0),
(3, 'Sub Admin', 0),
(4, 'Vendor', 0),
(5, 'User', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jinlms_user_session`
--

CREATE TABLE `jinlms_user_session` (
  `id` int(20) NOT NULL,
  `user_id` int(10) NOT NULL,
  `hash` varchar(64) NOT NULL,
  `islogedinn` int(10) NOT NULL,
  `login_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout_time` timestamp NULL DEFAULT NULL,
  `ip_address` longtext DEFAULT NULL,
  `os` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jinlms_user_session`
--

INSERT INTO `jinlms_user_session` (`id`, `user_id`, `hash`, `islogedinn`, `login_time`, `logout_time`, `ip_address`, `os`) VALUES
(1, 1, '$2y$10$0/CvWsiuyuzyjtTufUK.Du8wqnHBtD23CLEzQiDwHBhX6CKpGW2ie', 1, '2021-01-28 09:16:38', NULL, '::1', 'Windows 7'),
(2, 1, '$2y$10$ZGAeklqfBm.eo4ChYdpOpOwtoRMcyVg3KiobsQq87WKKutk2YVsWK', 1, '2021-01-28 09:56:07', NULL, '::1', 'Windows 7'),
(3, 1, '$2y$10$vQGm5bwXf7y01xp9qwn4VePw552CTBNs361NZjkAc3RSVyn7Z5uDC', 1, '2021-01-28 12:36:04', NULL, '::1', 'Windows 7'),
(4, 1, '$2y$10$pnW/ryk8jPvngAYQoDrDNuKIcXprL3QJoIJ.TeRVrSHsxbzLDJGTq', 1, '2021-01-29 05:42:45', NULL, '::1', 'Windows 7'),
(5, 3, '$2y$10$uEcq8PLZDjQlVSv.SBcSeeeinAOpq28/Sr8hhKflIcKuxfFolgwgO', 1, '2021-01-29 06:38:56', NULL, '::1', 'Windows 7'),
(6, 3, '$2y$10$BDTK/Cvv22vousGayZSq9ep58DMHRdO4YAN3s..Dgi7cfF67CEW5m', 1, '2021-01-29 06:45:41', NULL, '::1', 'Windows 7'),
(7, 1, '$2y$10$w8Q5staPH3Uw7M.rDhQUi.xpOEtXvRpeiGfUiysnbQiJ0OeESJ1qi', 1, '2021-01-29 06:54:42', NULL, '::1', 'Windows 7'),
(8, 1, '$2y$10$zZ3OOPxBtfJBqkBkEpoT3e71SaZAxNCR.nSzygws/zQszY4mqYIwe', 1, '2021-02-01 12:16:02', NULL, '::1', 'Windows 7'),
(9, 1, '$2y$10$sb4n1QQRBl.9vVsuNTAaNesm7iUgE32kdNn6scJNCVvAoSjLWC4OW', 1, '2021-02-02 05:07:54', NULL, '::1', 'Windows 7'),
(10, 1, '$2y$10$1ipYs5BroOrXqoVhdgqCOu4AtRl7TfexnDv3P5s1KbnwfHWqiHzVu', 1, '2021-02-05 09:11:44', NULL, '::1', 'Windows 7'),
(11, 1, '$2y$10$2OfvigNTMitkc6k.ZIj6x.WGc2QtNmVB0nmSg4heAG650VhIVTDma', 1, '2021-02-08 04:19:15', NULL, '::1', 'Windows 7'),
(12, 1, '$2y$10$jzBU4mmZrVmBNm016nwNDetSp77YCYDWfjYovdNB0IVhXB4rNeFPq', 1, '2021-02-08 07:00:47', NULL, '::1', 'Windows 7'),
(13, 1, '$2y$10$hGUkRBPMsObcYJfA9VllEO5NQUwonZx4d.CgINmevMr2elyEm4/mS', 1, '2021-02-08 09:45:38', NULL, '::1', 'Windows 7'),
(14, 8, '$2y$10$KK80cldPGCPnXG00WBX0Oeve5WDFiLk9CIlYGXP24s8WWwUXQLvUa', 1, '2021-02-08 12:19:24', NULL, '::1', 'Windows 7'),
(15, 1, '$2y$10$V7gDGh.PRFUStgPMIuX08.JORAJ5fGogol6WHJXDriirj6AoH.h7i', 1, '2021-02-08 12:51:09', NULL, '::1', 'Windows 7'),
(16, 3, '$2y$10$T7mgTXq4rzUtjMk2qiLuse80vAQqXbQ9CfDquO6XPYof3UmbhN2s6', 1, '2021-02-08 12:51:44', NULL, '::1', 'Windows 7'),
(17, 1, '$2y$10$L9JwqPEiMT/.jaTD7XQ6QeRTBCSlSrbTPmTT6HU4SiHZ8LklUTABm', 1, '2021-02-12 07:01:35', NULL, '::1', 'Windows 7'),
(18, 1, '$2y$10$1vO/PGToHPEnzZkmK.TOD.nQdz/uHUPMpVHLjF2PhkoP20ZrbY68C', 1, '2021-02-12 07:03:58', NULL, '::1', 'Windows 7'),
(19, 1, '$2y$10$iQGr8ffOZtX3Z6cXiGmeYuUnkbQChf7/rpCF0c4TqRM5c9fV.zkxO', 1, '2021-02-12 11:01:35', NULL, '::1', 'Windows 7'),
(20, 1, '$2y$10$Z5YAppBRNu/I.a.TTCi7Iu1a.KeHQiDNNgdfMBZLnujQ/sOFoqCVq', 1, '2021-02-15 04:53:19', NULL, '::1', 'Windows 7'),
(21, 3, '$2y$10$zprKL3Fe1IjWHj0.o2FwtO4aF30rT/oHsRkeufFDvvuc8zQdqRyaC', 1, '2021-02-15 05:02:23', NULL, '::1', 'Windows 7'),
(22, 8, '$2y$10$IkUUrOP6HpfzTPpOEWKOqOWqA.dVShHwpiGP.VlutkPp5/IWJD5rW', 1, '2021-02-15 05:03:59', NULL, '::1', 'Windows 7'),
(23, 8, '$2y$10$s95NeNixWaKSrOCsm78A4OSO2lNC88/rUYF4UCXEqUKBYoi1OhazC', 1, '2021-02-15 12:57:55', NULL, '::1', 'Windows 7'),
(24, 8, '$2y$10$bhvooi3tjhM3uTjlfixrJeW5fCcZpTwpWlz6QMNe0PqvSx39626Ki', 1, '2021-02-16 03:54:56', NULL, '::1', 'Windows 7'),
(25, 8, '$2y$10$gKaUdSGOsur0Vn6iAgGOx.7zSQ9wShr9qXy62no7umIG2Wu0593rO', 1, '2021-02-17 12:10:27', NULL, '::1', 'Windows 7'),
(26, 8, '$2y$10$52aFDEnJDBA2yIf0XA3YL.fPaWxSOsvDj0PyJl/7ySr/LOU/syTS.', 1, '2021-02-18 04:28:14', NULL, '::1', 'Windows 7'),
(27, 8, '$2y$10$QewOJ90XP4x6FzUN46RlKu2k1041lNCEDl01LmCx58/FbNMB.TUXG', 1, '2021-02-19 11:02:05', NULL, '::1', 'Windows 7'),
(28, 8, '$2y$10$iKT9aop0QJpmejV4b3iUzOH86UkqUj/WtmdxT/GssVKlju8SQ3C9S', 1, '2021-02-22 08:58:18', NULL, '::1', 'Windows 7'),
(29, 8, '$2y$10$JcagePFJBLk.Nj0IWk.oMe1kHEu0XCsS0DDf1gZ/vQ8FtNPDC.7Uq', 1, '2021-02-23 05:19:48', NULL, '::1', 'Windows 7'),
(30, 3, '$2y$10$X6jxKLNuu2O8symofkSJ/uUtBrKtgnT5V9HOAGIB5LN7NCn8qbmSG', 1, '2021-02-23 05:20:56', NULL, '::1', 'Windows 7'),
(31, 1, '$2y$10$AyqyjwAQv06KiEFC1M8hGuUZq57vSkMObk8BnQIYW6.e7XklYSRea', 1, '2021-02-23 05:22:10', NULL, '::1', 'Windows 7'),
(32, 1, '$2y$10$DQIz/WeBQ/Ukxy0GL8nheOE96MR4pNXrZnTlUZuN.5gublwHiZF16', 1, '2021-02-23 05:24:09', NULL, '::1', 'Windows 7'),
(33, 8, '$2y$10$H7q0YIR0a39gNPjvCErkceUKSQJ07BhpBjNE4D9PlMbvavSKgu7Oa', 1, '2021-02-24 04:16:50', NULL, '::1', 'Windows 7'),
(34, 8, '$2y$10$6U0uSSXwZcsKWtlf9weXT.EvRQEVpERcPviIfzVKMCNYnn/HxY/Cy', 1, '2021-02-24 12:22:38', NULL, '::1', 'Windows 7'),
(35, 8, '$2y$10$fGRPDZxJyJuDzJlHJVhgNuVb/qIlJLp1K15bjwSc45dP4jW4C49Ka', 1, '2021-07-01 08:42:56', NULL, '::1', 'Windows 10'),
(36, 1, '$2y$10$dKWSeokzLX1TD3y2zVqdH.xAMp8tw8ZBKWhY1VWr6fm.0Cb6yZzrq', 1, '2021-07-01 09:58:59', NULL, '::1', 'Windows 10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jinlms_ass_answers`
--
ALTER TABLE `jinlms_ass_answers`
  ADD PRIMARY KEY (`ans_id`);

--
-- Indexes for table `jinlms_country`
--
ALTER TABLE `jinlms_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `jinlms_country_code`
--
ALTER TABLE `jinlms_country_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jinlms_images`
--
ALTER TABLE `jinlms_images`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `jinlms_module`
--
ALTER TABLE `jinlms_module`
  ADD PRIMARY KEY (`mod_id`);

--
-- Indexes for table `jinlms_stage`
--
ALTER TABLE `jinlms_stage`
  ADD PRIMARY KEY (`stage_id`);

--
-- Indexes for table `jinlms_topic`
--
ALTER TABLE `jinlms_topic`
  ADD PRIMARY KEY (`topic_id`);

--
-- Indexes for table `jinlms_topic_ass_questions`
--
ALTER TABLE `jinlms_topic_ass_questions`
  ADD PRIMARY KEY (`ass_id`);

--
-- Indexes for table `jinlms_user`
--
ALTER TABLE `jinlms_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `jinlms_user_login_links`
--
ALTER TABLE `jinlms_user_login_links`
  ADD PRIMARY KEY (`links_id`);

--
-- Indexes for table `jinlms_user_programs`
--
ALTER TABLE `jinlms_user_programs`
  ADD PRIMARY KEY (`up_id`);

--
-- Indexes for table `jinlms_user_role`
--
ALTER TABLE `jinlms_user_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `jinlms_user_session`
--
ALTER TABLE `jinlms_user_session`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jinlms_ass_answers`
--
ALTER TABLE `jinlms_ass_answers`
  MODIFY `ans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jinlms_country`
--
ALTER TABLE `jinlms_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jinlms_country_code`
--
ALTER TABLE `jinlms_country_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `jinlms_images`
--
ALTER TABLE `jinlms_images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jinlms_module`
--
ALTER TABLE `jinlms_module`
  MODIFY `mod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jinlms_stage`
--
ALTER TABLE `jinlms_stage`
  MODIFY `stage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jinlms_topic`
--
ALTER TABLE `jinlms_topic`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jinlms_topic_ass_questions`
--
ALTER TABLE `jinlms_topic_ass_questions`
  MODIFY `ass_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jinlms_user`
--
ALTER TABLE `jinlms_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jinlms_user_login_links`
--
ALTER TABLE `jinlms_user_login_links`
  MODIFY `links_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jinlms_user_programs`
--
ALTER TABLE `jinlms_user_programs`
  MODIFY `up_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jinlms_user_role`
--
ALTER TABLE `jinlms_user_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jinlms_user_session`
--
ALTER TABLE `jinlms_user_session`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
