-- --------------------------------------------------------
-- Host:                         dby.mysql.database.azure.com
-- Server version:               5.7.29-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table db_yourls.yourls_options: ~5 rows (approximately)
/*!40000 ALTER TABLE `yourls_options` DISABLE KEYS */;
REPLACE INTO `yourls_options` (`option_id`, `option_name`, `option_value`) VALUES
	(1, 'version', '1.7.10'),
	(2, 'db_version', '505'),
	(3, 'next_id', '1'),
	(4, 'active_plugins', 'a:1:{i:0;s:23:"secure-mysql/plugin.php";}'),
	(5, 'core_version_checks', 'O:8:"stdClass":4:{s:15:"failed_attempts";i:0;s:12:"last_attempt";i:1609102788;s:11:"last_result";O:8:"stdClass":2:{s:6:"latest";s:5:"1.7.9";s:6:"zipurl";s:56:"https://api.github.com/repos/YOURLS/YOURLS/zipball/1.7.9";}s:15:"version_checked";s:6:"1.7.10";}');
/*!40000 ALTER TABLE `yourls_options` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
