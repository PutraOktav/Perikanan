USE `pzgbtwqf_ikanselalu`;


-- Dumping structure for table ikanselalu.feeds
CREATE TABLE IF NOT EXISTS `feeds` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;

-- Dumping structure for table ikanselalu.feed_transactions
CREATE TABLE IF NOT EXISTS `feed_transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `feed_id` bigint unsigned NOT NULL,
  `quantity` int NOT NULL,
  `type` enum('in','out') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `feed_transactions_feed_id_foreign` (`feed_id`),
  CONSTRAINT `feed_transactions_feed_id_foreign` FOREIGN KEY (`feed_id`) REFERENCES `feeds` (`id`) ON DELETE CASCADE
) ;

-- Dumping data for table ikanselalu.feed_transactions: ~0 rows (approximately)

-- Dumping structure for table ikanselalu.fish
CREATE TABLE IF NOT EXISTS `fish` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;

-- Dumping structure for table ikanselalu.fish_transactions
CREATE TABLE IF NOT EXISTS `fish_transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `fish_id` bigint unsigned NOT NULL,
  `quantity` int NOT NULL,
  `type` enum('in','out') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fish_transactions_fish_id_foreign` (`fish_id`),
  CONSTRAINT `fish_transactions_fish_id_foreign` FOREIGN KEY (`fish_id`) REFERENCES `fish` (`id`) ON DELETE CASCADE
) ;


-- Dumping structure for table ikanselalu.hpps
CREATE TABLE IF NOT EXISTS `hpps` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `jenis_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biaya_produksi` decimal(10,2) NOT NULL,
  `jumlah_produk` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;

-- Dumping data for table ikanselalu.hpps: ~0 rows (approximately)

-- Dumping structure for table ikanselalu.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ;

-- Dumping data for table ikanselalu.job_batches: ~0 rows (approximately)

-- Dumping structure for table ikanselalu.medicines
CREATE TABLE IF NOT EXISTS `medicines` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;

-- Dumping structure for table ikanselalu.medicine_transactions
CREATE TABLE IF NOT EXISTS `medicine_transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `medicine_id` bigint unsigned NOT NULL,
  `quantity` int NOT NULL,
  `type` enum('in','out') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `medicine_transactions_medicine_id_foreign` (`medicine_id`),
  CONSTRAINT `medicine_transactions_medicine_id_foreign` FOREIGN KEY (`medicine_id`) REFERENCES `medicines` (`id`) ON DELETE CASCADE
) ;

-- Dumping data for table ikanselalu.medicine_transactions: ~0 rows (approximately)

-- Dumping structure for table ikanselalu.other_needs
CREATE TABLE IF NOT EXISTS `other_needs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;

-- Dumping structure for table ikanselalu.other_need_transactions
CREATE TABLE IF NOT EXISTS `other_need_transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `other_need_id` bigint unsigned NOT NULL,
  `quantity` int NOT NULL,
  `type` enum('in','out') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `other_need_transactions_other_need_id_foreign` (`other_need_id`),
  CONSTRAINT `other_need_transactions_other_need_id_foreign` FOREIGN KEY (`other_need_id`) REFERENCES `other_needs` (`id`) ON DELETE CASCADE
) ;

-- Dumping structure for table ikanselalu.transaksis
CREATE TABLE IF NOT EXISTS `transaksis` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `jenis_ikan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int NOT NULL,
  `harga_per_unit` decimal(8,2) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);
