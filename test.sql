SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `b_file` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HEIGHT` int(18) DEFAULT NULL,
  `WIDTH` int(18) DEFAULT NULL,
  `FILE_SIZE` bigint(20) DEFAULT NULL,
  `CONTENT_TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'IMAGE',
  `SUBDIR` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ORIGINAL_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HANDLER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_file` (`ID`, `TIMESTAMP_X`, `MODULE_ID`, `HEIGHT`, `WIDTH`, `FILE_SIZE`, `CONTENT_TYPE`, `SUBDIR`, `FILE_NAME`, `ORIGINAL_NAME`, `DESCRIPTION`, `HANDLER_ID`, `EXTERNAL_ID`) VALUES
(1, '2012-11-06 12:08:00', 'iblock', 97, 115, 7024, 'image/png', 'iblock/a1', 'a1.png', 'a1.png', '', NULL, NULL),
(2, '2012-11-06 12:08:00', 'iblock', 97, 115, 7024, 'image/png', 'iblock/a1', 'a2.png', 'a2.png', '', NULL, NULL),
(3, '2012-11-06 12:08:00', 'iblock', 97, 115, 7024, 'image/png', 'iblock/a1', 'a3.png', 'a3.png', '', NULL, NULL),
(4, '2012-11-06 12:08:00', 'iblock', 97, 115, 7024, 'image/png', 'iblock/a1', 'a4.png', 'a4.png', '', NULL, NULL),
(5, '2012-11-06 12:08:00', 'iblock', 97, 115, 7024, 'image/png', 'iblock/a1', 'a5.png', 'a5.png', '', NULL, NULL),
(6, '2012-11-06 12:08:00', 'iblock', 97, 115, 7024, 'image/png', 'iblock/a2', 'a6.png', 'a6.png', '', NULL, NULL),
(7, '2012-11-06 12:08:00', 'iblock', 97, 115, 7024, 'image/png', 'iblock/a2', 'a7.png', 'a7.png', '', NULL, NULL),
(8, '2012-11-06 12:08:00', 'iblock', 97, 115, 7024, 'image/png', 'iblock/a2', 'a8.png', 'a8.png', '', NULL, NULL),
(9, '2012-11-06 12:08:00', 'iblock', 97, 115, 7024, 'image/png', 'iblock/a2', 'a9.png', 'a9.png', '', NULL, NULL),
(10, '2012-11-06 12:08:00', 'iblock', 97, 115, 7024, 'image/png', 'iblock/a2', 'a10.png', 'a10.png', '', NULL, NULL),
(11, '2012-11-06 12:08:00', 'iblock', 97, 115, 7024, 'image/png', 'iblock/a3', 'a11.png', 'a11.png', '', NULL, NULL),
(12, '2012-11-06 12:08:00', 'iblock', 97, 115, 7024, 'image/png', 'iblock/a3', 'a12.png', 'a12.png', '', NULL, NULL),
(13, '2012-11-06 12:08:00', 'iblock', 97, 115, 7024, 'image/png', 'iblock/a3', 'a13.png', 'a13.png', '', NULL, NULL),
(14, '2012-11-06 12:08:00', 'iblock', 97, 115, 7024, 'image/png', 'iblock/a3', 'a14.png', 'a14.png', '', NULL, NULL),
(15, '2012-11-06 12:08:00', 'iblock', 97, 115, 7024, 'image/png', 'iblock/a3', 'a15.png', 'a15.png', '', NULL, NULL),
(16, '2012-11-06 12:08:00', 'iblock', 97, 115, 7024, 'image/png', 'iblock/a4', 'a16.png', 'a16.png', '', NULL, NULL),
(17, '2012-11-06 12:08:00', 'iblock', 97, 115, 7024, 'image/png', 'iblock/a4', 'a17.png', 'a17.png', '', NULL, NULL),
(18, '2012-11-06 12:08:00', 'iblock', 97, 115, 7024, 'image/png', 'iblock/a4', 'a18.png', 'a18.png', '', NULL, NULL),
(19, '2012-11-06 12:08:00', 'iblock', 97, 115, 7024, 'image/png', 'iblock/a4', 'a19.png', 'a19.png', '', NULL, NULL),
(20, '2012-11-06 12:08:00', 'iblock', 97, 115, 7024, 'image/png', 'iblock/a4', 'a20.png', 'a20.png', '', NULL, NULL);