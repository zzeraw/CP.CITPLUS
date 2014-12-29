-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.5.41-log - MySQL Community Server (GPL)
-- ОС Сервера:                   Win32
-- HeidiSQL Версия:              8.1.0.4545
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица citrus_plus.banners
DROP TABLE IF EXISTS `banners`;
CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL,
  `link` varchar(256) DEFAULT NULL,
  `image` varchar(512) NOT NULL,
  `image_attr_title` varchar(512) DEFAULT NULL,
  `image_attr_alt` varchar(512) DEFAULT NULL,
  `body` mediumtext,
  `nn` int(11) NOT NULL DEFAULT '0',
  `created_ip` varchar(300) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `modified_username` varchar(300) DEFAULT NULL,
  `created_username` varchar(200) DEFAULT NULL,
  `modified_ip` varchar(300) DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы citrus_plus.banners: ~3 rows (приблизительно)
DELETE FROM `banners`;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` (`id`, `title`, `link`, `image`, `image_attr_title`, `image_attr_alt`, `body`, `nn`, `created_ip`, `created_datetime`, `created_user`, `modified_username`, `created_username`, `modified_ip`, `modified_datetime`, `modified_user`, `active`) VALUES
	(1, 'Баннер 1', NULL, 'banner_1.jpg', NULL, NULL, '<div class="about-block">\r\n                                <div class="font-h1 thin margin-h1">Высокая надежность</div>\r\n                                <p>Применение качественных материалов и современных коммутационных аппаратов ведущих мировых фирм производителей .</p>\r\n                            </div>', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(2, 'Баннер 2', NULL, 'banner_2.jpg', NULL, NULL, '<div class="about-block">\n                            <div class="font-h1 thin margin-h1">Безопасность\r\n</div>\n                            <p>Изготовление продукции осуществляется в соответствии с обязательными требованиями государственных стандартов ГОСТ Р 51321 (МЭК 60439-1), действующей технической документацией\r\n.</p>\n                        </div>', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(3, 'Баннер_3', NULL, 'banner_3.jpg', NULL, NULL, '<div class="about-block">\n                            <div class="font-h1 thin margin-h1">Гарантии качества\r\n</div>\n                            <p>Высокие надежность и ресурс комплектующих, качество заводского изготовления обеспечивают большой срок службы НКУ и низкий объём эксплуатационных затрат. Срок службы НКУ составляет не менее 20 лет.\r\n</p>\n                        </div>', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;


-- Дамп структуры для таблица citrus_plus.blocks
DROP TABLE IF EXISTS `blocks`;
CREATE TABLE IF NOT EXISTS `blocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(200) NOT NULL,
  `title` varchar(300) NOT NULL,
  `body` mediumtext,
  `created_ip` varchar(256) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `created_username` varchar(200) DEFAULT NULL,
  `modified_ip` varchar(256) DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `modified_username` varchar(300) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы citrus_plus.blocks: ~2 rows (приблизительно)
DELETE FROM `blocks`;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;
INSERT INTO `blocks` (`id`, `alias`, `title`, `body`, `created_ip`, `created_datetime`, `created_user`, `created_username`, `modified_ip`, `modified_datetime`, `modified_user`, `modified_username`, `active`) VALUES
	(1, 'header', 'Шапка', '<div class="header">\r\n\r\n    <div class="notched-section__content">\r\n\r\n        <div class="container">\r\n\r\n            <div class="row">\r\n                <div class="col-xs-3">\r\n                    <a href="/" title="На главную">\r\n                        <img class="img-responsive" style="width: 250px" src="/img/logo.png" alt="">\r\n                    </a>\r\n                </div>\r\n                <div class="col-xs-7">\r\n\r\n                </div>\r\n                <div class="col-xs-2">\r\n\r\n                </div>\r\n            </div>\r\n\r\n        </div>\r\n\r\n    </div>\r\n\r\n    <div class="notched-section__bottom"></div>\r\n\r\n</div>', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', '2014-12-03 14:49:14', 1, 'zzeraw', NULL, NULL, 1, 'zzeraw', 1),
	(2, 'footer', 'Подвал', '\r\n<div class="footer">\r\n    <div class="follow-block">\r\n\r\n    </div>\r\n    <div class="contacts-block">\r\n        <div class="container">\r\n            <div class="row">\r\n                <div class="col-xs-4">\r\n                    2010-{{w:CurrentYear}} &copy; Группа компаний "Цитрус+"\r\n                </div>\r\n                <div class="col-xs-8">\r\n\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', '2014-12-03 14:49:27', 1, 'zzeraw', NULL, NULL, 1, 'zzeraw', 1);
/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;


-- Дамп структуры для таблица citrus_plus.form_requests
DROP TABLE IF EXISTS `form_requests`;
CREATE TABLE IF NOT EXISTS `form_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fio` varchar(300) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `description` mediumtext,
  `created_ip` varchar(300) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы citrus_plus.form_requests: ~2 rows (приблизительно)
DELETE FROM `form_requests`;
/*!40000 ALTER TABLE `form_requests` DISABLE KEYS */;
INSERT INTO `form_requests` (`id`, `fio`, `phone`, `email`, `description`, `created_ip`, `created_datetime`) VALUES
	(1, 'frerfer', '343434', NULL, '{"subject":"\\u0421 \\u0441\\u0430\\u0439\\u0442\\u0430 \\u043f\\u043e\\u0441\\u0442\\u0443\\u043f\\u0438\\u043b\\u0430 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0430 \\u043d\\u0430 \\u043e\\u0431\\u0440\\u0430\\u0442\\u043d\\u044b\\u0439 \\u0437\\u0432\\u043e\\u043d\\u043e\\u043a","comment":""}', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '2014-12-19 12:04:01'),
	(2, 'rgege', 'fwefwe', NULL, '{"subject":"\\u0421 \\u0441\\u0430\\u0439\\u0442\\u0430 \\u043f\\u043e\\u0441\\u0442\\u0443\\u043f\\u0438\\u043b\\u0430 \\u0437\\u0430\\u044f\\u0432\\u043a\\u0430 \\u043d\\u0430 \\u043e\\u0431\\u0440\\u0430\\u0442\\u043d\\u044b\\u0439 \\u0437\\u0432\\u043e\\u043d\\u043e\\u043a","comment":""}', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '2014-12-19 12:04:51');
/*!40000 ALTER TABLE `form_requests` ENABLE KEYS */;


-- Дамп структуры для таблица citrus_plus.gallery_albums
DROP TABLE IF EXISTS `gallery_albums`;
CREATE TABLE IF NOT EXISTS `gallery_albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `description` varchar(300) DEFAULT NULL,
  `created_ip` varchar(300) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `created_username` varchar(200) DEFAULT NULL,
  `modified_ip` varchar(300) DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `modified_username` varchar(300) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы citrus_plus.gallery_albums: ~3 rows (приблизительно)
DELETE FROM `gallery_albums`;
/*!40000 ALTER TABLE `gallery_albums` DISABLE KEYS */;
INSERT INTO `gallery_albums` (`id`, `title`, `description`, `created_ip`, `created_datetime`, `created_user`, `created_username`, `modified_ip`, `modified_datetime`, `modified_user`, `modified_username`, `active`) VALUES
	(1, 'Отзывы', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', 1),
	(2, 'Сертификаты', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', 1),
	(3, 'Производство', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', 1);
/*!40000 ALTER TABLE `gallery_albums` ENABLE KEYS */;


-- Дамп структуры для таблица citrus_plus.gallery_photos
DROP TABLE IF EXISTS `gallery_photos`;
CREATE TABLE IF NOT EXISTS `gallery_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `image_attr_title` varchar(300) DEFAULT NULL,
  `image_attr_alt` varchar(300) DEFAULT NULL,
  `title` varchar(300) DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `tags` varchar(300) DEFAULT NULL,
  `nn` int(11) DEFAULT NULL,
  `created_ip` varchar(300) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `created_username` varchar(200) DEFAULT NULL,
  `modified_ip` varchar(300) DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `modified_username` varchar(300) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы citrus_plus.gallery_photos: ~1 rows (приблизительно)
DELETE FROM `gallery_photos`;
/*!40000 ALTER TABLE `gallery_photos` DISABLE KEYS */;
INSERT INTO `gallery_photos` (`id`, `album_id`, `image`, `image_attr_title`, `image_attr_alt`, `title`, `description`, `tags`, `nn`, `created_ip`, `created_datetime`, `created_user`, `created_username`, `modified_ip`, `modified_datetime`, `modified_user`, `modified_username`, `active`) VALUES
	(1, 2, 'sert01.jpg', NULL, NULL, 'Сертификат соответствия требованиям таможенного союза', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
/*!40000 ALTER TABLE `gallery_photos` ENABLE KEYS */;


-- Дамп структуры для таблица citrus_plus.pages
DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `begin_body` text,
  `end_body` text,
  `show_title` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `template` varchar(50) DEFAULT NULL,
  `meta_index` tinyint(1) NOT NULL DEFAULT '1',
  `meta_title` varchar(200) DEFAULT NULL,
  `meta_description` varchar(500) DEFAULT NULL,
  `meta_keywords` varchar(500) DEFAULT NULL,
  `created_ip` varchar(300) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `created_username` varchar(200) DEFAULT NULL,
  `modified_ip` varchar(300) DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `modified_username` varchar(300) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы citrus_plus.pages: ~2 rows (приблизительно)
DELETE FROM `pages`;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`, `title`, `alias`, `begin_body`, `end_body`, `show_title`, `module`, `template`, `meta_index`, `meta_title`, `meta_description`, `meta_keywords`, `created_ip`, `created_datetime`, `created_user`, `created_username`, `modified_ip`, `modified_datetime`, `modified_user`, `modified_username`, `active`) VALUES
	(1, 'Главная', '', '            <div class="banner-block">\r\n                <div class="container">\r\n                    <h1>Разработка сайтов, веб-сервисов и мобильных приложений</h1>\r\n                    <h1>Выработка стратегии продаж</h1>\r\n                    <h1>Продвижение бренда</h1>\r\n                </div>\r\n            </div>\r\n\r\n            <div class="notched-section__top bg-orange"></div>\r\n\r\n\r\n            <div class="notched-section__content">\r\n                <div class="container">\r\n\r\n                    <h2>О компании</h2>\r\n\r\n                    <div class="row">\r\n                        <div class="col-xs-6">\r\n                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempora quaerat magnam voluptatum distinctio, maxime laudantium eaque doloremque, modi, obcaecati recusandae odio. Tenetur nesciunt deserunt blanditiis delectus quaerat error illo. Officiis! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempora quaerat magnam voluptatum distinctio, maxime laudantium eaque doloremque, modi, obcaecati recusandae odio. Tenetur nesciunt deserunt blanditiis delectus quaerat error illo. Officiis!</p>\r\n                        </div>\r\n                        <div class="col-xs-6">\r\n                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto officiis sint illo ratione explicabo. Eligendi reprehenderit, adipisci, error ipsa qui cumque sunt voluptatem! Eos ea, modi molestiae, dicta sint ad!</p>\r\n                        </div>\r\n                    </div>\r\n\r\n                </div>\r\n            </div>\r\n\r\n            <div class="notched-section__bottom"></div>\r\n\r\n            <div class="container">\r\n                <h2>Проекты</h2>\r\n               {{w:RecentPortfolioItems}}\r\n\r\n            </div>', '', 0, NULL, 'homepage', 1, '', '', '', NULL, NULL, NULL, '', '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', '2014-12-03 14:47:14', 1, 'zzeraw', 1),
	(2, 'Портфолио', 'portfolio', NULL, NULL, 1, 'portfolio', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', 1);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;


-- Дамп структуры для таблица citrus_plus.portfolio_items
DROP TABLE IF EXISTS `portfolio_items`;
CREATE TABLE IF NOT EXISTS `portfolio_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `annotation` mediumtext,
  `body` mediumtext,
  `image` varchar(300) DEFAULT NULL,
  `image_attr_title` varchar(300) DEFAULT NULL,
  `image_attr_alt` varchar(300) DEFAULT NULL,
  `nn` int(11) DEFAULT NULL,
  `meta_index` tinyint(1) NOT NULL DEFAULT '1',
  `meta_title` varchar(200) DEFAULT NULL,
  `meta_description` varchar(500) DEFAULT NULL,
  `meta_keywords` varchar(500) DEFAULT NULL,
  `created_ip` varchar(300) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `created_username` varchar(200) DEFAULT NULL,
  `modified_ip` varchar(300) DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `modified_username` varchar(300) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы citrus_plus.portfolio_items: ~43 rows (приблизительно)
DELETE FROM `portfolio_items`;
/*!40000 ALTER TABLE `portfolio_items` DISABLE KEYS */;
INSERT INTO `portfolio_items` (`id`, `title`, `annotation`, `body`, `image`, `image_attr_title`, `image_attr_alt`, `nn`, `meta_index`, `meta_title`, `meta_description`, `meta_keywords`, `created_ip`, `created_datetime`, `created_user`, `created_username`, `modified_ip`, `modified_datetime`, `modified_user`, `modified_username`, `active`) VALUES
	(1, 'Сайт сети фитнес-клубов "Цитрус"', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', 'citrusfit.png', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2014-12-26 11:00:00', NULL, NULL, NULL, '2014-12-26 11:00:00', NULL, NULL, 1),
	(2, 'Сайт сети баров "Лемон Бар"', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', 'lemonbar.png', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2014-12-26 12:00:00', NULL, NULL, NULL, '2014-12-26 12:00:00', NULL, NULL, 1),
	(3, 'Сайт предприятия "Владком"', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2014-12-26 13:00:00', NULL, NULL, NULL, '2014-12-26 13:00:00', NULL, NULL, 1),
	(4, 'Сайт предприятия "Армико"', NULL, NULL, 'armico-logo_Logo2.png', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2014-12-26 14:00:00', NULL, NULL, NULL, '2014-12-26 14:00:00', NULL, NULL, 1),
	(5, 'Сайт предприятия "Армико Фундамент"', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2014-12-26 15:00:00', NULL, NULL, NULL, '2014-12-26 15:00:00', NULL, NULL, 1),
	(6, 'Сайт магазина "Таёжник"', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2014-12-26 16:00:00', NULL, NULL, NULL, '2014-12-26 16:00:00', NULL, NULL, 1),
	(7, 'Сайт мобильного приложения Inventory Bar', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2014-12-26 17:00:00', NULL, NULL, NULL, '2014-12-26 17:00:00', NULL, NULL, 1),
	(8, 'Сайт мобильного приложения Tapinap', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2014-12-26 18:00:00', NULL, NULL, NULL, '2014-12-26 18:00:00', NULL, NULL, 1),
	(9, 'Сайт ателье Татьяны Разумовой', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2014-12-26 19:00:00', NULL, NULL, NULL, '2014-12-26 19:00:00', NULL, NULL, 1),
	(10, 'Вторая версия сайта предприятия "Бристоль"', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2014-12-26 20:00:00', NULL, NULL, NULL, '2014-12-26 20:00:00', NULL, NULL, 1),
	(11, 'Сайт предприятия ExtraTrade', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2014-12-26 21:00:00', NULL, NULL, NULL, '2014-12-26 21:00:00', NULL, NULL, 1),
	(12, 'Рефакторинг сайта турагенства "Гудзон"', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2014-12-26 22:00:00', NULL, NULL, NULL, '2014-12-26 22:00:00', NULL, NULL, 1),
	(13, 'Серверная часть мобильного приложения Tapinap', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(14, 'CRM для туристического агенства', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(15, 'Сервис для системы контроля доступа для ООО НПП "ЭКРА"', NULL, NULL, '01_ekra_logo_2005_prev.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(16, 'Сервис для учета пропусков для ООО НПП "ЭКРА"', NULL, NULL, '01_ekra_logo_2005_prev.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(17, 'Табель прихода-ухода для ООО НПП "ЭКРА"', NULL, NULL, '01_ekra_logo_2005_prev.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(18, 'Портал спортивных мероприятий для ООО НПП "ЭКРА"', NULL, NULL, '01_ekra_logo_2005_prev.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(19, 'Портал научной деятельности для ООО НПП "ЭКРА"', NULL, NULL, '01_ekra_logo_2005_prev.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(20, 'Портал кредитования для ООО НПП "ЭКРА"', NULL, NULL, '01_ekra_logo_2005_prev.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(21, 'Портал отдела кадров для ООО НПП "ЭКРА"', NULL, NULL, '01_ekra_logo_2005_prev.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(22, 'Каталог IT-услуг для ООО НПП "ЭКРА"', NULL, NULL, '01_ekra_logo_2005_prev.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(23, 'Сервис для отправки и приема электронных служебных записок в ООО НПП "ЭКРА"', NULL, NULL, '01_ekra_logo_2005_prev.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(24, 'Сервис для обработки заявок на командировки в ООО НПП "ЭКРА"', NULL, NULL, '01_ekra_logo_2005_prev.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(25, 'Внутренний телефонный справочник ООО НПП "ЭКРА"', NULL, NULL, '01_ekra_logo_2005_prev.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(26, 'Система учета фонда библиотеки', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(27, 'Он-лайн заказ бизнес-ланчей для кафе «Дубрава»', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(28, 'Прием заявок о неисправностях на предприятии', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(29, 'Мобильное приложение InventoryBar', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(30, 'Мобильное приложение Okaysy', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(31, 'Мобильное приложение Tapinap', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(32, 'Вторая версия сайта сети фитнес-клубов "Цитрус"', NULL, NULL, 'citrusfit.png', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(33, 'Сайт nail-бара "ДевочкиТакиеДевочки"', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(34, 'Сайт-портфолио кондитера Евгении Михайловой', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(35, 'Вторая версия сайта магазина "Таёжник"', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(36, 'Сайт "Единой транспортной карты"', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(37, 'Верстка лендингов для предпритяия Profflex', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(38, 'Редизайн и рефакторинг сайта магазина "Мебельный"', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(39, 'Вторая версия сайта завода "Бристоль"', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(40, 'Сайт production-студии POZOR', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(41, 'Сайт предприятия "ЭлекКом Логистик"', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(42, 'Маркетинговое исследование для ООО "ЭлекКом Логистик"', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
	(43, 'Внутренний корпоративный портал для ООО НПП "ЭКРА"', NULL, NULL, '01_ekra_logo_2005_prev.jpg', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
/*!40000 ALTER TABLE `portfolio_items` ENABLE KEYS */;


-- Дамп структуры для таблица citrus_plus.portfolio_item_tags
DROP TABLE IF EXISTS `portfolio_item_tags`;
CREATE TABLE IF NOT EXISTS `portfolio_item_tags` (
  `post_id` int(10) NOT NULL,
  `tagId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`post_id`,`tagId`),
  KEY `blog_post_tags_ibfk2` (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы citrus_plus.portfolio_item_tags: ~0 rows (приблизительно)
DELETE FROM `portfolio_item_tags`;
/*!40000 ALTER TABLE `portfolio_item_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `portfolio_item_tags` ENABLE KEYS */;


-- Дамп структуры для таблица citrus_plus.portfolio_tags
DROP TABLE IF EXISTS `portfolio_tags`;
CREATE TABLE IF NOT EXISTS `portfolio_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `count` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Tag_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы citrus_plus.portfolio_tags: ~0 rows (приблизительно)
DELETE FROM `portfolio_tags`;
/*!40000 ALTER TABLE `portfolio_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `portfolio_tags` ENABLE KEYS */;


-- Дамп структуры для таблица citrus_plus.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` tinyint(4) DEFAULT '0',
  `description` varchar(400) DEFAULT NULL,
  `created_ip` varchar(300) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `created_user` int(11) DEFAULT NULL,
  `created_username` varchar(200) DEFAULT NULL,
  `modified_ip` varchar(300) DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  `modified_user` int(11) DEFAULT NULL,
  `modified_username` varchar(300) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы citrus_plus.users: ~2 rows (приблизительно)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `description`, `created_ip`, `created_datetime`, `created_user`, `created_username`, `modified_ip`, `modified_datetime`, `modified_user`, `modified_username`, `active`) VALUES
	(1, 'zzeraw', '$2a$13$T8y1O/Jl2xqdevO3U6x/uO2tcoGBEUcl.2SBi2cENugNml1cjEht6', 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', 1),
	(2, 'manager', '$2a$13$lN85gMTt7Q0Oy.gnpeEdx.Q8ch5SftPRmpsmCrJe2wVYbUeQICXBm', 2, NULL, '127.0.0.1 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', '2014-12-03 15:51:34', 1, 'zzeraw', NULL, NULL, 1, 'zzeraw', 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
