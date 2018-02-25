-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.21-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for essentialmode
CREATE DATABASE IF NOT EXISTS `essentialmode` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `essentialmode`;

-- Dumping structure for table essentialmode.addon_account
CREATE TABLE IF NOT EXISTS `addon_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table essentialmode.addon_account: ~0 rows (approximately)
/*!40000 ALTER TABLE `addon_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `addon_account` ENABLE KEYS */;

-- Dumping structure for table essentialmode.addon_account_data
CREATE TABLE IF NOT EXISTS `addon_account_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) DEFAULT NULL,
  `money` double NOT NULL,
  `owner` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table essentialmode.addon_account_data: ~0 rows (approximately)
/*!40000 ALTER TABLE `addon_account_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `addon_account_data` ENABLE KEYS */;

-- Dumping structure for table essentialmode.characters
CREATE TABLE IF NOT EXISTS `characters` (
  `identifier` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `sex` varchar(1) NOT NULL DEFAULT 'f',
  `height` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table essentialmode.characters: ~3 rows (approximately)
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;

-- Dumping structure for table essentialmode.items
CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `limit` int(11) NOT NULL DEFAULT '-1',
  `rare` int(11) NOT NULL DEFAULT '0',
  `can_remove` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- Dumping data for table essentialmode.items: ~0 rows (approximately)
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

-- Dumping structure for table essentialmode.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Dumping data for table essentialmode.jobs: ~9 rows (approximately)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT IGNORE INTO `jobs` (`id`, `name`, `label`, `whitelisted`) VALUES
	(0, 'unemployed', 'Recruit', 1),
	(1, 'unitedstatesarmy', 'United States Army', 0),
	(2, 'unitedkingdomarmy', 'United Kingdom Army', 0),
	(3, 'russianfederationarmy', 'Russian Federation Army', 0),
	(4, 'chinaarmy', 'People\'s Liberation Army', 0),
	(5, 'unitedstatesairforce', 'United States Air Force', 0),
	(6, 'unitedkingdomairforce', 'United Kingdom Air Force', 0),
	(7, 'russianfederationairforce', 'Russian Federation Air Force', 0),
	(8, 'chinaairforce', 'People\'s Liberation Air Force', 0);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Dumping structure for table essentialmode.job_grades
CREATE TABLE IF NOT EXISTS `job_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(255) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- Dumping data for table essentialmode.job_grades: ~21 rows (approximately)
/*!40000 ALTER TABLE `job_grades` DISABLE KEYS */;
INSERT IGNORE INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(0, 'unemployed', 0, 'rec', 'Soldier', 200, '{"helmet_1":5,"lipstick_2":0,"eyebrows_1":0,"mask_1":0,"pants_2":3,"torso_2":3,"tshirt_1":15,"torso_1":221,"glasses_1":0,"beard_4":0,"beard_1":0,"bproof_2":0,"chain_2":0,"eyebrows_3":0,"shoes_1":35,"bags_2":0,"beard_2":0,"lipstick_4":0,"skin":0,"decals_2":0,"makeup_3":0,"lipstick_3":0,"makeup_2":0,"hair_1":0,"shoes_2":0,"hair_color_2":0,"sex":0,"ears_1":-1,"ears_2":0,"chain_1":0,"mask_2":0,"arms":96,"makeup_1":0,"bags_1":0,"hair_2":0,"glasses_2":0,"helmet_2":1,"beard_3":0,"tshirt_2":0,"eyebrows_4":0,"makeup_4":0,"face":0,"decals_1":0,"lipstick_1":0,"bproof_1":0,"age_2":0,"age_1":0,"hair_color_1":0,"pants_1":87,"eyebrows_2":0}\n', '{"helmet_1":5,"lipstick_2":0,"eyebrows_1":0,"mask_1":0,"pants_2":3,"torso_2":3,"tshirt_1":15,"torso_1":221,"glasses_1":0,"beard_4":0,"beard_1":0,"bproof_2":0,"chain_2":0,"eyebrows_3":0,"shoes_1":35,"bags_2":0,"beard_2":0,"lipstick_4":0,"skin":0,"decals_2":0,"makeup_3":0,"lipstick_3":0,"makeup_2":0,"hair_1":0,"shoes_2":0,"hair_color_2":0,"sex":0,"ears_1":-1,"ears_2":0,"chain_1":0,"mask_2":0,"arms":96,"makeup_1":0,"bags_1":0,"hair_2":0,"glasses_2":0,"helmet_2":1,"beard_3":0,"tshirt_2":0,"eyebrows_4":0,"makeup_4":0,"face":0,"decals_1":0,"lipstick_1":0,"bproof_1":0,"age_2":0,"age_1":0,"hair_color_1":0,"pants_1":87,"eyebrows_2":0}\n'),
	(1, 'unitedstatesarmy', 0, 'sol', 'Soldier', 200, '{"bproof_1":16,"mask_2":0,"ears_2":0,"bproof_2":0,"age_1":0,"face":0,"beard_4":0,"chain_1":112,"hair_color_2":0,"helmet_1":39,"beard_2":0,"lipstick_2":0,"decals_1":0,"age_2":0,"shoes_2":0,"glasses_1":25,"eyebrows_3":0,"bags_1":0,"decals_2":0,"hair_2":0,"skin":0,"bags_2":0,"tshirt_1":15,"lipstick_4":0,"hair_color_1":0,"beard_1":0,"pants_2":3,"torso_1":221,"torso_2":3,"makeup_2":0,"makeup_1":0,"pants_1":87,"makeup_3":0,"helmet_2":3,"mask_1":35,"sex":0,"glasses_2":6,"lipstick_1":0,"chain_2":0,"eyebrows_1":0,"beard_3":0,"hair_1":0,"arms":96,"makeup_4":0,"shoes_1":35,"eyebrows_4":0,"lipstick_3":0,"ears_1":-1,"eyebrows_2":0,"tshirt_2":0}', '{"mask_1":0,"arms":5,"glasses_1":5,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":1,"torso_1":52,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":1,"lipstick_2":0,"chain_1":0,"tshirt_1":23,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":42,"tshirt_2":4,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":36,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}'),
	(2, 'unitedkingdomarmy', 0, 'sol', 'Soldier', 200, '{"bproof_1":16,"mask_2":0,"ears_2":0,"bproof_2":0,"skin":0,"face":0,"beard_4":0,"chain_1":112,"hair_color_2":0,"helmet_1":7,"beard_2":0,"lipstick_2":0,"decals_1":2,"age_2":0,"shoes_2":0,"glasses_1":25,"eyebrows_3":0,"makeup_4":0,"decals_2":0,"hair_2":0,"makeup_2":0,"bags_2":0,"tshirt_1":15,"sex":0,"hair_color_1":0,"eyebrows_2":0,"pants_2":3,"torso_2":3,"arms":96,"lipstick_4":0,"makeup_1":0,"hair_1":0,"makeup_3":0,"torso_1":221,"mask_1":35,"helmet_2":5,"eyebrows_4":0,"lipstick_1":0,"chain_2":0,"eyebrows_1":0,"beard_3":0,"age_1":0,"beard_1":0,"bags_1":0,"shoes_1":35,"glasses_2":6,"lipstick_3":0,"ears_1":-1,"pants_1":87,"tshirt_2":0}', '{"mask_1":0,"arms":5,"glasses_1":5,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":1,"torso_1":52,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":1,"lipstick_2":0,"chain_1":0,"tshirt_1":23,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":42,"tshirt_2":4,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":36,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}'),
	(3, 'russianfederationarmy', 0, 'sol', 'Soldier', 200, '{"bproof_1":16,"mask_2":0,"ears_2":0,"bproof_2":1,"skin":0,"face":0,"beard_4":0,"chain_1":112,"hair_color_2":0,"helmet_1":7,"beard_2":0,"lipstick_2":0,"decals_1":2,"age_2":0,"shoes_2":1,"glasses_1":25,"eyebrows_3":0,"makeup_4":0,"decals_2":0,"hair_2":0,"makeup_2":0,"bags_2":0,"tshirt_1":15,"sex":0,"hair_color_1":0,"eyebrows_2":0,"pants_2":8,"torso_2":8,"arms":96,"lipstick_4":0,"makeup_1":0,"hair_1":0,"makeup_3":0,"torso_1":221,"mask_1":35,"helmet_2":4,"eyebrows_4":0,"lipstick_1":0,"chain_2":2,"eyebrows_1":0,"beard_3":0,"age_1":0,"beard_1":0,"bags_1":0,"shoes_1":35,"glasses_2":6,"lipstick_3":0,"ears_1":-1,"pants_1":87,"tshirt_2":0}', '{"mask_1":0,"arms":5,"glasses_1":5,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":1,"torso_1":52,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":1,"lipstick_2":0,"chain_1":0,"tshirt_1":23,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":42,"tshirt_2":4,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":36,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}'),
	(4, 'chinaarmy', 0, 'sol', 'Soldier', 200, '{"bproof_1":16,"mask_2":0,"ears_2":0,"bproof_2":1,"skin":0,"face":0,"beard_4":0,"chain_1":112,"hair_color_2":0,"helmet_1":39,"beard_2":0,"lipstick_2":0,"decals_1":0,"age_2":0,"shoes_2":1,"glasses_1":25,"eyebrows_3":0,"makeup_4":0,"decals_2":0,"hair_2":0,"makeup_2":0,"bags_2":0,"tshirt_1":15,"sex":0,"hair_color_1":0,"eyebrows_2":0,"pants_2":8,"torso_2":8,"arms":96,"lipstick_4":0,"makeup_1":0,"hair_1":0,"makeup_3":0,"torso_1":221,"mask_1":35,"helmet_2":4,"eyebrows_4":0,"lipstick_1":0,"chain_2":2,"eyebrows_1":0,"beard_3":0,"age_1":0,"beard_1":0,"bags_1":0,"shoes_1":35,"glasses_2":6,"lipstick_3":0,"ears_1":-1,"pants_1":87,"tshirt_2":0}', '{"mask_1":0,"arms":5,"glasses_1":5,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":1,"torso_1":52,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":1,"lipstick_2":0,"chain_1":0,"tshirt_1":23,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":42,"tshirt_2":4,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":36,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}'),
	(5, 'unitedstatesarmy', 1, 'nco', 'NCO', 200, '{"bproof_1":16,"mask_2":0,"ears_2":0,"bproof_2":0,"age_1":0,"face":0,"beard_4":0,"chain_1":112,"hair_color_2":0,"helmet_1":39,"beard_2":0,"lipstick_2":0,"decals_1":0,"age_2":0,"shoes_2":0,"glasses_1":25,"eyebrows_3":0,"bags_1":0,"decals_2":0,"hair_2":0,"skin":0,"bags_2":0,"tshirt_1":15,"lipstick_4":0,"hair_color_1":0,"beard_1":0,"pants_2":3,"torso_1":221,"torso_2":3,"makeup_2":0,"makeup_1":0,"pants_1":87,"makeup_3":0,"helmet_2":3,"mask_1":35,"sex":0,"glasses_2":6,"lipstick_1":0,"chain_2":0,"eyebrows_1":0,"beard_3":0,"hair_1":0,"arms":96,"makeup_4":0,"shoes_1":35,"eyebrows_4":0,"lipstick_3":0,"ears_1":-1,"eyebrows_2":0,"tshirt_2":0}', '{"mask_1":0,"arms":5,"glasses_1":5,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":1,"torso_1":52,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":1,"lipstick_2":0,"chain_1":0,"tshirt_1":23,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":42,"tshirt_2":4,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":36,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}'),
	(6, 'unitedkingdomarmy', 1, 'nco', 'NCO', 200, '{"bproof_1":16,"mask_2":0,"ears_2":0,"bproof_2":0,"skin":0,"face":0,"beard_4":0,"chain_1":112,"hair_color_2":0,"helmet_1":7,"beard_2":0,"lipstick_2":0,"decals_1":2,"age_2":0,"shoes_2":0,"glasses_1":25,"eyebrows_3":0,"makeup_4":0,"decals_2":0,"hair_2":0,"makeup_2":0,"bags_2":0,"tshirt_1":15,"sex":0,"hair_color_1":0,"eyebrows_2":0,"pants_2":3,"torso_2":3,"arms":96,"lipstick_4":0,"makeup_1":0,"hair_1":0,"makeup_3":0,"torso_1":221,"mask_1":35,"helmet_2":5,"eyebrows_4":0,"lipstick_1":0,"chain_2":0,"eyebrows_1":0,"beard_3":0,"age_1":0,"beard_1":0,"bags_1":0,"shoes_1":35,"glasses_2":6,"lipstick_3":0,"ears_1":-1,"pants_1":87,"tshirt_2":0}', '{"mask_1":0,"arms":5,"glasses_1":5,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":1,"torso_1":52,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":1,"lipstick_2":0,"chain_1":0,"tshirt_1":23,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":42,"tshirt_2":4,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":36,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}'),
	(7, 'russianfederationarmy', 1, 'nco', 'NCO', 200, '{"bproof_1":16,"mask_2":0,"ears_2":0,"bproof_2":1,"skin":0,"face":0,"beard_4":0,"chain_1":112,"hair_color_2":0,"helmet_1":7,"beard_2":0,"lipstick_2":0,"decals_1":2,"age_2":0,"shoes_2":1,"glasses_1":25,"eyebrows_3":0,"makeup_4":0,"decals_2":0,"hair_2":0,"makeup_2":0,"bags_2":0,"tshirt_1":15,"sex":0,"hair_color_1":0,"eyebrows_2":0,"pants_2":8,"torso_2":8,"arms":96,"lipstick_4":0,"makeup_1":0,"hair_1":0,"makeup_3":0,"torso_1":221,"mask_1":35,"helmet_2":4,"eyebrows_4":0,"lipstick_1":0,"chain_2":2,"eyebrows_1":0,"beard_3":0,"age_1":0,"beard_1":0,"bags_1":0,"shoes_1":35,"glasses_2":6,"lipstick_3":0,"ears_1":-1,"pants_1":87,"tshirt_2":0}', '{"mask_1":0,"arms":5,"glasses_1":5,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":1,"torso_1":52,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":1,"lipstick_2":0,"chain_1":0,"tshirt_1":23,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":42,"tshirt_2":4,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":36,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}'),
	(8, 'chinaarmy', 1, 'nco', 'NCO', 200, '{"bproof_1":16,"mask_2":0,"ears_2":0,"bproof_2":1,"skin":0,"face":0,"beard_4":0,"chain_1":112,"hair_color_2":0,"helmet_1":39,"beard_2":0,"lipstick_2":0,"decals_1":0,"age_2":0,"shoes_2":1,"glasses_1":25,"eyebrows_3":0,"makeup_4":0,"decals_2":0,"hair_2":0,"makeup_2":0,"bags_2":0,"tshirt_1":15,"sex":0,"hair_color_1":0,"eyebrows_2":0,"pants_2":8,"torso_2":8,"arms":96,"lipstick_4":0,"makeup_1":0,"hair_1":0,"makeup_3":0,"torso_1":221,"mask_1":35,"helmet_2":4,"eyebrows_4":0,"lipstick_1":0,"chain_2":2,"eyebrows_1":0,"beard_3":0,"age_1":0,"beard_1":0,"bags_1":0,"shoes_1":35,"glasses_2":6,"lipstick_3":0,"ears_1":-1,"pants_1":87,"tshirt_2":0}', '{"mask_1":0,"arms":5,"glasses_1":5,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":1,"torso_1":52,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":1,"lipstick_2":0,"chain_1":0,"tshirt_1":23,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":42,"tshirt_2":4,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":36,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}'),
	(9, 'unitedstatesarmy', 2, 'co', 'CO', 200, '{"bproof_1":16,"mask_2":0,"ears_2":0,"bproof_2":0,"age_1":0,"face":0,"beard_4":0,"chain_1":112,"hair_color_2":0,"helmet_1":39,"beard_2":0,"lipstick_2":0,"decals_1":0,"age_2":0,"shoes_2":0,"glasses_1":25,"eyebrows_3":0,"bags_1":0,"decals_2":0,"hair_2":0,"skin":0,"bags_2":0,"tshirt_1":15,"lipstick_4":0,"hair_color_1":0,"beard_1":0,"pants_2":3,"torso_1":221,"torso_2":3,"makeup_2":0,"makeup_1":0,"pants_1":87,"makeup_3":0,"helmet_2":3,"mask_1":35,"sex":0,"glasses_2":6,"lipstick_1":0,"chain_2":0,"eyebrows_1":0,"beard_3":0,"hair_1":0,"arms":96,"makeup_4":0,"shoes_1":35,"eyebrows_4":0,"lipstick_3":0,"ears_1":-1,"eyebrows_2":0,"tshirt_2":0}', '{"mask_1":0,"arms":5,"glasses_1":5,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":1,"torso_1":52,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":1,"lipstick_2":0,"chain_1":0,"tshirt_1":23,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":42,"tshirt_2":4,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":36,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}'),
	(10, 'unitedkingdomarmy', 2, 'co', 'CO', 200, '{"bproof_1":16,"mask_2":0,"ears_2":0,"bproof_2":0,"skin":0,"face":0,"beard_4":0,"chain_1":112,"hair_color_2":0,"helmet_1":7,"beard_2":0,"lipstick_2":0,"decals_1":2,"age_2":0,"shoes_2":0,"glasses_1":25,"eyebrows_3":0,"makeup_4":0,"decals_2":0,"hair_2":0,"makeup_2":0,"bags_2":0,"tshirt_1":15,"sex":0,"hair_color_1":0,"eyebrows_2":0,"pants_2":3,"torso_2":3,"arms":96,"lipstick_4":0,"makeup_1":0,"hair_1":0,"makeup_3":0,"torso_1":221,"mask_1":35,"helmet_2":5,"eyebrows_4":0,"lipstick_1":0,"chain_2":0,"eyebrows_1":0,"beard_3":0,"age_1":0,"beard_1":0,"bags_1":0,"shoes_1":35,"glasses_2":6,"lipstick_3":0,"ears_1":-1,"pants_1":87,"tshirt_2":0}', '{"mask_1":0,"arms":5,"glasses_1":5,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":1,"torso_1":52,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":1,"lipstick_2":0,"chain_1":0,"tshirt_1":23,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":42,"tshirt_2":4,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":36,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}'),
	(11, 'russianfederationarmy', 2, 'co', 'CO', 200, '{"bproof_1":16,"mask_2":0,"ears_2":0,"bproof_2":1,"skin":0,"face":0,"beard_4":0,"chain_1":112,"hair_color_2":0,"helmet_1":7,"beard_2":0,"lipstick_2":0,"decals_1":2,"age_2":0,"shoes_2":1,"glasses_1":25,"eyebrows_3":0,"makeup_4":0,"decals_2":0,"hair_2":0,"makeup_2":0,"bags_2":0,"tshirt_1":15,"sex":0,"hair_color_1":0,"eyebrows_2":0,"pants_2":8,"torso_2":8,"arms":96,"lipstick_4":0,"makeup_1":0,"hair_1":0,"makeup_3":0,"torso_1":221,"mask_1":35,"helmet_2":4,"eyebrows_4":0,"lipstick_1":0,"chain_2":2,"eyebrows_1":0,"beard_3":0,"age_1":0,"beard_1":0,"bags_1":0,"shoes_1":35,"glasses_2":6,"lipstick_3":0,"ears_1":-1,"pants_1":87,"tshirt_2":0}', '{"mask_1":0,"arms":5,"glasses_1":5,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":1,"torso_1":52,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":1,"lipstick_2":0,"chain_1":0,"tshirt_1":23,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":42,"tshirt_2":4,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":36,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}'),
	(12, 'chinaarmy', 2, 'co', 'CO', 200, '{"bproof_1":16,"mask_2":0,"ears_2":0,"bproof_2":1,"skin":0,"face":0,"beard_4":0,"chain_1":112,"hair_color_2":0,"helmet_1":39,"beard_2":0,"lipstick_2":0,"decals_1":0,"age_2":0,"shoes_2":1,"glasses_1":25,"eyebrows_3":0,"makeup_4":0,"decals_2":0,"hair_2":0,"makeup_2":0,"bags_2":0,"tshirt_1":15,"sex":0,"hair_color_1":0,"eyebrows_2":0,"pants_2":8,"torso_2":8,"arms":96,"lipstick_4":0,"makeup_1":0,"hair_1":0,"makeup_3":0,"torso_1":221,"mask_1":35,"helmet_2":4,"eyebrows_4":0,"lipstick_1":0,"chain_2":2,"eyebrows_1":0,"beard_3":0,"age_1":0,"beard_1":0,"bags_1":0,"shoes_1":35,"glasses_2":6,"lipstick_3":0,"ears_1":-1,"pants_1":87,"tshirt_2":0}', '{"mask_1":0,"arms":5,"glasses_1":5,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":1,"torso_1":52,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":1,"lipstick_2":0,"chain_1":0,"tshirt_1":23,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":42,"tshirt_2":4,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":36,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}'),
	(13, 'unitedstatesarmy', 3, 'com', 'Commander', 200, '{"bproof_1":16,"mask_2":0,"ears_2":0,"bproof_2":0,"age_1":0,"face":0,"beard_4":0,"chain_1":112,"hair_color_2":0,"helmet_1":39,"beard_2":0,"lipstick_2":0,"decals_1":0,"age_2":0,"shoes_2":0,"glasses_1":25,"eyebrows_3":0,"bags_1":0,"decals_2":0,"hair_2":0,"skin":0,"bags_2":0,"tshirt_1":15,"lipstick_4":0,"hair_color_1":0,"beard_1":0,"pants_2":3,"torso_1":221,"torso_2":3,"makeup_2":0,"makeup_1":0,"pants_1":87,"makeup_3":0,"helmet_2":3,"mask_1":35,"sex":0,"glasses_2":6,"lipstick_1":0,"chain_2":0,"eyebrows_1":0,"beard_3":0,"hair_1":0,"arms":96,"makeup_4":0,"shoes_1":35,"eyebrows_4":0,"lipstick_3":0,"ears_1":-1,"eyebrows_2":0,"tshirt_2":0}', '{"mask_1":0,"arms":5,"glasses_1":5,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":1,"torso_1":52,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":1,"lipstick_2":0,"chain_1":0,"tshirt_1":23,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":42,"tshirt_2":4,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":36,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}'),
	(14, 'unitedkingdomarmy', 3, 'com', 'Commander', 200, '{"bproof_1":16,"mask_2":0,"ears_2":0,"bproof_2":0,"skin":0,"face":0,"beard_4":0,"chain_1":112,"hair_color_2":0,"helmet_1":7,"beard_2":0,"lipstick_2":0,"decals_1":2,"age_2":0,"shoes_2":0,"glasses_1":25,"eyebrows_3":0,"makeup_4":0,"decals_2":0,"hair_2":0,"makeup_2":0,"bags_2":0,"tshirt_1":15,"sex":0,"hair_color_1":0,"eyebrows_2":0,"pants_2":3,"torso_2":3,"arms":96,"lipstick_4":0,"makeup_1":0,"hair_1":0,"makeup_3":0,"torso_1":221,"mask_1":35,"helmet_2":5,"eyebrows_4":0,"lipstick_1":0,"chain_2":0,"eyebrows_1":0,"beard_3":0,"age_1":0,"beard_1":0,"bags_1":0,"shoes_1":35,"glasses_2":6,"lipstick_3":0,"ears_1":-1,"pants_1":87,"tshirt_2":0}', '{"mask_1":0,"arms":5,"glasses_1":5,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":1,"torso_1":52,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":1,"lipstick_2":0,"chain_1":0,"tshirt_1":23,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":42,"tshirt_2":4,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":36,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}'),
	(15, 'russianfederationarmy', 3, 'com', 'Commander', 200, '{"bproof_1":16,"mask_2":0,"ears_2":0,"bproof_2":1,"skin":0,"face":0,"beard_4":0,"chain_1":112,"hair_color_2":0,"helmet_1":7,"beard_2":0,"lipstick_2":0,"decals_1":2,"age_2":0,"shoes_2":1,"glasses_1":25,"eyebrows_3":0,"makeup_4":0,"decals_2":0,"hair_2":0,"makeup_2":0,"bags_2":0,"tshirt_1":15,"sex":0,"hair_color_1":0,"eyebrows_2":0,"pants_2":8,"torso_2":8,"arms":96,"lipstick_4":0,"makeup_1":0,"hair_1":0,"makeup_3":0,"torso_1":221,"mask_1":35,"helmet_2":4,"eyebrows_4":0,"lipstick_1":0,"chain_2":2,"eyebrows_1":0,"beard_3":0,"age_1":0,"beard_1":0,"bags_1":0,"shoes_1":35,"glasses_2":6,"lipstick_3":0,"ears_1":-1,"pants_1":87,"tshirt_2":0}', '{"mask_1":0,"arms":5,"glasses_1":5,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":1,"torso_1":52,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":1,"lipstick_2":0,"chain_1":0,"tshirt_1":23,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":42,"tshirt_2":4,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":36,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}'),
	(16, 'chinaarmy', 3, 'com', 'Commander', 200, '{"bproof_1":16,"mask_2":0,"ears_2":0,"bproof_2":1,"skin":0,"face":0,"beard_4":0,"chain_1":112,"hair_color_2":0,"helmet_1":39,"beard_2":0,"lipstick_2":0,"decals_1":0,"age_2":0,"shoes_2":1,"glasses_1":25,"eyebrows_3":0,"makeup_4":0,"decals_2":0,"hair_2":0,"makeup_2":0,"bags_2":0,"tshirt_1":15,"sex":0,"hair_color_1":0,"eyebrows_2":0,"pants_2":8,"torso_2":8,"arms":96,"lipstick_4":0,"makeup_1":0,"hair_1":0,"makeup_3":0,"torso_1":221,"mask_1":35,"helmet_2":4,"eyebrows_4":0,"lipstick_1":0,"chain_2":2,"eyebrows_1":0,"beard_3":0,"age_1":0,"beard_1":0,"bags_1":0,"shoes_1":35,"glasses_2":6,"lipstick_3":0,"ears_1":-1,"pants_1":87,"tshirt_2":0}', '{"mask_1":0,"arms":5,"glasses_1":5,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":1,"torso_1":52,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":1,"lipstick_2":0,"chain_1":0,"tshirt_1":23,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":42,"tshirt_2":4,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":36,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}'),
	(17, 'unitedstatesairforce', 0, 'pilot', 'Pilot', 200, '{"bproof_1":16,"mask_2":0,"ears_2":0,"bproof_2":0,"age_1":0,"face":0,"beard_4":0,"chain_1":112,"hair_color_2":0,"helmet_1":47,"beard_2":0,"lipstick_2":0,"decals_1":0,"age_2":0,"shoes_2":0,"glasses_1":25,"eyebrows_3":0,"bags_1":0,"decals_2":0,"hair_2":0,"skin":0,"bags_2":0,"tshirt_1":15,"lipstick_4":0,"hair_color_1":0,"beard_1":0,"pants_2":3,"torso_1":221,"torso_2":3,"makeup_2":0,"makeup_1":0,"pants_1":87,"makeup_3":0,"helmet_2":3,"mask_1":35,"sex":0,"glasses_2":6,"lipstick_1":0,"chain_2":0,"eyebrows_1":0,"beard_3":0,"hair_1":0,"arms":96,"makeup_4":0,"shoes_1":35,"eyebrows_4":0,"lipstick_3":0,"ears_1":-1,"eyebrows_2":0,"tshirt_2":0}', '{"mask_1":0,"arms":5,"glasses_1":5,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":1,"torso_1":52,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":1,"lipstick_2":0,"chain_1":0,"tshirt_1":23,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":42,"tshirt_2":4,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":36,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}'),
	(18, 'unitedkingdomairforce', 0, 'pilot', 'Pilot', 200, '{"bproof_1":16,"mask_2":0,"ears_2":0,"bproof_2":0,"skin":0,"face":0,"beard_4":0,"chain_1":112,"hair_color_2":0,"helmet_1":47,"beard_2":0,"lipstick_2":0,"decals_1":2,"age_2":0,"shoes_2":0,"glasses_1":25,"eyebrows_3":0,"makeup_4":0,"decals_2":0,"hair_2":0,"makeup_2":0,"bags_2":0,"tshirt_1":15,"sex":0,"hair_color_1":0,"eyebrows_2":0,"pants_2":3,"torso_2":3,"arms":96,"lipstick_4":0,"makeup_1":0,"hair_1":0,"makeup_3":0,"torso_1":221,"mask_1":35,"helmet_2":5,"eyebrows_4":0,"lipstick_1":0,"chain_2":0,"eyebrows_1":0,"beard_3":0,"age_1":0,"beard_1":0,"bags_1":0,"shoes_1":35,"glasses_2":6,"lipstick_3":0,"ears_1":-1,"pants_1":87,"tshirt_2":0}', '{"mask_1":0,"arms":5,"glasses_1":5,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":1,"torso_1":52,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":1,"lipstick_2":0,"chain_1":0,"tshirt_1":23,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":42,"tshirt_2":4,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":36,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}'),
	(19, 'russianfederationairforce', 0, 'pilot', 'Pilot', 200, '{"bproof_1":16,"mask_2":0,"ears_2":0,"bproof_2":1,"skin":0,"face":0,"beard_4":0,"chain_1":112,"hair_color_2":0,"helmet_1":47,"beard_2":0,"lipstick_2":0,"decals_1":2,"age_2":0,"shoes_2":1,"glasses_1":25,"eyebrows_3":0,"makeup_4":0,"decals_2":0,"hair_2":0,"makeup_2":0,"bags_2":0,"tshirt_1":15,"sex":0,"hair_color_1":0,"eyebrows_2":0,"pants_2":8,"torso_2":8,"arms":96,"lipstick_4":0,"makeup_1":0,"hair_1":0,"makeup_3":0,"torso_1":221,"mask_1":35,"helmet_2":4,"eyebrows_4":0,"lipstick_1":0,"chain_2":2,"eyebrows_1":0,"beard_3":0,"age_1":0,"beard_1":0,"bags_1":0,"shoes_1":35,"glasses_2":6,"lipstick_3":0,"ears_1":-1,"pants_1":87,"tshirt_2":0}', '{"mask_1":0,"arms":5,"glasses_1":5,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":1,"torso_1":52,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":1,"lipstick_2":0,"chain_1":0,"tshirt_1":23,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":42,"tshirt_2":4,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":36,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}'),
	(20, 'chinaairforce', 0, 'pilot', 'Pilot', 200, '{"bproof_1":16,"mask_2":0,"ears_2":0,"bproof_2":1,"skin":0,"face":0,"beard_4":0,"chain_1":112,"hair_color_2":0,"helmet_1":47,"beard_2":0,"lipstick_2":0,"decals_1":0,"age_2":0,"shoes_2":1,"glasses_1":25,"eyebrows_3":0,"makeup_4":0,"decals_2":0,"hair_2":0,"makeup_2":0,"bags_2":0,"tshirt_1":15,"sex":0,"hair_color_1":0,"eyebrows_2":0,"pants_2":8,"torso_2":8,"arms":96,"lipstick_4":0,"makeup_1":0,"hair_1":0,"makeup_3":0,"torso_1":221,"mask_1":35,"helmet_2":4,"eyebrows_4":0,"lipstick_1":0,"chain_2":2,"eyebrows_1":0,"beard_3":0,"age_1":0,"beard_1":0,"bags_1":0,"shoes_1":35,"glasses_2":6,"lipstick_3":0,"ears_1":-1,"pants_1":87,"tshirt_2":0}', '{"mask_1":0,"arms":5,"glasses_1":5,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":1,"torso_1":52,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":1,"lipstick_2":0,"chain_1":0,"tshirt_1":23,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":42,"tshirt_2":4,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":36,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}');
/*!40000 ALTER TABLE `job_grades` ENABLE KEYS */;

-- Dumping structure for table essentialmode.users
CREATE TABLE IF NOT EXISTS `users` (
  `identifier` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext COLLATE utf8mb4_bin,
  `job` varchar(255) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT '0',
  `loadout` longtext COLLATE utf8mb4_bin,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table essentialmode.users: ~2 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table essentialmode.user_accounts
CREATE TABLE IF NOT EXISTS `user_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `money` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table essentialmode.user_accounts: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_accounts` ENABLE KEYS */;

-- Dumping structure for table essentialmode.user_inventory
CREATE TABLE IF NOT EXISTS `user_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

-- Dumping data for table essentialmode.user_inventory: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_inventory` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
