

CREATE TABLE `accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_balance` double DEFAULT NULL,
  `total_balance` double NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `is_default` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO accounts VALUES("1","11111","Sales Account","1000","1000","this is first account","0","0","2018-12-18 08:58:02","2021-06-14 04:06:41");
INSERT INTO accounts VALUES("3","21211","Sa","","0","","0","0","2018-12-18 08:58:56","2021-06-14 04:04:44");
INSERT INTO accounts VALUES("4","0001","Security Money","600000","600000","Mr Md Shafi-J M Tower, as Shop Security Money","0","1","2021-06-14 04:03:53","2021-08-13 04:31:08");
INSERT INTO accounts VALUES("5","0002","Opening Capital","367415","367415","Decoration, Furniture, Laptop & Others","0","1","2021-06-14 04:12:29","2021-06-25 14:18:11");
INSERT INTO accounts VALUES("6","1111000016141","M/s Tawakkul Enterprise","120000","120000","Global Islami Bank, HTZ","0","1","2021-06-16 03:33:20","2021-07-04 14:11:34");
INSERT INTO accounts VALUES("7","0003","M/s Faiz Electric","0","0","Electric Goods","","0","2021-06-16 03:37:11","2021-08-08 02:55:03");
INSERT INTO accounts VALUES("8","0004","Cash & Sales","518495","518495","Product Purchase","1","1","2021-07-04 14:10:49","2021-08-13 04:31:08");



CREATE TABLE `adjustments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_qty` double NOT NULL,
  `item` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `attendances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `employee_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `billers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO billers VALUES("1","Abudllah Al Taslim","","M/s Tawakkul Enterprise","","tawakkulenterprise2021@gmail.com","01323-940257","Underground, J M Tower, Medical Gate, Hathazari.","Chattogram","Chattogram","4000","Babgladesh","1","2021-06-10 04:36:34","2021-06-10 04:36:34");



CREATE TABLE `brands` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO brands VALUES("1","RFL","","1","2021-06-13 12:34:25","2021-06-13 12:34:25");
INSERT INTO brands VALUES("2","GAZI","","1","2021-06-13 12:34:42","2021-06-13 12:35:03");
INSERT INTO brands VALUES("3","MADINA","","1","2021-06-13 12:35:25","2021-06-13 12:35:25");
INSERT INTO brands VALUES("4","SUPER STAR","","1","2021-06-13 12:43:34","2021-06-13 12:43:34");
INSERT INTO brands VALUES("5","APEX","","1","2021-06-13 12:43:51","2021-06-13 12:43:51");
INSERT INTO brands VALUES("6","N MOHD","","1","2021-06-13 13:34:51","2021-06-13 13:34:51");
INSERT INTO brands VALUES("7","A1","","1","2021-06-13 14:15:07","2021-06-13 14:15:07");
INSERT INTO brands VALUES("8","N POLIMER","","1","2021-06-13 14:16:06","2021-06-13 14:16:06");
INSERT INTO brands VALUES("9","ERA","","1","2021-06-14 16:58:42","2021-06-14 16:58:42");
INSERT INTO brands VALUES("10","GFC","","1","2021-06-15 02:37:59","2021-06-15 02:37:59");
INSERT INTO brands VALUES("11","HP","","1","2021-06-15 02:38:18","2021-06-15 02:38:18");
INSERT INTO brands VALUES("12","MR","","1","2021-06-15 02:39:49","2021-06-15 02:39:49");
INSERT INTO brands VALUES("13","ORLEE","","1","2021-06-15 02:43:12","2021-06-15 02:43:12");
INSERT INTO brands VALUES("14","WALTON","","1","2021-06-15 02:44:20","2021-06-15 02:44:20");
INSERT INTO brands VALUES("15","lOCAL","","1","2021-06-17 02:56:00","2021-06-17 02:56:00");
INSERT INTO brands VALUES("16","ROSA","","1","2021-06-19 10:48:38","2021-06-19 10:48:38");
INSERT INTO brands VALUES("17","SOLAR","","1","2021-06-19 11:20:27","2021-06-19 11:20:27");
INSERT INTO brands VALUES("18","ISLAM METAL","","1","2021-06-21 03:19:14","2021-06-21 03:19:14");
INSERT INTO brands VALUES("19","WENER","","1","2021-07-02 13:55:30","2021-07-02 13:55:30");
INSERT INTO brands VALUES("20","WENER GOLD","","1","2021-07-02 13:56:25","2021-07-02 13:56:25");
INSERT INTO brands VALUES("21","BBS","","1","2021-07-02 13:58:05","2021-07-02 13:58:05");
INSERT INTO brands VALUES("22","BIZLI","","1","2021-07-02 13:58:23","2021-07-10 16:20:51");
INSERT INTO brands VALUES("23","BRB","","1","2021-07-02 13:58:53","2021-07-02 13:58:53");
INSERT INTO brands VALUES("24","MAGHNA","","1","2021-07-02 13:59:45","2021-07-02 13:59:45");
INSERT INTO brands VALUES("25","SUZAN","","1","2021-07-02 14:01:35","2021-07-02 14:01:35");
INSERT INTO brands VALUES("26","CHINA","","1","2021-07-02 14:02:00","2021-07-02 14:02:00");
INSERT INTO brands VALUES("27","MOON STAR","","1","2021-07-03 14:12:49","2021-07-03 14:12:49");
INSERT INTO brands VALUES("28","SUPER STAR GOLD","","1","2021-07-09 13:51:05","2021-07-09 13:51:05");
INSERT INTO brands VALUES("29","MEP","","1","2021-07-10 07:11:35","2021-07-10 07:11:35");
INSERT INTO brands VALUES("30","KITTY","","1","2021-07-10 12:33:40","2021-07-10 12:33:40");
INSERT INTO brands VALUES("31","SPI","","1","2021-07-12 15:32:47","2021-07-12 15:32:47");
INSERT INTO brands VALUES("32","MEGHNA","","1","2021-07-13 08:59:01","2021-07-13 08:59:01");
INSERT INTO brands VALUES("33","I M","","1","2021-07-17 13:03:27","2021-07-17 13:03:27");
INSERT INTO brands VALUES("34","AKIJ","","1","2021-07-20 08:40:48","2021-07-20 08:40:48");
INSERT INTO brands VALUES("35","GI","","1","2021-07-21 13:14:08","2021-07-21 13:14:08");
INSERT INTO brands VALUES("36","SATTAR","","1","2021-07-22 05:14:45","2021-07-22 05:14:45");
INSERT INTO brands VALUES("37","JD","","1","2021-07-26 10:28:27","2021-07-26 10:28:27");
INSERT INTO brands VALUES("38","SATATA","","1","2021-07-26 11:06:47","2021-07-26 11:06:47");
INSERT INTO brands VALUES("39","METRO","","1","2021-07-26 11:52:07","2021-07-26 11:52:07");
INSERT INTO brands VALUES("40","LUXURY","","1","2021-07-26 12:16:54","2021-07-26 12:16:54");
INSERT INTO brands VALUES("41","MONA","","1","2021-07-28 15:21:23","2021-07-28 15:21:23");
INSERT INTO brands VALUES("42","SBI","","1","2021-08-08 15:20:46","2021-08-08 15:20:46");
INSERT INTO brands VALUES("43","ELECTRIC","","1","2021-08-08 15:21:47","2021-08-08 15:21:47");
INSERT INTO brands VALUES("44","SANITARY","","1","2021-08-08 15:23:32","2021-08-08 15:23:32");



CREATE TABLE `cash_registers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cash_in_hand` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO cash_registers VALUES("1","2000","1","1","0","2021-06-23 02:34:04","2021-07-04 15:12:41");
INSERT INTO cash_registers VALUES("2","100","1","1","1","2021-08-22 04:49:54","2021-08-22 04:49:54");



CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO categories VALUES("1","Sanitary","","","1","2021-06-12 11:48:20","2021-06-12 11:48:20");
INSERT INTO categories VALUES("2","Electronics","","","1","2021-06-12 11:48:47","2021-06-12 11:48:47");
INSERT INTO categories VALUES("3","Hardware","","","1","2021-06-12 11:49:06","2021-06-12 11:49:06");
INSERT INTO categories VALUES("4","Paint & Accessories","","","1","2021-06-12 11:49:22","2021-06-12 11:49:22");
INSERT INTO categories VALUES("5","GAS","","","1","2021-06-20 14:29:29","2021-06-20 14:29:29");



CREATE TABLE `coupons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `minimum_amount` double DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `expired_date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `currencies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO currencies VALUES("2","Taka","Tk","1","2021-06-02 16:10:00","2021-06-02 16:10:16");



CREATE TABLE `customer_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO customer_groups VALUES("1","Walk in Customer","80","0","2021-06-21 12:12:34","2021-06-22 04:44:48");
INSERT INTO customer_groups VALUES("2","A B Housing Ltd","20","0","2021-06-21 12:13:17","2021-06-22 04:44:37");
INSERT INTO customer_groups VALUES("3","General","0","1","2021-06-22 04:50:07","2021-06-22 04:50:07");
INSERT INTO customer_groups VALUES("4","ABHL","0","0","2021-06-22 05:08:16","2021-06-22 05:13:05");
INSERT INTO customer_groups VALUES("5","Relatives","2","1","2021-06-25 14:14:43","2021-06-25 14:50:47");



CREATE TABLE `customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit` double DEFAULT NULL,
  `expense` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO customers VALUES("1","3","","Abdullah Al Taslim","A B Housing Ltd","","01715611243","","Tayeeba Mansion, 21 Dakbanglo Road, Hathazari","Chattogram","","","","","","0","2021-06-22 04:56:19","2021-06-22 05:11:51");
INSERT INTO customers VALUES("2","5","","Abdullah Al Taslim","A B Housing Ltd","","01715611243","","Tayeeba Mansion, 21 Dakbanglo Road, Hathazari","Chattogram","","","","","","0","2021-06-22 05:17:42","2021-07-04 14:00:25");
INSERT INTO customers VALUES("3","5","","Mohammad Musa","A B Housing Ltd","abhlhathazari@gmail.com","01715611243","","Tayeeba Mansion, 21 Dakbanglo Road, Hathazari","Chattogram","","","","","","1","2021-07-04 14:01:40","2021-07-04 14:01:40");
INSERT INTO customers VALUES("4","3","","Mr Abu Musa","","","01819","","Makhal","Hathazari","","","","","","1","2021-07-04 14:04:11","2021-07-04 14:04:11");
INSERT INTO customers VALUES("5","3","","General","","","random","","random","Chattogram","","","","","","1","2021-07-05 05:25:09","2021-07-05 05:25:09");



CREATE TABLE `deliveries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivered_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recieved_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `deposits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `employees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `expense_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO expense_categories VALUES("1","001","Salary & Allowance","1","2021-06-21 11:36:14","2021-06-21 11:36:14");
INSERT INTO expense_categories VALUES("2","002","Entertainment","1","2021-06-21 11:37:14","2021-06-21 11:37:14");
INSERT INTO expense_categories VALUES("3","003","Transportation","1","2021-06-21 11:37:46","2021-06-21 11:37:46");
INSERT INTO expense_categories VALUES("4","004","Donation","1","2021-06-21 11:39:19","2021-06-21 11:39:19");
INSERT INTO expense_categories VALUES("5","005","Stationary","1","2021-06-21 11:40:40","2021-06-21 11:40:40");
INSERT INTO expense_categories VALUES("6","006","Telephone Bill","1","2021-06-21 11:41:26","2021-06-21 11:41:26");
INSERT INTO expense_categories VALUES("7","007","Newspaper Bill","1","2021-06-21 11:44:21","2021-06-21 11:44:21");
INSERT INTO expense_categories VALUES("8","008","Electric Bill & Accessories","1","2021-06-21 11:45:43","2021-06-21 11:45:43");
INSERT INTO expense_categories VALUES("9","009","IPS Maintenance","1","2021-06-21 11:47:25","2021-06-21 11:47:25");
INSERT INTO expense_categories VALUES("10","010","Trade License","1","2021-07-04 14:14:21","2021-07-04 14:14:21");
INSERT INTO expense_categories VALUES("11","011","Labor Cost","1","2021-07-24 11:40:55","2021-07-24 11:40:55");



CREATE TABLE `expenses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `general_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_access` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `developed_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_format` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO general_settings VALUES("1","XiT Inventory","logo.png","2","own","d/m/Y","XiT Bangladesh","standard","1","default.css","2018-07-06 12:13:11","2021-07-04 15:03:57","prefix");



CREATE TABLE `gift_card_recharges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gift_card_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `gift_cards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `card_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `expense` double NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `expired_date` date DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `holidays` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `hrm_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO hrm_settings VALUES("1","8:00am","9:00pm","2019-01-02 08:20:08","2021-07-24 11:57:18");



CREATE TABLE `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO languages VALUES("1","en","2018-07-08 04:59:17","2019-12-24 23:34:20");



CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO migrations VALUES("1","2014_10_12_000000_create_users_table","1");
INSERT INTO migrations VALUES("2","2014_10_12_100000_create_password_resets_table","1");
INSERT INTO migrations VALUES("3","2018_02_17_060412_create_categories_table","1");
INSERT INTO migrations VALUES("4","2018_02_20_035727_create_brands_table","1");
INSERT INTO migrations VALUES("5","2018_02_25_100635_create_suppliers_table","1");
INSERT INTO migrations VALUES("6","2018_02_27_101619_create_warehouse_table","1");
INSERT INTO migrations VALUES("7","2018_03_03_040448_create_units_table","1");
INSERT INTO migrations VALUES("8","2018_03_04_041317_create_taxes_table","1");
INSERT INTO migrations VALUES("9","2018_03_10_061915_create_customer_groups_table","1");
INSERT INTO migrations VALUES("10","2018_03_10_090534_create_customers_table","1");
INSERT INTO migrations VALUES("11","2018_03_11_095547_create_billers_table","1");
INSERT INTO migrations VALUES("12","2018_04_05_054401_create_products_table","1");
INSERT INTO migrations VALUES("13","2018_04_06_133606_create_purchases_table","1");
INSERT INTO migrations VALUES("14","2018_04_06_154600_create_product_purchases_table","1");
INSERT INTO migrations VALUES("15","2018_04_06_154915_create_product_warhouse_table","1");
INSERT INTO migrations VALUES("16","2018_04_10_085927_create_sales_table","1");
INSERT INTO migrations VALUES("17","2018_04_10_090133_create_product_sales_table","1");
INSERT INTO migrations VALUES("18","2018_04_10_090254_create_payments_table","1");
INSERT INTO migrations VALUES("19","2018_04_10_090341_create_payment_with_cheque_table","1");
INSERT INTO migrations VALUES("20","2018_04_10_090509_create_payment_with_credit_card_table","1");
INSERT INTO migrations VALUES("21","2018_04_13_121436_create_quotation_table","1");
INSERT INTO migrations VALUES("22","2018_04_13_122324_create_product_quotation_table","1");
INSERT INTO migrations VALUES("23","2018_04_14_121802_create_transfers_table","1");
INSERT INTO migrations VALUES("24","2018_04_14_121913_create_product_transfer_table","1");
INSERT INTO migrations VALUES("25","2018_05_13_082847_add_payment_id_and_change_sale_id_to_payments_table","2");
INSERT INTO migrations VALUES("26","2018_05_13_090906_change_customer_id_to_payment_with_credit_card_table","3");
INSERT INTO migrations VALUES("27","2018_05_20_054532_create_adjustments_table","4");
INSERT INTO migrations VALUES("28","2018_05_20_054859_create_product_adjustments_table","4");
INSERT INTO migrations VALUES("29","2018_05_21_163419_create_returns_table","5");
INSERT INTO migrations VALUES("30","2018_05_21_163443_create_product_returns_table","5");
INSERT INTO migrations VALUES("31","2018_06_02_050905_create_roles_table","6");
INSERT INTO migrations VALUES("32","2018_06_02_073430_add_columns_to_users_table","7");
INSERT INTO migrations VALUES("33","2018_06_03_053738_create_permission_tables","8");
INSERT INTO migrations VALUES("36","2018_06_21_063736_create_pos_setting_table","9");
INSERT INTO migrations VALUES("37","2018_06_21_094155_add_user_id_to_sales_table","10");
INSERT INTO migrations VALUES("38","2018_06_21_101529_add_user_id_to_purchases_table","11");
INSERT INTO migrations VALUES("39","2018_06_21_103512_add_user_id_to_transfers_table","12");
INSERT INTO migrations VALUES("40","2018_06_23_061058_add_user_id_to_quotations_table","13");
INSERT INTO migrations VALUES("41","2018_06_23_082427_add_is_deleted_to_users_table","14");
INSERT INTO migrations VALUES("42","2018_06_25_043308_change_email_to_users_table","15");
INSERT INTO migrations VALUES("43","2018_07_06_115449_create_general_settings_table","16");
INSERT INTO migrations VALUES("44","2018_07_08_043944_create_languages_table","17");
INSERT INTO migrations VALUES("45","2018_07_11_102144_add_user_id_to_returns_table","18");
INSERT INTO migrations VALUES("46","2018_07_11_102334_add_user_id_to_payments_table","18");
INSERT INTO migrations VALUES("47","2018_07_22_130541_add_digital_to_products_table","19");
INSERT INTO migrations VALUES("49","2018_07_24_154250_create_deliveries_table","20");
INSERT INTO migrations VALUES("50","2018_08_16_053336_create_expense_categories_table","21");
INSERT INTO migrations VALUES("51","2018_08_17_115415_create_expenses_table","22");
INSERT INTO migrations VALUES("55","2018_08_18_050418_create_gift_cards_table","23");
INSERT INTO migrations VALUES("56","2018_08_19_063119_create_payment_with_gift_card_table","24");
INSERT INTO migrations VALUES("57","2018_08_25_042333_create_gift_card_recharges_table","25");
INSERT INTO migrations VALUES("58","2018_08_25_101354_add_deposit_expense_to_customers_table","26");
INSERT INTO migrations VALUES("59","2018_08_26_043801_create_deposits_table","27");
INSERT INTO migrations VALUES("60","2018_09_02_044042_add_keybord_active_to_pos_setting_table","28");
INSERT INTO migrations VALUES("61","2018_09_09_092713_create_payment_with_paypal_table","29");
INSERT INTO migrations VALUES("62","2018_09_10_051254_add_currency_to_general_settings_table","30");
INSERT INTO migrations VALUES("63","2018_10_22_084118_add_biller_and_store_id_to_users_table","31");
INSERT INTO migrations VALUES("65","2018_10_26_034927_create_coupons_table","32");
INSERT INTO migrations VALUES("66","2018_10_27_090857_add_coupon_to_sales_table","33");
INSERT INTO migrations VALUES("67","2018_11_07_070155_add_currency_position_to_general_settings_table","34");
INSERT INTO migrations VALUES("68","2018_11_19_094650_add_combo_to_products_table","35");
INSERT INTO migrations VALUES("69","2018_12_09_043712_create_accounts_table","36");
INSERT INTO migrations VALUES("70","2018_12_17_112253_add_is_default_to_accounts_table","37");
INSERT INTO migrations VALUES("71","2018_12_19_103941_add_account_id_to_payments_table","38");
INSERT INTO migrations VALUES("72","2018_12_20_065900_add_account_id_to_expenses_table","39");
INSERT INTO migrations VALUES("73","2018_12_20_082753_add_account_id_to_returns_table","40");
INSERT INTO migrations VALUES("74","2018_12_26_064330_create_return_purchases_table","41");
INSERT INTO migrations VALUES("75","2018_12_26_144210_create_purchase_product_return_table","42");
INSERT INTO migrations VALUES("76","2018_12_26_144708_create_purchase_product_return_table","43");
INSERT INTO migrations VALUES("77","2018_12_27_110018_create_departments_table","44");
INSERT INTO migrations VALUES("78","2018_12_30_054844_create_employees_table","45");
INSERT INTO migrations VALUES("79","2018_12_31_125210_create_payrolls_table","46");
INSERT INTO migrations VALUES("80","2018_12_31_150446_add_department_id_to_employees_table","47");
INSERT INTO migrations VALUES("81","2019_01_01_062708_add_user_id_to_expenses_table","48");
INSERT INTO migrations VALUES("82","2019_01_02_075644_create_hrm_settings_table","49");
INSERT INTO migrations VALUES("83","2019_01_02_090334_create_attendances_table","50");
INSERT INTO migrations VALUES("84","2019_01_27_160956_add_three_columns_to_general_settings_table","51");
INSERT INTO migrations VALUES("85","2019_02_15_183303_create_stock_counts_table","52");
INSERT INTO migrations VALUES("86","2019_02_17_101604_add_is_adjusted_to_stock_counts_table","53");
INSERT INTO migrations VALUES("87","2019_04_13_101707_add_tax_no_to_customers_table","54");
INSERT INTO migrations VALUES("89","2019_10_14_111455_create_holidays_table","55");
INSERT INTO migrations VALUES("90","2019_11_13_145619_add_is_variant_to_products_table","56");
INSERT INTO migrations VALUES("91","2019_11_13_150206_create_product_variants_table","57");
INSERT INTO migrations VALUES("92","2019_11_13_153828_create_variants_table","57");
INSERT INTO migrations VALUES("93","2019_11_25_134041_add_qty_to_product_variants_table","58");
INSERT INTO migrations VALUES("94","2019_11_25_134922_add_variant_id_to_product_purchases_table","58");
INSERT INTO migrations VALUES("95","2019_11_25_145341_add_variant_id_to_product_warehouse_table","58");
INSERT INTO migrations VALUES("96","2019_11_29_182201_add_variant_id_to_product_sales_table","59");
INSERT INTO migrations VALUES("97","2019_12_04_121311_add_variant_id_to_product_quotation_table","60");
INSERT INTO migrations VALUES("98","2019_12_05_123802_add_variant_id_to_product_transfer_table","61");
INSERT INTO migrations VALUES("100","2019_12_08_114954_add_variant_id_to_product_returns_table","62");
INSERT INTO migrations VALUES("101","2019_12_08_203146_add_variant_id_to_purchase_product_return_table","63");
INSERT INTO migrations VALUES("102","2020_02_28_103340_create_money_transfers_table","64");
INSERT INTO migrations VALUES("103","2020_07_01_193151_add_image_to_categories_table","65");
INSERT INTO migrations VALUES("105","2020_09_26_130426_add_user_id_to_deliveries_table","66");
INSERT INTO migrations VALUES("107","2020_10_11_125457_create_cash_registers_table","67");
INSERT INTO migrations VALUES("108","2020_10_13_155019_add_cash_register_id_to_sales_table","68");
INSERT INTO migrations VALUES("109","2020_10_13_172624_add_cash_register_id_to_returns_table","69");
INSERT INTO migrations VALUES("110","2020_10_17_212338_add_cash_register_id_to_payments_table","70");
INSERT INTO migrations VALUES("111","2020_10_18_124200_add_cash_register_id_to_expenses_table","71");
INSERT INTO migrations VALUES("112","2020_10_21_121632_add_developed_by_to_general_settings_table","72");
INSERT INTO migrations VALUES("113","2019_08_19_000000_create_failed_jobs_table","73");
INSERT INTO migrations VALUES("114","2020_10_30_135557_create_notifications_table","73");
INSERT INTO migrations VALUES("115","2020_11_01_044954_create_currencies_table","74");
INSERT INTO migrations VALUES("116","2020_11_01_140736_add_price_to_product_warehouse_table","75");
INSERT INTO migrations VALUES("117","2020_11_02_050633_add_is_diff_price_to_products_table","76");
INSERT INTO migrations VALUES("118","2020_11_09_055222_add_user_id_to_customers_table","77");
INSERT INTO migrations VALUES("119","2020_11_17_054806_add_invoice_format_to_general_settings_table","78");



CREATE TABLE `money_transfers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_account_id` int(11) NOT NULL,
  `to_account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO money_transfers VALUES("1","mtr-20210616-033746","6","8","115000","2021-06-16 03:37:46","2021-08-08 03:11:51");



CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `payment_with_cheque` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `cheque_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `payment_with_credit_card` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `payment_with_gift_card` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `gift_card_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `payment_with_paypal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `change` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=392 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO payments VALUES("16","ppr-20210712-101124","1","119","","","8","5000","23620","Cash","","2021-06-04 12:06:00","2021-07-12 10:11:24");
INSERT INTO payments VALUES("17","ppr-20210712-101240","1","119","","","8","10000","13620","Cash","","2021-06-13 12:06:00","2021-07-12 10:12:40");
INSERT INTO payments VALUES("18","ppr-20210712-101347","1","121","","","8","3580","0","Cash","","2021-06-17 12:06:00","2021-07-12 10:13:47");
INSERT INTO payments VALUES("19","ppr-20210712-101416","1","122","","","8","100","0","Cash","","2021-06-17 12:06:00","2021-07-12 10:14:16");
INSERT INTO payments VALUES("20","ppr-20210712-101504","1","124","","","8","7250","0","Cash","","2021-06-20 12:06:00","2021-07-12 10:15:04");
INSERT INTO payments VALUES("21","ppr-20210712-101538","1","125","","","8","1740","0","Cash","","2021-06-22 12:06:00","2021-07-12 10:15:38");
INSERT INTO payments VALUES("22","ppr-20210712-101629","1","126","","","8","17150","0","Cash","","2021-06-27 12:06:00","2021-07-12 10:16:29");
INSERT INTO payments VALUES("23","ppr-20210712-101655","1","133","","","8","7200","0","Cash","","2021-06-28 12:06:00","2021-07-12 10:16:55");
INSERT INTO payments VALUES("24","ppr-20210712-101727","1","127","","","8","4990","0","Cash","","2021-06-28 12:06:00","2021-07-12 10:17:27");
INSERT INTO payments VALUES("25","ppr-20210712-111528","1","134","","","8","20220","0","Cash","","2021-06-01 12:06:00","2021-07-12 11:15:28");
INSERT INTO payments VALUES("26","ppr-20210712-111553","1","153","","","8","640","0","Cash","","2021-06-01 12:06:00","2021-07-12 11:15:53");
INSERT INTO payments VALUES("27","ppr-20210712-122157","1","136","","","8","5000","15818","Cash","","2021-06-03 12:06:00","2021-07-12 12:21:57");
INSERT INTO payments VALUES("28","ppr-20210712-122337","1","136","","","8","10818","5000","Cash","","2021-06-06 12:06:00","2021-07-12 12:23:37");
INSERT INTO payments VALUES("29","ppr-20210712-122737","1","152","","","8","1560","0","Cash","","2021-06-19 12:06:00","2021-07-12 12:27:37");
INSERT INTO payments VALUES("30","ppr-20210712-122821","1","151","","","8","3290","0","Cash","","2021-06-05 12:06:00","2021-07-12 12:28:21");
INSERT INTO payments VALUES("31","ppr-20210712-123300","1","150","","","8","12000","14347","Cash","","2021-06-03 12:06:00","2021-07-12 12:33:00");
INSERT INTO payments VALUES("32","ppr-20210712-123348","1","150","","","8","5000","9347","Cash","","2021-06-03 12:06:00","2021-07-12 12:33:48");
INSERT INTO payments VALUES("33","ppr-20210712-123431","1","150","","","8","2000","7347","Cash","","2021-06-27 12:06:00","2021-07-12 12:34:31");
INSERT INTO payments VALUES("34","ppr-20210712-123609","1","146","","","8","10000","19407","Cash","","2021-06-03 12:06:00","2021-07-12 12:36:09");
INSERT INTO payments VALUES("35","ppr-20210712-123649","1","146","","","8","5000","14407","Cash","","2021-06-20 12:06:00","2021-07-12 12:36:49");
INSERT INTO payments VALUES("36","ppr-20210712-123734","1","146","","","8","5000","9407","Cash","","2021-06-27 12:06:00","2021-07-12 12:37:34");
INSERT INTO payments VALUES("37","ppr-20210712-124200","1","137","","","8","2000","7947","Cash","","2021-06-23 12:06:00","2021-07-12 12:42:00");
INSERT INTO payments VALUES("38","ppr-20210712-124236","1","137","","","8","2000","5947","Cash","","2021-06-27 12:06:00","2021-07-12 12:42:36");
INSERT INTO payments VALUES("39","ppr-20210712-124638","1","148","","","8","4000","15316","Cash","","2021-06-15 12:06:00","2021-07-12 12:46:38");
INSERT INTO payments VALUES("40","ppr-20210712-025538","1","154","","","8","30000","93","Cash","","2021-06-17 12:06:00","2021-07-12 14:55:38");
INSERT INTO payments VALUES("41","ppr-20210712-030105","1","158","","","8","560","1300","Cash","","2021-06-21 12:06:00","2021-07-12 15:01:05");
INSERT INTO payments VALUES("42","ppr-20210712-031327","1","159","","","8","6000","21110","Cash","","2021-06-20 12:06:00","2021-07-12 15:13:27");
INSERT INTO payments VALUES("43","ppr-20210712-031931","1","135","","","8","880","0","Cash","","2021-06-01 12:06:00","2021-07-12 15:19:31");
INSERT INTO payments VALUES("44","ppr-20210712-041050","1","162","","","8","7057","0","Cash","SPI Fitting","2021-06-20 12:06:00","2021-07-12 16:10:50");
INSERT INTO payments VALUES("45","ppr-20210712-052923","1","163","","","8","21356","0","Cash","","2021-06-03 12:06:00","2021-07-12 17:29:23");
INSERT INTO payments VALUES("46","ppr-20210713-042625","1","165","","","8","9840","0","Cash","","2021-06-08 12:06:00","2021-07-13 04:26:25");
INSERT INTO payments VALUES("47","ppr-20210713-042754","1","166","","","8","5000","31254","Cash","","2021-06-12 12:06:00","2021-07-13 04:27:54");
INSERT INTO payments VALUES("48","ppr-20210713-042958","1","166","","","8","5000","26254","Cash","","2021-06-22 12:06:00","2021-07-13 04:29:58");
INSERT INTO payments VALUES("49","ppr-20210713-043031","1","166","","","8","5000","21254","Cash","","2021-06-27 12:06:00","2021-07-13 04:30:31");
INSERT INTO payments VALUES("50","ppr-20210713-043137","1","166","","","8","15000","6254","Cash","","2021-06-29 12:06:00","2021-07-13 04:31:37");
INSERT INTO payments VALUES("51","ppr-20210713-043332","1","166","","","8","6000","0","Cash","","2021-07-12 12:07:00","2021-07-13 04:33:32");
INSERT INTO payments VALUES("52","ppr-20210713-094100","1","167","","","8","30000","10192.55","Cash","","2021-06-06 12:06:00","2021-07-13 09:41:00");
INSERT INTO payments VALUES("53","ppr-20210713-095630","1","168","","","8","4167","0","Cash","","2021-06-26 12:06:00","2021-07-13 09:56:30");
INSERT INTO payments VALUES("54","ppr-20210713-101129","1","169","","","8","1425","0","Cash","","2021-06-26 12:06:00","2021-07-13 10:11:29");
INSERT INTO payments VALUES("55","ppr-20210713-101828","1","170","","","8","1650","0","Cash","","2021-06-20 12:06:00","2021-07-13 10:18:28");
INSERT INTO payments VALUES("56","ppr-20210713-102412","1","171","","","8","2500","0","Cash","","2021-06-21 12:06:00","2021-07-13 10:24:12");
INSERT INTO payments VALUES("57","ppr-20210713-103100","1","172","","","8","4580","0","Cash","","2021-06-19 12:06:00","2021-07-13 10:31:00");
INSERT INTO payments VALUES("58","ppr-20210713-103329","1","160","","","8","1850","0","Cash","","2021-06-26 12:06:00","2021-07-13 10:33:29");
INSERT INTO payments VALUES("59","ppr-20210714-102837","1","8","","","8","240","0","Cash","","2021-06-15 12:06:00","2021-07-14 10:28:37");
INSERT INTO payments VALUES("60","ppr-20210714-102907","1","9","","","8","430","0","Cash","","2021-06-15 12:06:00","2021-07-14 10:29:07");
INSERT INTO payments VALUES("61","ppr-20210714-102929","1","10","","","8","1000","0","Cash","","2021-06-15 12:06:00","2021-07-14 10:29:29");
INSERT INTO payments VALUES("62","ppr-20210714-102957","1","11","","","8","700","0","Cash","","2021-06-15 12:06:00","2021-07-14 10:29:57");
INSERT INTO payments VALUES("63","ppr-20210714-103017","1","12","","","8","840","0","Cash","","2021-06-15 12:06:00","2021-07-14 10:30:17");
INSERT INTO payments VALUES("64","ppr-20210714-103039","1","13","","","8","360","0","Cash","","2021-06-15 12:06:00","2021-07-14 10:30:39");
INSERT INTO payments VALUES("65","ppr-20210714-103059","1","14","","","8","2400","0","Cash","","2021-06-15 12:06:00","2021-07-14 10:30:59");
INSERT INTO payments VALUES("66","ppr-20210714-103124","1","15","","","8","900","0","Cash","","2021-06-15 12:06:00","2021-07-14 10:31:24");
INSERT INTO payments VALUES("67","ppr-20210714-103143","1","16","","","8","240","0","Cash","","2021-06-15 12:06:00","2021-07-14 10:31:43");
INSERT INTO payments VALUES("68","ppr-20210714-103206","1","17","","","8","250","0","Cash","","2021-06-15 12:06:00","2021-07-14 10:32:06");
INSERT INTO payments VALUES("69","ppr-20210714-103234","1","18","","","8","420","0","Cash","","2021-06-15 12:06:00","2021-07-14 10:32:34");
INSERT INTO payments VALUES("70","ppr-20210714-103258","1","19","","","8","520","0","Cash","","2021-06-15 12:06:00","2021-07-14 10:32:58");
INSERT INTO payments VALUES("71","ppr-20210714-103319","1","20","","","8","252","0","Cash","","2021-06-15 12:06:00","2021-07-14 10:33:19");
INSERT INTO payments VALUES("72","ppr-20210714-103433","1","21","","","8","260","0","Cash","","2021-06-15 12:06:00","2021-07-14 10:34:33");
INSERT INTO payments VALUES("73","ppr-20210714-103504","1","22","","","8","384","0","Cash","","2021-06-15 12:06:00","2021-07-14 10:35:04");
INSERT INTO payments VALUES("74","ppr-20210714-103531","1","23","","","8","396","0","Cash","","2021-06-15 12:06:00","2021-07-14 10:35:31");
INSERT INTO payments VALUES("75","ppr-20210714-103615","1","24","","","8","84","0","Cash","","2021-06-15 12:06:00","2021-07-14 10:36:15");
INSERT INTO payments VALUES("76","ppr-20210714-103649","1","25","","","8","120","0","Cash","","2021-06-15 12:06:00","2021-07-14 10:36:49");
INSERT INTO payments VALUES("77","ppr-20210714-103745","1","26","","","8","160","0","Cash","","2021-06-15 12:06:00","2021-07-14 10:37:45");
INSERT INTO payments VALUES("78","ppr-20210714-103832","1","27","","","8","192","0","Cash","","2021-06-15 12:06:00","2021-07-14 10:38:32");
INSERT INTO payments VALUES("79","ppr-20210714-104235","1","29","","","8","228","0","Cash","","2021-06-15 12:06:00","2021-07-14 10:42:35");
INSERT INTO payments VALUES("80","ppr-20210714-104259","1","30","","","8","252","0","Cash","","2021-06-15 12:06:00","2021-07-14 10:42:59");
INSERT INTO payments VALUES("81","ppr-20210714-104432","1","31","","","8","265","0","Cash","","2021-06-15 12:06:00","2021-07-14 10:44:32");
INSERT INTO payments VALUES("82","ppr-20210714-104541","1","32","","","8","450","0","Cash","","2021-06-15 12:06:00","2021-07-14 10:45:41");
INSERT INTO payments VALUES("83","ppr-20210714-104607","1","33","","","8","2100","0","Cash","","2021-06-15 12:06:00","2021-07-14 10:46:07");
INSERT INTO payments VALUES("84","ppr-20210714-104627","1","34","","","8","3100","0","Cash","","2021-06-15 12:06:00","2021-07-14 10:46:27");
INSERT INTO payments VALUES("85","ppr-20210714-104704","1","35","","","8","2900","0","Cash","","2021-06-15 12:06:00","2021-07-14 10:47:04");
INSERT INTO payments VALUES("86","ppr-20210714-104740","1","36","","","8","3700","0","Cash","","2021-06-15 12:06:00","2021-07-14 10:47:40");
INSERT INTO payments VALUES("87","ppr-20210714-104848","1","37","","","8","2900","0","Cash","","2021-06-15 12:06:00","2021-07-14 10:48:48");
INSERT INTO payments VALUES("88","ppr-20210714-104954","1","38","","","8","1450","0","Cash","","2021-06-15 12:06:00","2021-07-14 10:49:54");
INSERT INTO payments VALUES("89","ppr-20210714-105027","1","39","","","8","2250","0","Cash","","2021-06-15 12:06:00","2021-07-14 10:50:27");
INSERT INTO payments VALUES("90","ppr-20210714-105948","1","40","","","8","2650","0","Cash","","2021-06-15 12:06:00","2021-07-14 10:59:48");
INSERT INTO payments VALUES("91","ppr-20210714-110108","1","41","","","8","540","0","Cash","","2021-06-15 12:06:00","2021-07-14 11:01:08");
INSERT INTO payments VALUES("92","ppr-20210714-110135","1","42","","","8","1800","0","Cash","","2021-06-15 12:06:00","2021-07-14 11:01:35");
INSERT INTO payments VALUES("93","ppr-20210714-110250","1","43","","","8","1350","0","Cash","","2021-06-15 12:06:00","2021-07-14 11:02:50");
INSERT INTO payments VALUES("94","ppr-20210714-110406","1","44","","","8","2250","0","Cash","","2021-06-15 12:06:00","2021-07-14 11:04:06");
INSERT INTO payments VALUES("95","ppr-20210714-110556","1","45","","","8","400","0","Cash","","2021-06-15 12:06:00","2021-07-14 11:05:56");
INSERT INTO payments VALUES("96","ppr-20210714-110727","1","46","","","8","552","0","Cash","","2021-06-15 12:06:00","2021-07-14 11:07:27");
INSERT INTO payments VALUES("97","ppr-20210714-110749","1","47","","","8","420","0","Cash","","2021-06-15 12:06:00","2021-07-14 11:07:49");
INSERT INTO payments VALUES("98","ppr-20210714-110833","1","48","","","8","720","0","Cash","","2021-06-15 12:06:00","2021-07-14 11:08:33");
INSERT INTO payments VALUES("99","ppr-20210714-110923","1","49","","","8","216","0","Cash","","2021-06-15 12:06:00","2021-07-14 11:09:23");
INSERT INTO payments VALUES("100","ppr-20210714-111024","1","50","","","8","280","0","Cash","","2021-06-15 12:06:00","2021-07-14 11:10:24");
INSERT INTO payments VALUES("101","ppr-20210714-111132","1","51","","","8","456","0","Cash","","2021-06-15 12:06:00","2021-07-14 11:11:32");
INSERT INTO payments VALUES("102","ppr-20210714-112308","1","52","","","8","350","0","Cash","","2021-06-15 12:06:00","2021-07-14 11:23:08");
INSERT INTO payments VALUES("103","ppr-20210714-112340","1","53","","","8","475","0","Cash","","2021-06-15 12:06:00","2021-07-14 11:23:40");
INSERT INTO payments VALUES("104","ppr-20210714-112406","1","54","","","8","250","0","Cash","","2021-06-15 12:06:00","2021-07-14 11:24:06");
INSERT INTO payments VALUES("105","ppr-20210714-112432","1","55","","","8","350","0","Cash","","2021-06-15 12:06:00","2021-07-14 11:24:32");
INSERT INTO payments VALUES("106","ppr-20210714-112454","1","56","","","8","1120","0","Cash","","2021-06-15 12:06:00","2021-07-14 11:24:54");
INSERT INTO payments VALUES("108","ppr-20210714-113913","1","117","","","8","225","0","Cash","","2021-06-15 12:06:00","2021-07-14 11:39:13");
INSERT INTO payments VALUES("109","ppr-20210714-113940","1","57","","","8","1050","0","Cash","","2021-06-15 12:06:00","2021-07-14 11:39:40");
INSERT INTO payments VALUES("110","ppr-20210714-114013","1","58","","","8","625","0","Cash","","2021-06-15 12:06:00","2021-07-14 11:40:13");
INSERT INTO payments VALUES("111","ppr-20210714-114043","1","59","","","8","400","0","Cash","","2021-06-15 12:06:00","2021-07-14 11:40:43");
INSERT INTO payments VALUES("112","ppr-20210714-114127","1","60","","","8","444","0","Cash","","2021-06-15 12:06:00","2021-07-14 11:41:27");
INSERT INTO payments VALUES("113","ppr-20210714-114936","1","61","","","8","900","0","Cash","","2021-06-15 12:06:00","2021-07-14 11:49:36");
INSERT INTO payments VALUES("114","ppr-20210714-115003","1","62","","","8","970","0","Cash","","2021-06-15 12:06:00","2021-07-14 11:50:03");
INSERT INTO payments VALUES("115","ppr-20210714-115026","1","63","","","8","1230","0","Cash","","2021-06-15 12:06:00","2021-07-14 11:50:26");
INSERT INTO payments VALUES("116","ppr-20210714-115055","1","64","","","8","396","0","Cash","","2021-06-15 12:06:00","2021-07-14 11:50:55");
INSERT INTO payments VALUES("117","ppr-20210714-115624","1","65","","","8","852","0","Cash","","2021-06-15 12:06:00","2021-07-14 11:56:24");
INSERT INTO payments VALUES("118","ppr-20210714-115655","1","66","","","8","880","0","Cash","","2021-06-15 12:06:00","2021-07-14 11:56:55");
INSERT INTO payments VALUES("119","ppr-20210714-115721","1","67","","","8","1120","0","Cash","","2021-06-15 12:06:00","2021-07-14 11:57:21");
INSERT INTO payments VALUES("120","ppr-20210714-115745","1","68","","","8","1900","0","Cash","","2021-06-15 12:06:00","2021-07-14 11:57:45");
INSERT INTO payments VALUES("121","ppr-20210714-115810","1","69","","","8","2100","0","Cash","","2021-06-15 12:06:00","2021-07-14 11:58:10");
INSERT INTO payments VALUES("122","ppr-20210714-115832","1","70","","","8","1950","0","Cash","","2021-06-15 12:06:00","2021-07-14 11:58:32");
INSERT INTO payments VALUES("123","ppr-20210714-115857","1","71","","","8","2760","0","Cash","","2021-06-15 12:06:00","2021-07-14 11:58:57");
INSERT INTO payments VALUES("124","ppr-20210714-115921","1","72","","","8","900","0","Cash","","2021-06-15 12:06:00","2021-07-14 11:59:21");
INSERT INTO payments VALUES("125","ppr-20210714-115943","1","73","","","8","540","0","Cash","","2021-06-15 12:06:00","2021-07-14 11:59:43");
INSERT INTO payments VALUES("126","ppr-20210714-120005","1","74","","","8","630","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:00:05");
INSERT INTO payments VALUES("127","ppr-20210714-120029","1","75","","","8","2580","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:00:29");
INSERT INTO payments VALUES("128","ppr-20210714-120056","1","76","","","8","990","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:00:56");
INSERT INTO payments VALUES("129","ppr-20210714-120122","1","77","","","8","1290","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:01:22");
INSERT INTO payments VALUES("130","ppr-20210714-120143","1","78","","","8","1100","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:01:43");
INSERT INTO payments VALUES("131","ppr-20210714-120221","1","79","","","8","936","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:02:21");
INSERT INTO payments VALUES("132","ppr-20210714-120242","1","80","","","8","780","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:02:42");
INSERT INTO payments VALUES("133","ppr-20210714-120304","1","81","","","8","468","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:03:04");
INSERT INTO payments VALUES("134","ppr-20210714-120331","1","116","","","8","456","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:03:31");
INSERT INTO payments VALUES("135","ppr-20210714-120351","1","115","","","8","288","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:03:51");
INSERT INTO payments VALUES("136","ppr-20210714-120414","1","86","","","8","720","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:04:14");
INSERT INTO payments VALUES("137","ppr-20210714-120434","1","87","","","8","2040","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:04:34");
INSERT INTO payments VALUES("138","ppr-20210714-120458","1","82","","","8","336","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:04:58");
INSERT INTO payments VALUES("141","ppr-20210714-121320","1","83","","","8","360","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:13:20");
INSERT INTO payments VALUES("142","ppr-20210714-121342","1","84","","","8","1100","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:13:42");
INSERT INTO payments VALUES("143","ppr-20210714-121408","1","85","","","8","720","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:14:08");
INSERT INTO payments VALUES("144","ppr-20210714-121431","1","88","","","8","2100","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:14:31");
INSERT INTO payments VALUES("145","ppr-20210714-121454","1","89","","","8","2160","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:14:54");
INSERT INTO payments VALUES("146","ppr-20210714-121654","1","90","","","8","2160","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:16:54");
INSERT INTO payments VALUES("147","ppr-20210714-121718","1","91","","","8","1440","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:17:18");
INSERT INTO payments VALUES("148","ppr-20210714-121742","1","92","","","8","648","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:17:42");
INSERT INTO payments VALUES("149","ppr-20210714-121810","1","93","","","8","156","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:18:10");
INSERT INTO payments VALUES("150","ppr-20210714-121833","1","94","","","8","3360","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:18:33");
INSERT INTO payments VALUES("151","ppr-20210714-121859","1","95","","","8","2520","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:18:59");
INSERT INTO payments VALUES("152","ppr-20210714-121920","1","96","","","8","336","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:19:20");
INSERT INTO payments VALUES("153","ppr-20210714-121951","1","97","","","8","324","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:19:51");
INSERT INTO payments VALUES("154","ppr-20210714-122019","1","98","","","8","720","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:20:19");
INSERT INTO payments VALUES("155","ppr-20210714-122041","1","99","","","8","240","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:20:41");
INSERT INTO payments VALUES("156","ppr-20210714-122103","1","100","","","8","1200","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:21:03");
INSERT INTO payments VALUES("157","ppr-20210714-122143","1","101","","","8","1440","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:21:43");
INSERT INTO payments VALUES("158","ppr-20210714-122425","1","102","","","8","1200","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:24:25");
INSERT INTO payments VALUES("159","ppr-20210714-122447","1","103","","","8","640","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:24:47");
INSERT INTO payments VALUES("160","ppr-20210714-122510","1","104","","","8","240","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:25:10");
INSERT INTO payments VALUES("161","ppr-20210714-122534","1","105","","","8","240","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:25:34");
INSERT INTO payments VALUES("162","ppr-20210714-122623","1","106","","","8","4560","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:26:23");
INSERT INTO payments VALUES("163","ppr-20210714-122651","1","107","","","8","3420","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:26:51");
INSERT INTO payments VALUES("164","ppr-20210714-122717","1","108","","","8","1600","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:27:17");
INSERT INTO payments VALUES("165","ppr-20210714-122740","1","109","","","8","3900","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:27:40");
INSERT INTO payments VALUES("166","ppr-20210714-122800","1","112","","","8","216","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:28:00");
INSERT INTO payments VALUES("167","ppr-20210714-122822","1","114","","","8","760","0","Cash","","2021-06-15 12:06:00","2021-07-14 12:28:22");
INSERT INTO payments VALUES("168","ppr-20210714-122954","1","118","","","8","2280","38500","Cash","","2021-07-14 12:07:00","2021-07-14 12:29:54");
INSERT INTO payments VALUES("169","ppr-20210714-044717","1","180","","","8","9400","1000","Cash","","2021-06-03 12:06:00","2021-07-14 16:47:17");
INSERT INTO payments VALUES("170","ppr-20210714-045100","1","181","","","8","3866","0","Cash","","2021-06-05 12:06:00","2021-07-14 16:51:00");
INSERT INTO payments VALUES("171","ppr-20210714-045645","1","182","","","8","3960","0","Cash","","2021-06-07 12:06:00","2021-07-14 16:56:45");
INSERT INTO payments VALUES("172","ppr-20210714-050848","1","183","","","8","4150","0","Cash","","2021-06-09 12:06:00","2021-07-14 17:08:48");
INSERT INTO payments VALUES("173","ppr-20210714-051415","1","184","","","8","5550","0","Cash","","2021-06-09 12:06:00","2021-07-14 17:14:15");
INSERT INTO payments VALUES("174","ppr-20210714-051844","1","185","","","8","454.99","0","Cash","","2021-06-09 12:06:00","2021-07-14 17:18:44");
INSERT INTO payments VALUES("175","ppr-20210714-052145","1","186","","","8","3000","0","Cash","","2021-06-11 12:06:00","2021-07-14 17:21:45");
INSERT INTO payments VALUES("176","ppr-20210715-022759","1","187","","","8","3090","0","Cash","","2021-06-14 12:06:00","2021-07-15 02:27:59");
INSERT INTO payments VALUES("177","ppr-20210715-022832","1","188","","","8","6610","0","Cash","","2021-06-14 12:06:00","2021-07-15 02:28:32");
INSERT INTO payments VALUES("178","ppr-20210715-022921","1","189","","","8","3000","6990","Cash","","2021-06-17 12:06:00","2021-07-15 02:29:21");
INSERT INTO payments VALUES("179","ppr-20210715-022950","1","189","","","8","2000","4990","Cash","","2021-06-20 12:06:00","2021-07-15 02:29:50");
INSERT INTO payments VALUES("180","ppr-20210715-023206","1","189","","","8","4900","0","Cash","","2021-06-26 12:06:00","2021-07-15 02:32:06");
INSERT INTO payments VALUES("181","ppr-20210715-024034","1","190","","","8","2000","2980","Cash","","2021-06-19 12:06:00","2021-07-15 02:40:34");
INSERT INTO payments VALUES("182","ppr-20210715-024339","1","191","","","8","1550","0","Cash","","2021-06-20 12:06:00","2021-07-15 02:43:39");
INSERT INTO payments VALUES("183","ppr-20210715-024551","1","192","","","8","800","0","Cash","","2021-06-24 12:06:00","2021-07-15 02:45:51");
INSERT INTO payments VALUES("184","ppr-20210715-024814","1","193","","","8","2800","0","Cash","","2021-06-29 12:06:00","2021-07-15 02:48:14");
INSERT INTO payments VALUES("185","ppr-20210715-041116","1","194","","","8","2560","0","Cash","","2021-06-13 12:06:00","2021-07-15 04:11:16");
INSERT INTO payments VALUES("186","ppr-20210715-041646","1","195","","","8","500","8700","Cash","","2021-06-09 12:06:00","2021-07-15 04:16:46");
INSERT INTO payments VALUES("187","ppr-20210715-041714","1","195","","","8","2000","6700","Cash","","2021-06-14 12:06:00","2021-07-15 04:17:14");
INSERT INTO payments VALUES("188","ppr-20210715-043037","1","195","","","8","3000","3700","Cash","","2021-06-20 12:06:00","2021-07-15 04:30:37");
INSERT INTO payments VALUES("189","ppr-20210715-043114","1","195","","","8","1500","2200","Cash","","2021-06-27 12:06:00","2021-07-15 04:31:14");
INSERT INTO payments VALUES("190","ppr-20210715-043144","1","195","","","8","1000","1200","Cash","","2021-06-29 12:06:00","2021-07-15 04:31:44");
INSERT INTO payments VALUES("191","ppr-20210715-043223","1","195","","","8","1200","0","Cash","","2021-07-08 12:07:00","2021-07-15 04:32:23");
INSERT INTO payments VALUES("192","ppr-20210715-050344","1","196","","","8","576","0","Cash","","2021-06-23 12:06:00","2021-07-15 05:03:44");
INSERT INTO payments VALUES("193","ppr-20210715-094113","1","197","","","8","5000","6097","Cash","","2021-06-10 12:06:00","2021-07-15 09:41:13");
INSERT INTO payments VALUES("194","ppr-20210715-094141","1","197","","","8","5000","1097","Cash","","2021-06-17 12:06:00","2021-07-15 09:41:41");
INSERT INTO payments VALUES("195","ppr-20210715-101111","1","198","","","8","2600","0","Cash","","2021-06-01 12:06:00","2021-07-15 10:11:11");
INSERT INTO payments VALUES("196","ppr-20210715-101129","1","199","","","8","15800","0","Cash","","2021-06-01 12:06:00","2021-07-15 10:11:29");
INSERT INTO payments VALUES("197","ppr-20210715-101355","1","200","","","8","475","0","Cash","","2021-06-01 12:06:00","2021-07-15 10:13:55");
INSERT INTO payments VALUES("198","ppr-20210716-023730","1","203","","","8","15000","27600","Cash","","2021-05-25 12:05:00","2021-07-16 02:37:30");
INSERT INTO payments VALUES("199","ppr-20210716-023829","1","203","","","8","15500","12100","Cash","","2021-05-26 12:05:00","2021-07-16 02:38:29");
INSERT INTO payments VALUES("200","ppr-20210716-023951","1","203","","","8","2000","10100","Cash","","2021-06-17 12:06:00","2021-07-16 02:39:51");
INSERT INTO payments VALUES("201","ppr-20210716-024228","1","204","","","8","500","11000","Cash","","2021-06-21 12:06:00","2021-07-16 02:42:28");
INSERT INTO payments VALUES("202","ppr-20210716-024304","1","204","","","8","8000","3000","Cash","","2021-06-22 12:06:00","2021-07-16 02:43:04");
INSERT INTO payments VALUES("203","ppr-20210716-024527","1","205","","","8","3000","2600","Cash","","2021-06-24 12:06:00","2021-07-16 02:45:27");
INSERT INTO payments VALUES("204","ppr-20210716-024641","1","203","","","8","5000","5100","Cash","","2021-06-27 12:06:00","2021-07-16 02:46:41");
INSERT INTO payments VALUES("205","ppr-20210716-040419","1","208","","","8","63830","0","Cash","","2021-06-18 12:06:00","2021-07-16 04:04:19");
INSERT INTO payments VALUES("206","ppr-20210716-040749","1","209","","","8","5900","0","Cash","","2021-06-03 12:06:00","2021-07-16 04:07:49");
INSERT INTO payments VALUES("207","ppr-20210716-041455","1","210","","","8","14220","0","Cash","","2021-06-15 12:06:00","2021-07-16 04:14:55");
INSERT INTO payments VALUES("208","ppr-20210716-041834","1","211","","","8","14000","0","Cash","","2021-06-09 12:06:00","2021-07-16 04:18:34");
INSERT INTO payments VALUES("209","ppr-20210716-042647","1","212","","","8","25600","0","Cash","","2021-06-27 12:06:00","2021-07-16 04:26:47");
INSERT INTO payments VALUES("210","ppr-20210716-045114","1","213","","","8","15800.76","0","Cash","","2021-06-23 12:06:00","2021-07-16 04:51:14");
INSERT INTO payments VALUES("211","ppr-20210716-045813","1","214","","","8","5320","0","Cash","","2021-06-28 12:06:00","2021-07-16 04:58:13");
INSERT INTO payments VALUES("212","ppr-20210716-050422","1","215","","","8","8100","100","Cash","","2021-06-28 12:06:00","2021-07-16 05:04:22");
INSERT INTO payments VALUES("213","ppr-20210718-043932","1","221","","","8","18000","5320","Cash","","2021-06-01 12:06:00","2021-07-18 04:39:32");
INSERT INTO payments VALUES("214","ppr-20210718-044123","1","220","","","8","34945","0","Cash","","2021-06-28 12:06:00","2021-07-18 04:41:23");
INSERT INTO payments VALUES("215","ppr-20210718-044254","1","217","","","8","5055","8022","Cash","","2021-06-28 12:06:00","2021-07-18 04:42:54");
INSERT INTO payments VALUES("216","ppr-20210718-104635","1","234","","","8","7420","0","Cash","cash","2021-06-15 12:06:00","2021-07-18 10:46:35");
INSERT INTO payments VALUES("217","ppr-20210718-104736","1","229","","","8","20500","0","Cash","Cash","2021-06-15 12:06:00","2021-07-18 10:47:36");
INSERT INTO payments VALUES("218","ppr-20210718-104810","1","230","","","8","6678","0","Cash","Cash","2021-06-15 12:06:00","2021-07-18 10:48:10");
INSERT INTO payments VALUES("219","ppr-20210718-104847","1","231","","","8","7500","0","Cash","Cash","2021-06-15 12:06:00","2021-07-18 10:48:47");
INSERT INTO payments VALUES("220","ppr-20210718-104923","1","232","","","8","2055","0","Cash","Cash","2021-06-15 12:06:00","2021-07-18 10:49:23");
INSERT INTO payments VALUES("221","ppr-20210718-104951","1","233","","","8","5040","0","Cash","Cash","2021-06-15 12:06:00","2021-07-18 10:49:51");
INSERT INTO payments VALUES("222","ppr-20210718-105101","1","224","","","8","2690","0","Cash","cash","2021-06-08 12:06:00","2021-07-18 10:51:01");
INSERT INTO payments VALUES("223","ppr-20210718-105149","1","225","","","8","7945","0","Cash","cash","2021-06-08 12:06:00","2021-07-18 10:51:49");
INSERT INTO payments VALUES("224","ppr-20210718-105231","1","226","","","8","5225","0","Cash","cash","2021-06-08 12:06:00","2021-07-18 10:52:31");
INSERT INTO payments VALUES("225","ppr-20210718-105311","1","227","","","8","9780","0","Cash","cash","2021-06-08 12:06:00","2021-07-18 10:53:11");
INSERT INTO payments VALUES("226","ppr-20210718-105342","1","228","","","8","4065","0","Cash","cash","2021-06-08 12:06:00","2021-07-18 10:53:42");
INSERT INTO payments VALUES("227","ppr-20210718-015945","1","240","","","8","6840","0","Cash","","2021-06-05 12:06:00","2021-07-18 13:59:45");
INSERT INTO payments VALUES("228","ppr-20210718-020257","1","241","","","8","1400","0","Cash","","2021-06-10 12:06:00","2021-07-18 14:02:57");
INSERT INTO payments VALUES("229","ppr-20210718-021731","1","242","","","8","15000","8440","Cash","","2021-06-21 12:06:00","2021-07-18 14:17:31");
INSERT INTO payments VALUES("230","ppr-20210718-021755","1","242","","","8","8440","0","Cash","","2021-07-12 12:07:00","2021-07-18 14:17:55");
INSERT INTO payments VALUES("231","ppr-20210718-022127","1","243","","","8","2180","0","Cash","","2021-06-24 12:06:00","2021-07-18 14:21:27");
INSERT INTO payments VALUES("232","ppr-20210718-024208","1","245","","","8","1380","0","Cash","","2021-06-24 12:06:00","2021-07-18 14:42:08");
INSERT INTO payments VALUES("233","ppr-20210718-024238","1","244","","","8","3900","0","Cash","","2021-06-20 12:06:00","2021-07-18 14:42:38");
INSERT INTO payments VALUES("234","ppr-20210718-025059","1","246","","","8","5161","0","Cash","","2021-06-27 12:06:00","2021-07-18 14:50:59");
INSERT INTO payments VALUES("235","ppr-20210718-025256","1","247","","","8","1280","0","Cash","","2021-06-28 12:06:00","2021-07-18 14:52:56");
INSERT INTO payments VALUES("236","ppr-20210718-025902","1","248","","","8","500","0","Cash","","2021-06-29 12:06:00","2021-07-18 14:59:02");
INSERT INTO payments VALUES("237","ppr-20210719-040519","1","250","","","8","130","0","Cash","","2021-06-15 12:06:00","2021-07-19 04:05:19");
INSERT INTO payments VALUES("238","ppr-20210719-042157","1","251","","","8","3935","0","Cash","","2021-06-26 12:06:00","2021-07-19 04:21:57");
INSERT INTO payments VALUES("239","ppr-20210719-042719","1","252","","","8","2150","0","Cash","","2021-06-21 12:06:00","2021-07-19 04:27:19");
INSERT INTO payments VALUES("240","ppr-20210719-123632","1","253","","","8","3570","0","Cash","","2021-06-10 12:06:00","2021-07-19 12:36:32");
INSERT INTO payments VALUES("241","ppr-20210719-125309","1","254","","","8","6370","0","Cash","","2021-06-09 12:06:00","2021-07-19 12:53:09");
INSERT INTO payments VALUES("242","ppr-20210719-012859","1","255","","","8","12320","0","Cash","","2021-06-28 12:06:00","2021-07-19 13:28:59");
INSERT INTO payments VALUES("243","ppr-20210719-014922","1","256","","","8","20000","11064","Cash","","2021-06-09 12:06:00","2021-07-19 13:49:22");
INSERT INTO payments VALUES("244","ppr-20210719-014956","1","256","","","8","10000","1064","Cash","","2021-06-21 12:06:00","2021-07-19 13:49:56");
INSERT INTO payments VALUES("245","ppr-20210719-015111","1","256","","","8","1050","0","Cash","","2021-06-22 12:06:00","2021-07-19 13:51:11");
INSERT INTO payments VALUES("246","ppr-20210719-023713","1","257","","","8","2040","0","Cash","","2021-06-07 12:06:00","2021-07-19 14:37:13");
INSERT INTO payments VALUES("247","ppr-20210719-024104","1","258","","","8","5000","6240","Cash","","2021-06-12 12:06:00","2021-07-19 14:41:04");
INSERT INTO payments VALUES("248","ppr-20210719-024134","1","258","","","8","5000","1240","Cash","","2021-06-17 12:06:00","2021-07-19 14:41:34");
INSERT INTO payments VALUES("249","ppr-20210719-024412","1","258","","","8","1200","0","Cash","","2021-06-22 12:06:00","2021-07-19 14:44:12");
INSERT INTO payments VALUES("250","ppr-20210719-024646","1","259","","","8","2000","10400","Cash","","2021-06-23 12:06:00","2021-07-19 14:46:46");
INSERT INTO payments VALUES("251","ppr-20210719-024741","1","259","","","8","1000","9400","Cash","","2021-07-06 12:07:00","2021-07-19 14:47:41");
INSERT INTO payments VALUES("252","ppr-20210719-024831","1","259","","","8","2000","7400","Cash","","2021-07-15 12:07:00","2021-07-19 14:49:39");
INSERT INTO payments VALUES("253","ppr-20210719-030359","1","260","","","8","2050","8000","Cash","","2021-06-27 12:06:00","2021-07-19 15:03:59");
INSERT INTO payments VALUES("254","ppr-20210719-030433","1","260","","","8","1500","6500","Cash","","2021-07-08 12:07:00","2021-07-19 15:04:33");
INSERT INTO payments VALUES("255","ppr-20210719-030509","1","260","","","8","2000","4500","Cash","","2021-07-19 12:07:00","2021-07-19 15:05:09");
INSERT INTO payments VALUES("256","ppr-20210719-032553","1","261","","","8","10500","5100","Cash","","2021-06-12 12:06:00","2021-07-19 15:25:53");
INSERT INTO payments VALUES("257","ppr-20210719-032626","1","261","","","8","3000","2100","Cash","","2021-06-17 12:06:00","2021-07-19 15:26:26");
INSERT INTO payments VALUES("258","ppr-20210719-032842","1","262","","","8","11700","0","Cash","","2021-06-13 12:06:00","2021-07-19 15:28:42");
INSERT INTO payments VALUES("259","ppr-20210719-033437","1","263","","","8","19300","0","Cash","","2021-05-29 12:05:00","2021-07-19 15:34:37");
INSERT INTO payments VALUES("260","ppr-20210719-035810","1","264","","","8","2000","31570","Cash","","2021-06-24 12:06:00","2021-07-19 15:58:10");
INSERT INTO payments VALUES("261","ppr-20210719-035903","1","264","","","8","8650","22920","Cash","","2021-07-06 12:07:00","2021-07-19 15:59:03");
INSERT INTO payments VALUES("262","ppr-20210720-043923","1","265","","","8","15000","13080","Cash","","2021-06-10 12:06:00","2021-07-20 04:39:23");
INSERT INTO payments VALUES("263","ppr-20210720-043954","1","265","","","8","5000","8080","Cash","","2021-06-17 12:06:00","2021-07-20 04:39:54");
INSERT INTO payments VALUES("264","ppr-20210720-044031","1","265","","","8","5000","3080","Cash","","2021-06-22 12:06:00","2021-07-20 04:40:31");
INSERT INTO payments VALUES("265","ppr-20210720-044328","1","265","","","8","3050","0","Cash","","2021-06-23 12:06:00","2021-07-20 04:43:28");
INSERT INTO payments VALUES("266","ppr-20210720-045347","1","266","","","8","3000","12240","Cash","","2021-06-27 12:06:00","2021-07-20 04:53:47");
INSERT INTO payments VALUES("267","ppr-20210720-045432","1","266","","","8","1500","10740","Cash","","2021-07-06 12:07:00","2021-07-20 04:54:32");
INSERT INTO payments VALUES("268","ppr-20210720-045500","1","266","","","8","3000","7740","Cash","","2021-07-12 12:07:00","2021-07-20 04:55:00");
INSERT INTO payments VALUES("269","ppr-20210720-052940","1","267","","","8","12900","0","Cash","","2021-05-25 12:05:00","2021-07-20 05:29:40");
INSERT INTO payments VALUES("270","ppr-20210720-053400","1","268","","","8","6000","3675","Cash","","2021-06-27 12:06:00","2021-07-20 05:34:00");
INSERT INTO payments VALUES("271","ppr-20210720-053424","1","268","","","8","2000","1675","Cash","","2021-06-29 12:06:00","2021-07-20 05:34:24");
INSERT INTO payments VALUES("272","ppr-20210720-053447","1","268","","","8","1675","0","Cash","","2021-07-06 12:07:00","2021-07-20 05:34:47");
INSERT INTO payments VALUES("273","ppr-20210720-054151","1","269","","","8","4688","0","Cash","","2021-06-05 12:06:00","2021-07-20 05:41:51");
INSERT INTO payments VALUES("274","ppr-20210720-060814","1","270","","","8","104700","0","Cash","","2021-06-03 12:06:00","2021-07-20 06:08:14");
INSERT INTO payments VALUES("275","ppr-20210720-061121","1","271","","","8","4272","0","Cash","","2021-06-04 12:06:00","2021-07-20 06:11:21");
INSERT INTO payments VALUES("276","ppr-20210720-083336","1","272","","","8","20000","11330","Cash","","2021-06-03 12:06:00","2021-07-20 08:33:36");
INSERT INTO payments VALUES("277","ppr-20210720-083507","1","272","","","8","5000","6330","Cash","","2021-06-10 12:06:00","2021-07-20 08:35:07");
INSERT INTO payments VALUES("278","ppr-20210720-083536","1","272","","","8","2000","4330","Cash","","2021-06-17 12:06:00","2021-07-20 08:35:36");
INSERT INTO payments VALUES("279","ppr-20210720-083614","1","272","","","8","2000","2330","Cash","","2021-07-12 12:07:00","2021-07-20 08:36:14");
INSERT INTO payments VALUES("280","ppr-20210720-083647","1","272","","","8","1200","1130","Cash","","2021-07-13 12:07:00","2021-07-20 08:36:47");
INSERT INTO payments VALUES("281","ppr-20210720-084712","1","273","","","8","19400","0","Cash","","2021-06-27 12:06:00","2021-07-20 08:47:12");
INSERT INTO payments VALUES("282","ppr-20210720-094600","1","274","","","8","21780","0","Cash","","2021-06-03 12:06:00","2021-07-20 09:46:00");
INSERT INTO payments VALUES("283","ppr-20210721-021331","1","276","","","8","6900","0","Cash","","2021-06-01 12:06:00","2021-07-21 14:13:31");
INSERT INTO payments VALUES("284","ppr-20210722-032955","1","277","","","8","2400","0","Cash","","2021-07-18 12:07:00","2021-07-22 03:29:55");
INSERT INTO payments VALUES("285","ppr-20210722-035557","1","278","","","8","1748","0","Cash","","2021-07-18 12:07:00","2021-07-22 03:55:57");
INSERT INTO payments VALUES("286","ppr-20210722-040727","1","279","","","8","2100","0","Cash","","2021-06-17 12:06:00","2021-07-22 04:07:27");
INSERT INTO payments VALUES("287","ppr-20210722-043243","1","280","","","8","500","0","Cash","","2021-07-17 12:07:00","2021-07-22 04:32:43");
INSERT INTO payments VALUES("288","ppr-20210722-043552","1","281","","","8","1050","0","Cash","","2021-07-13 12:07:00","2021-07-22 04:35:52");
INSERT INTO payments VALUES("289","ppr-20210722-043837","1","282","","","8","5900","0","Cash","","2021-07-14 12:07:00","2021-07-22 04:38:37");
INSERT INTO payments VALUES("290","ppr-20210722-044220","1","283","","","8","1750","0","Cash","","2021-07-14 12:07:00","2021-07-22 04:42:20");
INSERT INTO payments VALUES("291","ppr-20210722-050121","1","284","","","8","740","0","Cash","","2021-07-06 12:07:00","2021-07-22 05:01:21");
INSERT INTO payments VALUES("292","ppr-20210722-050315","1","285","","","8","1400","0","Cash","","2021-07-10 12:07:00","2021-07-22 05:03:15");
INSERT INTO payments VALUES("293","ppr-20210722-050525","1","286","","","8","895","0","Cash","","2021-07-10 12:07:00","2021-07-22 05:05:25");
INSERT INTO payments VALUES("294","ppr-20210722-051308","1","287","","","8","540","0","Cash","","2021-07-06 12:07:00","2021-07-22 05:13:08");
INSERT INTO payments VALUES("295","ppr-20210722-060122","1","164","","","8","40000","10800","Cash","","2021-06-28 12:06:00","2021-07-22 06:01:22");
INSERT INTO payments VALUES("296","ppr-20210722-060304","1","164","","","8","10800","0","Cash","","2021-07-06 12:07:00","2021-07-22 06:03:04");
INSERT INTO payments VALUES("297","ppr-20210722-061715","1","290","","","8","37160","0","Cash","","2021-07-06 12:07:00","2021-07-22 06:17:15");
INSERT INTO payments VALUES("298","ppr-20210725-025319","1","292","","","8","4126","0","Cash","","2021-07-16 12:07:00","2021-07-25 14:53:19");
INSERT INTO payments VALUES("299","ppr-20210725-030009","1","293","","","8","5000","0","Cash","","2021-07-18 12:07:00","2021-07-25 15:00:09");
INSERT INTO payments VALUES("300","ppr-20210726-095236","1","294","","","8","1530","0","Cash","","2021-07-12 12:07:00","2021-07-26 09:52:36");
INSERT INTO payments VALUES("301","ppr-20210726-100212","1","295","","","8","10140","0","Cash","","2021-07-12 12:07:00","2021-07-26 10:02:12");
INSERT INTO payments VALUES("302","ppr-20210726-100424","1","296","","","8","5620","0","Cash","","2021-07-12 12:07:00","2021-07-26 10:04:24");
INSERT INTO payments VALUES("303","ppr-20210726-100738","1","297","","","8","900","0","Cash","","2021-07-08 12:07:00","2021-07-26 10:07:38");
INSERT INTO payments VALUES("304","ppr-20210726-101326","1","298","","","8","1065","0","Cash","","2021-07-11 12:07:00","2021-07-26 10:13:26");
INSERT INTO payments VALUES("305","ppr-20210726-102209","1","299","","","8","1260","0","Cash","","2021-07-12 12:07:00","2021-07-26 10:22:09");
INSERT INTO payments VALUES("306","ppr-20210726-102353","1","300","","","8","1800","0","Cash","","2021-07-13 12:07:00","2021-07-26 10:23:53");
INSERT INTO payments VALUES("307","ppr-20210726-103536","1","301","","","8","5532","0","Cash","","2021-07-12 12:07:00","2021-07-26 10:35:36");
INSERT INTO payments VALUES("308","ppr-20210726-104012","1","302","","","8","825","0","Cash","","2021-07-14 12:07:00","2021-07-26 10:40:12");
INSERT INTO payments VALUES("309","ppr-20210726-104853","1","303","","","8","28630","0","Cash","","2021-07-14 12:07:00","2021-07-26 10:48:53");
INSERT INTO payments VALUES("310","ppr-20210726-105525","1","304","","","8","4630","0","Cash","","2021-07-14 12:07:00","2021-07-26 10:55:25");
INSERT INTO payments VALUES("311","ppr-20210726-105836","1","305","","","8","2700","0","Cash","","2021-07-15 12:07:00","2021-07-26 10:58:36");
INSERT INTO payments VALUES("312","ppr-20210726-110422","1","306","","","8","3000","13350","Cash","","2021-07-15 12:07:00","2021-07-26 11:04:22");
INSERT INTO payments VALUES("313","ppr-20210726-110447","1","306","","","8","2000","11350","Cash","","2021-07-19 12:07:00","2021-07-26 11:04:47");
INSERT INTO payments VALUES("314","ppr-20210726-110828","1","307","","","8","1400","0","Cash","","2021-07-15 12:07:00","2021-07-26 11:08:28");
INSERT INTO payments VALUES("315","ppr-20210726-113510","1","308","","","8","4350","0","Cash","","2021-07-13 12:07:00","2021-07-26 11:35:10");
INSERT INTO payments VALUES("316","ppr-20210726-114256","1","180","","","8","1000","0","Cash","Plus Return-910/-","2021-07-15 12:07:00","2021-07-26 11:42:56");
INSERT INTO payments VALUES("317","ppr-20210726-120500","1","309","","","8","4000","2591","Cash","","2021-07-13 12:07:00","2021-07-26 12:05:00");
INSERT INTO payments VALUES("318","ppr-20210726-120538","1","309","","","8","500","2091","Cash","","2021-07-18 12:07:00","2021-07-26 12:05:38");
INSERT INTO payments VALUES("319","ppr-20210726-120554","1","309","","","8","2091","0","Cash","","2021-07-19 12:07:00","2021-07-26 12:05:54");
INSERT INTO payments VALUES("320","ppr-20210726-123144","1","310","","","8","1500","3850","Cash","","2021-07-13 12:07:00","2021-07-26 12:31:44");
INSERT INTO payments VALUES("321","ppr-20210726-015613","1","312","","","8","545","0","Cash","","2021-07-24 12:07:00","2021-07-26 13:56:13");
INSERT INTO payments VALUES("322","ppr-20210726-015653","1","311","","","8","4460","0","Cash","","2021-07-23 12:07:00","2021-07-26 13:56:53");
INSERT INTO payments VALUES("323","ppr-20210726-021704","1","313","","","8","2055","0","Cash","","2021-07-25 12:07:00","2021-07-26 14:17:04");
INSERT INTO payments VALUES("324","ppr-20210726-023441","1","314","","","8","6760","0","Cash","","2021-07-25 12:07:00","2021-07-26 14:34:41");
INSERT INTO payments VALUES("325","ppr-20210728-102118","1","291","","","8","22400","0","Cash","","2021-07-26 12:07:00","2021-07-28 10:21:18");
INSERT INTO payments VALUES("326","ppr-20210728-103759","1","118","","","8","38500","0","Cash","by cheque","2021-07-18 12:07:00","2021-07-28 10:37:59");
INSERT INTO payments VALUES("327","ppr-20210728-115430","1","190","","","8","1500","1480","Cash","","2021-07-15 12:07:00","2021-07-28 11:54:30");
INSERT INTO payments VALUES("328","ppr-20210728-115539","1","136","","","8","2000","3000","Cash","","2021-07-11 12:07:00","2021-07-28 11:55:39");
INSERT INTO payments VALUES("329","ppr-20210728-115603","1","136","","","8","1000","2000","Cash","","2021-07-18 12:07:00","2021-07-28 11:56:03");
INSERT INTO payments VALUES("330","ppr-20210728-115708","1","146","","","8","2000","7407","Cash","","2021-07-17 12:07:00","2021-07-28 11:57:08");
INSERT INTO payments VALUES("331","ppr-20210728-115806","1","150","","","8","2000","5347","Cash","","2021-07-17 12:07:00","2021-07-28 11:58:06");
INSERT INTO payments VALUES("332","ppr-20210728-120216","1","203","","","8","1000","4100","Cash","","2021-07-17 12:07:00","2021-07-28 12:02:16");
INSERT INTO payments VALUES("333","ppr-20210728-120517","1","119","","","8","9500","4120","Cash","","2021-07-26 12:07:00","2021-07-28 12:05:17");
INSERT INTO payments VALUES("334","ppr-20210728-120836","1","206","","","8","20000","58339","Cash","cash","2021-05-30 12:05:00","2021-07-28 12:08:36");
INSERT INTO payments VALUES("335","ppr-20210728-120949","1","206","","","8","6386","51953","Cash","WC Comed","2021-06-16 12:06:00","2021-07-28 12:09:49");
INSERT INTO payments VALUES("336","ppr-20210728-121011","1","206","","","8","13000","38953","Cash","cash","2021-07-12 12:07:00","2021-07-28 12:10:11");
INSERT INTO payments VALUES("337","ppr-20210728-121439","1","206","","","8","10000","28953","Cash","","2021-06-10 12:06:00","2021-07-28 12:14:39");
INSERT INTO payments VALUES("338","ppr-20210728-121824","1","159","","","8","7000","14110","Cash","","2021-07-13 12:07:00","2021-07-28 12:18:24");
INSERT INTO payments VALUES("339","ppr-20210728-123300","1","289","","","8","10000","52033","Cash","cash","2021-07-27 12:07:00","2021-07-28 12:33:00");
INSERT INTO payments VALUES("340","ppr-20210728-123337","1","310","","","8","1000","2850","Cash","","2021-07-27 12:07:00","2021-07-28 12:33:37");
INSERT INTO payments VALUES("341","ppr-20210728-124137","1","144","","","8","20000","1520","Cash","","2021-05-27 12:05:00","2021-07-28 12:41:37");
INSERT INTO payments VALUES("342","ppr-20210728-124259","1","140","","","8","5000","6190","Cash","","2021-06-06 12:06:00","2021-07-28 12:42:59");
INSERT INTO payments VALUES("343","ppr-20210728-124351","1","140","","","8","5000","1190","Cash","","2021-06-09 12:06:00","2021-07-28 12:43:51");
INSERT INTO payments VALUES("344","ppr-20210728-124455","1","138","","","8","3000","294","Cash","","2021-06-17 12:06:00","2021-07-28 12:44:55");
INSERT INTO payments VALUES("345","ppr-20210728-124637","1","139","","","8","2500","185","Cash","","2021-06-26 12:06:00","2021-07-28 12:46:37");
INSERT INTO payments VALUES("346","ppr-20210728-124727","1","144","","","8","1500","20","Cash","","2021-07-11 12:07:00","2021-07-28 12:47:27");
INSERT INTO payments VALUES("347","ppr-20210728-124843","1","140","","","8","1190","0","Cash","","2021-07-17 12:07:00","2021-07-28 12:48:43");
INSERT INTO payments VALUES("348","ppr-20210728-124914","1","138","","","8","294","0","Cash","","2021-07-17 12:07:00","2021-07-28 12:49:14");
INSERT INTO payments VALUES("349","ppr-20210728-125026","1","144","","","8","20","0","Cash","","2021-07-17 12:07:00","2021-07-28 12:50:26");
INSERT INTO payments VALUES("350","ppr-20210728-125921","1","148","","","8","4000","11316","Cash","","2021-06-17 12:06:00","2021-07-28 12:59:21");
INSERT INTO payments VALUES("351","ppr-20210728-125947","1","148","","","8","3000","8316","Cash","","2021-06-22 12:06:00","2021-07-28 12:59:47");
INSERT INTO payments VALUES("352","ppr-20210728-010018","1","148","","","8","2000","6316","Cash","","2021-06-27 12:06:00","2021-07-28 13:00:18");
INSERT INTO payments VALUES("353","ppr-20210728-010044","1","148","","","8","2000","4316","Cash","","2021-07-10 12:07:00","2021-07-28 13:00:44");
INSERT INTO payments VALUES("354","ppr-20210728-010116","1","148","","","8","1500","2816","Cash","","2021-07-17 12:07:00","2021-07-28 13:01:16");
INSERT INTO payments VALUES("355","ppr-20210728-020102","1","173","","","8","11042.4","0","Cash","","2021-06-03 12:06:00","2021-07-28 14:01:02");
INSERT INTO payments VALUES("356","ppr-20210728-020147","1","174","","","8","3936","0","Cash","","2021-06-03 12:06:00","2021-07-28 14:01:47");
INSERT INTO payments VALUES("357","ppr-20210728-020218","1","175","","","8","3832","0","Cash","","2021-06-03 12:06:00","2021-07-28 14:02:18");
INSERT INTO payments VALUES("358","ppr-20210728-020258","1","176","","","8","3324","0","Cash","","2021-06-03 12:06:00","2021-07-28 14:02:58");
INSERT INTO payments VALUES("359","ppr-20210728-020348","1","179","","","8","1560","0","Cash","","2021-06-03 12:06:00","2021-07-28 14:03:48");
INSERT INTO payments VALUES("360","ppr-20210728-020440","1","178","","","8","6306","7512","Cash","","2021-06-03 12:06:00","2021-07-28 14:04:40");
INSERT INTO payments VALUES("361","ppr-20210728-020712","1","178","","","8","7512","0","Cash","","2021-06-09 12:06:00","2021-07-28 14:07:12");
INSERT INTO payments VALUES("362","ppr-20210728-020752","1","177","","","8","2488","39260","Cash","","2021-06-09 12:06:00","2021-07-28 14:07:52");
INSERT INTO payments VALUES("363","ppr-20210728-020829","1","177","","","8","5000","34260","Cash","","2021-06-24 12:06:00","2021-07-28 14:08:29");
INSERT INTO payments VALUES("364","ppr-20210728-020924","1","177","","","8","4000","30260","Cash","","2021-06-29 12:06:00","2021-07-28 14:09:24");
INSERT INTO payments VALUES("365","ppr-20210728-021003","1","177","","","8","5000","25260","Cash","","2021-07-15 12:07:00","2021-07-28 14:10:03");
INSERT INTO payments VALUES("366","ppr-20210728-021039","1","177","","","8","5000","20260","Cash","","2021-07-17 12:07:00","2021-07-28 14:10:39");
INSERT INTO payments VALUES("367","ppr-20210728-030032","1","316","","","8","5000","5665","Cash","","2021-05-27 12:05:00","2021-07-28 15:00:32");
INSERT INTO payments VALUES("368","ppr-20210728-030052","1","316","","","8","5665","0","Cash","","2021-06-03 12:06:00","2021-07-28 15:00:52");
INSERT INTO payments VALUES("369","ppr-20210728-030259","1","317","","","8","2000","12220","Cash","","2021-07-07 12:07:00","2021-07-28 15:02:59");
INSERT INTO payments VALUES("370","ppr-20210728-030327","1","317","","","8","3000","9220","Cash","","2021-07-11 12:07:00","2021-07-28 15:03:27");
INSERT INTO payments VALUES("371","ppr-20210728-030652","1","317","","","8","5000","4220","Cash","cash","2021-07-19 12:07:00","2021-07-28 15:06:52");
INSERT INTO payments VALUES("372","ppr-20210728-030743","1","317","","","8","450","3770","Cash","IPS Bulb","2021-07-19 12:07:00","2021-07-28 15:07:43");
INSERT INTO payments VALUES("373","ppr-20210729-103150","1","319","","","8","2000","4100","Cash","","2021-05-27 12:05:00","2021-07-29 10:31:50");
INSERT INTO payments VALUES("374","ppr-20210729-103219","1","319","","","8","1000","3100","Cash","","2021-06-13 12:06:00","2021-07-29 10:32:19");
INSERT INTO payments VALUES("375","ppr-20210729-105538","1","320","","","8","17100","20","Cash","","2021-07-27 12:07:00","2021-07-29 12:01:09");
INSERT INTO payments VALUES("376","ppr-20210729-113906","1","321","","","8","660","0","Cash","","2021-07-27 12:07:00","2021-07-29 11:39:06");
INSERT INTO payments VALUES("377","ppr-20210729-114049","1","322","","","8","900","0","Cash","","2021-07-27 12:07:00","2021-07-29 11:40:49");
INSERT INTO payments VALUES("378","ppr-20210729-114318","1","323","","","8","1490","0","Cash","","2021-07-28 12:07:00","2021-07-29 11:43:18");
INSERT INTO payments VALUES("379","ppr-20210729-120617","1","259","","","8","1500","5900","Cash","","2021-07-28 12:07:00","2021-07-29 12:06:17");
INSERT INTO payments VALUES("380","ppr-20210801-030257","1","266","","","8","2000","5740","Cash","","2021-07-31 12:07:00","2021-08-01 15:02:57");
INSERT INTO payments VALUES("381","ppr-20210801-030423","1","318","","","8","5000","9220","Cash","","2021-07-31 12:07:00","2021-08-01 15:04:23");
INSERT INTO payments VALUES("382","ppr-20210801-030455","1","289","","","8","6000","46033","Cash","","2021-07-31 12:07:00","2021-08-01 15:04:55");
INSERT INTO payments VALUES("383","ppr-20210801-030550","1","203","","","8","1000","3100","Cash","","2021-07-31 12:07:00","2021-08-01 15:05:50");
INSERT INTO payments VALUES("384","ppr-20210802-021652","1","324","","","8","330","0","Cash","","2021-07-31 12:07:00","2021-08-02 02:16:52");
INSERT INTO payments VALUES("385","ppr-20210802-024725","1","325","","","8","4000","4640","Cash","","2021-07-28 12:07:00","2021-08-02 02:47:25");
INSERT INTO payments VALUES("386","ppr-20210802-020252","1","327","","","8","1020","0","Cash","","2021-07-31 12:07:00","2021-08-02 14:02:52");
INSERT INTO payments VALUES("387","ppr-20210802-021410","1","328","","","8","1710","0","Cash","","2021-07-31 12:07:00","2021-08-02 14:14:10");
INSERT INTO payments VALUES("388","ppr-20210809-015254","1","236","","","8","20000","5520","Cash","IBL, Oxyjen Br.","2021-07-15 12:07:00","2021-08-09 01:52:54");
INSERT INTO payments VALUES("389","ppr-20210812-011915","1","201","","","8","22019","0","Cash","Cash","2021-06-06 12:06:00","2021-08-12 13:19:15");
INSERT INTO payments VALUES("390","ppr-20210812-011952","1","202","","","8","12130","0","Cash","cash","2021-06-06 12:06:00","2021-08-12 13:19:52");
INSERT INTO payments VALUES("391","ppr-20210812-012020","1","275","","","8","15851","10709","Cash","cash","2021-06-06 12:06:00","2021-08-12 13:20:20");



CREATE TABLE `payrolls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO permissions VALUES("4","products-edit","web","2018-06-03 07:00:09","2018-06-03 07:00:09");
INSERT INTO permissions VALUES("5","products-delete","web","2018-06-04 04:54:22","2018-06-04 04:54:22");
INSERT INTO permissions VALUES("6","products-add","web","2018-06-04 06:34:14","2018-06-04 06:34:14");
INSERT INTO permissions VALUES("7","products-index","web","2018-06-04 09:34:27","2018-06-04 09:34:27");
INSERT INTO permissions VALUES("8","purchases-index","web","2018-06-04 14:03:19","2018-06-04 14:03:19");
INSERT INTO permissions VALUES("9","purchases-add","web","2018-06-04 14:12:25","2018-06-04 14:12:25");
INSERT INTO permissions VALUES("10","purchases-edit","web","2018-06-04 15:47:36","2018-06-04 15:47:36");
INSERT INTO permissions VALUES("11","purchases-delete","web","2018-06-04 15:47:36","2018-06-04 15:47:36");
INSERT INTO permissions VALUES("12","sales-index","web","2018-06-04 16:49:08","2018-06-04 16:49:08");
INSERT INTO permissions VALUES("13","sales-add","web","2018-06-04 16:49:52","2018-06-04 16:49:52");
INSERT INTO permissions VALUES("14","sales-edit","web","2018-06-04 16:49:52","2018-06-04 16:49:52");
INSERT INTO permissions VALUES("15","sales-delete","web","2018-06-04 16:49:53","2018-06-04 16:49:53");
INSERT INTO permissions VALUES("16","quotes-index","web","2018-06-05 04:05:10","2018-06-05 04:05:10");
INSERT INTO permissions VALUES("17","quotes-add","web","2018-06-05 04:05:10","2018-06-05 04:05:10");
INSERT INTO permissions VALUES("18","quotes-edit","web","2018-06-05 04:05:10","2018-06-05 04:05:10");
INSERT INTO permissions VALUES("19","quotes-delete","web","2018-06-05 04:05:10","2018-06-05 04:05:10");
INSERT INTO permissions VALUES("20","transfers-index","web","2018-06-05 04:30:03","2018-06-05 04:30:03");
INSERT INTO permissions VALUES("21","transfers-add","web","2018-06-05 04:30:03","2018-06-05 04:30:03");
INSERT INTO permissions VALUES("22","transfers-edit","web","2018-06-05 04:30:03","2018-06-05 04:30:03");
INSERT INTO permissions VALUES("23","transfers-delete","web","2018-06-05 04:30:03","2018-06-05 04:30:03");
INSERT INTO permissions VALUES("24","returns-index","web","2018-06-05 04:50:24","2018-06-05 04:50:24");
INSERT INTO permissions VALUES("25","returns-add","web","2018-06-05 04:50:24","2018-06-05 04:50:24");
INSERT INTO permissions VALUES("26","returns-edit","web","2018-06-05 04:50:25","2018-06-05 04:50:25");
INSERT INTO permissions VALUES("27","returns-delete","web","2018-06-05 04:50:25","2018-06-05 04:50:25");
INSERT INTO permissions VALUES("28","customers-index","web","2018-06-05 05:15:54","2018-06-05 05:15:54");
INSERT INTO permissions VALUES("29","customers-add","web","2018-06-05 05:15:55","2018-06-05 05:15:55");
INSERT INTO permissions VALUES("30","customers-edit","web","2018-06-05 05:15:55","2018-06-05 05:15:55");
INSERT INTO permissions VALUES("31","customers-delete","web","2018-06-05 05:15:55","2018-06-05 05:15:55");
INSERT INTO permissions VALUES("32","suppliers-index","web","2018-06-05 05:40:12","2018-06-05 05:40:12");
INSERT INTO permissions VALUES("33","suppliers-add","web","2018-06-05 05:40:12","2018-06-05 05:40:12");
INSERT INTO permissions VALUES("34","suppliers-edit","web","2018-06-05 05:40:12","2018-06-05 05:40:12");
INSERT INTO permissions VALUES("35","suppliers-delete","web","2018-06-05 05:40:12","2018-06-05 05:40:12");
INSERT INTO permissions VALUES("36","product-report","web","2018-06-25 05:05:33","2018-06-25 05:05:33");
INSERT INTO permissions VALUES("37","purchase-report","web","2018-06-25 05:24:56","2018-06-25 05:24:56");
INSERT INTO permissions VALUES("38","sale-report","web","2018-06-25 05:33:13","2018-06-25 05:33:13");
INSERT INTO permissions VALUES("39","customer-report","web","2018-06-25 05:36:51","2018-06-25 05:36:51");
INSERT INTO permissions VALUES("40","due-report","web","2018-06-25 05:39:52","2018-06-25 05:39:52");
INSERT INTO permissions VALUES("41","users-index","web","2018-06-25 06:00:10","2018-06-25 06:00:10");
INSERT INTO permissions VALUES("42","users-add","web","2018-06-25 06:00:10","2018-06-25 06:00:10");
INSERT INTO permissions VALUES("43","users-edit","web","2018-06-25 06:01:30","2018-06-25 06:01:30");
INSERT INTO permissions VALUES("44","users-delete","web","2018-06-25 06:01:30","2018-06-25 06:01:30");
INSERT INTO permissions VALUES("45","profit-loss","web","2018-07-15 03:50:05","2018-07-15 03:50:05");
INSERT INTO permissions VALUES("46","best-seller","web","2018-07-15 04:01:38","2018-07-15 04:01:38");
INSERT INTO permissions VALUES("47","daily-sale","web","2018-07-15 04:24:21","2018-07-15 04:24:21");
INSERT INTO permissions VALUES("48","monthly-sale","web","2018-07-15 04:30:41","2018-07-15 04:30:41");
INSERT INTO permissions VALUES("49","daily-purchase","web","2018-07-15 04:36:46","2018-07-15 04:36:46");
INSERT INTO permissions VALUES("50","monthly-purchase","web","2018-07-15 04:48:17","2018-07-15 04:48:17");
INSERT INTO permissions VALUES("51","payment-report","web","2018-07-15 05:10:41","2018-07-15 05:10:41");
INSERT INTO permissions VALUES("52","warehouse-stock-report","web","2018-07-15 05:16:55","2018-07-15 05:16:55");
INSERT INTO permissions VALUES("53","product-qty-alert","web","2018-07-15 05:33:21","2018-07-15 05:33:21");
INSERT INTO permissions VALUES("54","supplier-report","web","2018-07-30 09:00:01","2018-07-30 09:00:01");
INSERT INTO permissions VALUES("55","expenses-index","web","2018-09-05 07:07:10","2018-09-05 07:07:10");
INSERT INTO permissions VALUES("56","expenses-add","web","2018-09-05 07:07:10","2018-09-05 07:07:10");
INSERT INTO permissions VALUES("57","expenses-edit","web","2018-09-05 07:07:10","2018-09-05 07:07:10");
INSERT INTO permissions VALUES("58","expenses-delete","web","2018-09-05 07:07:11","2018-09-05 07:07:11");
INSERT INTO permissions VALUES("59","general_setting","web","2018-10-20 05:10:04","2018-10-20 05:10:04");
INSERT INTO permissions VALUES("60","mail_setting","web","2018-10-20 05:10:04","2018-10-20 05:10:04");
INSERT INTO permissions VALUES("61","pos_setting","web","2018-10-20 05:10:04","2018-10-20 05:10:04");
INSERT INTO permissions VALUES("62","hrm_setting","web","2019-01-02 16:30:23","2019-01-02 16:30:23");
INSERT INTO permissions VALUES("63","purchase-return-index","web","2019-01-03 03:45:14","2019-01-03 03:45:14");
INSERT INTO permissions VALUES("64","purchase-return-add","web","2019-01-03 03:45:14","2019-01-03 03:45:14");
INSERT INTO permissions VALUES("65","purchase-return-edit","web","2019-01-03 03:45:14","2019-01-03 03:45:14");
INSERT INTO permissions VALUES("66","purchase-return-delete","web","2019-01-03 03:45:14","2019-01-03 03:45:14");
INSERT INTO permissions VALUES("67","account-index","web","2019-01-03 04:06:13","2019-01-03 04:06:13");
INSERT INTO permissions VALUES("68","balance-sheet","web","2019-01-03 04:06:14","2019-01-03 04:06:14");
INSERT INTO permissions VALUES("69","account-statement","web","2019-01-03 04:06:14","2019-01-03 04:06:14");
INSERT INTO permissions VALUES("70","department","web","2019-01-03 04:30:01","2019-01-03 04:30:01");
INSERT INTO permissions VALUES("71","attendance","web","2019-01-03 04:30:01","2019-01-03 04:30:01");
INSERT INTO permissions VALUES("72","payroll","web","2019-01-03 04:30:01","2019-01-03 04:30:01");
INSERT INTO permissions VALUES("73","employees-index","web","2019-01-03 04:52:19","2019-01-03 04:52:19");
INSERT INTO permissions VALUES("74","employees-add","web","2019-01-03 04:52:19","2019-01-03 04:52:19");
INSERT INTO permissions VALUES("75","employees-edit","web","2019-01-03 04:52:19","2019-01-03 04:52:19");
INSERT INTO permissions VALUES("76","employees-delete","web","2019-01-03 04:52:19","2019-01-03 04:52:19");
INSERT INTO permissions VALUES("77","user-report","web","2019-01-16 12:48:18","2019-01-16 12:48:18");
INSERT INTO permissions VALUES("78","stock_count","web","2019-02-17 16:32:01","2019-02-17 16:32:01");
INSERT INTO permissions VALUES("79","adjustment","web","2019-02-17 16:32:02","2019-02-17 16:32:02");
INSERT INTO permissions VALUES("80","sms_setting","web","2019-02-22 11:18:03","2019-02-22 11:18:03");
INSERT INTO permissions VALUES("81","create_sms","web","2019-02-22 11:18:03","2019-02-22 11:18:03");
INSERT INTO permissions VALUES("82","print_barcode","web","2019-03-07 11:02:19","2019-03-07 11:02:19");
INSERT INTO permissions VALUES("83","empty_database","web","2019-03-07 11:02:19","2019-03-07 11:02:19");
INSERT INTO permissions VALUES("84","customer_group","web","2019-03-07 11:37:15","2019-03-07 11:37:15");
INSERT INTO permissions VALUES("85","unit","web","2019-03-07 11:37:15","2019-03-07 11:37:15");
INSERT INTO permissions VALUES("86","tax","web","2019-03-07 11:37:15","2019-03-07 11:37:15");
INSERT INTO permissions VALUES("87","gift_card","web","2019-03-07 12:29:38","2019-03-07 12:29:38");
INSERT INTO permissions VALUES("88","coupon","web","2019-03-07 12:29:38","2019-03-07 12:29:38");
INSERT INTO permissions VALUES("89","holiday","web","2019-10-19 14:57:15","2019-10-19 14:57:15");
INSERT INTO permissions VALUES("90","warehouse-report","web","2019-10-22 12:00:23","2019-10-22 12:00:23");
INSERT INTO permissions VALUES("91","warehouse","web","2020-02-26 12:47:32","2020-02-26 12:47:32");
INSERT INTO permissions VALUES("92","brand","web","2020-02-26 12:59:59","2020-02-26 12:59:59");
INSERT INTO permissions VALUES("93","billers-index","web","2020-02-26 13:11:15","2020-02-26 13:11:15");
INSERT INTO permissions VALUES("94","billers-add","web","2020-02-26 13:11:15","2020-02-26 13:11:15");
INSERT INTO permissions VALUES("95","billers-edit","web","2020-02-26 13:11:15","2020-02-26 13:11:15");
INSERT INTO permissions VALUES("96","billers-delete","web","2020-02-26 13:11:15","2020-02-26 13:11:15");
INSERT INTO permissions VALUES("97","money-transfer","web","2020-03-02 11:41:48","2020-03-02 11:41:48");
INSERT INTO permissions VALUES("98","category","web","2020-07-13 18:13:16","2020-07-13 18:13:16");
INSERT INTO permissions VALUES("99","delivery","web","2020-07-13 18:13:16","2020-07-13 18:13:16");
INSERT INTO permissions VALUES("100","send_notification","web","2020-10-31 12:21:31","2020-10-31 12:21:31");
INSERT INTO permissions VALUES("101","today_sale","web","2020-10-31 12:57:04","2020-10-31 12:57:04");
INSERT INTO permissions VALUES("102","today_profit","web","2020-10-31 12:57:04","2020-10-31 12:57:04");
INSERT INTO permissions VALUES("103","currency","web","2020-11-09 06:23:11","2020-11-09 06:23:11");
INSERT INTO permissions VALUES("104","backup_database","web","2020-11-15 06:16:55","2020-11-15 06:16:55");



CREATE TABLE `pos_setting` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `product_number` int(11) NOT NULL,
  `keybord_active` tinyint(1) NOT NULL,
  `stripe_public_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `pos_setting_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO pos_setting VALUES("1","11","2","1","4","0","pk_test_ITN7KOYiIsHSCQ0UMRcgaYUB","sk_test_TtQQaawhEYRwa3mU9CzttrEy","2018-09-02 09:17:04","2020-04-17 19:59:54");



CREATE TABLE `product_adjustments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adjustment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `product_purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `recieved` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1764 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_purchases VALUES("8","8","277","","40","40","1","6","0","0","0","240","2021-06-01 12:01:00","2021-07-01 12:44:05");
INSERT INTO product_purchases VALUES("9","9","278","","100","100","1","4.3","0","0","0","430","2021-06-01 12:01:00","2021-07-01 12:45:19");
INSERT INTO product_purchases VALUES("10","10","279","","20","20","1","50","0","0","0","1000","2021-06-01 12:01:00","2021-07-01 12:47:12");
INSERT INTO product_purchases VALUES("11","11","280","","20","20","1","35","0","0","0","700","2021-06-01 12:01:00","2021-07-01 12:48:35");
INSERT INTO product_purchases VALUES("12","12","281","","20","20","1","42","0","0","0","840","2021-06-01 12:01:00","2021-07-01 12:49:31");
INSERT INTO product_purchases VALUES("13","13","282","","20","20","1","18","0","0","0","360","2021-06-01 12:01:00","2021-07-01 13:48:36");
INSERT INTO product_purchases VALUES("14","14","283","","20","20","1","120","0","0","0","2400","2021-06-01 12:01:00","2021-07-01 13:49:30");
INSERT INTO product_purchases VALUES("15","15","284","","10","10","1","90","0","0","0","900","2021-06-01 12:01:00","2021-07-01 13:50:16");
INSERT INTO product_purchases VALUES("16","16","285","","20","20","1","12","0","0","0","240","2021-06-01 12:01:00","2021-07-01 13:51:05");
INSERT INTO product_purchases VALUES("17","17","286","","10","10","1","25","0","0","0","250","2021-06-01 12:01:00","2021-07-01 13:51:57");
INSERT INTO product_purchases VALUES("18","18","287","","10","10","1","42","0","0","0","420","2021-06-01 12:01:00","2021-07-01 13:52:31");
INSERT INTO product_purchases VALUES("19","19","288","","10","10","1","52","0","0","0","520","2021-06-01 12:01:00","2021-07-01 13:53:07");
INSERT INTO product_purchases VALUES("20","20","289","","12","12","1","21","0","0","0","252","2021-06-01 12:01:00","2021-07-01 13:53:59");
INSERT INTO product_purchases VALUES("22","22","291","","12","12","1","32","0","0","0","384","2021-06-01 12:01:00","2021-07-01 13:55:11");
INSERT INTO product_purchases VALUES("23","23","292","","12","12","1","33","0","0","0","396","2021-06-01 12:01:00","2021-07-01 13:57:18");
INSERT INTO product_purchases VALUES("25","25","294","","12","12","1","10","0","0","0","120","2021-06-01 12:01:00","2021-07-01 14:06:02");
INSERT INTO product_purchases VALUES("27","27","296","","12","12","1","16","0","0","0","192","2021-06-01 12:01:00","2021-07-01 14:08:08");
INSERT INTO product_purchases VALUES("29","29","298","","12","12","1","19","0","0","0","228","2021-06-01 12:01:00","2021-07-01 14:09:24");
INSERT INTO product_purchases VALUES("30","30","299","","12","12","1","21","0","0","0","252","2021-06-01 12:01:00","2021-07-01 14:10:00");
INSERT INTO product_purchases VALUES("33","33","302","","100","100","1","21","0","0","0","2100","2021-06-01 12:01:00","2021-07-01 14:13:15");
INSERT INTO product_purchases VALUES("34","34","303","","100","100","1","31","0","0","0","3100","2021-06-01 12:01:00","2021-07-01 14:16:28");
INSERT INTO product_purchases VALUES("35","35","304","","100","100","1","29","0","0","0","2900","2021-06-01 12:01:00","2021-07-01 14:17:27");
INSERT INTO product_purchases VALUES("36","36","305","","100","100","1","37","0","0","0","3700","2021-06-01 12:01:00","2021-07-01 14:18:11");
INSERT INTO product_purchases VALUES("37","37","306","","50","50","1","58","0","0","0","2900","2021-06-01 12:01:00","2021-07-01 14:19:06");
INSERT INTO product_purchases VALUES("38","38","307","","50","50","1","29","0","0","0","1450","2021-06-01 12:01:00","2021-07-01 14:19:43");
INSERT INTO product_purchases VALUES("39","39","308","","50","50","1","45","0","0","0","2250","2021-06-01 12:01:00","2021-07-01 14:20:27");
INSERT INTO product_purchases VALUES("42","42","311","","36","36","1","50","0","0","0","1800","2021-06-01 12:01:00","2021-07-01 14:23:21");
INSERT INTO product_purchases VALUES("47","47","316","","12","12","1","35","0","0","0","420","2021-06-01 12:01:00","2021-07-01 14:28:43");
INSERT INTO product_purchases VALUES("48","48","317","","72","72","1","10","0","0","0","720","2021-06-01 12:01:00","2021-07-01 14:29:44");
INSERT INTO product_purchases VALUES("50","50","321","","20","20","1","14","0","0","0","280","2021-06-01 12:01:00","2021-07-01 14:53:46");
INSERT INTO product_purchases VALUES("51","51","322","","12","12","1","38","0","0","0","456","2021-06-01 12:01:00","2021-07-01 14:54:46");
INSERT INTO product_purchases VALUES("52","52","324","","10","10","1","35","0","0","0","350","2021-06-01 12:01:00","2021-07-01 14:58:33");
INSERT INTO product_purchases VALUES("53","53","325","","5","5","1","95","0","0","0","475","2021-06-01 12:01:00","2021-07-01 14:59:13");
INSERT INTO product_purchases VALUES("54","54","326","","1","1","1","250","0","0","0","250","2021-06-01 12:01:00","2021-07-01 14:59:55");
INSERT INTO product_purchases VALUES("55","55","327","","1","1","1","350","0","0","0","350","2021-06-01 12:01:00","2021-07-01 15:00:24");
INSERT INTO product_purchases VALUES("56","56","328","","10","10","1","112","0","0","0","1120","2021-06-01 12:01:00","2021-07-01 15:01:03");
INSERT INTO product_purchases VALUES("57","57","329","","5","5","1","210","0","0","0","1050","2021-06-01 12:01:00","2021-07-01 15:01:44");
INSERT INTO product_purchases VALUES("58","58","330","","5","5","1","125","0","0","0","625","2021-06-01 12:01:00","2021-07-01 15:02:20");
INSERT INTO product_purchases VALUES("59","59","331","","10","10","1","40","0","0","0","400","2021-06-01 12:01:00","2021-07-01 15:03:25");
INSERT INTO product_purchases VALUES("60","60","332","","12","12","1","37","0","0","0","444","2021-06-01 12:01:00","2021-07-01 15:04:33");
INSERT INTO product_purchases VALUES("61","61","333","","12","12","1","75","0","0","0","900","2021-06-01 12:01:00","2021-07-01 15:05:07");
INSERT INTO product_purchases VALUES("62","62","334","","10","10","1","97","0","0","0","970","2021-06-01 12:01:00","2021-07-01 15:05:35");
INSERT INTO product_purchases VALUES("63","63","335","","10","10","1","123","0","0","0","1230","2021-06-01 12:01:00","2021-07-01 15:06:26");
INSERT INTO product_purchases VALUES("64","64","336","","12","12","1","33","0","0","0","396","2021-06-01 12:01:00","2021-07-01 15:07:09");
INSERT INTO product_purchases VALUES("65","65","337","","12","12","1","71","0","0","0","852","2021-06-01 12:01:00","2021-07-01 15:07:41");
INSERT INTO product_purchases VALUES("66","66","338","","10","10","1","88","0","0","0","880","2021-06-01 12:01:00","2021-07-01 15:08:12");
INSERT INTO product_purchases VALUES("67","67","339","","10","10","1","112","0","0","0","1120","2021-06-01 12:01:00","2021-07-01 15:08:50");
INSERT INTO product_purchases VALUES("68","68","344","","2","2","1","950","0","0","0","1900","2021-06-01 12:01:00","2021-07-01 15:09:44");
INSERT INTO product_purchases VALUES("69","69","345","","2","2","1","1050","0","0","0","2100","2021-06-01 12:01:00","2021-07-01 15:10:22");
INSERT INTO product_purchases VALUES("70","70","346","","1","1","1","1950","0","0","0","1950","2021-06-01 12:01:00","2021-07-01 15:10:56");
INSERT INTO product_purchases VALUES("71","71","340","","120","120","1","23","0","0","0","2760","2021-06-01 12:01:00","2021-07-01 15:12:08");
INSERT INTO product_purchases VALUES("72","72","341","","36","36","1","25","0","0","0","900","2021-06-01 12:01:00","2021-07-01 15:13:19");
INSERT INTO product_purchases VALUES("73","73","342","","3","3","1","180","0","0","0","540","2021-06-01 12:01:00","2021-07-01 15:14:22");
INSERT INTO product_purchases VALUES("74","74","343","","3","3","1","210","0","0","0","630","2021-06-01 12:01:00","2021-07-01 15:14:54");
INSERT INTO product_purchases VALUES("75","75","347","","6","6","1","430","0","0","0","2580","2021-06-01 12:01:00","2021-07-01 15:15:43");
INSERT INTO product_purchases VALUES("76","76","348","","3","3","1","330","0","0","0","990","2021-06-01 12:01:00","2021-07-01 15:16:21");
INSERT INTO product_purchases VALUES("77","77","349","","3","3","1","430","0","0","0","1290","2021-06-01 12:01:00","2021-07-01 15:16:55");
INSERT INTO product_purchases VALUES("78","78","350","","2","2","1","550","0","0","0","1100","2021-06-01 12:01:00","2021-07-01 15:17:41");
INSERT INTO product_purchases VALUES("79","79","351","","72","72","1","13","0","0","0","936","2021-06-01 12:01:00","2021-07-01 15:18:41");
INSERT INTO product_purchases VALUES("80","80","352","","60","60","1","13","0","0","0","780","2021-06-01 12:01:00","2021-07-01 15:19:28");
INSERT INTO product_purchases VALUES("81","81","353","","36","36","1","13","0","0","0","468","2021-06-01 12:01:00","2021-07-01 15:20:19");
INSERT INTO product_purchases VALUES("82","82","354","","24","24","1","14","0","0","0","336","2021-06-01 12:01:00","2021-07-01 15:20:53");
INSERT INTO product_purchases VALUES("83","83","355","","24","24","1","15","0","0","0","360","2021-06-01 12:01:00","2021-07-01 15:21:22");
INSERT INTO product_purchases VALUES("84","84","356","","20","20","1","55","0","0","0","1100","2021-06-01 12:01:00","2021-07-01 15:22:13");
INSERT INTO product_purchases VALUES("85","85","357","","60","60","1","12","0","0","0","720","2021-06-01 12:01:00","2021-07-01 15:23:08");
INSERT INTO product_purchases VALUES("86","86","358","","60","60","1","12","0","0","0","720","2021-06-01 12:01:00","2021-07-01 16:13:40");
INSERT INTO product_purchases VALUES("87","87","359","","6","6","1","340","0","0","0","2040","2021-06-01 12:01:00","2021-07-01 16:14:25");
INSERT INTO product_purchases VALUES("88","88","360","","6","6","1","350","0","0","0","2100","2021-06-01 12:01:00","2021-07-01 16:14:56");
INSERT INTO product_purchases VALUES("89","89","361","","6","6","1","360","0","0","0","2160","2021-06-01 12:01:00","2021-07-01 16:16:08");
INSERT INTO product_purchases VALUES("90","90","362","","36","36","1","60","0","0","0","2160","2021-06-01 12:01:00","2021-07-01 16:17:31");
INSERT INTO product_purchases VALUES("91","91","363","","24","24","1","60","0","0","0","1440","2021-06-01 12:01:00","2021-07-01 16:21:07");
INSERT INTO product_purchases VALUES("92","92","364","","36","36","1","18","0","0","0","648","2021-06-01 12:01:00","2021-07-01 16:21:59");
INSERT INTO product_purchases VALUES("93","93","365","","12","12","1","13","0","0","0","156","2021-06-01 12:01:00","2021-07-01 16:22:46");
INSERT INTO product_purchases VALUES("94","94","366","","48","48","1","70","0","0","0","3360","2021-06-01 12:01:00","2021-07-01 16:24:06");
INSERT INTO product_purchases VALUES("95","95","367","","18","18","1","140","0","0","0","2520","2021-06-01 12:01:00","2021-07-01 16:24:54");
INSERT INTO product_purchases VALUES("96","96","368","","24","24","1","14","0","0","0","336","2021-06-01 12:01:00","2021-07-01 16:25:32");
INSERT INTO product_purchases VALUES("97","97","369","","12","12","1","27","0","0","0","324","2021-06-01 12:01:00","2021-07-01 16:26:35");
INSERT INTO product_purchases VALUES("98","98","370","","12","12","1","60","0","0","0","720","2021-06-01 12:01:00","2021-07-01 16:27:08");
INSERT INTO product_purchases VALUES("99","99","371","","2","2","1","120","0","0","0","240","2021-06-01 12:01:00","2021-07-01 16:27:51");
INSERT INTO product_purchases VALUES("100","100","372","","200","200","7","6","0","0","0","1200","2021-06-01 12:01:00","2021-07-01 16:29:59");
INSERT INTO product_purchases VALUES("101","101","373","","160","160","7","9","0","0","0","1440","2021-06-01 12:01:00","2021-07-01 16:32:12");
INSERT INTO product_purchases VALUES("102","102","374","","20","20","8","60","0","0","0","1200","2021-06-01 12:01:00","2021-07-01 16:32:46");
INSERT INTO product_purchases VALUES("103","103","375","","20","20","8","32","0","0","0","640","2021-06-01 12:01:00","2021-07-01 16:33:25");
INSERT INTO product_purchases VALUES("104","104","376","","10","10","8","24","0","0","0","240","2021-06-01 12:01:00","2021-07-01 16:33:56");
INSERT INTO product_purchases VALUES("105","105","377","","10","10","8","24","0","0","0","240","2021-06-01 12:01:00","2021-07-01 16:34:26");
INSERT INTO product_purchases VALUES("106","106","378","","48","48","1","95","0","0","0","4560","2021-06-01 12:01:00","2021-07-01 16:35:28");
INSERT INTO product_purchases VALUES("107","107","379","","18","18","1","190","0","0","0","3420","2021-06-01 12:01:00","2021-07-01 16:36:09");
INSERT INTO product_purchases VALUES("108","108","380","","40","40","1","40","0","0","0","1600","2021-06-01 12:01:00","2021-07-01 16:36:55");
INSERT INTO product_purchases VALUES("109","109","381","","6","6","1","650","0","0","0","3900","2021-06-01 12:01:00","2021-07-01 16:37:33");
INSERT INTO product_purchases VALUES("115","115","307","","2","2","1","29","0","0","0","58","2021-02-07 12:02:00","2021-07-01 17:35:43");
INSERT INTO product_purchases VALUES("117","49","318","","24","24","1","9","0","0","0","216","2021-07-05 12:15:56","2021-07-05 12:15:56");
INSERT INTO product_purchases VALUES("120","115","319","","24","24","1","12","0","0","0","288","2021-06-01 12:01:00","2021-07-05 12:24:57");
INSERT INTO product_purchases VALUES("121","116","915","","12","12","1","38","0","0","0","456","2021-06-01 12:01:00","2021-07-05 12:33:06");
INSERT INTO product_purchases VALUES("122","117","323","","25","25","1","9","0","0","0","225","2021-06-01 12:01:00","2021-07-05 12:34:11");
INSERT INTO product_purchases VALUES("181","119","901","","4","4","6","2480","0","0","0","9920","2021-03-06 12:03:00","2021-07-06 13:39:31");
INSERT INTO product_purchases VALUES("182","119","902","","5","5","6","1180","0","0","0","5900","2021-03-06 12:03:00","2021-07-06 13:39:31");
INSERT INTO product_purchases VALUES("183","119","903","","2","2","6","2900","0","0","0","5800","2021-03-06 12:03:00","2021-07-06 13:39:32");
INSERT INTO product_purchases VALUES("184","119","904","","7","7","3","1000","0","0","0","7000","2021-03-06 12:03:00","2021-07-06 13:39:32");
INSERT INTO product_purchases VALUES("185","120","905","","2","2","6","1460","0","0","0","2920","2021-04-06 12:04:00","2021-07-06 13:43:00");
INSERT INTO product_purchases VALUES("186","121","905","","2","2","6","1450","0","0","0","2900","2021-06-17 12:01:00","2021-07-06 13:48:14");
INSERT INTO product_purchases VALUES("187","121","912","","2","2","3","320","0","0","0","640","2021-06-17 12:01:00","2021-07-06 13:48:14");
INSERT INTO product_purchases VALUES("188","122","923","","5","5","1","20","0","0","0","100","2021-06-17 12:01:00","2021-07-06 13:55:41");
INSERT INTO product_purchases VALUES("189","123","924","","10","10","4","85","0","0","0","850","2021-04-06 12:04:00","2021-07-06 13:58:28");
INSERT INTO product_purchases VALUES("190","123","925","","20","20","4","85","0","0","0","1700","2021-04-06 12:04:00","2021-07-06 13:58:28");
INSERT INTO product_purchases VALUES("191","123","926","","10","10","4","85","0","0","0","850","2021-04-06 12:04:00","2021-07-06 13:58:28");
INSERT INTO product_purchases VALUES("192","124","905","","5","5","6","1450","0","0","0","7250","2021-06-17 12:01:00","2021-07-06 13:59:43");
INSERT INTO product_purchases VALUES("193","125","909","","2","2","3","550","0","0","0","1100","2021-06-17 12:01:00","2021-07-06 14:02:29");
INSERT INTO product_purchases VALUES("194","125","911","","2","2","3","300","0","0","0","600","2021-06-17 12:01:00","2021-07-06 14:02:29");
INSERT INTO product_purchases VALUES("195","126","906","","1","1","6","3600","0","0","0","3600","2021-06-17 12:01:00","2021-07-06 14:06:13");
INSERT INTO product_purchases VALUES("196","126","901","","3","3","6","2480","0","0","0","7440","2021-06-17 12:01:00","2021-07-06 14:06:13");
INSERT INTO product_purchases VALUES("197","126","902","","1","1","6","1180","0","0","0","1180","2021-06-17 12:01:00","2021-07-06 14:06:13");
INSERT INTO product_purchases VALUES("198","126","907","","1","1","6","4600","0","0","0","4600","2021-06-17 12:01:00","2021-07-06 14:06:14");
INSERT INTO product_purchases VALUES("199","126","908","","1","1","12","280","0","0","0","280","2021-06-17 12:01:00","2021-07-06 14:06:14");
INSERT INTO product_purchases VALUES("200","127","901","","2","2","6","2480","0","0","0","4960","2021-06-17 12:01:00","2021-07-06 14:08:01");
INSERT INTO product_purchases VALUES("206","133","906","","2","2","6","3600","0","0","0","7200","2021-06-28 12:06:00","2021-07-07 14:53:23");
INSERT INTO product_purchases VALUES("244","135","417","","20","20","1","44","0","0","0","880","2021-06-01 12:06:00","2021-07-08 12:41:49");
INSERT INTO product_purchases VALUES("245","136","418","","24","24","1","85","0","0","0","2040","2021-05-03 12:05:00","2021-07-08 12:53:28");
INSERT INTO product_purchases VALUES("246","136","419","","24","24","1","96","0","0","0","2304","2021-05-03 12:05:00","2021-07-08 12:53:28");
INSERT INTO product_purchases VALUES("247","136","420","","24","24","1","176","0","0","0","4224","2021-05-03 12:05:00","2021-07-08 12:53:28");
INSERT INTO product_purchases VALUES("248","136","421","","6","6","1","216","0","0","0","1296","2021-05-03 12:05:00","2021-07-08 12:53:28");
INSERT INTO product_purchases VALUES("249","136","422","","12","12","1","232","0","0","0","2784","2021-05-03 12:05:00","2021-07-08 12:53:28");
INSERT INTO product_purchases VALUES("250","136","423","","6","6","1","240","0","0","0","1440","2021-05-03 12:05:00","2021-07-08 12:53:28");
INSERT INTO product_purchases VALUES("251","136","424","","4","4","1","476","0","0","0","1904","2021-05-03 12:05:00","2021-07-08 12:53:28");
INSERT INTO product_purchases VALUES("252","136","425","","3","3","1","607","0","0","0","1821","2021-05-03 12:05:00","2021-07-08 12:53:29");
INSERT INTO product_purchases VALUES("253","136","426","","20","20","1","205","0","0","0","4100","2021-05-03 12:05:00","2021-07-08 12:53:29");
INSERT INTO product_purchases VALUES("254","137","419","","24","24","1","96","0","0","0","2304","2021-06-21 12:06:00","2021-07-08 13:51:33");
INSERT INTO product_purchases VALUES("255","137","418","","24","24","1","85","0","0","0","2040","2021-06-21 12:06:00","2021-07-08 13:51:33");
INSERT INTO product_purchases VALUES("256","137","929","","12","12","1","166","0","0","0","1992","2021-06-21 12:06:00","2021-07-08 13:51:33");
INSERT INTO product_purchases VALUES("257","137","420","","6","6","1","176","0","0","0","1056","2021-06-21 12:06:00","2021-07-08 13:51:33");
INSERT INTO product_purchases VALUES("258","137","930","","12","12","1","305","0","0","0","3660","2021-06-21 12:06:00","2021-07-08 13:51:33");
INSERT INTO product_purchases VALUES("259","138","428","","12","12","1","41.5","0","0","0","498","2021-05-27 12:05:00","2021-07-08 14:16:34");
INSERT INTO product_purchases VALUES("260","138","429","","12","12","1","26","0","0","0","312","2021-05-27 12:05:00","2021-07-08 14:16:34");
INSERT INTO product_purchases VALUES("261","138","430","","24","24","1","24","0","0","0","576","2021-05-27 12:05:00","2021-07-08 14:16:34");
INSERT INTO product_purchases VALUES("262","138","431","","12","12","1","24","0","0","0","288","2021-05-27 12:05:00","2021-07-08 14:16:34");
INSERT INTO product_purchases VALUES("263","138","432","","12","12","1","24","0","0","0","288","2021-05-27 12:05:00","2021-07-08 14:16:34");
INSERT INTO product_purchases VALUES("264","138","433","","24","24","1","26.5","0","0","0","636","2021-05-27 12:05:00","2021-07-08 14:16:35");
INSERT INTO product_purchases VALUES("265","138","434","","24","24","1","29","0","0","0","696","2021-05-27 12:05:00","2021-07-08 14:16:35");
INSERT INTO product_purchases VALUES("266","139","435","","6","6","1","150","0","0","0","900","2021-05-27 12:05:00","2021-07-08 14:20:03");
INSERT INTO product_purchases VALUES("267","139","436","","3","3","1","275","0","0","0","825","2021-05-27 12:05:00","2021-07-08 14:20:03");
INSERT INTO product_purchases VALUES("268","139","437","","3","3","1","320","0","0","0","960","2021-05-27 12:05:00","2021-07-08 14:20:04");
INSERT INTO product_purchases VALUES("269","140","438","","6","6","1","410","0","0","0","2460","2021-05-27 12:05:00","2021-07-08 14:24:19");
INSERT INTO product_purchases VALUES("270","140","439","","6","6","1","580","0","0","0","3480","2021-05-27 12:05:00","2021-07-08 14:24:20");
INSERT INTO product_purchases VALUES("271","140","440","","6","6","1","330","0","0","0","1980","2021-05-27 12:05:00","2021-07-08 14:24:20");
INSERT INTO product_purchases VALUES("272","140","441","","3","3","1","430","0","0","0","1290","2021-05-27 12:05:00","2021-07-08 14:24:20");
INSERT INTO product_purchases VALUES("273","140","442","","3","3","1","660","0","0","0","1980","2021-05-27 12:05:00","2021-07-08 14:24:20");
INSERT INTO product_purchases VALUES("286","144","443","","6","6","1","110","0","0","0","660","2021-05-27 12:05:00","2021-07-08 15:02:34");
INSERT INTO product_purchases VALUES("287","144","444","","6","6","1","126","0","0","0","756","2021-05-27 12:05:00","2021-07-08 15:02:34");
INSERT INTO product_purchases VALUES("288","144","445","","6","6","1","206","0","0","0","1236","2021-05-27 12:05:00","2021-07-08 15:02:34");
INSERT INTO product_purchases VALUES("289","144","446","","3","3","1","256","0","0","0","768","2021-05-27 12:05:00","2021-07-08 15:02:34");
INSERT INTO product_purchases VALUES("290","144","447","","16","16","1","185","0","0","0","2960","2021-05-27 12:05:00","2021-07-08 15:02:35");
INSERT INTO product_purchases VALUES("291","144","448","","6","6","1","370","0","0","0","2220","2021-05-27 12:05:00","2021-07-08 15:02:35");
INSERT INTO product_purchases VALUES("292","144","449","","10","10","1","260","0","0","0","2600","2021-05-27 12:05:00","2021-07-08 15:02:35");
INSERT INTO product_purchases VALUES("293","144","451","","12","12","1","435","0","0","0","5220","2021-05-27 12:05:00","2021-07-08 15:02:35");
INSERT INTO product_purchases VALUES("294","144","452","","12","12","1","390","0","0","0","4680","2021-05-27 12:05:00","2021-07-08 15:02:35");
INSERT INTO product_purchases VALUES("295","144","453","","12","12","1","35","0","0","0","420","2021-05-27 12:05:00","2021-07-08 15:02:35");
INSERT INTO product_purchases VALUES("296","145","450","","20","20","1","520","0","0","0","10400","2021-06-07 12:06:00","2021-07-08 15:07:44");
INSERT INTO product_purchases VALUES("297","146","454","","12","12","1","87","0","0","0","1044","2021-06-03 12:06:00","2021-07-08 15:44:13");
INSERT INTO product_purchases VALUES("298","146","455","","12","12","1","100","0","0","0","1200","2021-06-03 12:06:00","2021-07-08 15:44:13");
INSERT INTO product_purchases VALUES("299","146","456","","6","6","1","119","0","0","0","714","2021-06-03 12:06:00","2021-07-08 15:44:13");
INSERT INTO product_purchases VALUES("300","146","457","","12","12","1","143","0","0","0","1716","2021-06-03 12:06:00","2021-07-08 15:44:13");
INSERT INTO product_purchases VALUES("301","146","458","","8","8","1","200","0","0","0","1600","2021-06-03 12:06:00","2021-07-08 15:44:13");
INSERT INTO product_purchases VALUES("302","146","459","","3","3","1","400","0","0","0","1200","2021-06-03 12:06:00","2021-07-08 15:44:13");
INSERT INTO product_purchases VALUES("303","146","460","","3","3","1","535","0","0","0","1605","2021-06-03 12:06:00","2021-07-08 15:44:13");
INSERT INTO product_purchases VALUES("304","146","461","","15","15","1","410","0","0","0","6150","2021-06-03 12:06:00","2021-07-08 15:44:14");
INSERT INTO product_purchases VALUES("305","146","462","","6","6","1","407","0","0","0","2442","2021-06-03 12:06:00","2021-07-08 15:44:14");
INSERT INTO product_purchases VALUES("306","146","463","","12","12","1","160","0","0","0","1920","2021-06-03 12:06:00","2021-07-08 15:44:14");
INSERT INTO product_purchases VALUES("307","146","464","","5","5","1","570","0","0","0","2850","2021-06-03 12:06:00","2021-07-08 15:44:14");
INSERT INTO product_purchases VALUES("308","146","465","","20","20","1","42","0","0","0","840","2021-06-03 12:06:00","2021-07-08 15:44:14");
INSERT INTO product_purchases VALUES("309","146","466","","10","10","1","60","0","0","0","600","2021-06-03 12:06:00","2021-07-08 15:44:14");
INSERT INTO product_purchases VALUES("310","146","467","","2","2","1","343","0","0","0","686","2021-06-03 12:06:00","2021-07-08 15:44:15");
INSERT INTO product_purchases VALUES("311","146","468","","6","6","1","385","0","0","0","2310","2021-06-03 12:06:00","2021-07-08 15:44:15");
INSERT INTO product_purchases VALUES("312","146","469","","3","3","1","470","0","0","0","1410","2021-06-03 12:06:00","2021-07-08 15:44:15");
INSERT INTO product_purchases VALUES("313","146","470","","2","2","1","560","0","0","0","1120","2021-06-03 12:06:00","2021-07-08 15:44:15");
INSERT INTO product_purchases VALUES("314","147","959","","3","3","1","641","0","0","0","1923","2021-06-21 12:06:00","2021-07-09 12:32:41");
INSERT INTO product_purchases VALUES("315","147","960","","6","6","1","480","0","0","0","2880","2021-06-21 12:06:00","2021-07-09 12:32:41");
INSERT INTO product_purchases VALUES("316","147","961","","6","6","1","334","0","0","0","2004","2021-06-21 12:06:00","2021-07-09 12:32:41");
INSERT INTO product_purchases VALUES("317","148","963","","10","10","1","94.05","0","0","0","940.5","2021-06-07 12:06:00","2021-07-09 15:06:52");
INSERT INTO product_purchases VALUES("318","148","964","","10","10","1","162.45","0","0","0","1624.5","2021-06-07 12:06:00","2021-07-09 15:06:52");
INSERT INTO product_purchases VALUES("319","148","965","","10","10","1","204","0","0","0","2040","2021-06-07 12:06:00","2021-07-09 15:06:52");
INSERT INTO product_purchases VALUES("320","148","966","","10","10","1","243.7","0","0","0","2437","2021-06-07 12:06:00","2021-07-09 15:06:52");
INSERT INTO product_purchases VALUES("321","148","967","","10","10","1","211.6","0","0","0","2116","2021-06-07 12:06:00","2021-07-09 15:06:52");
INSERT INTO product_purchases VALUES("322","148","968","","10","10","1","285","0","0","0","2850","2021-06-07 12:06:00","2021-07-09 15:06:53");
INSERT INTO product_purchases VALUES("323","148","969","","10","10","1","244","0","0","0","2440","2021-06-07 12:06:00","2021-07-09 15:06:53");
INSERT INTO product_purchases VALUES("324","148","970","","6","6","1","406","0","0","0","2436","2021-06-07 12:06:00","2021-07-09 15:06:53");
INSERT INTO product_purchases VALUES("325","148","971","","10","10","1","244","0","0","0","2440","2021-06-07 12:06:00","2021-07-09 15:06:53");
INSERT INTO product_purchases VALUES("326","149","965","","10","10","1","207","0","0","0","2070","2021-06-17 12:06:00","2021-07-09 15:45:23");
INSERT INTO product_purchases VALUES("327","149","970","","12","12","1","410","0","0","0","4920","2021-06-17 12:06:00","2021-07-09 15:45:24");
INSERT INTO product_purchases VALUES("328","149","971","","20","20","1","246","0","0","0","4920","2021-06-17 12:06:00","2021-07-09 15:45:24");
INSERT INTO product_purchases VALUES("329","150","972","","10","10","1","60","0","0","0","600","2021-06-03 12:06:00","2021-07-10 12:14:36");
INSERT INTO product_purchases VALUES("330","150","973","","10","10","1","98","0","0","0","980","2021-06-03 12:06:00","2021-07-10 12:14:36");
INSERT INTO product_purchases VALUES("331","150","974","","10","10","1","139","0","0","0","1390","2021-06-03 12:06:00","2021-07-10 12:14:36");
INSERT INTO product_purchases VALUES("332","150","975","","10","10","1","184","0","0","0","1840","2021-06-03 12:06:00","2021-07-10 12:14:36");
INSERT INTO product_purchases VALUES("333","150","976","","10","10","1","143","0","0","0","1430","2021-06-03 12:06:00","2021-07-10 12:14:36");
INSERT INTO product_purchases VALUES("334","150","977","","20","20","1","225","0","0","0","4500","2021-06-03 12:06:00","2021-07-10 12:14:36");
INSERT INTO product_purchases VALUES("335","150","978","","10","10","1","263","0","0","0","2630","2021-06-03 12:06:00","2021-07-10 12:14:36");
INSERT INTO product_purchases VALUES("336","150","979","","5","5","1","188","0","0","0","940","2021-06-03 12:06:00","2021-07-10 12:14:36");
INSERT INTO product_purchases VALUES("337","150","980","","5","5","1","345","0","0","0","1725","2021-06-03 12:06:00","2021-07-10 12:14:37");
INSERT INTO product_purchases VALUES("338","150","981","","5","5","1","75","0","0","0","375","2021-06-03 12:06:00","2021-07-10 12:14:37");
INSERT INTO product_purchases VALUES("339","150","982","","5","5","1","75","0","0","0","375","2021-06-03 12:06:00","2021-07-10 12:14:37");
INSERT INTO product_purchases VALUES("340","150","983","","120","120","1","20.25","0","0","0","2430","2021-06-03 12:06:00","2021-07-10 12:14:37");
INSERT INTO product_purchases VALUES("341","150","984","","72","72","1","22.5","0","0","0","1620","2021-06-03 12:06:00","2021-07-10 12:14:37");
INSERT INTO product_purchases VALUES("342","150","985","","12","12","1","21","0","0","0","252","2021-06-03 12:06:00","2021-07-10 12:14:37");
INSERT INTO product_purchases VALUES("343","150","986","","12","12","1","26","0","0","0","312","2021-06-03 12:06:00","2021-07-10 12:14:37");
INSERT INTO product_purchases VALUES("344","150","987","","12","12","1","108","0","0","0","1296","2021-06-03 12:06:00","2021-07-10 12:14:38");
INSERT INTO product_purchases VALUES("345","150","988","","40","40","1","28","0","0","0","1120","2021-06-03 12:06:00","2021-07-10 12:14:38");
INSERT INTO product_purchases VALUES("346","150","989","","2","2","1","380","0","0","0","760","2021-06-03 12:06:00","2021-07-10 12:14:38");
INSERT INTO product_purchases VALUES("347","150","990","","2","2","1","472","0","0","0","944","2021-06-03 12:06:00","2021-07-10 12:14:38");
INSERT INTO product_purchases VALUES("348","150","991","","2","2","1","414","0","0","0","828","2021-06-03 12:06:00","2021-07-10 12:14:38");
INSERT INTO product_purchases VALUES("349","151","473","","10","10","1","80","0","0","0","800","2021-06-05 12:06:00","2021-07-10 13:10:10");
INSERT INTO product_purchases VALUES("350","151","474","","10","10","1","134","0","0","0","1340","2021-06-05 12:06:00","2021-07-10 13:10:10");
INSERT INTO product_purchases VALUES("351","151","992","","50","50","10","23","0","0","0","1150","2021-06-05 12:06:00","2021-07-10 13:10:10");
INSERT INTO product_purchases VALUES("352","152","473","","20","20","1","78","0","0","0","1560","2021-06-17 12:06:00","2021-07-10 13:12:50");
INSERT INTO product_purchases VALUES("353","153","1045","","10","10","1","32","0","0","0","320","2021-06-01 12:06:00","2021-07-12 11:11:22");
INSERT INTO product_purchases VALUES("354","153","1046","","10","10","1","32","0","0","0","320","2021-06-01 12:06:00","2021-07-12 11:11:22");
INSERT INTO product_purchases VALUES("392","154","1007","","10","10","1","59","0","0","0","590","2021-06-14 12:06:00","2021-07-12 14:37:42");
INSERT INTO product_purchases VALUES("393","154","1008","","10","10","1","112","0","0","0","1120","2021-06-14 12:06:00","2021-07-12 14:37:42");
INSERT INTO product_purchases VALUES("394","154","1009","","10","10","1","143","0","0","0","1430","2021-06-14 12:06:00","2021-07-12 14:37:42");
INSERT INTO product_purchases VALUES("395","154","1010","","10","10","1","201.5","0","0","0","2015","2021-06-14 12:06:00","2021-07-12 14:37:42");
INSERT INTO product_purchases VALUES("396","154","1011","","10","10","1","242","0","0","0","2420","2021-06-14 12:06:00","2021-07-12 14:37:42");
INSERT INTO product_purchases VALUES("397","154","1012","","10","10","1","186","0","0","0","1860","2021-06-14 12:06:00","2021-07-12 14:37:42");
INSERT INTO product_purchases VALUES("398","154","1013","","10","10","1","232.5","0","0","0","2325","2021-06-14 12:06:00","2021-07-12 14:37:42");
INSERT INTO product_purchases VALUES("399","154","1014","","10","10","1","310","0","0","0","3100","2021-06-14 12:06:00","2021-07-12 14:37:43");
INSERT INTO product_purchases VALUES("400","154","1015","","10","10","1","291.5","0","0","0","2915","2021-06-14 12:06:00","2021-07-12 14:37:43");
INSERT INTO product_purchases VALUES("401","154","1016","","10","10","1","248","0","0","0","2480","2021-06-14 12:06:00","2021-07-12 14:37:43");
INSERT INTO product_purchases VALUES("402","154","1017","","10","10","1","174","0","0","0","1740","2021-06-14 12:06:00","2021-07-12 14:37:43");
INSERT INTO product_purchases VALUES("403","154","1018","","10","10","1","136.5","0","0","0","1365","2021-06-14 12:06:00","2021-07-12 14:37:43");
INSERT INTO product_purchases VALUES("404","154","1019","","10","10","1","310","0","0","0","3100","2021-06-14 12:06:00","2021-07-12 14:37:43");
INSERT INTO product_purchases VALUES("405","154","1031","","10","10","1","199","0","0","0","1990","2021-06-14 12:06:00","2021-07-12 14:37:43");
INSERT INTO product_purchases VALUES("406","154","1032","","10","10","1","166","0","0","0","1660","2021-06-14 12:06:00","2021-07-12 14:37:44");
INSERT INTO product_purchases VALUES("407","155","1020","","10","10","1","115","0","0","0","1150","2021-06-14 12:06:00","2021-07-12 14:44:45");
INSERT INTO product_purchases VALUES("408","155","1021","","10","10","1","177","0","0","0","1770","2021-06-14 12:06:00","2021-07-12 14:44:45");
INSERT INTO product_purchases VALUES("409","155","1022","","10","10","1","239","0","0","0","2390","2021-06-14 12:06:00","2021-07-12 14:44:45");
INSERT INTO product_purchases VALUES("410","155","1023","","10","10","1","301","0","0","0","3010","2021-06-14 12:06:00","2021-07-12 14:44:45");
INSERT INTO product_purchases VALUES("411","155","1024","","10","10","1","279","0","0","0","2790","2021-06-14 12:06:00","2021-07-12 14:44:46");
INSERT INTO product_purchases VALUES("412","155","1025","","10","10","1","341","0","0","0","3410","2021-06-14 12:06:00","2021-07-12 14:44:46");
INSERT INTO product_purchases VALUES("413","155","1026","","10","10","1","372","0","0","0","3720","2021-06-14 12:06:00","2021-07-12 14:44:46");
INSERT INTO product_purchases VALUES("414","155","1027","","10","10","1","403","0","0","0","4030","2021-06-14 12:06:00","2021-07-12 14:44:46");
INSERT INTO product_purchases VALUES("415","155","1028","","10","10","1","236","0","0","0","2360","2021-06-14 12:06:00","2021-07-12 14:44:46");
INSERT INTO product_purchases VALUES("416","155","1029","","10","10","1","248","0","0","0","2480","2021-06-14 12:06:00","2021-07-12 14:44:46");
INSERT INTO product_purchases VALUES("417","155","1030","","6","6","1","403","0","0","0","2418","2021-06-14 12:06:00","2021-07-12 14:44:46");
INSERT INTO product_purchases VALUES("418","156","1033","","1","1","1","1054","0","0","0","1054","2021-06-14 12:06:00","2021-07-12 14:50:49");
INSERT INTO product_purchases VALUES("419","156","1034","","1","1","1","1302","0","0","0","1302","2021-06-14 12:06:00","2021-07-12 14:50:49");
INSERT INTO product_purchases VALUES("420","156","1035","","1","1","1","1612","0","0","0","1612","2021-06-14 12:06:00","2021-07-12 14:50:49");
INSERT INTO product_purchases VALUES("421","156","1036","","1","1","1","2046","0","0","0","2046","2021-06-14 12:06:00","2021-07-12 14:50:50");
INSERT INTO product_purchases VALUES("422","156","1037","","1","1","1","2666","0","0","0","2666","2021-06-14 12:06:00","2021-07-12 14:50:50");
INSERT INTO product_purchases VALUES("423","156","1038","","1","1","1","3534","0","0","0","3534","2021-06-14 12:06:00","2021-07-12 14:50:50");
INSERT INTO product_purchases VALUES("424","156","1039","","1","1","1","496","0","0","0","496","2021-06-14 12:06:00","2021-07-12 14:50:50");
INSERT INTO product_purchases VALUES("425","156","1040","","1","1","1","589","0","0","0","589","2021-06-14 12:06:00","2021-07-12 14:50:50");
INSERT INTO product_purchases VALUES("426","156","1041","","1","1","1","713","0","0","0","713","2021-06-14 12:06:00","2021-07-12 14:50:50");
INSERT INTO product_purchases VALUES("427","156","1042","","1","1","1","806","0","0","0","806","2021-06-14 12:06:00","2021-07-12 14:50:51");
INSERT INTO product_purchases VALUES("428","156","1043","","1","1","1","930","0","0","0","930","2021-06-14 12:06:00","2021-07-12 14:50:51");
INSERT INTO product_purchases VALUES("429","156","1044","","1","1","1","1147","0","0","0","1147","2021-06-14 12:06:00","2021-07-12 14:50:51");
INSERT INTO product_purchases VALUES("430","157","1008","","10","10","1","112","0","0","0","1120","2021-06-17 12:06:00","2021-07-12 14:53:22");
INSERT INTO product_purchases VALUES("431","157","1016","","10","10","1","248","0","0","0","2480","2021-06-17 12:06:00","2021-07-12 14:53:22");
INSERT INTO product_purchases VALUES("432","158","1012","","10","10","1","186","0","0","0","1860","2021-06-21 12:06:00","2021-07-12 14:58:34");
INSERT INTO product_purchases VALUES("433","159","993","","10","10","1","65","0","0","0","650","2021-06-22 12:06:00","2021-07-12 15:12:19");
INSERT INTO product_purchases VALUES("434","159","994","","10","10","1","127","0","0","0","1270","2021-06-22 12:06:00","2021-07-12 15:12:19");
INSERT INTO product_purchases VALUES("435","159","995","","10","10","1","172.5","0","0","0","1725","2021-06-22 12:06:00","2021-07-12 15:12:19");
INSERT INTO product_purchases VALUES("436","159","996","","10","10","1","200","0","0","0","2000","2021-06-22 12:06:00","2021-07-12 15:12:19");
INSERT INTO product_purchases VALUES("437","159","997","","10","10","1","172.5","0","0","0","1725","2021-06-22 12:06:00","2021-07-12 15:12:19");
INSERT INTO product_purchases VALUES("438","159","998","","10","10","1","180.5","0","0","0","1805","2021-06-22 12:06:00","2021-07-12 15:12:20");
INSERT INTO product_purchases VALUES("439","159","999","","10","10","1","407","0","0","0","4070","2021-06-22 12:06:00","2021-07-12 15:12:20");
INSERT INTO product_purchases VALUES("440","159","1000","","10","10","1","252.5","0","0","0","2525","2021-06-22 12:06:00","2021-07-12 15:12:20");
INSERT INTO product_purchases VALUES("441","159","1001","","10","10","1","243","0","0","0","2430","2021-06-22 12:06:00","2021-07-12 15:12:20");
INSERT INTO product_purchases VALUES("442","159","1002","","10","10","1","253","0","0","0","2530","2021-06-22 12:06:00","2021-07-12 15:12:20");
INSERT INTO product_purchases VALUES("443","159","1003","","10","10","1","282","0","0","0","2820","2021-06-22 12:06:00","2021-07-12 15:12:20");
INSERT INTO product_purchases VALUES("444","159","1004","","10","10","1","167","0","0","0","1670","2021-06-22 12:06:00","2021-07-12 15:12:20");
INSERT INTO product_purchases VALUES("445","159","1005","","3","3","1","300","0","0","0","900","2021-06-22 12:06:00","2021-07-12 15:12:20");
INSERT INTO product_purchases VALUES("446","159","1006","","50","50","1","19.8","0","0","0","990","2021-06-22 12:06:00","2021-07-12 15:12:21");
INSERT INTO product_purchases VALUES("447","160","962","","50","50","1","37","0","0","0","1850","2021-06-26 12:06:00","2021-07-12 15:15:45");
INSERT INTO product_purchases VALUES("449","162","1061","","5","5","8","63","0","0","0","315","2021-06-10 12:06:00","2021-07-12 16:09:18");
INSERT INTO product_purchases VALUES("450","162","1062","","5","5","8","66","0","0","0","330","2021-06-10 12:06:00","2021-07-12 16:09:18");
INSERT INTO product_purchases VALUES("451","162","1063","","5","5","8","69","0","0","0","345","2021-06-10 12:06:00","2021-07-12 16:09:18");
INSERT INTO product_purchases VALUES("452","162","1064","","5","5","8","72","0","0","0","360","2021-06-10 12:06:00","2021-07-12 16:09:18");
INSERT INTO product_purchases VALUES("453","162","1065","","5","5","8","80","0","0","0","400","2021-06-10 12:06:00","2021-07-12 16:09:18");
INSERT INTO product_purchases VALUES("454","162","1066","","5","5","8","83","0","0","0","415","2021-06-10 12:06:00","2021-07-12 16:09:18");
INSERT INTO product_purchases VALUES("455","162","1067","","10","10","8","86","0","0","0","860","2021-06-10 12:06:00","2021-07-12 16:09:19");
INSERT INTO product_purchases VALUES("456","162","1068","","10","10","8","89","0","0","0","890","2021-06-10 12:06:00","2021-07-12 16:09:19");
INSERT INTO product_purchases VALUES("457","162","1069","","3","3","8","82","0","0","0","246","2021-06-10 12:06:00","2021-07-12 16:09:19");
INSERT INTO product_purchases VALUES("458","162","1070","","3","3","8","85","0","0","0","255","2021-06-10 12:06:00","2021-07-12 16:09:19");
INSERT INTO product_purchases VALUES("459","162","1071","","3","3","8","88","0","0","0","264","2021-06-10 12:06:00","2021-07-12 16:09:19");
INSERT INTO product_purchases VALUES("460","162","1072","","3","3","8","91","0","0","0","273","2021-06-10 12:06:00","2021-07-12 16:09:20");
INSERT INTO product_purchases VALUES("461","162","1073","","2","2","8","108","0","0","0","216","2021-06-10 12:06:00","2021-07-12 16:09:20");
INSERT INTO product_purchases VALUES("462","162","1074","","2","2","8","113","0","0","0","226","2021-06-10 12:06:00","2021-07-12 16:09:20");
INSERT INTO product_purchases VALUES("463","162","1075","","2","2","8","118","0","0","0","236","2021-06-10 12:06:00","2021-07-12 16:09:20");
INSERT INTO product_purchases VALUES("464","162","1076","","2","2","8","123","0","0","0","246","2021-06-10 12:06:00","2021-07-12 16:09:20");
INSERT INTO product_purchases VALUES("465","162","1077","","5","5","8","56","0","0","0","280","2021-06-10 12:06:00","2021-07-12 16:09:20");
INSERT INTO product_purchases VALUES("466","162","1078","","5","5","8","58","0","0","0","290","2021-06-10 12:06:00","2021-07-12 16:09:20");
INSERT INTO product_purchases VALUES("467","162","1079","","5","5","8","60","0","0","0","300","2021-06-10 12:06:00","2021-07-12 16:09:21");
INSERT INTO product_purchases VALUES("468","162","1080","","5","5","8","62","0","0","0","310","2021-06-10 12:06:00","2021-07-12 16:09:21");
INSERT INTO product_purchases VALUES("509","169","1116","","15","15","7","95","0","0","0","1425","2021-06-26 12:06:00","2021-07-13 10:10:49");
INSERT INTO product_purchases VALUES("510","170","1114","","30","30","7","55","0","0","0","1650","2021-06-20 12:06:00","2021-07-13 10:17:41");
INSERT INTO product_purchases VALUES("511","171","1120","","32","32","7","80","0","0","0","2560","2021-06-21 12:06:00","2021-07-13 10:23:37");
INSERT INTO product_purchases VALUES("512","172","1116","","60","60","7","55","0","0","0","3300","2021-06-19 12:06:00","2021-07-13 10:28:50");
INSERT INTO product_purchases VALUES("513","172","1120","","10","10","7","120","0","0","0","1200","2021-06-19 12:06:00","2021-07-13 10:28:50");
INSERT INTO product_purchases VALUES("514","173","931","","120","120","1","28.5","0","0","0","3420","2021-06-02 12:06:00","2021-07-13 11:01:29");
INSERT INTO product_purchases VALUES("515","173","932","","84","84","1","32.1","0","0","0","2696.4","2021-06-02 12:06:00","2021-07-13 11:01:29");
INSERT INTO product_purchases VALUES("516","173","933","","24","24","1","35","0","0","0","840","2021-06-02 12:06:00","2021-07-13 11:01:29");
INSERT INTO product_purchases VALUES("517","173","934","","12","12","1","28.5","0","0","0","342","2021-06-02 12:06:00","2021-07-13 11:01:30");
INSERT INTO product_purchases VALUES("518","173","935","","24","24","1","156","0","0","0","3744","2021-06-02 12:06:00","2021-07-13 11:01:30");
INSERT INTO product_purchases VALUES("519","174","936","","12","12","1","29","0","0","0","348","2021-06-02 12:06:00","2021-07-13 11:06:43");
INSERT INTO product_purchases VALUES("520","174","937","","12","12","1","35","0","0","0","420","2021-06-02 12:06:00","2021-07-13 11:06:43");
INSERT INTO product_purchases VALUES("521","174","938","","12","12","1","35","0","0","0","420","2021-06-02 12:06:00","2021-07-13 11:06:43");
INSERT INTO product_purchases VALUES("522","174","939","","12","12","1","29","0","0","0","348","2021-06-02 12:06:00","2021-07-13 11:06:43");
INSERT INTO product_purchases VALUES("523","174","940","","12","12","1","75","0","0","0","900","2021-06-02 12:06:00","2021-07-13 11:06:44");
INSERT INTO product_purchases VALUES("524","174","941","","12","12","1","50","0","0","0","600","2021-06-02 12:06:00","2021-07-13 11:06:44");
INSERT INTO product_purchases VALUES("525","174","942","","12","12","1","75","0","0","0","900","2021-06-02 12:06:00","2021-07-13 11:06:44");
INSERT INTO product_purchases VALUES("526","175","943","","144","144","1","15.5","0","0","0","2232","2021-06-02 12:06:00","2021-07-13 11:09:53");
INSERT INTO product_purchases VALUES("527","175","944","","5","5","1","320","0","0","0","1600","2021-06-02 12:06:00","2021-07-13 11:09:53");
INSERT INTO product_purchases VALUES("528","176","956","","12","12","1","93","0","0","0","1116","2021-06-02 12:06:00","2021-07-13 11:11:48");
INSERT INTO product_purchases VALUES("529","176","957","","12","12","1","104","0","0","0","1248","2021-06-02 12:06:00","2021-07-13 11:11:48");
INSERT INTO product_purchases VALUES("530","176","958","","12","12","1","80","0","0","0","960","2021-06-02 12:06:00","2021-07-13 11:11:48");
INSERT INTO product_purchases VALUES("531","177","945","","10","10","1","170","0","0","0","1700","2021-06-02 12:06:00","2021-07-13 12:10:15");
INSERT INTO product_purchases VALUES("532","177","946","","20","20","1","320","0","0","0","6400","2021-06-02 12:06:00","2021-07-13 12:10:15");
INSERT INTO product_purchases VALUES("533","177","947","","20","20","1","395","0","0","0","7900","2021-06-02 12:06:00","2021-07-13 12:10:15");
INSERT INTO product_purchases VALUES("534","177","948","","10","10","1","480","0","0","0","4800","2021-06-02 12:06:00","2021-07-13 12:10:15");
INSERT INTO product_purchases VALUES("535","177","949","","10","10","1","685","0","0","0","6850","2021-06-02 12:06:00","2021-07-13 12:10:16");
INSERT INTO product_purchases VALUES("536","177","950","","6","6","1","385","0","0","0","2310","2021-06-02 12:06:00","2021-07-13 12:10:16");
INSERT INTO product_purchases VALUES("537","177","951","","12","12","1","750","0","0","0","9000","2021-06-02 12:06:00","2021-07-13 12:10:16");
INSERT INTO product_purchases VALUES("538","177","952","","10","10","1","465","0","0","0","4650","2021-06-02 12:06:00","2021-07-13 12:10:16");
INSERT INTO product_purchases VALUES("539","177","953","","20","20","1","505","0","0","0","10100","2021-06-02 12:06:00","2021-07-13 12:10:16");
INSERT INTO product_purchases VALUES("540","177","954","","10","10","1","550","0","0","0","5500","2021-06-02 12:06:00","2021-07-13 12:10:16");
INSERT INTO product_purchases VALUES("541","177","955","","6","6","1","440","0","0","0","2640","2021-06-02 12:06:00","2021-07-13 12:10:17");
INSERT INTO product_purchases VALUES("542","178","1047","","12","12","1","108","0","0","0","1296","2021-06-02 12:06:00","2021-07-13 12:16:46");
INSERT INTO product_purchases VALUES("543","178","1048","","12","12","1","108","0","0","0","1296","2021-06-02 12:06:00","2021-07-13 12:16:46");
INSERT INTO product_purchases VALUES("544","178","1049","","12","12","1","108","0","0","0","1296","2021-06-02 12:06:00","2021-07-13 12:16:46");
INSERT INTO product_purchases VALUES("545","178","1050","","12","12","1","108","0","0","0","1296","2021-06-02 12:06:00","2021-07-13 12:16:47");
INSERT INTO product_purchases VALUES("546","178","1051","","12","12","1","118","0","0","0","1416","2021-06-02 12:06:00","2021-07-13 12:16:47");
INSERT INTO product_purchases VALUES("547","178","1052","","6","6","1","233","0","0","0","1398","2021-06-02 12:06:00","2021-07-13 12:16:47");
INSERT INTO product_purchases VALUES("548","178","1053","","6","6","1","233","0","0","0","1398","2021-06-02 12:06:00","2021-07-13 12:16:47");
INSERT INTO product_purchases VALUES("549","178","1054","","6","6","1","233","0","0","0","1398","2021-06-02 12:06:00","2021-07-13 12:16:47");
INSERT INTO product_purchases VALUES("550","178","1055","","2","2","1","354","0","0","0","708","2021-06-02 12:06:00","2021-07-13 12:16:47");
INSERT INTO product_purchases VALUES("551","178","1056","","2","2","1","390","0","0","0","780","2021-06-02 12:06:00","2021-07-13 12:16:47");
INSERT INTO product_purchases VALUES("552","178","1057","","2","2","1","420","0","0","0","840","2021-06-02 12:06:00","2021-07-13 12:16:47");
INSERT INTO product_purchases VALUES("553","178","1058","","6","6","1","116","0","0","0","696","2021-06-02 12:06:00","2021-07-13 12:16:47");
INSERT INTO product_purchases VALUES("554","179","1059","","24","24","1","30","0","0","0","720","2021-06-02 12:06:00","2021-07-13 12:18:08");
INSERT INTO product_purchases VALUES("555","179","1060","","24","24","1","35","0","0","0","840","2021-06-02 12:06:00","2021-07-13 12:18:08");
INSERT INTO product_purchases VALUES("556","24","293","","12","12","1","7","0","0","0","84","2021-07-14 10:23:33","2021-07-14 10:23:33");
INSERT INTO product_purchases VALUES("557","21","290","","12","12","1","22","0","0","0","264","2021-07-14 10:34:11","2021-07-14 10:34:11");
INSERT INTO product_purchases VALUES("558","26","295","","12","12","1","14","0","0","0","168","2021-07-14 10:37:23","2021-07-14 10:37:23");
INSERT INTO product_purchases VALUES("559","31","300","","12","12","1","23","0","0","0","276","2021-07-14 10:44:09","2021-07-14 10:44:09");
INSERT INTO product_purchases VALUES("560","32","301","","12","12","1","38","0","0","0","456","2021-07-14 10:45:17","2021-07-14 10:45:17");
INSERT INTO product_purchases VALUES("561","40","309","","60","60","1","45","0","0","0","2700","2021-07-14 10:58:58","2021-07-14 10:58:58");
INSERT INTO product_purchases VALUES("562","41","310","","24","24","1","23","0","0","0","552","2021-07-14 11:00:45","2021-07-14 11:00:45");
INSERT INTO product_purchases VALUES("563","43","312","","36","36","1","38","0","0","0","1368","2021-07-14 11:02:30","2021-07-14 11:02:30");
INSERT INTO product_purchases VALUES("564","44","313","","60","60","1","38","0","0","0","2280","2021-07-14 11:03:45","2021-07-14 11:03:45");
INSERT INTO product_purchases VALUES("565","45","314","","24","24","1","17","0","0","0","408","2021-07-14 11:05:25","2021-07-14 11:05:25");
INSERT INTO product_purchases VALUES("566","46","315","","12","12","1","46","0","0","0","552","2021-07-14 11:07:03","2021-07-14 11:07:03");
INSERT INTO product_purchases VALUES("567","112","297","","12","12","1","18","0","0","0","216","2021-07-14 11:18:26","2021-07-14 11:18:26");
INSERT INTO product_purchases VALUES("568","114","320","","20","20","1","38","0","0","0","760","2021-07-14 11:19:43","2021-07-14 11:19:43");
INSERT INTO product_purchases VALUES("569","180","1122","","9","9","1","130","0","0","0","1170","2021-06-03 12:06:00","2021-07-14 16:43:37");
INSERT INTO product_purchases VALUES("570","180","1121","","1","1","1","198","0","0","0","198","2021-06-03 12:06:00","2021-07-14 16:43:37");
INSERT INTO product_purchases VALUES("571","180","1123","","5","5","1","55","0","0","0","275","2021-06-03 12:06:00","2021-07-14 16:43:37");
INSERT INTO product_purchases VALUES("572","180","1124","","20","20","1","75","0","0","0","1500","2021-06-03 12:06:00","2021-07-14 16:43:37");
INSERT INTO product_purchases VALUES("573","180","1125","","20","20","1","86","0","0","0","1720","2021-06-03 12:06:00","2021-07-14 16:43:37");
INSERT INTO product_purchases VALUES("574","180","1126","","10","10","1","40","0","0","0","400","2021-06-03 12:06:00","2021-07-14 16:43:38");
INSERT INTO product_purchases VALUES("575","180","1127","","10","10","1","75","0","0","0","750","2021-06-03 12:06:00","2021-07-14 16:43:38");
INSERT INTO product_purchases VALUES("576","180","1128","","10","10","1","75","0","0","0","750","2021-06-03 12:06:00","2021-07-14 16:43:38");
INSERT INTO product_purchases VALUES("577","180","1129","","50","50","1","7.5","0","0","0","375","2021-06-03 12:06:00","2021-07-14 16:43:38");
INSERT INTO product_purchases VALUES("578","180","1130","","50","50","1","16","0","0","0","800","2021-06-03 12:06:00","2021-07-14 16:43:38");
INSERT INTO product_purchases VALUES("579","180","1131","","50","50","1","14","0","0","0","700","2021-06-03 12:06:00","2021-07-14 16:43:38");
INSERT INTO product_purchases VALUES("580","180","1132","","9","9","1","92","0","0","0","828","2021-06-03 12:06:00","2021-07-14 16:43:38");
INSERT INTO product_purchases VALUES("581","180","1133","","12","12","1","65","0","0","0","780","2021-06-03 12:06:00","2021-07-14 16:43:39");
INSERT INTO product_purchases VALUES("582","180","1134","","5","5","1","38","0","0","0","190","2021-06-03 12:06:00","2021-07-14 16:43:39");
INSERT INTO product_purchases VALUES("583","181","1135","","144","144","1","4","0","0","0","576","2021-06-05 12:06:00","2021-07-14 16:50:22");
INSERT INTO product_purchases VALUES("584","181","1136","","6","6","1","115","0","0","0","690","2021-06-05 12:06:00","2021-07-14 16:50:22");
INSERT INTO product_purchases VALUES("585","181","1137","","1","1","1","2600","0","0","0","2600","2021-06-05 12:06:00","2021-07-14 16:50:22");
INSERT INTO product_purchases VALUES("586","182","1138","","24","24","1","25","0","0","0","600","2021-06-07 12:06:00","2021-07-14 16:56:17");
INSERT INTO product_purchases VALUES("587","182","1139","","24","24","1","29","0","0","0","696","2021-06-07 12:06:00","2021-07-14 16:56:17");
INSERT INTO product_purchases VALUES("588","182","1140","","2","2","4","210","0","0","0","420","2021-06-07 12:06:00","2021-07-14 16:56:17");
INSERT INTO product_purchases VALUES("589","182","1141","","2","2","4","210","0","0","0","420","2021-06-07 12:06:00","2021-07-14 16:56:17");
INSERT INTO product_purchases VALUES("590","182","1142","","2","2","4","210","0","0","0","420","2021-06-07 12:06:00","2021-07-14 16:56:17");
INSERT INTO product_purchases VALUES("591","182","1143","","2","2","4","210","0","0","0","420","2021-06-07 12:06:00","2021-07-14 16:56:17");
INSERT INTO product_purchases VALUES("592","182","1144","","6","6","1","65","0","0","0","390","2021-06-07 12:06:00","2021-07-14 16:56:18");
INSERT INTO product_purchases VALUES("593","182","1145","","6","6","1","76","0","0","0","456","2021-06-07 12:06:00","2021-07-14 16:56:18");
INSERT INTO product_purchases VALUES("594","182","1146","","10","10","1","16","0","0","0","160","2021-06-07 12:06:00","2021-07-14 16:56:18");
INSERT INTO product_purchases VALUES("595","183","1147","","3","3","1","30","0","0","0","90","2021-06-09 12:06:00","2021-07-14 17:07:54");
INSERT INTO product_purchases VALUES("596","183","1148","","3","3","1","35","0","0","0","105","2021-06-09 12:06:00","2021-07-14 17:07:54");
INSERT INTO product_purchases VALUES("597","183","1149","","3","3","1","40","0","0","0","120","2021-06-09 12:06:00","2021-07-14 17:07:55");
INSERT INTO product_purchases VALUES("598","183","1150","","3","3","1","50","0","0","0","150","2021-06-09 12:06:00","2021-07-14 17:07:55");
INSERT INTO product_purchases VALUES("599","183","1151","","3","3","1","55","0","0","0","165","2021-06-09 12:06:00","2021-07-14 17:07:55");
INSERT INTO product_purchases VALUES("600","183","1152","","3","3","1","57","0","0","0","171","2021-06-09 12:06:00","2021-07-14 17:07:55");
INSERT INTO product_purchases VALUES("601","183","1153","","3","3","1","65","0","0","0","195","2021-06-09 12:06:00","2021-07-14 17:07:55");
INSERT INTO product_purchases VALUES("602","183","1154","","3","3","1","78","0","0","0","234","2021-06-09 12:06:00","2021-07-14 17:07:55");
INSERT INTO product_purchases VALUES("603","183","1155","","3","3","1","85","0","0","0","255","2021-06-09 12:06:00","2021-07-14 17:07:55");
INSERT INTO product_purchases VALUES("604","183","1156","","3","3","1","95","0","0","0","285","2021-06-09 12:06:00","2021-07-14 17:07:55");
INSERT INTO product_purchases VALUES("605","183","1157","","3","3","1","100","0","0","0","300","2021-06-09 12:06:00","2021-07-14 17:07:56");
INSERT INTO product_purchases VALUES("606","183","1158","","3","3","1","110","0","0","0","330","2021-06-09 12:06:00","2021-07-14 17:07:56");
INSERT INTO product_purchases VALUES("607","183","1159","","3","3","1","115","0","0","0","345","2021-06-09 12:06:00","2021-07-14 17:07:56");
INSERT INTO product_purchases VALUES("608","183","1160","","20","20","1","6.5","0","0","0","130","2021-06-09 12:06:00","2021-07-14 17:07:56");
INSERT INTO product_purchases VALUES("609","183","1161","","20","20","1","7.5","0","0","0","150","2021-06-09 12:06:00","2021-07-14 17:07:56");
INSERT INTO product_purchases VALUES("610","183","1162","","12","12","14","8.5","0","0","0","102","2021-06-09 12:06:00","2021-07-14 17:07:56");
INSERT INTO product_purchases VALUES("611","183","1163","","12","12","14","12.5","0","0","0","150","2021-06-09 12:06:00","2021-07-14 17:07:56");
INSERT INTO product_purchases VALUES("612","183","1164","","12","12","14","15","0","0","0","180","2021-06-09 12:06:00","2021-07-14 17:07:56");
INSERT INTO product_purchases VALUES("613","183","1165","","12","12","1","8.5","0","0","0","102","2021-06-09 12:06:00","2021-07-14 17:07:56");
INSERT INTO product_purchases VALUES("614","183","1166","","12","12","1","12","0","0","0","144","2021-06-09 12:06:00","2021-07-14 17:07:57");
INSERT INTO product_purchases VALUES("615","183","1167","","2","2","1","240","0","0","0","480","2021-06-09 12:06:00","2021-07-14 17:07:57");
INSERT INTO product_purchases VALUES("616","184","1168","","6","6","1","75","0","0","0","450","2021-06-09 12:06:00","2021-07-14 17:13:51");
INSERT INTO product_purchases VALUES("617","184","1169","","6","6","1","142","0","0","0","852","2021-06-09 12:06:00","2021-07-14 17:13:51");
INSERT INTO product_purchases VALUES("618","184","1170","","12","12","1","30","0","0","0","360","2021-06-09 12:06:00","2021-07-14 17:13:51");
INSERT INTO product_purchases VALUES("619","184","1171","","20","20","1","10","0","0","0","200","2021-06-09 12:06:00","2021-07-14 17:13:51");
INSERT INTO product_purchases VALUES("620","184","1172","","6","6","1","54","0","0","0","324","2021-06-09 12:06:00","2021-07-14 17:13:52");
INSERT INTO product_purchases VALUES("621","184","1173","","6","6","1","67.5","0","0","0","405","2021-06-09 12:06:00","2021-07-14 17:13:52");
INSERT INTO product_purchases VALUES("622","184","1174","","6","6","1","81","0","0","0","486","2021-06-09 12:06:00","2021-07-14 17:13:52");
INSERT INTO product_purchases VALUES("623","184","1175","","6","6","1","108","0","0","0","648","2021-06-09 12:06:00","2021-07-14 17:13:52");
INSERT INTO product_purchases VALUES("624","184","1176","","6","6","1","135","0","0","0","810","2021-06-09 12:06:00","2021-07-14 17:13:52");
INSERT INTO product_purchases VALUES("625","184","1177","","6","6","4","110","0","0","0","660","2021-06-09 12:06:00","2021-07-14 17:13:52");
INSERT INTO product_purchases VALUES("626","184","1178","","4","4","11","100","0","0","0","400","2021-06-09 12:06:00","2021-07-14 17:13:52");
INSERT INTO product_purchases VALUES("627","185","1179","","3.611","3.611","4","126","0","0","0","454.99","2021-06-09 12:06:00","2021-07-14 17:18:13");
INSERT INTO product_purchases VALUES("628","186","1179","","25","25","4","112","0","0","0","2800","2021-06-11 12:06:00","2021-07-14 17:20:57");
INSERT INTO product_purchases VALUES("629","186","1180","","2","2","4","100","0","0","0","200","2021-06-11 12:06:00","2021-07-14 17:20:57");
INSERT INTO product_purchases VALUES("630","187","1198","","6","6","1","120","0","0","0","720","2021-06-13 12:06:00","2021-07-15 02:12:07");
INSERT INTO product_purchases VALUES("631","187","1199","","6","6","1","75","0","0","0","450","2021-06-13 12:06:00","2021-07-15 02:12:07");
INSERT INTO product_purchases VALUES("632","187","1201","","2","2","1","215","0","0","0","430","2021-06-13 12:06:00","2021-07-15 02:12:08");
INSERT INTO product_purchases VALUES("633","187","1200","","2","2","1","195","0","0","0","390","2021-06-13 12:06:00","2021-07-15 02:12:08");
INSERT INTO product_purchases VALUES("634","187","1202","","12","12","1","55","0","0","0","660","2021-06-13 12:06:00","2021-07-15 02:12:08");
INSERT INTO product_purchases VALUES("635","187","1203","","12","12","1","37.5","0","0","0","450","2021-06-13 12:06:00","2021-07-15 02:12:08");
INSERT INTO product_purchases VALUES("636","188","1188","","12","12","1","20","0","0","0","240","2021-06-14 12:06:00","2021-07-15 02:18:58");
INSERT INTO product_purchases VALUES("637","188","1189","","12","12","1","27.5","0","0","0","330","2021-06-14 12:06:00","2021-07-15 02:18:58");
INSERT INTO product_purchases VALUES("638","188","1190","","12","12","1","36","0","0","0","432","2021-06-14 12:06:00","2021-07-15 02:18:58");
INSERT INTO product_purchases VALUES("639","188","1191","","12","12","1","63","0","0","0","756","2021-06-14 12:06:00","2021-07-15 02:18:58");
INSERT INTO product_purchases VALUES("640","188","1130","","50","50","1","14","0","0","0","700","2021-06-14 12:06:00","2021-07-15 02:18:58");
INSERT INTO product_purchases VALUES("641","188","1192","","6","6","1","155","0","0","0","930","2021-06-14 12:06:00","2021-07-15 02:18:58");
INSERT INTO product_purchases VALUES("642","188","1193","","6","6","1","155","0","0","0","930","2021-06-14 12:06:00","2021-07-15 02:18:59");
INSERT INTO product_purchases VALUES("643","188","1194","","6","6","1","155","0","0","0","930","2021-06-14 12:06:00","2021-07-15 02:18:59");
INSERT INTO product_purchases VALUES("644","188","1195","","12","12","1","10","0","0","0","120","2021-06-14 12:06:00","2021-07-15 02:18:59");
INSERT INTO product_purchases VALUES("645","188","1196","","15","15","1","55","0","0","0","825","2021-06-14 12:06:00","2021-07-15 02:18:59");
INSERT INTO product_purchases VALUES("646","188","1197","","50","50","1","11","0","0","0","550","2021-06-14 12:06:00","2021-07-15 02:18:59");
INSERT INTO product_purchases VALUES("660","189","1204","","72","72","1","11","0","0","0","792","2021-07-15 02:31:31","2021-07-15 02:31:31");
INSERT INTO product_purchases VALUES("661","189","1205","","24","24","1","21","0","0","0","504","2021-07-15 02:31:31","2021-07-15 02:31:31");
INSERT INTO product_purchases VALUES("662","189","1146","","20","20","1","16","0","0","0","320","2021-07-15 02:31:31","2021-07-15 02:31:31");
INSERT INTO product_purchases VALUES("663","189","1206","","12","12","1","30","0","0","0","360","2021-07-15 02:31:31","2021-07-15 02:31:31");
INSERT INTO product_purchases VALUES("664","189","1207","","6","6","1","160","0","0","0","960","2021-07-15 02:31:31","2021-07-15 02:31:31");
INSERT INTO product_purchases VALUES("665","189","1208","","13","13","1","58","0","0","0","754","2021-07-15 02:31:31","2021-07-15 02:31:31");
INSERT INTO product_purchases VALUES("666","189","1209","","106","106","1","5.5","0","0","0","583","2021-07-15 02:31:31","2021-07-15 02:31:31");
INSERT INTO product_purchases VALUES("667","189","1210","","12","12","1","32.5","0","0","0","390","2021-07-15 02:31:31","2021-07-15 02:31:31");
INSERT INTO product_purchases VALUES("668","189","1211","","12","12","1","36","0","0","0","432","2021-07-15 02:31:32","2021-07-15 02:31:32");
INSERT INTO product_purchases VALUES("669","189","1212","","12","12","1","37.5","0","0","0","450","2021-07-15 02:31:32","2021-07-15 02:31:32");
INSERT INTO product_purchases VALUES("670","189","1213","","30","30","2","50","0","0","0","1500","2021-07-15 02:31:32","2021-07-15 02:31:32");
INSERT INTO product_purchases VALUES("671","189","1214","","30","30","2","50","0","0","0","1500","2021-07-15 02:31:32","2021-07-15 02:31:32");
INSERT INTO product_purchases VALUES("672","189","1215","","30","30","2","50","0","0","0","1500","2021-07-15 02:31:32","2021-07-15 02:31:32");
INSERT INTO product_purchases VALUES("673","190","1216","","2","2","1","250","0","0","0","500","2021-06-17 12:06:00","2021-07-15 02:39:56");
INSERT INTO product_purchases VALUES("674","190","1217","","10","10","1","45","0","0","0","450","2021-06-17 12:06:00","2021-07-15 02:39:56");
INSERT INTO product_purchases VALUES("675","190","1218","","10","10","1","45","0","0","0","450","2021-06-17 12:06:00","2021-07-15 02:39:56");
INSERT INTO product_purchases VALUES("676","190","1219","","10","10","1","45","0","0","0","450","2021-06-17 12:06:00","2021-07-15 02:39:56");
INSERT INTO product_purchases VALUES("677","190","1220","","10","10","1","45","0","0","0","450","2021-06-17 12:06:00","2021-07-15 02:39:56");
INSERT INTO product_purchases VALUES("678","190","1221","","2","2","1","170","0","0","0","340","2021-06-17 12:06:00","2021-07-15 02:39:57");
INSERT INTO product_purchases VALUES("679","190","1222","","6","6","1","65","0","0","0","390","2021-06-17 12:06:00","2021-07-15 02:39:57");
INSERT INTO product_purchases VALUES("680","190","1186","","50","50","4","39","0","0","0","1950","2021-06-17 12:06:00","2021-07-15 02:39:57");
INSERT INTO product_purchases VALUES("681","191","1223","","10","10","12","155","0","0","0","1550","2021-06-20 12:06:00","2021-07-15 02:43:06");
INSERT INTO product_purchases VALUES("682","192","1224","","40","40","1","20","0","0","0","800","2021-06-24 12:06:00","2021-07-15 02:45:31");
INSERT INTO product_purchases VALUES("683","193","1179","","25","25","4","112","0","0","0","2800","2021-06-29 12:06:00","2021-07-15 02:47:55");
INSERT INTO product_purchases VALUES("684","194","1181","","50","50","4","17.2","0","0","0","860","2021-06-13 12:06:00","2021-07-15 04:10:51");
INSERT INTO product_purchases VALUES("685","194","1182","","25","25","4","28","0","0","0","700","2021-06-13 12:06:00","2021-07-15 04:10:51");
INSERT INTO product_purchases VALUES("686","194","1183","","40","40","4","25","0","0","0","1000","2021-06-13 12:06:00","2021-07-15 04:10:51");
INSERT INTO product_purchases VALUES("687","195","1184","","25","25","4","112","0","0","0","2800","2021-06-14 12:06:00","2021-07-15 04:15:49");
INSERT INTO product_purchases VALUES("688","195","1185","","25","25","4","112","0","0","0","2800","2021-06-14 12:06:00","2021-07-15 04:15:49");
INSERT INTO product_purchases VALUES("689","195","1186","","60","60","4","35","0","0","0","2100","2021-06-14 12:06:00","2021-07-15 04:15:49");
INSERT INTO product_purchases VALUES("690","195","1187","","20","20","4","25","0","0","0","500","2021-06-14 12:06:00","2021-07-15 04:15:49");
INSERT INTO product_purchases VALUES("691","195","1183","","40","40","4","25","0","0","0","1000","2021-06-14 12:06:00","2021-07-15 04:15:49");
INSERT INTO product_purchases VALUES("692","196","1205","","24","24","1","17","0","0","0","408","2021-06-23 12:06:00","2021-07-15 04:37:44");
INSERT INTO product_purchases VALUES("693","196","1246","","24","24","1","7","0","0","0","168","2021-06-23 12:06:00","2021-07-15 04:37:44");
INSERT INTO product_purchases VALUES("709","198","1263","","100","100","1","8.5","0","0","0","850","2021-06-01 12:06:00","2021-07-15 10:05:03");
INSERT INTO product_purchases VALUES("710","198","1264","","100","100","1","11","0","0","0","1100","2021-06-01 12:06:00","2021-07-15 10:05:03");
INSERT INTO product_purchases VALUES("711","198","1265","","50","50","1","13","0","0","0","650","2021-06-01 12:06:00","2021-07-15 10:05:03");
INSERT INTO product_purchases VALUES("712","199","1262","","1","1","1","15800","0","0","0","15800","2021-06-01 12:06:00","2021-07-15 10:08:32");
INSERT INTO product_purchases VALUES("713","200","1262","","5","5","1","95","0","0","0","475","2021-06-01 12:06:00","2021-07-15 10:10:25");
INSERT INTO product_purchases VALUES("714","201","1228","","7","7","1","460","0","0","0","3220","2021-06-03 12:06:00","2021-07-15 10:27:27");
INSERT INTO product_purchases VALUES("715","201","1226","","1","1","1","1920","0","0","0","1920","2021-06-03 12:06:00","2021-07-15 10:27:28");
INSERT INTO product_purchases VALUES("716","201","1227","","1","1","1","1510","0","0","0","1510","2021-06-03 12:06:00","2021-07-15 10:27:28");
INSERT INTO product_purchases VALUES("717","201","1229","","1","1","1","790","0","0","0","790","2021-06-03 12:06:00","2021-07-15 10:27:28");
INSERT INTO product_purchases VALUES("718","201","1230","","1","1","1","1090","0","0","0","1090","2021-06-03 12:06:00","2021-07-15 10:27:28");
INSERT INTO product_purchases VALUES("719","201","1232","","5","5","1","31","0","0","0","155","2021-06-03 12:06:00","2021-07-15 10:27:28");
INSERT INTO product_purchases VALUES("720","201","1233","","5","5","1","38","0","0","0","190","2021-06-03 12:06:00","2021-07-15 10:27:28");
INSERT INTO product_purchases VALUES("721","201","1234","","6","6","1","40","0","0","0","240","2021-06-03 12:06:00","2021-07-15 10:27:28");
INSERT INTO product_purchases VALUES("722","201","1235","","10","10","1","185","0","0","0","1850","2021-06-03 12:06:00","2021-07-15 10:27:28");
INSERT INTO product_purchases VALUES("723","201","1236","","10","10","1","245","0","0","0","2450","2021-06-03 12:06:00","2021-07-15 10:27:29");
INSERT INTO product_purchases VALUES("724","201","1237","","10","10","1","120","0","0","0","1200","2021-06-03 12:06:00","2021-07-15 10:27:29");
INSERT INTO product_purchases VALUES("725","201","1238","","10","10","1","155","0","0","0","1550","2021-06-03 12:06:00","2021-07-15 10:27:29");
INSERT INTO product_purchases VALUES("726","201","1239","","10","10","1","130","0","0","0","1300","2021-06-03 12:06:00","2021-07-15 10:27:29");
INSERT INTO product_purchases VALUES("727","201","1240","","6","6","1","140","0","0","0","840","2021-06-03 12:06:00","2021-07-15 10:27:29");
INSERT INTO product_purchases VALUES("728","201","1241","","1","1","1","162","0","0","0","162","2021-06-03 12:06:00","2021-07-15 10:27:29");
INSERT INTO product_purchases VALUES("729","201","1242","","10","10","1","175","0","0","0","1750","2021-06-03 12:06:00","2021-07-15 10:27:30");
INSERT INTO product_purchases VALUES("730","201","1243","","24","24","1","20.5","0","0","0","492","2021-06-03 12:06:00","2021-07-15 10:27:30");
INSERT INTO product_purchases VALUES("731","201","1244","","24","24","1","22","0","0","0","528","2021-06-03 12:06:00","2021-07-15 10:27:30");
INSERT INTO product_purchases VALUES("732","201","1245","","24","24","1","33","0","0","0","792","2021-06-03 12:06:00","2021-07-15 10:27:30");
INSERT INTO product_purchases VALUES("733","202","1227","","4","4","1","1530","0","0","0","6120","2021-06-04 12:06:00","2021-07-15 10:38:20");
INSERT INTO product_purchases VALUES("734","202","1231","","2","2","1","780","0","0","0","1560","2021-06-04 12:06:00","2021-07-15 10:38:20");
INSERT INTO product_purchases VALUES("735","202","1266","","10","10","1","445","0","0","0","4450","2021-06-04 12:06:00","2021-07-15 10:38:20");
INSERT INTO product_purchases VALUES("736","203","1267","","1","1","1","3300","0","0","0","3300","2021-05-25 12:05:00","2021-07-16 02:36:23");
INSERT INTO product_purchases VALUES("737","203","1268","","1","1","1","3400","0","0","0","3400","2021-05-25 12:05:00","2021-07-16 02:36:23");
INSERT INTO product_purchases VALUES("738","203","1269","","1","1","1","4000","0","0","0","4000","2021-05-25 12:05:00","2021-07-16 02:36:23");
INSERT INTO product_purchases VALUES("739","203","1270","","2","2","1","2900","0","0","0","5800","2021-05-25 12:05:00","2021-07-16 02:36:24");
INSERT INTO product_purchases VALUES("740","203","1271","","2","2","1","3300","0","0","0","6600","2021-05-25 12:05:00","2021-07-16 02:36:24");
INSERT INTO product_purchases VALUES("741","203","1272","","2","2","1","2800","0","0","0","5600","2021-05-25 12:05:00","2021-07-16 02:36:24");
INSERT INTO product_purchases VALUES("742","203","1273","","2","2","1","4000","0","0","0","8000","2021-05-25 12:05:00","2021-07-16 02:36:24");
INSERT INTO product_purchases VALUES("743","203","1274","","1","1","1","4600","0","0","0","4600","2021-05-25 12:05:00","2021-07-16 02:36:24");
INSERT INTO product_purchases VALUES("744","203","1275","","1","1","1","550","0","0","0","550","2021-05-25 12:05:00","2021-07-16 02:36:24");
INSERT INTO product_purchases VALUES("745","203","1276","","1","1","1","750","0","0","0","750","2021-05-25 12:05:00","2021-07-16 02:36:24");
INSERT INTO product_purchases VALUES("746","204","1269","","2","2","1","4000","0","0","0","8000","2021-06-21 12:06:00","2021-07-16 02:41:51");
INSERT INTO product_purchases VALUES("747","204","1267","","1","1","1","3500","0","0","0","3500","2021-06-21 12:06:00","2021-07-16 02:41:52");
INSERT INTO product_purchases VALUES("748","205","1275","","10","10","1","560","0","0","0","5600","2021-06-24 12:06:00","2021-07-16 02:44:59");
INSERT INTO product_purchases VALUES("749","206","634","","15","15","1","794","0","0","0","11910","2021-05-28 12:05:00","2021-07-16 03:13:39");
INSERT INTO product_purchases VALUES("750","206","635","","20","20","1","1371","0","0","0","27420","2021-05-28 12:05:00","2021-07-16 03:13:39");
INSERT INTO product_purchases VALUES("751","206","636","","2","2","1","1864","0","0","0","3728","2021-05-28 12:05:00","2021-07-16 03:13:40");
INSERT INTO product_purchases VALUES("752","206","637","","2","2","1","1719","0","0","0","3438","2021-05-28 12:05:00","2021-07-16 03:13:40");
INSERT INTO product_purchases VALUES("753","206","638","","2","2","1","1920","0","0","0","3840","2021-05-28 12:05:00","2021-07-16 03:13:40");
INSERT INTO product_purchases VALUES("754","206","639","","2","2","1","2120","0","0","0","4240","2021-05-28 12:05:00","2021-07-16 03:13:40");
INSERT INTO product_purchases VALUES("755","206","640","","1","1","1","5305","0","0","0","5305","2021-05-28 12:05:00","2021-07-16 03:13:40");
INSERT INTO product_purchases VALUES("756","206","641","","1","1","1","6723","0","0","0","6723","2021-05-28 12:05:00","2021-07-16 03:13:40");
INSERT INTO product_purchases VALUES("757","206","642","","2","2","1","5870","0","0","0","11740","2021-05-28 12:05:00","2021-07-16 03:13:41");
INSERT INTO product_purchases VALUES("759","208","226","","380","380","2","146","0","0","0","55480","2021-06-18 12:06:00","2021-07-16 04:03:12");
INSERT INTO product_purchases VALUES("760","208","232","","40","40","2","170","0","0","0","6800","2021-06-18 12:06:00","2021-07-16 04:03:12");
INSERT INTO product_purchases VALUES("761","209","856","","17","17","1","350","0","0","0","5950","2021-06-03 12:06:00","2021-07-16 04:06:51");
INSERT INTO product_purchases VALUES("762","210","1278","","1","1","1","14200","0","0","0","14200","2021-06-15 12:06:00","2021-07-16 04:14:28");
INSERT INTO product_purchases VALUES("763","211","1278","","1","1","1","14000","0","0","0","14000","2021-06-09 12:06:00","2021-07-16 04:18:05");
INSERT INTO product_purchases VALUES("764","212","1279","","1","1","1","25500","0","0","0","25500","2021-06-27 12:06:00","2021-07-16 04:26:21");
INSERT INTO product_purchases VALUES("765","213","70","","120","120","2","75.76","0","0","0","9091.2","2021-06-23 12:06:00","2021-07-16 04:50:26");
INSERT INTO product_purchases VALUES("766","213","529","","1","1","1","239","0","0","0","239","2021-06-23 12:06:00","2021-07-16 04:50:26");
INSERT INTO product_purchases VALUES("767","213","481","","6","6","1","106.89","0","0","0","641.34","2021-06-23 12:06:00","2021-07-16 04:50:27");
INSERT INTO product_purchases VALUES("768","213","1280","","10","10","1","144.43","0","0","0","1444.3","2021-06-23 12:06:00","2021-07-16 04:50:27");
INSERT INTO product_purchases VALUES("769","213","1281","","10","10","1","144.43","0","0","0","1444.3","2021-06-23 12:06:00","2021-07-16 04:50:27");
INSERT INTO product_purchases VALUES("770","213","493","","1","1","1","208","0","0","0","208","2021-06-23 12:06:00","2021-07-16 04:50:27");
INSERT INTO product_purchases VALUES("771","213","505","","6","6","1","181.15","0","0","0","1086.9","2021-06-23 12:06:00","2021-07-16 04:50:27");
INSERT INTO product_purchases VALUES("772","213","517","","6","6","1","183.5","0","0","0","1101","2021-06-23 12:06:00","2021-07-16 04:50:27");
INSERT INTO product_purchases VALUES("773","213","475","","4","4","1","144.43","0","0","0","577.72","2021-06-23 12:06:00","2021-07-16 04:50:27");
INSERT INTO product_purchases VALUES("774","214","1282","","7","7","1","760","0","0","0","5320","2021-06-28 12:06:00","2021-07-16 04:57:43");
INSERT INTO product_purchases VALUES("775","215","1283","","1","1","1","3800","0","0","0","3800","2021-06-28 12:06:00","2021-07-16 05:03:44");
INSERT INTO product_purchases VALUES("776","215","1284","","1","1","1","1600","0","0","0","1600","2021-06-28 12:06:00","2021-07-16 05:03:45");
INSERT INTO product_purchases VALUES("777","215","1285","","1","1","1","2800","0","0","0","2800","2021-06-28 12:06:00","2021-07-16 05:03:45");
INSERT INTO product_purchases VALUES("778","216","1286","","24","24","1","3.5","0","0","0","84","2021-06-01 12:06:00","2021-07-18 03:35:14");
INSERT INTO product_purchases VALUES("779","216","1287","","48","48","1","4.5","0","0","0","216","2021-06-01 12:06:00","2021-07-18 03:35:14");
INSERT INTO product_purchases VALUES("780","216","1288","","48","48","1","5","0","0","0","240","2021-06-01 12:06:00","2021-07-18 03:35:14");
INSERT INTO product_purchases VALUES("781","216","1289","","24","24","1","6.25","0","0","0","150","2021-06-01 12:06:00","2021-07-18 03:35:14");
INSERT INTO product_purchases VALUES("782","216","1290","","24","24","1","7","0","0","0","168","2021-06-01 12:06:00","2021-07-18 03:35:14");
INSERT INTO product_purchases VALUES("783","216","1291","","24","24","1","10","0","0","0","240","2021-06-01 12:06:00","2021-07-18 03:35:14");
INSERT INTO product_purchases VALUES("784","216","1292","","60","60","1","11","0","0","0","660","2021-06-01 12:06:00","2021-07-18 03:35:14");
INSERT INTO product_purchases VALUES("785","216","1293","","24","24","1","20","0","0","0","480","2021-06-01 12:06:00","2021-07-18 03:35:15");
INSERT INTO product_purchases VALUES("786","216","1294","","24","24","1","3.5","0","0","0","84","2021-06-01 12:06:00","2021-07-18 03:35:15");
INSERT INTO product_purchases VALUES("787","216","1295","","48","48","1","4","0","0","0","192","2021-06-01 12:06:00","2021-07-18 03:35:15");
INSERT INTO product_purchases VALUES("788","216","1296","","48","48","1","5","0","0","0","240","2021-06-01 12:06:00","2021-07-18 03:35:15");
INSERT INTO product_purchases VALUES("789","216","1297","","24","24","1","7","0","0","0","168","2021-06-01 12:06:00","2021-07-18 03:35:15");
INSERT INTO product_purchases VALUES("790","216","1298","","24","24","1","8","0","0","0","192","2021-06-01 12:06:00","2021-07-18 03:35:15");
INSERT INTO product_purchases VALUES("791","216","1299","","60","60","1","14","0","0","0","840","2021-06-01 12:06:00","2021-07-18 03:35:15");
INSERT INTO product_purchases VALUES("792","216","1300","","20","20","1","32","0","0","0","640","2021-06-01 12:06:00","2021-07-18 03:35:16");
INSERT INTO product_purchases VALUES("793","216","1301","","12","12","1","125","0","0","0","1500","2021-06-01 12:06:00","2021-07-18 03:35:16");
INSERT INTO product_purchases VALUES("794","217","1302","","12","12","1","95","0","0","0","1140","2021-06-01 12:06:00","2021-07-18 03:54:25");
INSERT INTO product_purchases VALUES("795","217","1303","","12","12","1","75","0","0","0","900","2021-06-01 12:06:00","2021-07-18 03:54:26");
INSERT INTO product_purchases VALUES("796","217","1304","","12","12","1","40","0","0","0","480","2021-06-01 12:06:00","2021-07-18 03:54:26");
INSERT INTO product_purchases VALUES("797","217","1305","","12","12","1","62","0","0","0","744","2021-06-01 12:06:00","2021-07-18 03:54:26");
INSERT INTO product_purchases VALUES("798","217","1306","","12","12","1","38","0","0","0","456","2021-06-01 12:06:00","2021-07-18 03:54:26");
INSERT INTO product_purchases VALUES("799","217","1307","","12","12","1","70","0","0","0","840","2021-06-01 12:06:00","2021-07-18 03:54:26");
INSERT INTO product_purchases VALUES("800","217","820","","6","6","1","90","0","0","0","540","2021-06-01 12:06:00","2021-07-18 03:54:26");
INSERT INTO product_purchases VALUES("801","217","821","","12","12","1","50","0","0","0","600","2021-06-01 12:06:00","2021-07-18 03:54:26");
INSERT INTO product_purchases VALUES("802","217","822","","24","24","1","38","0","0","0","912","2021-06-01 12:06:00","2021-07-18 03:54:27");
INSERT INTO product_purchases VALUES("803","217","874","","6","6","1","290","0","0","0","1740","2021-06-01 12:06:00","2021-07-18 03:54:27");
INSERT INTO product_purchases VALUES("804","217","1311","","6","6","1","90","0","0","0","540","2021-06-01 12:06:00","2021-07-18 03:54:27");
INSERT INTO product_purchases VALUES("805","217","1312","","6","6","1","210","0","0","0","1260","2021-06-01 12:06:00","2021-07-18 03:54:27");
INSERT INTO product_purchases VALUES("806","217","1313","","100","100","1","3.5","0","0","0","350","2021-06-01 12:06:00","2021-07-18 03:54:27");
INSERT INTO product_purchases VALUES("807","217","1314","","200","200","1","7.5","0","0","0","1500","2021-06-01 12:06:00","2021-07-18 03:54:27");
INSERT INTO product_purchases VALUES("808","217","1336","","25","25","1","20","0","0","0","500","2021-06-01 12:06:00","2021-07-18 03:54:28");
INSERT INTO product_purchases VALUES("809","217","1337","","25","25","1","23","0","0","0","575","2021-06-01 12:06:00","2021-07-18 03:54:28");
INSERT INTO product_purchases VALUES("810","218","1315","","15","15","1","17","0","0","0","255","2021-06-01 12:06:00","2021-07-18 04:04:03");
INSERT INTO product_purchases VALUES("811","218","1316","","6","6","1","165","0","0","0","990","2021-06-01 12:06:00","2021-07-18 04:04:03");
INSERT INTO product_purchases VALUES("812","218","1317","","6","6","1","165","0","0","0","990","2021-06-01 12:06:00","2021-07-18 04:04:04");
INSERT INTO product_purchases VALUES("813","218","1318","","6","6","1","235","0","0","0","1410","2021-06-01 12:06:00","2021-07-18 04:04:04");
INSERT INTO product_purchases VALUES("814","218","1319","","6","6","1","115","0","0","0","690","2021-06-01 12:06:00","2021-07-18 04:04:04");
INSERT INTO product_purchases VALUES("815","218","1320","","6","6","1","75","0","0","0","450","2021-06-01 12:06:00","2021-07-18 04:04:04");
INSERT INTO product_purchases VALUES("816","218","1321","","3","3","1","95","0","0","0","285","2021-06-01 12:06:00","2021-07-18 04:04:04");
INSERT INTO product_purchases VALUES("817","218","831","","3","3","1","190","0","0","0","570","2021-06-01 12:06:00","2021-07-18 04:04:04");
INSERT INTO product_purchases VALUES("818","218","830","","3","3","1","290","0","0","0","870","2021-06-01 12:06:00","2021-07-18 04:04:05");
INSERT INTO product_purchases VALUES("819","218","833","","6","6","1","140","0","0","0","840","2021-06-01 12:06:00","2021-07-18 04:04:05");
INSERT INTO product_purchases VALUES("820","218","832","","6","6","1","190","0","0","0","1140","2021-06-01 12:06:00","2021-07-18 04:04:05");
INSERT INTO product_purchases VALUES("821","218","869","","3","3","1","430","0","0","0","1290","2021-06-01 12:06:00","2021-07-18 04:04:05");
INSERT INTO product_purchases VALUES("822","218","870","","3","3","1","200","0","0","0","600","2021-06-01 12:06:00","2021-07-18 04:04:05");
INSERT INTO product_purchases VALUES("823","218","1326","","250","250","1","14","0","0","0","3500","2021-06-01 12:06:00","2021-07-18 04:04:05");
INSERT INTO product_purchases VALUES("824","218","1327","","3","3","1","95","0","0","0","285","2021-06-01 12:06:00","2021-07-18 04:04:05");
INSERT INTO product_purchases VALUES("825","218","1328","","3","3","1","95","0","0","0","285","2021-06-01 12:06:00","2021-07-18 04:04:05");
INSERT INTO product_purchases VALUES("826","219","1329","","3","3","1","63","0","0","0","189","2021-06-01 12:06:00","2021-07-18 04:10:19");
INSERT INTO product_purchases VALUES("827","219","1330","","3","3","1","70","0","0","0","210","2021-06-01 12:06:00","2021-07-18 04:10:19");
INSERT INTO product_purchases VALUES("828","219","1331","","3","3","1","53","0","0","0","159","2021-06-01 12:06:00","2021-07-18 04:10:19");
INSERT INTO product_purchases VALUES("829","219","1332","","100","100","1","5","0","0","0","500","2021-06-01 12:06:00","2021-07-18 04:10:20");
INSERT INTO product_purchases VALUES("830","219","1338","","200","200","1","0.85","0","0","0","170","2021-06-01 12:06:00","2021-07-18 04:10:20");
INSERT INTO product_purchases VALUES("831","219","1339","","100","100","1","3","0","0","0","300","2021-06-01 12:06:00","2021-07-18 04:10:20");
INSERT INTO product_purchases VALUES("832","219","1333","","20","20","1","13.5","0","0","0","270","2021-06-01 12:06:00","2021-07-18 04:10:20");
INSERT INTO product_purchases VALUES("833","219","1334","","20","20","1","8","0","0","0","160","2021-06-01 12:06:00","2021-07-18 04:10:20");
INSERT INTO product_purchases VALUES("834","219","1335","","10","10","1","24","0","0","0","240","2021-06-01 12:06:00","2021-07-18 04:10:20");
INSERT INTO product_purchases VALUES("835","219","1340","","4","4","1","435","0","0","0","1740","2021-06-01 12:06:00","2021-07-18 04:10:21");
INSERT INTO product_purchases VALUES("836","219","836","","10","10","1","35","0","0","0","350","2021-06-01 12:06:00","2021-07-18 04:10:21");
INSERT INTO product_purchases VALUES("837","219","837","","6","6","1","67","0","0","0","402","2021-06-01 12:06:00","2021-07-18 04:10:21");
INSERT INTO product_purchases VALUES("838","220","890","","8","8","1","680","0","0","0","5440","2021-06-01 12:06:00","2021-07-18 04:21:02");
INSERT INTO product_purchases VALUES("839","220","891","","4","4","1","780","0","0","0","3120","2021-06-01 12:06:00","2021-07-18 04:21:02");
INSERT INTO product_purchases VALUES("840","220","883","","4","4","1","560","0","0","0","2240","2021-06-01 12:06:00","2021-07-18 04:21:02");
INSERT INTO product_purchases VALUES("841","220","887","","2","2","1","780","0","0","0","1560","2021-06-01 12:06:00","2021-07-18 04:21:02");
INSERT INTO product_purchases VALUES("842","220","888","","5","5","1","780","0","0","0","3900","2021-06-01 12:06:00","2021-07-18 04:21:02");
INSERT INTO product_purchases VALUES("843","220","884","","12","12","1","370","0","0","0","4440","2021-06-01 12:06:00","2021-07-18 04:21:03");
INSERT INTO product_purchases VALUES("844","220","1341","","4","4","1","600","0","0","0","2400","2021-06-01 12:06:00","2021-07-18 04:21:03");
INSERT INTO product_purchases VALUES("845","220","885","","4","4","1","545","0","0","0","2180","2021-06-01 12:06:00","2021-07-18 04:21:03");
INSERT INTO product_purchases VALUES("846","220","886","","3","3","1","545","0","0","0","1635","2021-06-01 12:06:00","2021-07-18 04:21:03");
INSERT INTO product_purchases VALUES("847","220","882","","2","2","1","500","0","0","0","1000","2021-06-01 12:06:00","2021-07-18 04:21:03");
INSERT INTO product_purchases VALUES("848","220","889","","20","20","1","110","0","0","0","2200","2021-06-01 12:06:00","2021-07-18 04:21:03");
INSERT INTO product_purchases VALUES("849","220","879","","6","6","1","250","0","0","0","1500","2021-06-01 12:06:00","2021-07-18 04:21:04");
INSERT INTO product_purchases VALUES("850","220","878","","4","4","1","330","0","0","0","1320","2021-06-01 12:06:00","2021-07-18 04:21:04");
INSERT INTO product_purchases VALUES("851","220","880","","12","12","1","190","0","0","0","2280","2021-06-01 12:06:00","2021-07-18 04:21:04");
INSERT INTO product_purchases VALUES("852","221","1342","","2","2","1","550","0","0","0","1100","2021-06-01 12:06:00","2021-07-18 04:27:52");
INSERT INTO product_purchases VALUES("853","221","1343","","10","10","1","250","0","0","0","2500","2021-06-01 12:06:00","2021-07-18 04:27:52");
INSERT INTO product_purchases VALUES("854","221","1344","","10","10","1","280","0","0","0","2800","2021-06-01 12:06:00","2021-07-18 04:27:52");
INSERT INTO product_purchases VALUES("855","221","1345","","10","10","1","290","0","0","0","2900","2021-06-01 12:06:00","2021-07-18 04:27:53");
INSERT INTO product_purchases VALUES("856","221","1346","","10","10","1","390","0","0","0","3900","2021-06-01 12:06:00","2021-07-18 04:27:53");
INSERT INTO product_purchases VALUES("857","221","1347","","6","6","1","200","0","0","0","1200","2021-06-01 12:06:00","2021-07-18 04:27:53");
INSERT INTO product_purchases VALUES("858","221","1348","","6","6","1","115","0","0","0","690","2021-06-01 12:06:00","2021-07-18 04:27:53");
INSERT INTO product_purchases VALUES("859","221","1349","","6","6","1","390","0","0","0","2340","2021-06-01 12:06:00","2021-07-18 04:27:53");
INSERT INTO product_purchases VALUES("860","221","1350","","20","20","14","20","0","0","0","400","2021-06-01 12:06:00","2021-07-18 04:27:53");
INSERT INTO product_purchases VALUES("861","221","1351","","20","20","14","28","0","0","0","560","2021-06-01 12:06:00","2021-07-18 04:27:54");
INSERT INTO product_purchases VALUES("862","221","1352","","6","6","1","290","0","0","0","1740","2021-06-01 12:06:00","2021-07-18 04:27:54");
INSERT INTO product_purchases VALUES("863","221","875","","10","10","1","175","0","0","0","1750","2021-06-01 12:06:00","2021-07-18 04:27:54");
INSERT INTO product_purchases VALUES("864","221","855","","24","24","1","10","0","0","0","240","2021-06-01 12:06:00","2021-07-18 04:27:54");
INSERT INTO product_purchases VALUES("865","221","857","","10","10","1","30","0","0","0","300","2021-06-01 12:06:00","2021-07-18 04:27:54");
INSERT INTO product_purchases VALUES("866","221","841","","3","3","1","300","0","0","0","900","2021-06-01 12:06:00","2021-07-18 04:27:54");
INSERT INTO product_purchases VALUES("867","222","1353","","6","6","1","220","0","0","0","1320","2021-06-01 12:06:00","2021-07-18 04:33:42");
INSERT INTO product_purchases VALUES("868","222","1354","","6","6","1","220","0","0","0","1320","2021-06-01 12:06:00","2021-07-18 04:33:42");
INSERT INTO product_purchases VALUES("869","222","1355","","6","6","1","185","0","0","0","1110","2021-06-01 12:06:00","2021-07-18 04:33:42");
INSERT INTO product_purchases VALUES("870","222","1356","","6","6","1","160","0","0","0","960","2021-06-01 12:06:00","2021-07-18 04:33:42");
INSERT INTO product_purchases VALUES("871","222","1357","","6","6","1","300","0","0","0","1800","2021-06-01 12:06:00","2021-07-18 04:33:43");
INSERT INTO product_purchases VALUES("872","222","1358","","6","6","1","185","0","0","0","1110","2021-06-01 12:06:00","2021-07-18 04:33:43");
INSERT INTO product_purchases VALUES("873","222","1359","","6","6","1","320","0","0","0","1920","2021-06-01 12:06:00","2021-07-18 04:33:43");
INSERT INTO product_purchases VALUES("874","222","1360","","6","6","1","115","0","0","0","690","2021-06-01 12:06:00","2021-07-18 04:33:43");
INSERT INTO product_purchases VALUES("875","222","1361","","50","50","10","5.5","0","0","0","275","2021-06-01 12:06:00","2021-07-18 04:33:43");
INSERT INTO product_purchases VALUES("876","222","1362","","100","100","10","5","0","0","0","500","2021-06-01 12:06:00","2021-07-18 04:33:43");
INSERT INTO product_purchases VALUES("877","222","1363","","55","55","1","24","0","0","0","1320","2021-06-01 12:06:00","2021-07-18 04:33:43");
INSERT INTO product_purchases VALUES("878","222","1364","","40","40","1","26","0","0","0","1040","2021-06-01 12:06:00","2021-07-18 04:33:44");
INSERT INTO product_purchases VALUES("879","222","1365","","100","100","10","12.5","0","0","0","1250","2021-06-01 12:06:00","2021-07-18 04:33:44");
INSERT INTO product_purchases VALUES("880","222","1366","","7","7","1","340","0","0","0","2380","2021-06-01 12:06:00","2021-07-18 04:33:44");
INSERT INTO product_purchases VALUES("881","222","1367","","2","2","1","360","0","0","0","720","2021-06-01 12:06:00","2021-07-18 04:33:44");
INSERT INTO product_purchases VALUES("882","223","1368","","6","6","1","190","0","0","0","1140","2021-06-01 12:06:00","2021-07-18 04:36:05");
INSERT INTO product_purchases VALUES("883","223","1369","","6","6","1","130","0","0","0","780","2021-06-01 12:06:00","2021-07-18 04:36:05");
INSERT INTO product_purchases VALUES("884","223","1370","","6","6","1","210","0","0","0","1260","2021-06-01 12:06:00","2021-07-18 04:36:06");
INSERT INTO product_purchases VALUES("885","223","1315","","10","10","1","17","0","0","0","170","2021-06-01 12:06:00","2021-07-18 04:36:06");
INSERT INTO product_purchases VALUES("886","223","870","","1","1","1","200","0","0","0","200","2021-06-01 12:06:00","2021-07-18 04:36:06");
INSERT INTO product_purchases VALUES("887","223","1371","","3","3","14","85","0","0","0","255","2021-06-01 12:06:00","2021-07-18 04:36:06");
INSERT INTO product_purchases VALUES("888","224","741","","20","20","1","25","0","0","0","500","2021-06-03 12:06:00","2021-07-18 07:30:39");
INSERT INTO product_purchases VALUES("889","224","1372","","30","30","1","19","0","0","0","570","2021-06-03 12:06:00","2021-07-18 07:30:39");
INSERT INTO product_purchases VALUES("890","224","1373","","30","30","1","16","0","0","0","480","2021-06-03 12:06:00","2021-07-18 07:30:39");
INSERT INTO product_purchases VALUES("891","224","1374","","6","6","1","190","0","0","0","1140","2021-06-03 12:06:00","2021-07-18 07:30:39");
INSERT INTO product_purchases VALUES("892","225","738","","10","10","1","30","0","0","0","300","2021-06-05 12:06:00","2021-07-18 07:53:25");
INSERT INTO product_purchases VALUES("893","225","737","","10","10","1","40","0","0","0","400","2021-06-05 12:06:00","2021-07-18 07:53:25");
INSERT INTO product_purchases VALUES("894","225","741","","25","25","1","25","0","0","0","625","2021-06-05 12:06:00","2021-07-18 07:53:25");
INSERT INTO product_purchases VALUES("895","225","742","","15","15","1","12","0","0","0","180","2021-06-05 12:06:00","2021-07-18 07:53:25");
INSERT INTO product_purchases VALUES("896","225","740","","10","10","1","56","0","0","0","560","2021-06-05 12:06:00","2021-07-18 07:53:25");
INSERT INTO product_purchases VALUES("897","225","739","","30","30","1","16","0","0","0","480","2021-06-05 12:06:00","2021-07-18 07:53:25");
INSERT INTO product_purchases VALUES("898","225","744","","6","6","1","90","0","0","0","540","2021-06-05 12:06:00","2021-07-18 07:53:26");
INSERT INTO product_purchases VALUES("899","225","746","","20","20","1","22","0","0","0","440","2021-06-05 12:06:00","2021-07-18 07:53:26");
INSERT INTO product_purchases VALUES("900","225","745","","20","20","1","30","0","0","0","600","2021-06-05 12:06:00","2021-07-18 07:53:26");
INSERT INTO product_purchases VALUES("901","225","749","","50","50","1","18","0","0","0","900","2021-06-05 12:06:00","2021-07-18 07:53:26");
INSERT INTO product_purchases VALUES("902","225","750","","40","40","1","12","0","0","0","480","2021-06-05 12:06:00","2021-07-18 07:53:26");
INSERT INTO product_purchases VALUES("903","225","748","","20","20","1","46","0","0","0","920","2021-06-05 12:06:00","2021-07-18 07:53:26");
INSERT INTO product_purchases VALUES("904","225","747","","50","50","1","14","0","0","0","700","2021-06-05 12:06:00","2021-07-18 07:53:26");
INSERT INTO product_purchases VALUES("905","225","752","","6","6","1","55","0","0","0","330","2021-06-05 12:06:00","2021-07-18 07:53:26");
INSERT INTO product_purchases VALUES("906","225","786","","10","10","1","14","0","0","0","140","2021-06-05 12:06:00","2021-07-18 07:53:27");
INSERT INTO product_purchases VALUES("907","225","801","","10","10","1","35","0","0","0","350","2021-06-05 12:06:00","2021-07-18 07:53:27");
INSERT INTO product_purchases VALUES("908","226","797","","10","10","1","35","0","0","0","350","2021-06-05 12:06:00","2021-07-18 09:18:30");
INSERT INTO product_purchases VALUES("909","226","793","","6","6","1","35","0","0","0","210","2021-06-05 12:06:00","2021-07-18 09:18:30");
INSERT INTO product_purchases VALUES("910","226","1375","","20","20","1","22","0","0","0","440","2021-06-05 12:06:00","2021-07-18 09:18:30");
INSERT INTO product_purchases VALUES("911","226","755","","20","20","1","17","0","0","0","340","2021-06-05 12:06:00","2021-07-18 09:18:30");
INSERT INTO product_purchases VALUES("912","226","754","","20","20","1","16","0","0","0","320","2021-06-05 12:06:00","2021-07-18 09:18:30");
INSERT INTO product_purchases VALUES("913","226","753","","20","20","1","24","0","0","0","480","2021-06-05 12:06:00","2021-07-18 09:18:30");
INSERT INTO product_purchases VALUES("914","226","757","","20","20","1","16","0","0","0","320","2021-06-05 12:06:00","2021-07-18 09:18:30");
INSERT INTO product_purchases VALUES("915","226","756","","10","10","1","46","0","0","0","460","2021-06-05 12:06:00","2021-07-18 09:18:31");
INSERT INTO product_purchases VALUES("916","226","758","","30","30","1","8.5","0","0","0","255","2021-06-05 12:06:00","2021-07-18 09:18:31");
INSERT INTO product_purchases VALUES("917","226","680","","10","10","1","28","0","0","0","280","2021-06-05 12:06:00","2021-07-18 09:18:31");
INSERT INTO product_purchases VALUES("918","226","679","","10","10","1","18","0","0","0","180","2021-06-05 12:06:00","2021-07-18 09:18:31");
INSERT INTO product_purchases VALUES("919","226","681","","10","10","1","18","0","0","0","180","2021-06-05 12:06:00","2021-07-18 09:18:31");
INSERT INTO product_purchases VALUES("920","226","684","","10","10","1","18","0","0","0","180","2021-06-05 12:06:00","2021-07-18 09:18:31");
INSERT INTO product_purchases VALUES("921","226","682","","10","10","1","58","0","0","0","580","2021-06-05 12:06:00","2021-07-18 09:18:31");
INSERT INTO product_purchases VALUES("922","226","1376","","10","10","1","32","0","0","0","320","2021-06-05 12:06:00","2021-07-18 09:18:32");
INSERT INTO product_purchases VALUES("923","226","1377","","10","10","1","33","0","0","0","330","2021-06-05 12:06:00","2021-07-18 09:18:32");
INSERT INTO product_purchases VALUES("924","227","1378","","20","20","1","25","0","0","0","500","2021-06-05 12:06:00","2021-07-18 09:34:44");
INSERT INTO product_purchases VALUES("925","227","1380","","20","20","1","48","0","0","0","960","2021-06-05 12:06:00","2021-07-18 09:34:44");
INSERT INTO product_purchases VALUES("926","227","1379","","20","20","1","45","0","0","0","900","2021-06-05 12:06:00","2021-07-18 09:34:44");
INSERT INTO product_purchases VALUES("927","227","1381","","20","20","1","45","0","0","0","900","2021-06-05 12:06:00","2021-07-18 09:34:44");
INSERT INTO product_purchases VALUES("928","227","673","","20","20","1","18","0","0","0","360","2021-06-05 12:06:00","2021-07-18 09:34:44");
INSERT INTO product_purchases VALUES("929","227","672","","20","20","1","26","0","0","0","520","2021-06-05 12:06:00","2021-07-18 09:34:45");
INSERT INTO product_purchases VALUES("930","227","674","","20","20","1","9","0","0","0","180","2021-06-05 12:06:00","2021-07-18 09:34:45");
INSERT INTO product_purchases VALUES("931","227","677","","20","20","1","12","0","0","0","240","2021-06-05 12:06:00","2021-07-18 09:34:45");
INSERT INTO product_purchases VALUES("932","227","675","","20","20","1","40","0","0","0","800","2021-06-05 12:06:00","2021-07-18 09:34:45");
INSERT INTO product_purchases VALUES("933","227","687","","10","10","1","77","0","0","0","770","2021-06-05 12:06:00","2021-07-18 09:34:45");
INSERT INTO product_purchases VALUES("934","227","686","","10","10","1","80","0","0","0","800","2021-06-05 12:06:00","2021-07-18 09:34:45");
INSERT INTO product_purchases VALUES("935","227","691","","10","10","1","43","0","0","0","430","2021-06-05 12:06:00","2021-07-18 09:34:45");
INSERT INTO product_purchases VALUES("936","227","688","","10","10","1","26","0","0","0","260","2021-06-05 12:06:00","2021-07-18 09:34:45");
INSERT INTO product_purchases VALUES("937","227","689","","5","5","1","170","0","0","0","850","2021-06-05 12:06:00","2021-07-18 09:34:46");
INSERT INTO product_purchases VALUES("938","227","685","","10","10","1","85","0","0","0","850","2021-06-05 12:06:00","2021-07-18 09:34:46");
INSERT INTO product_purchases VALUES("939","227","678","","10","10","1","46","0","0","0","460","2021-06-05 12:06:00","2021-07-18 09:34:46");
INSERT INTO product_purchases VALUES("940","228","692","","5","5","1","135","0","0","0","675","2021-06-05 12:06:00","2021-07-18 09:44:28");
INSERT INTO product_purchases VALUES("941","228","1382","","6","6","1","105","0","0","0","630","2021-06-05 12:06:00","2021-07-18 09:44:28");
INSERT INTO product_purchases VALUES("942","228","1383","","6","6","1","105","0","0","0","630","2021-06-05 12:06:00","2021-07-18 09:44:28");
INSERT INTO product_purchases VALUES("943","228","840","","3","3","1","250","0","0","0","750","2021-06-05 12:06:00","2021-07-18 09:44:29");
INSERT INTO product_purchases VALUES("944","228","839","","2","2","1","640","0","0","0","1280","2021-06-05 12:06:00","2021-07-18 09:44:29");
INSERT INTO product_purchases VALUES("954","229","846","","6","6","1","85","0","0","0","510","2021-07-18 10:08:05","2021-07-18 10:08:05");
INSERT INTO product_purchases VALUES("955","229","847","","3","3","1","320","0","0","0","960","2021-07-18 10:08:05","2021-07-18 10:08:05");
INSERT INTO product_purchases VALUES("956","229","848","","2","2","1","780","0","0","0","1560","2021-07-18 10:08:05","2021-07-18 10:08:05");
INSERT INTO product_purchases VALUES("957","229","1386","","3","3","1","350","0","0","0","1050","2021-07-18 10:08:05","2021-07-18 10:08:05");
INSERT INTO product_purchases VALUES("958","229","1387","","3","3","1","250","0","0","0","750","2021-07-18 10:08:06","2021-07-18 10:08:06");
INSERT INTO product_purchases VALUES("959","229","1348","","12","12","1","115","0","0","0","1380","2021-07-18 10:08:06","2021-07-18 10:08:06");
INSERT INTO product_purchases VALUES("960","229","1300","","20","20","1","32","0","0","0","640","2021-07-18 10:08:06","2021-07-18 10:08:06");
INSERT INTO product_purchases VALUES("961","229","842","","10","10","1","175","0","0","0","1750","2021-07-18 10:08:06","2021-07-18 10:08:06");
INSERT INTO product_purchases VALUES("962","229","853","","200","200","2","57.5","0","0","0","11500","2021-07-18 10:08:06","2021-07-18 10:08:06");
INSERT INTO product_purchases VALUES("963","229","1324","","10","10","1","20","0","0","0","200","2021-07-18 10:08:06","2021-07-18 10:08:06");
INSERT INTO product_purchases VALUES("964","230","1388","","12","12","1","7.5","0","0","0","90","2021-06-10 12:06:00","2021-07-18 10:20:49");
INSERT INTO product_purchases VALUES("965","230","1389","","12","12","1","14","0","0","0","168","2021-06-10 12:06:00","2021-07-18 10:20:49");
INSERT INTO product_purchases VALUES("966","230","1390","","12","12","1","14","0","0","0","168","2021-06-10 12:06:00","2021-07-18 10:20:49");
INSERT INTO product_purchases VALUES("967","230","1391","","12","12","1","43","0","0","0","516","2021-06-10 12:06:00","2021-07-18 10:20:49");
INSERT INTO product_purchases VALUES("968","230","1392","","12","12","1","43","0","0","0","516","2021-06-10 12:06:00","2021-07-18 10:20:49");
INSERT INTO product_purchases VALUES("969","230","1393","","6","6","1","50","0","0","0","300","2021-06-10 12:06:00","2021-07-18 10:20:49");
INSERT INTO product_purchases VALUES("970","230","1394","","6","6","1","45","0","0","0","270","2021-06-10 12:06:00","2021-07-18 10:20:49");
INSERT INTO product_purchases VALUES("971","230","629","","6","6","1","55","0","0","0","330","2021-06-10 12:06:00","2021-07-18 10:20:50");
INSERT INTO product_purchases VALUES("972","230","630","","6","6","1","35","0","0","0","210","2021-06-10 12:06:00","2021-07-18 10:20:50");
INSERT INTO product_purchases VALUES("973","230","631","","6","6","1","45","0","0","0","270","2021-06-10 12:06:00","2021-07-18 10:20:50");
INSERT INTO product_purchases VALUES("974","230","632","","6","6","1","45","0","0","0","270","2021-06-10 12:06:00","2021-07-18 10:20:50");
INSERT INTO product_purchases VALUES("975","230","633","","6","6","1","45","0","0","0","270","2021-06-10 12:06:00","2021-07-18 10:20:50");
INSERT INTO product_purchases VALUES("976","230","611","","5","5","1","400","0","0","0","2000","2021-06-10 12:06:00","2021-07-18 10:20:50");
INSERT INTO product_purchases VALUES("977","230","608","","5","5","1","260","0","0","0","1300","2021-06-10 12:06:00","2021-07-18 10:20:50");
INSERT INTO product_purchases VALUES("978","231","607","","5","5","1","300","0","0","0","1500","2021-06-10 12:06:00","2021-07-18 10:29:25");
INSERT INTO product_purchases VALUES("979","231","626","","5","5","1","300","0","0","0","1500","2021-06-10 12:06:00","2021-07-18 10:29:25");
INSERT INTO product_purchases VALUES("980","231","1395","","10","10","1","70","0","0","0","700","2021-06-10 12:06:00","2021-07-18 10:29:25");
INSERT INTO product_purchases VALUES("981","231","610","","6","6","1","100","0","0","0","600","2021-06-10 12:06:00","2021-07-18 10:29:25");
INSERT INTO product_purchases VALUES("982","231","780","","20","20","1","23","0","0","0","460","2021-06-10 12:06:00","2021-07-18 10:29:25");
INSERT INTO product_purchases VALUES("983","231","779","","20","20","1","27","0","0","0","540","2021-06-10 12:06:00","2021-07-18 10:29:25");
INSERT INTO product_purchases VALUES("984","231","1397","","20","20","1","70","0","0","0","1400","2021-06-10 12:06:00","2021-07-18 10:29:26");
INSERT INTO product_purchases VALUES("985","231","1398","","20","20","1","35","0","0","0","700","2021-06-10 12:06:00","2021-07-18 10:29:26");
INSERT INTO product_purchases VALUES("986","232","778","","2","2","1","315","0","0","0","630","2021-06-12 12:06:00","2021-07-18 10:34:33");
INSERT INTO product_purchases VALUES("987","232","777","","1","1","1","215","0","0","0","215","2021-06-12 12:06:00","2021-07-18 10:34:33");
INSERT INTO product_purchases VALUES("988","232","1399","","2","2","1","360","0","0","0","720","2021-06-12 12:06:00","2021-07-18 10:34:33");
INSERT INTO product_purchases VALUES("989","232","843","","10","10","1","43","0","0","0","430","2021-06-12 12:06:00","2021-07-18 10:34:33");
INSERT INTO product_purchases VALUES("990","233","1400","","8","8","1","630","0","0","0","5040","2021-06-15 12:06:00","2021-07-18 10:36:18");
INSERT INTO product_purchases VALUES("991","234","1407","","10","10","1","300","0","0","0","3000","2021-06-12 12:06:00","2021-07-18 10:45:21");
INSERT INTO product_purchases VALUES("992","234","1408","","10","10","1","200","0","0","0","2000","2021-06-12 12:06:00","2021-07-18 10:45:21");
INSERT INTO product_purchases VALUES("993","234","1409","","12","12","1","140","0","0","0","1680","2021-06-12 12:06:00","2021-07-18 10:45:21");
INSERT INTO product_purchases VALUES("994","234","1323","","1","1","1","740","0","0","0","740","2021-06-12 12:06:00","2021-07-18 10:45:21");
INSERT INTO product_purchases VALUES("995","235","1402","","10","10","1","55","0","0","0","550","2021-06-16 12:06:00","2021-07-18 11:42:06");
INSERT INTO product_purchases VALUES("996","235","1401","","5","5","1","150","0","0","0","750","2021-06-16 12:06:00","2021-07-18 11:42:07");
INSERT INTO product_purchases VALUES("997","235","1422","","2","2","1","310","0","0","0","620","2021-06-16 12:06:00","2021-07-18 11:42:07");
INSERT INTO product_purchases VALUES("998","235","1404","","2","2","1","210","0","0","0","420","2021-06-16 12:06:00","2021-07-18 11:42:07");
INSERT INTO product_purchases VALUES("999","235","784","","10","10","1","35","0","0","0","350","2021-06-16 12:06:00","2021-07-18 11:42:07");
INSERT INTO product_purchases VALUES("1000","235","785","","10","10","1","28","0","0","0","280","2021-06-16 12:06:00","2021-07-18 11:42:07");
INSERT INTO product_purchases VALUES("1001","235","783","","10","10","1","38","0","0","0","380","2021-06-16 12:06:00","2021-07-18 11:42:07");
INSERT INTO product_purchases VALUES("1002","235","799","","5","5","1","82","0","0","0","410","2021-06-16 12:06:00","2021-07-18 11:42:07");
INSERT INTO product_purchases VALUES("1003","235","819","","5","5","1","25","0","0","0","125","2021-06-16 12:06:00","2021-07-18 11:42:08");
INSERT INTO product_purchases VALUES("1004","235","1405","","6","6","1","23","0","0","0","138","2021-06-16 12:06:00","2021-07-18 11:42:08");
INSERT INTO product_purchases VALUES("1005","235","1406","","6","6","1","30","0","0","0","180","2021-06-16 12:06:00","2021-07-18 11:42:08");
INSERT INTO product_purchases VALUES("1006","236","1326","","250","250","1","14","0","0","0","3500","2020-06-29 12:06:00","2021-07-18 11:54:43");
INSERT INTO product_purchases VALUES("1007","236","1413","","10","10","1","90","0","0","0","900","2020-06-29 12:06:00","2021-07-18 11:54:43");
INSERT INTO product_purchases VALUES("1008","236","708","","50","50","1","20","0","0","0","1000","2020-06-29 12:06:00","2021-07-18 11:54:43");
INSERT INTO product_purchases VALUES("1009","236","707","","100","100","1","19","0","0","0","1900","2020-06-29 12:06:00","2021-07-18 11:54:43");
INSERT INTO product_purchases VALUES("1010","236","1414","","10","10","1","510","0","0","0","5100","2020-06-29 12:06:00","2021-07-18 11:54:43");
INSERT INTO product_purchases VALUES("1011","236","1415","","50","50","1","115","0","0","0","5750","2020-06-29 12:06:00","2021-07-18 11:54:43");
INSERT INTO product_purchases VALUES("1012","236","1416","","6","6","1","235","0","0","0","1410","2020-06-29 12:06:00","2021-07-18 11:54:44");
INSERT INTO product_purchases VALUES("1013","236","721","","15","15","1","65","0","0","0","975","2020-06-29 12:06:00","2021-07-18 11:54:44");
INSERT INTO product_purchases VALUES("1014","236","722","","10","10","1","65","0","0","0","650","2020-06-29 12:06:00","2021-07-18 11:54:44");
INSERT INTO product_purchases VALUES("1015","236","723","","15","15","1","45","0","0","0","675","2020-06-29 12:06:00","2021-07-18 11:54:44");
INSERT INTO product_purchases VALUES("1016","236","1417","","10","10","1","40","0","0","0","400","2020-06-29 12:06:00","2021-07-18 11:54:44");
INSERT INTO product_purchases VALUES("1017","236","1418","","8","8","1","400","0","0","0","3200","2020-06-29 12:06:00","2021-07-18 11:54:45");
INSERT INTO product_purchases VALUES("1018","237","1419","","6","6","1","62","0","0","0","372","2021-06-29 12:06:00","2021-07-18 11:57:53");
INSERT INTO product_purchases VALUES("1019","237","725","","2","2","1","360","0","0","0","720","2021-06-29 12:06:00","2021-07-18 11:57:53");
INSERT INTO product_purchases VALUES("1020","237","1418","","6","6","1","400","0","0","0","2400","2021-06-29 12:06:00","2021-07-18 11:57:53");
INSERT INTO product_purchases VALUES("1021","237","1420","","1","1","1","400","0","0","0","400","2021-06-29 12:06:00","2021-07-18 11:57:53");
INSERT INTO product_purchases VALUES("1022","237","1421","","1","1","1","75","0","0","0","75","2021-06-29 12:06:00","2021-07-18 11:57:54");
INSERT INTO product_purchases VALUES("1033","238","688","","24","24","1","26","0","0","0","624","2021-07-18 12:11:30","2021-07-18 12:11:30");
INSERT INTO product_purchases VALUES("1034","238","690","","30","30","1","27","0","0","0","810","2021-07-18 12:11:30","2021-07-18 12:11:30");
INSERT INTO product_purchases VALUES("1035","238","683","","20","20","1","14","0","0","0","280","2021-07-18 12:11:30","2021-07-18 12:11:30");
INSERT INTO product_purchases VALUES("1036","238","1383","","15","15","1","105","0","0","0","1575","2021-07-18 12:11:30","2021-07-18 12:11:30");
INSERT INTO product_purchases VALUES("1037","238","1382","","15","15","1","105","0","0","0","1575","2021-07-18 12:11:30","2021-07-18 12:11:30");
INSERT INTO product_purchases VALUES("1038","238","1410","","12","12","1","70","0","0","0","840","2021-07-18 12:11:31","2021-07-18 12:11:31");
INSERT INTO product_purchases VALUES("1039","238","802","","6","6","1","65","0","0","0","390","2021-07-18 12:11:31","2021-07-18 12:11:31");
INSERT INTO product_purchases VALUES("1040","238","791","","6","6","1","80","0","0","0","480","2021-07-18 12:11:31","2021-07-18 12:11:31");
INSERT INTO product_purchases VALUES("1041","238","1411","","20","20","1","25","0","0","0","500","2021-07-18 12:11:31","2021-07-18 12:11:31");
INSERT INTO product_purchases VALUES("1042","238","1412","","20","20","1","28","0","0","0","560","2021-07-18 12:11:31","2021-07-18 12:11:31");
INSERT INTO product_purchases VALUES("1043","238","1325","","12","12","1","65","0","0","0","780","2021-07-18 12:11:31","2021-07-18 12:11:31");
INSERT INTO product_purchases VALUES("1066","239","1422","","2","2","1","310","0","0","0","620","2021-07-18 12:40:56","2021-07-18 12:40:56");
INSERT INTO product_purchases VALUES("1067","239","750","","12","12","1","10.5","0","0","0","126","2021-07-18 12:40:56","2021-07-18 12:40:56");
INSERT INTO product_purchases VALUES("1068","239","741","","20","20","1","23","0","0","0","460","2021-07-18 12:40:56","2021-07-18 12:40:56");
INSERT INTO product_purchases VALUES("1069","239","1423","","50","50","1","9","0","0","0","450","2021-07-18 12:40:56","2021-07-18 12:40:56");
INSERT INTO product_purchases VALUES("1070","239","1376","","20","20","1","35","0","0","0","700","2021-07-18 12:40:57","2021-07-18 12:40:57");
INSERT INTO product_purchases VALUES("1071","239","1377","","20","20","1","35","0","0","0","700","2021-07-18 12:40:57","2021-07-18 12:40:57");
INSERT INTO product_purchases VALUES("1072","239","1379","","20","20","1","46","0","0","0","920","2021-07-18 12:40:57","2021-07-18 12:40:57");
INSERT INTO product_purchases VALUES("1073","239","1380","","20","20","1","48","0","0","0","960","2021-07-18 12:40:57","2021-07-18 12:40:57");
INSERT INTO product_purchases VALUES("1074","239","1424","","100","100","2","19","0","0","0","1900","2021-07-18 12:40:57","2021-07-18 12:40:57");
INSERT INTO product_purchases VALUES("1075","239","1425","","50","50","2","26","0","0","0","1300","2021-07-18 12:40:57","2021-07-18 12:40:57");
INSERT INTO product_purchases VALUES("1076","239","624","","30","30","1","17.5","0","0","0","525","2021-07-18 12:40:57","2021-07-18 12:40:57");
INSERT INTO product_purchases VALUES("1077","239","625","","20","20","1","24","0","0","0","480","2021-07-18 12:40:57","2021-07-18 12:40:57");
INSERT INTO product_purchases VALUES("1078","239","1295","","120","120","1","4","0","0","0","480","2021-07-18 12:40:57","2021-07-18 12:40:57");
INSERT INTO product_purchases VALUES("1079","239","1426","","30","30","1","15","0","0","0","450","2021-07-18 12:40:58","2021-07-18 12:40:58");
INSERT INTO product_purchases VALUES("1080","239","1293","","36","36","1","20","0","0","0","720","2021-07-18 12:40:58","2021-07-18 12:40:58");
INSERT INTO product_purchases VALUES("1081","239","1427","","36","36","1","6.25","0","0","0","225","2021-07-18 12:40:58","2021-07-18 12:40:58");
INSERT INTO product_purchases VALUES("1082","239","1428","","4","4","1","92","0","0","0","368","2021-07-18 12:40:58","2021-07-18 12:40:58");
INSERT INTO product_purchases VALUES("1083","239","1429","","4","4","1","89","0","0","0","356","2021-07-18 12:40:59","2021-07-18 12:40:59");
INSERT INTO product_purchases VALUES("1084","239","1430","","4","4","1","93","0","0","0","372","2021-07-18 12:40:59","2021-07-18 12:40:59");
INSERT INTO product_purchases VALUES("1085","239","1431","","4","4","1","95","0","0","0","380","2021-07-18 12:40:59","2021-07-18 12:40:59");
INSERT INTO product_purchases VALUES("1086","239","880","","4","4","1","210","0","0","0","840","2021-07-18 12:40:59","2021-07-18 12:40:59");
INSERT INTO product_purchases VALUES("1087","239","263","","264","264","2","29.5","0","0","0","7788","2021-07-18 12:40:59","2021-07-18 12:40:59");
INSERT INTO product_purchases VALUES("1088","239","1432","","264","264","2","23","0","0","0","6072","2021-07-18 12:40:59","2021-07-18 12:40:59");
INSERT INTO product_purchases VALUES("1089","240","103","","50","50","2","134","0","0","0","6700","2021-06-05 12:06:00","2021-07-18 13:58:26");
INSERT INTO product_purchases VALUES("1090","240","574","","1","1","1","140","0","0","0","140","2021-06-05 12:06:00","2021-07-18 13:58:26");
INSERT INTO product_purchases VALUES("1091","241","556","","4","4","1","310","0","0","0","1240","2021-06-10 12:06:00","2021-07-18 14:02:27");
INSERT INTO product_purchases VALUES("1092","241","538","","2","2","1","80","0","0","0","160","2021-06-10 12:06:00","2021-07-18 14:02:27");
INSERT INTO product_purchases VALUES("1097","242","1412","","2","2","1","55","0","0","0","110","2021-07-18 14:17:02","2021-07-18 14:17:02");
INSERT INTO product_purchases VALUES("1098","242","496","","3","3","1","200","0","0","0","600","2021-07-18 14:17:02","2021-07-18 14:17:02");
INSERT INTO product_purchases VALUES("1099","242","67","","160","160","2","56","0","0","0","8960","2021-07-18 14:17:02","2021-07-18 14:17:02");
INSERT INTO product_purchases VALUES("1100","242","103","","90","90","2","135","0","0","0","12150","2021-07-18 14:17:02","2021-07-18 14:17:02");
INSERT INTO product_purchases VALUES("1101","242","1433","","6","6","1","270","0","0","0","1620","2021-07-18 14:17:02","2021-07-18 14:17:02");
INSERT INTO product_purchases VALUES("1102","243","73","","20","20","2","70","0","0","0","1400","2021-06-24 12:06:00","2021-07-18 14:20:59");
INSERT INTO product_purchases VALUES("1103","243","526","","3","3","1","260","0","0","0","780","2021-06-24 12:06:00","2021-07-18 14:20:59");
INSERT INTO product_purchases VALUES("1106","244","523","","3","3","1","300","0","0","0","900","2021-07-18 14:37:11","2021-07-18 14:37:11");
INSERT INTO product_purchases VALUES("1107","244","73","","20","20","2","70","0","0","0","1400","2021-07-18 14:37:11","2021-07-18 14:37:11");
INSERT INTO product_purchases VALUES("1108","244","1434","","5","5","1","320","0","0","0","1600","2021-07-18 14:37:12","2021-07-18 14:37:12");
INSERT INTO product_purchases VALUES("1109","245","103","","10","10","2","138","0","0","0","1380","2021-06-24 12:06:00","2021-07-18 14:41:26");
INSERT INTO product_purchases VALUES("1110","246","481","","6","6","1","163","0","0","0","978","2021-06-27 12:06:00","2021-07-18 14:50:33");
INSERT INTO product_purchases VALUES("1111","246","499","","20","20","1","216","0","0","0","4320","2021-06-27 12:06:00","2021-07-18 14:50:34");
INSERT INTO product_purchases VALUES("1112","246","529","","1","1","1","340","0","0","0","340","2021-06-27 12:06:00","2021-07-18 14:50:34");
INSERT INTO product_purchases VALUES("1113","246","475","","4","4","1","209","0","0","0","836","2021-06-27 12:06:00","2021-07-18 14:50:34");
INSERT INTO product_purchases VALUES("1114","247","1434","","4","4","1","320","0","0","0","1280","2021-06-28 12:06:00","2021-07-18 14:52:19");
INSERT INTO product_purchases VALUES("1115","248","688","","5","5","1","50","0","0","0","250","2021-06-29 12:06:00","2021-07-18 14:58:29");
INSERT INTO product_purchases VALUES("1116","248","1335","","5","5","1","50","0","0","0","250","2021-06-29 12:06:00","2021-07-18 14:58:29");
INSERT INTO product_purchases VALUES("1117","249","73","","6","6","2","70","0","0","0","420","2021-06-28 12:06:00","2021-07-18 15:02:09");
INSERT INTO product_purchases VALUES("1118","249","1411","","1","1","1","30","0","0","0","30","2021-06-28 12:06:00","2021-07-18 15:02:09");
INSERT INTO product_purchases VALUES("1119","250","893","","2","2","1","65","0","0","0","130","2021-06-15 12:06:00","2021-07-19 04:04:58");
INSERT INTO product_purchases VALUES("1120","251","1415","","27","27","1","130","0","0","0","3510","2021-06-26 12:06:00","2021-07-19 04:21:20");
INSERT INTO product_purchases VALUES("1121","251","708","","20","20","1","25","0","0","0","500","2021-06-26 12:06:00","2021-07-19 04:21:20");
INSERT INTO product_purchases VALUES("1122","252","73","","25","25","2","68","0","0","0","1700","2021-06-10 12:06:00","2021-07-19 04:26:23");
INSERT INTO product_purchases VALUES("1123","252","490","","4","4","1","80","0","0","0","320","2021-06-10 12:06:00","2021-07-19 04:26:24");
INSERT INTO product_purchases VALUES("1124","252","1409","","1","1","1","130","0","0","0","130","2021-06-10 12:06:00","2021-07-19 04:26:24");
INSERT INTO product_purchases VALUES("1125","253","1435","","12","12","1","210","0","0","0","2520","2021-06-10 12:06:00","2021-07-19 12:34:15");
INSERT INTO product_purchases VALUES("1126","253","1436","","50","50","1","21","0","0","0","1050","2021-06-10 12:06:00","2021-07-19 12:34:16");
INSERT INTO product_purchases VALUES("1127","254","708","","20","20","1","25","0","0","0","500","2021-06-09 12:06:00","2021-07-19 12:52:38");
INSERT INTO product_purchases VALUES("1128","254","1415","","6","6","1","125","0","0","0","750","2021-06-09 12:06:00","2021-07-19 12:52:38");
INSERT INTO product_purchases VALUES("1129","254","1437","","500","500","2","4.5","0","0","0","2250","2021-06-09 12:06:00","2021-07-19 12:52:38");
INSERT INTO product_purchases VALUES("1130","254","1438","","100","100","2","18","0","0","0","1800","2021-06-09 12:06:00","2021-07-19 12:52:38");
INSERT INTO product_purchases VALUES("1131","254","844","","5","5","1","115","0","0","0","575","2021-06-09 12:06:00","2021-07-19 12:52:38");
INSERT INTO product_purchases VALUES("1132","254","845","","5","5","1","100","0","0","0","500","2021-06-09 12:06:00","2021-07-19 12:52:38");
INSERT INTO product_purchases VALUES("1133","255","1439","","6","6","1","502","0","0","0","3012","2021-06-28 12:06:00","2021-07-19 13:28:36");
INSERT INTO product_purchases VALUES("1134","255","1440","","3","3","1","1360","0","0","0","4080","2021-06-28 12:06:00","2021-07-19 13:28:36");
INSERT INTO product_purchases VALUES("1135","255","1441","","1","1","1","2508","0","0","0","2508","2021-06-28 12:06:00","2021-07-19 13:28:37");
INSERT INTO product_purchases VALUES("1136","255","1442","","2","2","1","1360","0","0","0","2720","2021-06-28 12:06:00","2021-07-19 13:28:37");
INSERT INTO product_purchases VALUES("1145","256","645","","2","2","1","2325","0","0","0","4650","2021-07-19 13:50:48","2021-07-19 13:50:48");
INSERT INTO product_purchases VALUES("1146","256","646","","2","2","1","1860","0","0","0","3720","2021-07-19 13:50:48","2021-07-19 13:50:48");
INSERT INTO product_purchases VALUES("1147","256","647","","2","2","1","1675","0","0","0","3350","2021-07-19 13:50:48","2021-07-19 13:50:48");
INSERT INTO product_purchases VALUES("1148","256","648","","2","2","1","1302","0","0","0","2604","2021-07-19 13:50:48","2021-07-19 13:50:48");
INSERT INTO product_purchases VALUES("1149","256","649","","4","4","1","1395","0","0","0","5580","2021-07-19 13:50:48","2021-07-19 13:50:48");
INSERT INTO product_purchases VALUES("1150","256","650","","4","4","1","1302","0","0","0","5208","2021-07-19 13:50:48","2021-07-19 13:50:48");
INSERT INTO product_purchases VALUES("1151","256","651","","3","3","1","930","0","0","0","2790","2021-07-19 13:50:49","2021-07-19 13:50:49");
INSERT INTO product_purchases VALUES("1152","256","652","","2","2","1","1581","0","0","0","3162","2021-07-19 13:50:49","2021-07-19 13:50:49");
INSERT INTO product_purchases VALUES("1153","257","1444","","300","300","2","6.8","0","0","0","2040","2021-06-07 12:06:00","2021-07-19 14:36:43");
INSERT INTO product_purchases VALUES("1157","258","1443","","300","300","2","8.3","0","0","0","2490","2021-07-19 14:43:56","2021-07-19 14:43:56");
INSERT INTO product_purchases VALUES("1158","258","165","","300","300","2","12.5","0","0","0","3750","2021-07-19 14:43:56","2021-07-19 14:43:56");
INSERT INTO product_purchases VALUES("1159","258","159","","500","500","2","10","0","0","0","5000","2021-07-19 14:43:56","2021-07-19 14:43:56");
INSERT INTO product_purchases VALUES("1160","259","165","","1000","1000","2","12.4","0","0","0","12400","2021-06-22 12:06:00","2021-07-19 14:46:17");
INSERT INTO product_purchases VALUES("1161","260","28","","1","1","1","6700","0","0","0","6700","2021-06-25 12:06:00","2021-07-19 15:02:56");
INSERT INTO product_purchases VALUES("1162","260","25","","1","1","1","3350","0","0","0","3350","2021-06-25 12:06:00","2021-07-19 15:02:56");
INSERT INTO product_purchases VALUES("1163","261","1446","","1","1","1","10500","0","0","0","10500","2021-06-12 12:06:00","2021-07-19 15:25:03");
INSERT INTO product_purchases VALUES("1164","261","1448","","1","1","1","5100","0","0","0","5100","2021-06-12 12:06:00","2021-07-19 15:25:03");
INSERT INTO product_purchases VALUES("1165","262","1447","","1","1","1","11700","0","0","0","11700","2021-06-13 12:06:00","2021-07-19 15:28:09");
INSERT INTO product_purchases VALUES("1166","263","1445","","2","2","1","9650","0","0","0","19300","2021-05-29 12:05:00","2021-07-19 15:33:55");
INSERT INTO product_purchases VALUES("1171","264","1449","","1","1","1","10010","0","0","0","10010","2021-07-19 15:59:58","2021-07-19 15:59:58");
INSERT INTO product_purchases VALUES("1172","264","1450","","1","1","1","10010","0","0","0","10010","2021-07-19 15:59:58","2021-07-19 15:59:58");
INSERT INTO product_purchases VALUES("1173","264","1451","","1","1","1","8645","0","0","0","8645","2021-07-19 15:59:58","2021-07-19 15:59:58");
INSERT INTO product_purchases VALUES("1174","264","1452","","1","1","1","4900","0","0","0","4900","2021-07-19 15:59:58","2021-07-19 15:59:58");
INSERT INTO product_purchases VALUES("1179","265","34","","300","300","2","22.5","0","0","0","6750","2021-07-20 04:43:08","2021-07-20 04:43:08");
INSERT INTO product_purchases VALUES("1180","265","36","","300","300","2","32","0","0","0","9600","2021-07-20 04:43:08","2021-07-20 04:43:08");
INSERT INTO product_purchases VALUES("1181","265","38","","90","90","2","57","0","0","0","5130","2021-07-20 04:43:09","2021-07-20 04:43:09");
INSERT INTO product_purchases VALUES("1182","265","268","","300","300","2","22","0","0","0","6600","2021-07-20 04:43:09","2021-07-20 04:43:09");
INSERT INTO product_purchases VALUES("1183","266","1453","","96","96","1","11","0","0","0","1056","2021-06-22 12:06:00","2021-07-20 04:53:11");
INSERT INTO product_purchases VALUES("1184","266","1454","","48","48","1","15","0","0","0","720","2021-06-22 12:06:00","2021-07-20 04:53:11");
INSERT INTO product_purchases VALUES("1185","266","1455","","12","12","1","42","0","0","0","504","2021-06-22 12:06:00","2021-07-20 04:53:11");
INSERT INTO product_purchases VALUES("1186","266","1456","","12","12","1","33","0","0","0","396","2021-06-22 12:06:00","2021-07-20 04:53:11");
INSERT INTO product_purchases VALUES("1187","266","1457","","24","24","1","29","0","0","0","696","2021-06-22 12:06:00","2021-07-20 04:53:11");
INSERT INTO product_purchases VALUES("1188","266","1458","","24","24","1","17","0","0","0","408","2021-06-22 12:06:00","2021-07-20 04:53:12");
INSERT INTO product_purchases VALUES("1189","266","1459","","24","24","1","18","0","0","0","432","2021-06-22 12:06:00","2021-07-20 04:53:12");
INSERT INTO product_purchases VALUES("1190","266","1460","","12","12","1","69","0","0","0","828","2021-06-22 12:06:00","2021-07-20 04:53:12");
INSERT INTO product_purchases VALUES("1191","266","1461","","12","12","1","56","0","0","0","672","2021-06-22 12:06:00","2021-07-20 04:53:12");
INSERT INTO product_purchases VALUES("1192","266","1462","","24","24","1","68","0","0","0","1632","2021-06-22 12:06:00","2021-07-20 04:53:12");
INSERT INTO product_purchases VALUES("1193","266","1463","","24","24","1","68","0","0","0","1632","2021-06-22 12:06:00","2021-07-20 04:53:12");
INSERT INTO product_purchases VALUES("1194","266","1464","","12","12","1","65","0","0","0","780","2021-06-22 12:06:00","2021-07-20 04:53:13");
INSERT INTO product_purchases VALUES("1195","266","1465","","24","24","1","75","0","0","0","1800","2021-06-22 12:06:00","2021-07-20 04:53:13");
INSERT INTO product_purchases VALUES("1196","266","147","","200","200","2","16.5","0","0","0","3300","2021-06-22 12:06:00","2021-07-20 04:53:13");
INSERT INTO product_purchases VALUES("1197","266","1466","","48","48","1","8","0","0","0","384","2021-06-22 12:06:00","2021-07-20 04:53:13");
INSERT INTO product_purchases VALUES("1198","267","3","","2","2","1","3225","0","0","0","6450","2021-05-25 12:05:00","2021-07-20 05:29:20");
INSERT INTO product_purchases VALUES("1199","267","5","","1","1","1","6450","0","0","0","6450","2021-05-25 12:05:00","2021-07-20 05:29:20");
INSERT INTO product_purchases VALUES("1200","268","5","","1","1","1","6450","0","0","0","6450","2021-06-26 12:06:00","2021-07-20 05:33:29");
INSERT INTO product_purchases VALUES("1201","268","3","","1","1","1","3225","0","0","0","3225","2021-06-26 12:06:00","2021-07-20 05:33:30");
INSERT INTO product_purchases VALUES("1202","269","1467","","10","10","1","112","0","0","0","1120","2021-06-05 12:06:00","2021-07-20 05:41:27");
INSERT INTO product_purchases VALUES("1203","269","622","","6","6","1","232","0","0","0","1392","2021-06-05 12:06:00","2021-07-20 05:41:27");
INSERT INTO product_purchases VALUES("1204","269","616","","4","4","1","544","0","0","0","2176","2021-06-05 12:06:00","2021-07-20 05:41:27");
INSERT INTO product_purchases VALUES("1205","270","612","","20","20","1","862","0","0","0","17240","2021-06-03 12:06:00","2021-07-20 06:07:23");
INSERT INTO product_purchases VALUES("1206","270","613","","4","4","1","960","0","0","0","3840","2021-06-03 12:06:00","2021-07-20 06:07:23");
INSERT INTO product_purchases VALUES("1207","270","614","","4","4","1","960","0","0","0","3840","2021-06-03 12:06:00","2021-07-20 06:07:23");
INSERT INTO product_purchases VALUES("1208","270","615","","20","20","1","625","0","0","0","12500","2021-06-03 12:06:00","2021-07-20 06:07:23");
INSERT INTO product_purchases VALUES("1209","270","616","","4","4","1","520","0","0","0","2080","2021-06-03 12:06:00","2021-07-20 06:07:23");
INSERT INTO product_purchases VALUES("1210","270","617","","1","1","1","1715","0","0","0","1715","2021-06-03 12:06:00","2021-07-20 06:07:23");
INSERT INTO product_purchases VALUES("1211","270","618","","1","1","1","1715","0","0","0","1715","2021-06-03 12:06:00","2021-07-20 06:07:23");
INSERT INTO product_purchases VALUES("1212","270","619","","1","1","1","3125","0","0","0","3125","2021-06-03 12:06:00","2021-07-20 06:07:24");
INSERT INTO product_purchases VALUES("1213","270","15","","100","100","2","50.5","0","0","0","5050","2021-06-03 12:06:00","2021-07-20 06:07:24");
INSERT INTO product_purchases VALUES("1214","270","13","","500","500","2","19.7","0","0","0","9850","2021-06-03 12:06:00","2021-07-20 06:07:24");
INSERT INTO product_purchases VALUES("1215","270","14","","400","400","2","29.26","0","0","0","11704","2021-06-03 12:06:00","2021-07-20 06:07:24");
INSERT INTO product_purchases VALUES("1216","270","21","","200","200","2","18.5","0","0","0","3700","2021-06-03 12:06:00","2021-07-20 06:07:24");
INSERT INTO product_purchases VALUES("1217","270","24","","100","100","2","30","0","0","0","3000","2021-06-03 12:06:00","2021-07-20 06:07:24");
INSERT INTO product_purchases VALUES("1218","270","624","","19","19","1","26","0","0","0","494","2021-06-03 12:06:00","2021-07-20 06:07:24");
INSERT INTO product_purchases VALUES("1219","270","625","","10","10","1","28","0","0","0","280","2021-06-03 12:06:00","2021-07-20 06:07:25");
INSERT INTO product_purchases VALUES("1220","270","532","","8","8","1","262.5","0","0","0","2100","2021-06-03 12:06:00","2021-07-20 06:07:25");
INSERT INTO product_purchases VALUES("1221","270","478","","18","18","1","135.5","0","0","0","2439","2021-06-03 12:06:00","2021-07-20 06:07:25");
INSERT INTO product_purchases VALUES("1222","270","484","","24","24","1","100","0","0","0","2400","2021-06-03 12:06:00","2021-07-20 06:07:25");
INSERT INTO product_purchases VALUES("1223","270","502","","51","51","1","160","0","0","0","8160","2021-06-03 12:06:00","2021-07-20 06:07:25");
INSERT INTO product_purchases VALUES("1224","270","520","","24","24","1","178","0","0","0","4272","2021-06-03 12:06:00","2021-07-20 06:07:25");
INSERT INTO product_purchases VALUES("1225","270","526","","8","8","1","237","0","0","0","1896","2021-06-03 12:06:00","2021-07-20 06:07:25");
INSERT INTO product_purchases VALUES("1226","270","508","","16","16","1","207","0","0","0","3312","2021-06-03 12:06:00","2021-07-20 06:07:25");
INSERT INTO product_purchases VALUES("1227","271","621","","2","2","1","1056","0","0","0","2112","2021-06-04 12:06:00","2021-07-20 06:11:02");
INSERT INTO product_purchases VALUES("1228","271","620","","6","6","1","360","0","0","0","2160","2021-06-04 12:06:00","2021-07-20 06:11:02");
INSERT INTO product_purchases VALUES("1229","272","1468","","20","20","1","40","0","0","0","800","2021-06-03 12:06:00","2021-07-20 08:32:51");
INSERT INTO product_purchases VALUES("1230","272","1469","","20","20","1","45","0","0","0","900","2021-06-03 12:06:00","2021-07-20 08:32:51");
INSERT INTO product_purchases VALUES("1231","272","1470","","16","16","1","54","0","0","0","864","2021-06-03 12:06:00","2021-07-20 08:32:51");
INSERT INTO product_purchases VALUES("1232","272","1471","","14","14","1","67","0","0","0","938","2021-06-03 12:06:00","2021-07-20 08:32:51");
INSERT INTO product_purchases VALUES("1233","272","1472","","30","30","1","57","0","0","0","1710","2021-06-03 12:06:00","2021-07-20 08:32:51");
INSERT INTO product_purchases VALUES("1234","272","1473","","40","40","1","45","0","0","0","1800","2021-06-03 12:06:00","2021-07-20 08:32:51");
INSERT INTO product_purchases VALUES("1235","272","1474","","6","6","1","175","0","0","0","1050","2021-06-03 12:06:00","2021-07-20 08:32:51");
INSERT INTO product_purchases VALUES("1236","272","1475","","6","6","1","175","0","0","0","1050","2021-06-03 12:06:00","2021-07-20 08:32:51");
INSERT INTO product_purchases VALUES("1237","272","1476","","10","10","1","66","0","0","0","660","2021-06-03 12:06:00","2021-07-20 08:32:51");
INSERT INTO product_purchases VALUES("1238","272","1477","","10","10","1","73","0","0","0","730","2021-06-03 12:06:00","2021-07-20 08:32:51");
INSERT INTO product_purchases VALUES("1239","272","1478","","6","6","1","80","0","0","0","480","2021-06-03 12:06:00","2021-07-20 08:32:52");
INSERT INTO product_purchases VALUES("1240","272","1479","","6","6","1","143","0","0","0","858","2021-06-03 12:06:00","2021-07-20 08:32:52");
INSERT INTO product_purchases VALUES("1241","272","1480","","3","3","1","199","0","0","0","597","2021-06-03 12:06:00","2021-07-20 08:32:52");
INSERT INTO product_purchases VALUES("1242","272","1481","","24","24","1","35","0","0","0","840","2021-06-03 12:06:00","2021-07-20 08:32:52");
INSERT INTO product_purchases VALUES("1243","272","1482","","18","18","1","38","0","0","0","684","2021-06-03 12:06:00","2021-07-20 08:32:52");
INSERT INTO product_purchases VALUES("1244","272","877","","6","6","1","165","0","0","0","990","2021-06-03 12:06:00","2021-07-20 08:32:52");
INSERT INTO product_purchases VALUES("1245","272","876","","6","6","1","230","0","0","0","1380","2021-06-03 12:06:00","2021-07-20 08:32:52");
INSERT INTO product_purchases VALUES("1246","272","1483","","2","2","1","519","0","0","0","1038","2021-06-03 12:06:00","2021-07-20 08:32:52");
INSERT INTO product_purchases VALUES("1247","272","1484","","3","3","1","202","0","0","0","606","2021-06-03 12:06:00","2021-07-20 08:32:53");
INSERT INTO product_purchases VALUES("1248","272","1485","","3","3","1","258","0","0","0","774","2021-06-03 12:06:00","2021-07-20 08:32:53");
INSERT INTO product_purchases VALUES("1249","272","1486","","15","15","1","127","0","0","0","1905","2021-06-03 12:06:00","2021-07-20 08:32:53");
INSERT INTO product_purchases VALUES("1250","272","1487","","15","15","1","143","0","0","0","2145","2021-06-03 12:06:00","2021-07-20 08:32:53");
INSERT INTO product_purchases VALUES("1251","272","1488","","6","6","1","259","0","0","0","1554","2021-06-03 12:06:00","2021-07-20 08:32:53");
INSERT INTO product_purchases VALUES("1252","272","1489","","6","6","1","138","0","0","0","828","2021-06-03 12:06:00","2021-07-20 08:32:53");
INSERT INTO product_purchases VALUES("1253","272","1490","","6","6","1","223","0","0","0","1338","2021-06-03 12:06:00","2021-07-20 08:32:53");
INSERT INTO product_purchases VALUES("1254","272","1491","","4","4","1","878","0","0","0","3512","2021-06-03 12:06:00","2021-07-20 08:32:53");
INSERT INTO product_purchases VALUES("1255","272","1492","","4","4","1","351","0","0","0","1404","2021-06-03 12:06:00","2021-07-20 08:32:54");
INSERT INTO product_purchases VALUES("1256","273","1493","","140","140","2","135","0","0","0","18900","2021-06-27 12:06:00","2021-07-20 08:46:48");
INSERT INTO product_purchases VALUES("1257","273","764","","1","1","1","160","0","0","0","160","2021-06-27 12:06:00","2021-07-20 08:46:48");
INSERT INTO product_purchases VALUES("1258","273","1478","","4","4","1","85","0","0","0","340","2021-06-27 12:06:00","2021-07-20 08:46:48");
INSERT INTO product_purchases VALUES("1259","274","1494","","4","4","1","550","0","0","0","2200","2021-06-03 12:06:00","2021-07-20 09:25:56");
INSERT INTO product_purchases VALUES("1260","274","1495","","2","2","1","400","0","0","0","800","2021-06-03 12:06:00","2021-07-20 09:25:57");
INSERT INTO product_purchases VALUES("1261","274","1496","","2","2","1","350","0","0","0","700","2021-06-03 12:06:00","2021-07-20 09:25:57");
INSERT INTO product_purchases VALUES("1262","274","1497","","4","4","1","180","0","0","0","720","2021-06-03 12:06:00","2021-07-20 09:25:57");
INSERT INTO product_purchases VALUES("1263","274","1498","","6","6","1","200","0","0","0","1200","2021-06-03 12:06:00","2021-07-20 09:25:57");
INSERT INTO product_purchases VALUES("1264","274","1499","","4","4","1","200","0","0","0","800","2021-06-03 12:06:00","2021-07-20 09:25:57");
INSERT INTO product_purchases VALUES("1265","274","1500","","4","4","1","350","0","0","0","1400","2021-06-03 12:06:00","2021-07-20 09:25:57");
INSERT INTO product_purchases VALUES("1266","274","1501","","2","2","1","450","0","0","0","900","2021-06-03 12:06:00","2021-07-20 09:25:57");
INSERT INTO product_purchases VALUES("1267","274","1502","","1","1","1","1200","0","0","0","1200","2021-06-03 12:06:00","2021-07-20 09:25:57");
INSERT INTO product_purchases VALUES("1268","274","1503","","2","2","1","1100","0","0","0","2200","2021-06-03 12:06:00","2021-07-20 09:25:58");
INSERT INTO product_purchases VALUES("1269","274","1504","","2","2","1","2000","0","0","0","4000","2021-06-03 12:06:00","2021-07-20 09:25:58");
INSERT INTO product_purchases VALUES("1270","274","1505","","2","2","1","1750","0","0","0","3500","2021-06-03 12:06:00","2021-07-20 09:25:58");
INSERT INTO product_purchases VALUES("1271","274","873","","12","12","1","180","0","0","0","2160","2021-06-03 12:06:00","2021-07-20 09:25:58");
INSERT INTO product_purchases VALUES("1272","275","677","","500","500","1","12.8","0","0","0","6400","2021-06-04 12:06:00","2021-07-20 09:56:33");
INSERT INTO product_purchases VALUES("1273","275","675","","192","192","1","40","0","0","0","7680","2021-06-04 12:06:00","2021-07-20 09:56:33");
INSERT INTO product_purchases VALUES("1274","275","692","","12","12","1","160","0","0","0","1920","2021-06-04 12:06:00","2021-07-20 09:56:33");
INSERT INTO product_purchases VALUES("1275","275","674","","760","760","1","8.5","0","0","0","6460","2021-06-04 12:06:00","2021-07-20 09:56:33");
INSERT INTO product_purchases VALUES("1276","275","685","","50","50","1","82","0","0","0","4100","2021-06-04 12:06:00","2021-07-20 09:56:33");
INSERT INTO product_purchases VALUES("1277","276","1506","","6","6","1","35","0","0","0","210","2021-06-01 12:06:00","2021-07-21 14:13:01");
INSERT INTO product_purchases VALUES("1278","276","1507","","6","6","1","16","0","0","0","96","2021-06-01 12:06:00","2021-07-21 14:13:01");
INSERT INTO product_purchases VALUES("1279","276","1508","","6","6","1","14","0","0","0","84","2021-06-01 12:06:00","2021-07-21 14:13:01");
INSERT INTO product_purchases VALUES("1280","276","1509","","6","6","1","19","0","0","0","114","2021-06-01 12:06:00","2021-07-21 14:13:01");
INSERT INTO product_purchases VALUES("1281","276","1510","","6","6","1","73","0","0","0","438","2021-06-01 12:06:00","2021-07-21 14:13:01");
INSERT INTO product_purchases VALUES("1282","276","1511","","3","3","1","124","0","0","0","372","2021-06-01 12:06:00","2021-07-21 14:13:01");
INSERT INTO product_purchases VALUES("1283","276","1512","","6","6","1","63","0","0","0","378","2021-06-01 12:06:00","2021-07-21 14:13:02");
INSERT INTO product_purchases VALUES("1284","276","1513","","6","6","1","115","0","0","0","690","2021-06-01 12:06:00","2021-07-21 14:13:02");
INSERT INTO product_purchases VALUES("1285","276","1514","","3","3","1","172","0","0","0","516","2021-06-01 12:06:00","2021-07-21 14:13:02");
INSERT INTO product_purchases VALUES("1286","276","1515","","3","3","1","321","0","0","0","963","2021-06-01 12:06:00","2021-07-21 14:13:02");
INSERT INTO product_purchases VALUES("1287","276","1516","","3","3","1","210","0","0","0","630","2021-06-01 12:06:00","2021-07-21 14:13:02");
INSERT INTO product_purchases VALUES("1288","276","1517","","6","6","1","68","0","0","0","408","2021-06-01 12:06:00","2021-07-21 14:13:02");
INSERT INTO product_purchases VALUES("1289","276","1518","","6","6","1","35","0","0","0","210","2021-06-01 12:06:00","2021-07-21 14:13:02");
INSERT INTO product_purchases VALUES("1290","276","1519","","6","6","1","26","0","0","0","156","2021-06-01 12:06:00","2021-07-21 14:13:02");
INSERT INTO product_purchases VALUES("1291","276","1520","","12","12","1","42","0","0","0","504","2021-06-01 12:06:00","2021-07-21 14:13:02");
INSERT INTO product_purchases VALUES("1292","276","1521","","6","6","1","22","0","0","0","132","2021-06-01 12:06:00","2021-07-21 14:13:03");
INSERT INTO product_purchases VALUES("1293","276","1522","","6","6","1","20","0","0","0","120","2021-06-01 12:06:00","2021-07-21 14:13:03");
INSERT INTO product_purchases VALUES("1294","276","1523","","6","6","1","38","0","0","0","228","2021-06-01 12:06:00","2021-07-21 14:13:03");
INSERT INTO product_purchases VALUES("1295","276","1524","","6","6","1","20","0","0","0","120","2021-06-01 12:06:00","2021-07-21 14:13:03");
INSERT INTO product_purchases VALUES("1296","276","1525","","6","6","1","28","0","0","0","168","2021-06-01 12:06:00","2021-07-21 14:13:03");
INSERT INTO product_purchases VALUES("1297","276","1526","","6","6","1","28","0","0","0","168","2021-06-01 12:06:00","2021-07-21 14:13:03");
INSERT INTO product_purchases VALUES("1298","276","1527","","3","3","1","30","0","0","0","90","2021-06-01 12:06:00","2021-07-21 14:13:03");
INSERT INTO product_purchases VALUES("1299","276","1528","","3","3","1","45","0","0","0","135","2021-06-01 12:06:00","2021-07-21 14:13:03");
INSERT INTO product_purchases VALUES("1300","277","913","","3","3","3","780","0","0","0","2340","2021-07-18 12:07:00","2021-07-22 03:29:12");
INSERT INTO product_purchases VALUES("1302","279","398","","22","22","10","66","0","0","0","1452","2021-07-17 12:07:00","2021-07-22 04:06:10");
INSERT INTO product_purchases VALUES("1303","279","1539","","8","8","1","81","0","0","0","648","2021-07-17 12:07:00","2021-07-22 04:06:10");
INSERT INTO product_purchases VALUES("1304","280","774","","1","1","1","25","0","0","0","25","2021-07-17 12:07:00","2021-07-22 04:32:13");
INSERT INTO product_purchases VALUES("1305","280","761","","1","1","1","20","0","0","0","20","2021-07-17 12:07:00","2021-07-22 04:32:13");
INSERT INTO product_purchases VALUES("1306","280","819","","2","2","1","35","0","0","0","70","2021-07-17 12:07:00","2021-07-22 04:32:14");
INSERT INTO product_purchases VALUES("1307","280","737","","1","1","1","30","0","0","0","30","2021-07-17 12:07:00","2021-07-22 04:32:14");
INSERT INTO product_purchases VALUES("1308","280","787","","1","1","1","30","0","0","0","30","2021-07-17 12:07:00","2021-07-22 04:32:14");
INSERT INTO product_purchases VALUES("1309","280","738","","3","3","1","25","0","0","0","75","2021-07-17 12:07:00","2021-07-22 04:32:14");
INSERT INTO product_purchases VALUES("1310","280","739","","3","3","1","20","0","0","0","60","2021-07-17 12:07:00","2021-07-22 04:32:14");
INSERT INTO product_purchases VALUES("1311","280","740","","1","1","1","80","0","0","0","80","2021-07-17 12:07:00","2021-07-22 04:32:14");
INSERT INTO product_purchases VALUES("1312","280","1518","","1","1","1","20","0","0","0","20","2021-07-17 12:07:00","2021-07-22 04:32:14");
INSERT INTO product_purchases VALUES("1313","280","687","","2","2","1","45","0","0","0","90","2021-07-17 12:07:00","2021-07-22 04:32:15");
INSERT INTO product_purchases VALUES("1314","281","1300","","30","30","1","35","0","0","0","1050","2021-07-13 12:07:00","2021-07-22 04:35:32");
INSERT INTO product_purchases VALUES("1315","282","613","","6","6","1","960","0","0","0","5760","2021-07-14 12:07:00","2021-07-22 04:38:12");
INSERT INTO product_purchases VALUES("1316","283","598","","5","5","1","350","0","0","0","1750","2021-07-14 12:07:00","2021-07-22 04:41:51");
INSERT INTO product_purchases VALUES("1317","284","1540","","2","2","1","370","0","0","0","740","2021-07-06 12:07:00","2021-07-22 05:00:35");
INSERT INTO product_purchases VALUES("1318","285","856","","4","4","1","350","0","0","0","1400","2021-07-10 12:07:00","2021-07-22 05:02:45");
INSERT INTO product_purchases VALUES("1319","286","1300","","25","25","1","35","0","0","0","875","2021-07-10 12:07:00","2021-07-22 05:05:05");
INSERT INTO product_purchases VALUES("1320","287","1397","","6","6","1","75","0","0","0","450","2021-07-06 12:07:00","2021-07-22 05:12:20");
INSERT INTO product_purchases VALUES("1321","287","1324","","1","1","1","50","0","0","0","50","2021-07-06 12:07:00","2021-07-22 05:12:20");
INSERT INTO product_purchases VALUES("1322","288","1541","","3","3","1","950","0","0","0","2850","2021-07-13 12:07:00","2021-07-22 05:33:59");
INSERT INTO product_purchases VALUES("1323","288","1542","","3","3","1","923","0","0","0","2769","2021-07-13 12:07:00","2021-07-22 05:34:00");
INSERT INTO product_purchases VALUES("1324","288","1543","","4","4","1","819","0","0","0","3276","2021-07-13 12:07:00","2021-07-22 05:34:00");
INSERT INTO product_purchases VALUES("1335","290","231","","200","200","2","168","0","0","0","33600","2021-07-06 12:07:00","2021-07-22 06:15:42");
INSERT INTO product_purchases VALUES("1336","290","237","","20","20","2","178","0","0","0","3560","2021-07-06 12:07:00","2021-07-22 06:15:42");
INSERT INTO product_purchases VALUES("1342","291","920","","200","200","7","42.5","0","0","0","8500","2021-07-25 14:18:33","2021-07-25 14:18:33");
INSERT INTO product_purchases VALUES("1343","291","305","","100","100","1","40","0","0","0","4000","2021-07-25 14:18:33","2021-07-25 14:18:33");
INSERT INTO product_purchases VALUES("1344","291","303","","100","100","1","35","0","0","0","3500","2021-07-25 14:18:34","2021-07-25 14:18:34");
INSERT INTO product_purchases VALUES("1345","291","304","","100","100","1","30","0","0","0","3000","2021-07-25 14:18:34","2021-07-25 14:18:34");
INSERT INTO product_purchases VALUES("1346","291","373","","160","160","7","12","0","0","0","1920","2021-07-25 14:18:34","2021-07-25 14:18:34");
INSERT INTO product_purchases VALUES("1347","291","1552","","160","160","7","9.5","0","0","0","1520","2021-07-25 14:18:34","2021-07-25 14:18:34");
INSERT INTO product_purchases VALUES("1351","292","634","","3","3","1","820","0","0","0","2460","2021-07-25 14:52:56","2021-07-25 14:52:56");
INSERT INTO product_purchases VALUES("1352","292","20","","50","50","2","20","0","0","0","1000","2021-07-25 14:52:57","2021-07-25 14:52:57");
INSERT INTO product_purchases VALUES("1353","292","866","","1","1","1","270","0","0","0","270","2021-07-25 14:52:57","2021-07-25 14:52:57");
INSERT INTO product_purchases VALUES("1354","292","644","","20","20","1","20","0","0","0","400","2021-07-25 14:52:57","2021-07-25 14:52:57");
INSERT INTO product_purchases VALUES("1355","293","102","","40","40","2","125","0","0","0","5000","2021-07-18 12:07:00","2021-07-25 14:59:36");
INSERT INTO product_purchases VALUES("1356","294","1354","","4","4","1","200","0","0","0","800","2021-07-12 12:07:00","2021-07-26 09:52:07");
INSERT INTO product_purchases VALUES("1357","294","1372","","18","18","1","25","0","0","0","450","2021-07-12 12:07:00","2021-07-26 09:52:07");
INSERT INTO product_purchases VALUES("1358","294","1373","","12","12","1","20","0","0","0","240","2021-07-12 12:07:00","2021-07-26 09:52:07");
INSERT INTO product_purchases VALUES("1359","295","67","","160","160","2","55","0","0","0","8800","2021-07-12 12:07:00","2021-07-26 10:00:31");
INSERT INTO product_purchases VALUES("1360","295","502","","2","2","1","90","0","0","0","180","2021-07-12 12:07:00","2021-07-26 10:00:31");
INSERT INTO product_purchases VALUES("1361","295","532","","4","4","1","260","0","0","0","1040","2021-07-12 12:07:00","2021-07-26 10:00:31");
INSERT INTO product_purchases VALUES("1362","296","67","","100","100","2","55","0","0","0","5500","2021-07-12 12:07:00","2021-07-26 10:03:59");
INSERT INTO product_purchases VALUES("1363","297","576","","10","10","1","85","0","0","0","850","2021-07-08 12:07:00","2021-07-26 10:07:06");
INSERT INTO product_purchases VALUES("1364","298","487","","15","15","1","65","0","0","0","975","2021-07-11 12:07:00","2021-07-26 10:12:39");
INSERT INTO product_purchases VALUES("1365","299","1474","","7","7","1","180","0","0","0","1260","2021-07-12 12:07:00","2021-07-26 10:21:35");
INSERT INTO product_purchases VALUES("1366","300","1491","","2","2","1","900","0","0","0","1800","2021-07-13 12:07:00","2021-07-26 10:23:30");
INSERT INTO product_purchases VALUES("1367","301","1553","","100","100","2","50","0","0","0","5000","2021-07-12 12:07:00","2021-07-26 10:35:19");
INSERT INTO product_purchases VALUES("1368","301","1554","","10","10","2","28","0","0","0","280","2021-07-12 12:07:00","2021-07-26 10:35:19");
INSERT INTO product_purchases VALUES("1369","301","1555","","10","10","2","19.2","0","0","0","192","2021-07-12 12:07:00","2021-07-26 10:35:19");
INSERT INTO product_purchases VALUES("1370","302","1397","","7","7","1","75","0","0","0","525","2021-07-14 12:07:00","2021-07-26 10:39:55");
INSERT INTO product_purchases VALUES("1371","302","1556","","2","2","1","150","0","0","0","300","2021-07-14 12:07:00","2021-07-26 10:39:55");
INSERT INTO product_purchases VALUES("1372","303","102","","200","200","2","125","0","0","0","25000","2021-07-14 12:07:00","2021-07-26 10:48:39");
INSERT INTO product_purchases VALUES("1373","303","531","","10","10","1","252","0","0","0","2520","2021-07-14 12:07:00","2021-07-26 10:48:39");
INSERT INTO product_purchases VALUES("1374","303","1558","","3","3","1","283","0","0","0","849","2021-07-14 12:07:00","2021-07-26 10:48:39");
INSERT INTO product_purchases VALUES("1375","304","1559","","80","80","2","51","0","0","0","4080","2021-07-14 12:07:00","2021-07-26 10:54:53");
INSERT INTO product_purchases VALUES("1376","304","1560","","5","5","1","98","0","0","0","490","2021-07-14 12:07:00","2021-07-26 10:54:53");
INSERT INTO product_purchases VALUES("1377","305","1557","","6","6","1","90","0","0","0","540","2021-07-15 12:07:00","2021-07-26 10:58:17");
INSERT INTO product_purchases VALUES("1378","305","1312","","5","5","1","215","0","0","0","1075","2021-07-15 12:07:00","2021-07-26 10:58:17");
INSERT INTO product_purchases VALUES("1379","305","889","","10","10","1","110","0","0","0","1100","2021-07-15 12:07:00","2021-07-26 10:58:17");
INSERT INTO product_purchases VALUES("1380","306","656","","3","3","1","1600","0","0","0","4800","2021-07-07 12:07:00","2021-07-26 11:03:49");
INSERT INTO product_purchases VALUES("1381","306","660","","3","3","1","1520","0","0","0","4560","2021-07-07 12:07:00","2021-07-26 11:03:50");
INSERT INTO product_purchases VALUES("1382","306","664","","3","3","1","1250","0","0","0","3750","2021-07-07 12:07:00","2021-07-26 11:03:50");
INSERT INTO product_purchases VALUES("1383","306","663","","3","3","1","1080","0","0","0","3240","2021-07-07 12:07:00","2021-07-26 11:03:50");
INSERT INTO product_purchases VALUES("1384","307","1561","","2","2","1","700","0","0","0","1400","2021-07-15 12:07:00","2021-07-26 11:08:06");
INSERT INTO product_purchases VALUES("1385","308","1562","","30","30","1","46","0","0","0","1380","2021-07-13 12:07:00","2021-07-26 11:34:20");
INSERT INTO product_purchases VALUES("1386","308","1563","","30","30","1","55","0","0","0","1650","2021-07-13 12:07:00","2021-07-26 11:34:21");
INSERT INTO product_purchases VALUES("1387","308","1564","","6","6","1","50","0","0","0","300","2021-07-13 12:07:00","2021-07-26 11:34:21");
INSERT INTO product_purchases VALUES("1388","308","1565","","12","12","1","31","0","0","0","372","2021-07-13 12:07:00","2021-07-26 11:34:21");
INSERT INTO product_purchases VALUES("1389","308","1566","","144","144","1","2","0","0","0","288","2021-07-13 12:07:00","2021-07-26 11:34:21");
INSERT INTO product_purchases VALUES("1390","308","1567","","144","144","1","2.5","0","0","0","360","2021-07-13 12:07:00","2021-07-26 11:34:21");
INSERT INTO product_purchases VALUES("1391","309","1568","","3","3","1","320","0","0","0","960","2021-07-12 12:07:00","2021-07-26 12:04:33");
INSERT INTO product_purchases VALUES("1392","309","1569","","3","3","1","335","0","0","0","1005","2021-07-12 12:07:00","2021-07-26 12:04:34");
INSERT INTO product_purchases VALUES("1393","309","1570","","60","60","1","36.5","0","0","0","2190","2021-07-12 12:07:00","2021-07-26 12:04:34");
INSERT INTO product_purchases VALUES("1394","309","1571","","12","12","1","65","0","0","0","780","2021-07-12 12:07:00","2021-07-26 12:04:34");
INSERT INTO product_purchases VALUES("1395","309","1572","","12","12","1","65","0","0","0","780","2021-07-12 12:07:00","2021-07-26 12:04:34");
INSERT INTO product_purchases VALUES("1396","309","1573","","24","24","1","36.5","0","0","0","876","2021-07-12 12:07:00","2021-07-26 12:04:34");
INSERT INTO product_purchases VALUES("1397","310","1574","","24","24","1","33.75","0","0","0","810","2021-07-13 12:07:00","2021-07-26 12:31:16");
INSERT INTO product_purchases VALUES("1398","310","1575","","24","24","1","33.75","0","0","0","810","2021-07-13 12:07:00","2021-07-26 12:31:16");
INSERT INTO product_purchases VALUES("1399","310","1576","","24","24","1","37","0","0","0","888","2021-07-13 12:07:00","2021-07-26 12:31:16");
INSERT INTO product_purchases VALUES("1400","310","1577","","3","3","1","385","0","0","0","1155","2021-07-13 12:07:00","2021-07-26 12:31:16");
INSERT INTO product_purchases VALUES("1401","310","1578","","3","3","1","385","0","0","0","1155","2021-07-13 12:07:00","2021-07-26 12:31:16");
INSERT INTO product_purchases VALUES("1402","310","1579","","12","12","1","45","0","0","0","540","2021-07-13 12:07:00","2021-07-26 12:31:17");
INSERT INTO product_purchases VALUES("1403","311","1580","","60","60","2","66","0","0","0","3960","2021-07-23 12:07:00","2021-07-26 13:52:28");
INSERT INTO product_purchases VALUES("1404","311","1553","","10","10","2","50","0","0","0","500","2021-07-23 12:07:00","2021-07-26 13:52:28");
INSERT INTO product_purchases VALUES("1405","312","1474","","3","3","1","175","0","0","0","525","2021-07-24 12:07:00","2021-07-26 13:55:37");
INSERT INTO product_purchases VALUES("1406","313","1102","","20","20","7","100","0","0","0","2000","2021-07-25 12:07:00","2021-07-26 14:16:35");
INSERT INTO product_purchases VALUES("1407","313","1582","","20","20","2","2.75","0","0","0","55","2021-07-25 12:07:00","2021-07-26 14:16:35");
INSERT INTO product_purchases VALUES("1408","314","1583","","4","4","5","145","0","0","0","580","2021-07-25 12:07:00","2021-07-26 14:34:14");
INSERT INTO product_purchases VALUES("1409","314","908","","1","1","12","300","0","0","0","300","2021-07-25 12:07:00","2021-07-26 14:34:15");
INSERT INTO product_purchases VALUES("1410","314","912","","1","1","3","320","0","0","0","320","2021-07-25 12:07:00","2021-07-26 14:34:15");
INSERT INTO product_purchases VALUES("1411","314","910","","1","1","3","650","0","0","0","650","2021-07-25 12:07:00","2021-07-26 14:34:15");
INSERT INTO product_purchases VALUES("1412","314","1584","","1","1","3","1150","0","0","0","1150","2021-07-25 12:07:00","2021-07-26 14:34:15");
INSERT INTO product_purchases VALUES("1413","314","906","","1","1","6","3760","0","0","0","3760","2021-07-25 12:07:00","2021-07-26 14:34:15");
INSERT INTO product_purchases VALUES("1414","207","1277","","100","100","2","17","0","0","0","1700","2021-07-28 10:50:05","2021-07-28 10:50:05");
INSERT INTO product_purchases VALUES("1415","315","634","","1","1","1","863","0","0","0","863","2021-06-20 12:06:00","2021-07-28 12:12:31");
INSERT INTO product_purchases VALUES("1416","316","2","","1","1","1","7110","0","0","0","7110","2021-05-26 12:05:00","2021-07-28 14:59:53");
INSERT INTO product_purchases VALUES("1417","316","1","","1","1","1","3555","0","0","0","3555","2021-05-26 12:05:00","2021-07-28 14:59:53");
INSERT INTO product_purchases VALUES("1418","317","2","","1","1","1","7110","0","0","0","7110","2021-06-24 12:06:00","2021-07-28 15:02:25");
INSERT INTO product_purchases VALUES("1419","317","1","","2","2","1","3555","0","0","0","7110","2021-06-24 12:06:00","2021-07-28 15:02:25");
INSERT INTO product_purchases VALUES("1420","318","2","","2","2","1","7110","0","0","0","14220","2021-07-19 12:07:00","2021-07-28 15:06:00");
INSERT INTO product_purchases VALUES("1421","319","1585","","15","15","1","105","0","0","0","1575","2021-05-27 12:05:00","2021-07-29 10:31:24");
INSERT INTO product_purchases VALUES("1422","319","1586","","15","15","1","100","0","0","0","1500","2021-05-27 12:05:00","2021-07-29 10:31:24");
INSERT INTO product_purchases VALUES("1423","319","1587","","50","50","1","35","0","0","0","1750","2021-05-27 12:05:00","2021-07-29 10:31:25");
INSERT INTO product_purchases VALUES("1424","319","1588","","15","15","1","85","0","0","0","1275","2021-05-27 12:05:00","2021-07-29 10:31:25");
INSERT INTO product_purchases VALUES("1444","320","556","","4","4","1","300","0","0","0","1200","2021-07-29 10:56:00","2021-07-29 10:56:00");
INSERT INTO product_purchases VALUES("1445","320","103","","40","40","2","133","0","0","0","5320","2021-07-29 10:56:01","2021-07-29 10:56:01");
INSERT INTO product_purchases VALUES("1446","320","73","","90","90","2","68.5","0","0","0","6165","2021-07-29 10:56:01","2021-07-29 10:56:01");
INSERT INTO product_purchases VALUES("1447","320","532","","5","5","1","260","0","0","0","1300","2021-07-29 10:56:01","2021-07-29 10:56:01");
INSERT INTO product_purchases VALUES("1448","320","484","","6","6","1","102","0","0","0","612","2021-07-29 10:56:01","2021-07-29 10:56:01");
INSERT INTO product_purchases VALUES("1449","320","21","","1","1","2","180","0","0","0","180","2021-07-29 10:56:01","2021-07-29 10:56:01");
INSERT INTO product_purchases VALUES("1450","320","624","","32","32","1","21.75","0","0","0","696","2021-07-29 10:56:01","2021-07-29 10:56:01");
INSERT INTO product_purchases VALUES("1451","320","1582","","100","100","2","2.7","0","0","0","270","2021-07-29 10:56:01","2021-07-29 10:56:01");
INSERT INTO product_purchases VALUES("1452","320","1581","","100","100","2","2.2","0","0","0","220","2021-07-29 10:56:02","2021-07-29 10:56:02");
INSERT INTO product_purchases VALUES("1453","320","1396","","4","4","1","290","0","0","0","1160","2021-07-29 10:56:02","2021-07-29 10:56:02");
INSERT INTO product_purchases VALUES("1454","321","496","","2","2","1","190","0","0","0","380","2021-07-27 12:07:00","2021-07-29 11:38:45");
INSERT INTO product_purchases VALUES("1455","321","556","","1","1","1","280","0","0","0","280","2021-07-27 12:07:00","2021-07-29 11:38:45");
INSERT INTO product_purchases VALUES("1456","322","672","","30","30","1","30","0","0","0","900","2021-07-27 12:07:00","2021-07-29 11:40:30");
INSERT INTO product_purchases VALUES("1457","323","905","","1","1","6","1450","0","0","0","1450","2021-07-28 12:07:00","2021-07-29 11:42:59");
INSERT INTO product_purchases VALUES("1532","134","383","","6","6","1","72","0","0","0","432","2021-08-01 09:38:46","2021-08-01 09:38:46");
INSERT INTO product_purchases VALUES("1533","134","384","","6","6","1","65","0","0","0","390","2021-08-01 09:38:46","2021-08-01 09:38:46");
INSERT INTO product_purchases VALUES("1534","134","382","","12","12","1","125","0","0","0","1500","2021-08-01 09:38:46","2021-08-01 09:38:46");
INSERT INTO product_purchases VALUES("1535","134","385","","6","6","1","60","0","0","0","360","2021-08-01 09:38:46","2021-08-01 09:38:46");
INSERT INTO product_purchases VALUES("1536","134","386","","6","6","1","82","0","0","0","492","2021-08-01 09:38:46","2021-08-01 09:38:46");
INSERT INTO product_purchases VALUES("1537","134","387","","6","6","1","96","0","0","0","576","2021-08-01 09:38:47","2021-08-01 09:38:47");
INSERT INTO product_purchases VALUES("1538","134","388","","6","6","1","120","0","0","0","720","2021-08-01 09:38:47","2021-08-01 09:38:47");
INSERT INTO product_purchases VALUES("1539","134","389","","6","6","1","95","0","0","0","570","2021-08-01 09:38:47","2021-08-01 09:38:47");
INSERT INTO product_purchases VALUES("1540","134","390","","6","6","1","125","0","0","0","750","2021-08-01 09:38:47","2021-08-01 09:38:47");
INSERT INTO product_purchases VALUES("1541","134","391","","10","10","9","20","0","0","0","200","2021-08-01 09:38:47","2021-08-01 09:38:47");
INSERT INTO product_purchases VALUES("1542","134","392","","20","20","9","22","0","0","0","440","2021-08-01 09:38:47","2021-08-01 09:38:47");
INSERT INTO product_purchases VALUES("1543","134","393","","10","10","9","34","0","0","0","340","2021-08-01 09:38:47","2021-08-01 09:38:47");
INSERT INTO product_purchases VALUES("1544","134","394","","20","20","10","15","0","0","0","300","2021-08-01 09:38:47","2021-08-01 09:38:47");
INSERT INTO product_purchases VALUES("1545","134","395","","20","20","10","31","0","0","0","620","2021-08-01 09:38:48","2021-08-01 09:38:48");
INSERT INTO product_purchases VALUES("1546","134","396","","20","20","10","65","0","0","0","1300","2021-08-01 09:38:48","2021-08-01 09:38:48");
INSERT INTO product_purchases VALUES("1547","134","397","","20","20","10","74","0","0","0","1480","2021-08-01 09:38:48","2021-08-01 09:38:48");
INSERT INTO product_purchases VALUES("1548","134","398","","20","20","10","87","0","0","0","1740","2021-08-01 09:38:48","2021-08-01 09:38:48");
INSERT INTO product_purchases VALUES("1549","134","399","","10","10","10","140","0","0","0","1400","2021-08-01 09:38:48","2021-08-01 09:38:48");
INSERT INTO product_purchases VALUES("1550","134","400","","500","500","1","0.2","0","0","0","100","2021-08-01 09:38:48","2021-08-01 09:38:48");
INSERT INTO product_purchases VALUES("1551","134","401","","500","500","1","0.21","0","0","0","105","2021-08-01 09:38:48","2021-08-01 09:38:48");
INSERT INTO product_purchases VALUES("1552","134","402","","500","500","1","0.27","0","0","0","135","2021-08-01 09:38:48","2021-08-01 09:38:48");
INSERT INTO product_purchases VALUES("1553","134","403","","500","500","1","0.29","0","0","0","145","2021-08-01 09:38:48","2021-08-01 09:38:48");
INSERT INTO product_purchases VALUES("1554","134","404","","500","500","1","0.38","0","0","0","190","2021-08-01 09:38:49","2021-08-01 09:38:49");
INSERT INTO product_purchases VALUES("1555","134","405","","500","500","1","0.48","0","0","0","240","2021-08-01 09:38:49","2021-08-01 09:38:49");
INSERT INTO product_purchases VALUES("1556","134","406","","500","500","1","0.5","0","0","0","250","2021-08-01 09:38:49","2021-08-01 09:38:49");
INSERT INTO product_purchases VALUES("1557","134","407","","500","500","1","0.68","0","0","0","340","2021-08-01 09:38:49","2021-08-01 09:38:49");
INSERT INTO product_purchases VALUES("1558","134","408","","500","500","1","0.7","0","0","0","350","2021-08-01 09:38:49","2021-08-01 09:38:49");
INSERT INTO product_purchases VALUES("1559","134","409","","500","500","1","0.95","0","0","0","475","2021-08-01 09:38:49","2021-08-01 09:38:49");
INSERT INTO product_purchases VALUES("1560","134","410","","500","500","1","1.5","0","0","0","750","2021-08-01 09:38:49","2021-08-01 09:38:49");
INSERT INTO product_purchases VALUES("1561","134","411","","300","300","1","2.1","0","0","0","630","2021-08-01 09:38:50","2021-08-01 09:38:50");
INSERT INTO product_purchases VALUES("1562","134","412","","240","240","1","2.75","0","0","0","660","2021-08-01 09:38:50","2021-08-01 09:38:50");
INSERT INTO product_purchases VALUES("1563","134","413","","10","10","1","71","0","0","0","710","2021-08-01 09:38:50","2021-08-01 09:38:50");
INSERT INTO product_purchases VALUES("1564","134","414","","10","10","1","66","0","0","0","660","2021-08-01 09:38:50","2021-08-01 09:38:50");
INSERT INTO product_purchases VALUES("1565","134","415","","20","20","1","16","0","0","0","320","2021-08-01 09:38:50","2021-08-01 09:38:50");
INSERT INTO product_purchases VALUES("1566","134","416","","20","20","1","19","0","0","0","380","2021-08-01 09:38:51","2021-08-01 09:38:51");
INSERT INTO product_purchases VALUES("1567","134","927","","12","12","1","9","0","0","0","108","2021-08-01 09:38:51","2021-08-01 09:38:51");
INSERT INTO product_purchases VALUES("1568","134","928","","20","20","1","14","0","0","0","280","2021-08-01 09:38:51","2021-08-01 09:38:51");
INSERT INTO product_purchases VALUES("1569","324","856","","1","1","1","330","0","0","0","330","2021-07-31 12:07:00","2021-08-02 02:16:23");
INSERT INTO product_purchases VALUES("1570","197","1247","","6","6","1","310","0","0","0","1860","2021-08-02 02:35:19","2021-08-02 02:35:19");
INSERT INTO product_purchases VALUES("1571","197","1248","","6","6","1","210","0","0","0","1260","2021-08-02 02:35:19","2021-08-02 02:35:19");
INSERT INTO product_purchases VALUES("1572","197","1249","","3","3","1","335","0","0","0","1005","2021-08-02 02:35:19","2021-08-02 02:35:19");
INSERT INTO product_purchases VALUES("1573","197","1250","","3","3","1","247","0","0","0","741","2021-08-02 02:35:19","2021-08-02 02:35:19");
INSERT INTO product_purchases VALUES("1574","197","1251","","3","3","1","133","0","0","0","399","2021-08-02 02:35:19","2021-08-02 02:35:19");
INSERT INTO product_purchases VALUES("1575","197","1252","","3","3","1","70","0","0","0","210","2021-08-02 02:35:19","2021-08-02 02:35:19");
INSERT INTO product_purchases VALUES("1576","197","1253","","1","1","1","900","0","0","0","900","2021-08-02 02:35:20","2021-08-02 02:35:20");
INSERT INTO product_purchases VALUES("1577","197","1257","","12","12","1","46","0","0","0","552","2021-08-02 02:35:20","2021-08-02 02:35:20");
INSERT INTO product_purchases VALUES("1578","197","1258","","12","12","1","15","0","0","0","180","2021-08-02 02:35:20","2021-08-02 02:35:20");
INSERT INTO product_purchases VALUES("1579","197","1259","","6","6","1","46","0","0","0","276","2021-08-02 02:35:20","2021-08-02 02:35:20");
INSERT INTO product_purchases VALUES("1580","197","1260","","6","6","1","80","0","0","0","480","2021-08-02 02:35:20","2021-08-02 02:35:20");
INSERT INTO product_purchases VALUES("1581","197","1261","","20","20","1","30","0","0","0","600","2021-08-02 02:35:21","2021-08-02 02:35:21");
INSERT INTO product_purchases VALUES("1582","197","858","","6","6","1","76","0","0","0","456","2021-08-02 02:35:21","2021-08-02 02:35:21");
INSERT INTO product_purchases VALUES("1583","197","859","","6","6","1","116","0","0","0","696","2021-08-02 02:35:21","2021-08-02 02:35:21");
INSERT INTO product_purchases VALUES("1584","197","860","","6","6","1","247","0","0","0","1482","2021-08-02 02:35:21","2021-08-02 02:35:21");
INSERT INTO product_purchases VALUES("1585","325","1247","","6","6","1","310","0","0","0","1860","2021-07-28 12:07:00","2021-08-02 02:46:56");
INSERT INTO product_purchases VALUES("1586","325","1254","","1","1","1","880","0","0","0","880","2021-07-28 12:07:00","2021-08-02 02:46:57");
INSERT INTO product_purchases VALUES("1587","325","860","","20","20","1","247","0","0","0","4940","2021-07-28 12:07:00","2021-08-02 02:46:57");
INSERT INTO product_purchases VALUES("1588","325","858","","12","12","1","80","0","0","0","960","2021-07-28 12:07:00","2021-08-02 02:46:57");
INSERT INTO product_purchases VALUES("1626","327","1590","","1","1","1","680","0","0","0","680","2021-07-31 12:07:00","2021-08-02 14:02:35");
INSERT INTO product_purchases VALUES("1627","327","908","","1","1","12","300","0","0","0","300","2021-07-31 12:07:00","2021-08-02 14:02:35");
INSERT INTO product_purchases VALUES("1628","328","1197","","50","50","1","10.5","0","0","0","525","2021-07-27 12:07:00","2021-08-02 14:11:30");
INSERT INTO product_purchases VALUES("1629","328","1130","","50","50","1","15","0","0","0","750","2021-07-27 12:07:00","2021-08-02 14:11:30");
INSERT INTO product_purchases VALUES("1630","328","1126","","10","10","1","45","0","0","0","450","2021-07-27 12:07:00","2021-08-02 14:11:30");
INSERT INTO product_purchases VALUES("1631","326","283","","20","20","1","120","0","0","0","2400","2021-08-05 02:23:56","2021-08-05 02:23:56");
INSERT INTO product_purchases VALUES("1632","326","285","","20","20","1","13","0","0","0","260","2021-08-05 02:23:56","2021-08-05 02:23:56");
INSERT INTO product_purchases VALUES("1633","326","311","","60","60","1","50","0","0","0","3000","2021-08-05 02:23:56","2021-08-05 02:23:56");
INSERT INTO product_purchases VALUES("1634","326","350","","2","2","1","540","0","0","0","1080","2021-08-05 02:23:56","2021-08-05 02:23:56");
INSERT INTO product_purchases VALUES("1635","326","378","","48","48","1","90","0","0","0","4320","2021-08-05 02:23:56","2021-08-05 02:23:56");
INSERT INTO product_purchases VALUES("1636","326","347","","6","6","1","430","0","0","0","2580","2021-08-05 02:23:56","2021-08-05 02:23:56");
INSERT INTO product_purchases VALUES("1637","326","293","","24","24","1","7","0","0","0","168","2021-08-05 02:23:56","2021-08-05 02:23:56");
INSERT INTO product_purchases VALUES("1638","326","294","","24","24","1","10","0","0","0","240","2021-08-05 02:23:56","2021-08-05 02:23:56");
INSERT INTO product_purchases VALUES("1639","326","295","","24","24","1","11.25","0","0","0","270","2021-08-05 02:23:56","2021-08-05 02:23:56");
INSERT INTO product_purchases VALUES("1640","326","296","","24","24","1","13.5","0","0","0","324","2021-08-05 02:23:57","2021-08-05 02:23:57");
INSERT INTO product_purchases VALUES("1641","326","297","","24","24","1","16.25","0","0","0","390","2021-08-05 02:23:57","2021-08-05 02:23:57");
INSERT INTO product_purchases VALUES("1642","326","334","","20","20","1","97","0","0","0","1940","2021-08-05 02:23:57","2021-08-05 02:23:57");
INSERT INTO product_purchases VALUES("1643","326","1061","","10","10","8","57.5","0","0","0","575","2021-08-05 02:23:57","2021-08-05 02:23:57");
INSERT INTO product_purchases VALUES("1644","326","1062","","10","10","8","57.5","0","0","0","575","2021-08-05 02:23:57","2021-08-05 02:23:57");
INSERT INTO product_purchases VALUES("1645","326","1063","","10","10","8","57.5","0","0","0","575","2021-08-05 02:23:57","2021-08-05 02:23:57");
INSERT INTO product_purchases VALUES("1646","326","1064","","10","10","8","57.5","0","0","0","575","2021-08-05 02:23:57","2021-08-05 02:23:57");
INSERT INTO product_purchases VALUES("1647","326","374","","20","20","8","62","0","0","0","1240","2021-08-05 02:23:57","2021-08-05 02:23:57");
INSERT INTO product_purchases VALUES("1648","326","375","","20","20","8","32","0","0","0","640","2021-08-05 02:23:57","2021-08-05 02:23:57");
INSERT INTO product_purchases VALUES("1649","326","1589","","80","80","7","33.5","0","0","0","2680","2021-08-05 02:23:58","2021-08-05 02:23:58");
INSERT INTO product_purchases VALUES("1650","164","1082","","500","500","7","19.41","0","0","0","9705","2021-08-05 02:28:41","2021-08-05 02:28:41");
INSERT INTO product_purchases VALUES("1651","164","1083","","500","500","7","19.41","0","0","0","9705","2021-08-05 02:28:41","2021-08-05 02:28:41");
INSERT INTO product_purchases VALUES("1652","164","1084","","200","200","7","19.41","0","0","0","3882","2021-08-05 02:28:41","2021-08-05 02:28:41");
INSERT INTO product_purchases VALUES("1653","164","1085","","200","200","7","21.5","0","0","0","4300","2021-08-05 02:28:41","2021-08-05 02:28:41");
INSERT INTO product_purchases VALUES("1654","164","1086","","200","200","7","29.45","0","0","0","5890","2021-08-05 02:28:42","2021-08-05 02:28:42");
INSERT INTO product_purchases VALUES("1655","164","1087","","200","200","7","29.45","0","0","0","5890","2021-08-05 02:28:42","2021-08-05 02:28:42");
INSERT INTO product_purchases VALUES("1656","164","1088","","100","100","7","29.45","0","0","0","2945","2021-08-05 02:28:42","2021-08-05 02:28:42");
INSERT INTO product_purchases VALUES("1657","164","1089","","100","100","7","42.78","0","0","0","4278","2021-08-05 02:28:42","2021-08-05 02:28:42");
INSERT INTO product_purchases VALUES("1658","164","1090","","100","100","7","42.78","0","0","0","4278","2021-08-05 02:28:42","2021-08-05 02:28:42");
INSERT INTO product_purchases VALUES("1659","163","1082","","400","400","7","19.41","0","0","0","7764","2021-08-05 02:32:34","2021-08-05 02:32:34");
INSERT INTO product_purchases VALUES("1660","163","1083","","100","100","7","19.41","0","0","0","1941","2021-08-05 02:32:34","2021-08-05 02:32:34");
INSERT INTO product_purchases VALUES("1661","163","1081","","100","100","7","14.83","0","0","0","1483","2021-08-05 02:32:34","2021-08-05 02:32:34");
INSERT INTO product_purchases VALUES("1662","163","1086","","100","100","7","29.45","0","0","0","2945","2021-08-05 02:32:34","2021-08-05 02:32:34");
INSERT INTO product_purchases VALUES("1663","163","1087","","100","100","7","29.45","0","0","0","2945","2021-08-05 02:32:35","2021-08-05 02:32:35");
INSERT INTO product_purchases VALUES("1664","163","1089","","100","100","7","42.78","0","0","0","4278","2021-08-05 02:32:35","2021-08-05 02:32:35");
INSERT INTO product_purchases VALUES("1665","289","1548","","200","200","7","22.24","0","0","0","4448","2021-08-05 02:35:54","2021-08-05 02:35:54");
INSERT INTO product_purchases VALUES("1666","289","1082","","500","500","7","19.41","0","0","0","9705","2021-08-05 02:35:54","2021-08-05 02:35:54");
INSERT INTO product_purchases VALUES("1667","289","1086","","200","200","7","29.45","0","0","0","5890","2021-08-05 02:35:54","2021-08-05 02:35:54");
INSERT INTO product_purchases VALUES("1668","289","1087","","200","200","7","29.45","0","0","0","5890","2021-08-05 02:35:54","2021-08-05 02:35:54");
INSERT INTO product_purchases VALUES("1669","289","1089","","100","100","7","42.78","0","0","0","4278","2021-08-05 02:35:54","2021-08-05 02:35:54");
INSERT INTO product_purchases VALUES("1670","289","1090","","100","100","7","42.78","0","0","0","4278","2021-08-05 02:35:54","2021-08-05 02:35:54");
INSERT INTO product_purchases VALUES("1671","289","1544","","300","300","7","22.24","0","0","0","6672","2021-08-05 02:35:54","2021-08-05 02:35:54");
INSERT INTO product_purchases VALUES("1672","289","1546","","300","300","7","22.24","0","0","0","6672","2021-08-05 02:35:54","2021-08-05 02:35:54");
INSERT INTO product_purchases VALUES("1673","289","1550","","200","200","7","35.49","0","0","0","7098","2021-08-05 02:35:55","2021-08-05 02:35:55");
INSERT INTO product_purchases VALUES("1674","289","1551","","200","200","7","35.49","0","0","0","7098","2021-08-05 02:35:55","2021-08-05 02:35:55");
INSERT INTO product_purchases VALUES("1675","278","1089","","38","38","7","46","0","0","0","1748","2021-08-05 02:39:24","2021-08-05 02:39:24");
INSERT INTO product_purchases VALUES("1676","165","1101","","100","100","7","98.4","0","0","0","9840","2021-08-05 02:41:55","2021-08-05 02:41:55");
INSERT INTO product_purchases VALUES("1677","166","1091","","200","200","7","15.41","0","0","0","3082","2021-08-05 02:44:18","2021-08-05 02:44:18");
INSERT INTO product_purchases VALUES("1678","166","1092","","300","300","7","20.13","0","0","0","6039","2021-08-05 02:44:18","2021-08-05 02:44:18");
INSERT INTO product_purchases VALUES("1679","166","1093","","300","300","7","20.13","0","0","0","6039","2021-08-05 02:44:18","2021-08-05 02:44:18");
INSERT INTO product_purchases VALUES("1680","166","1096","","200","200","7","30.55","0","0","0","6110","2021-08-05 02:44:18","2021-08-05 02:44:18");
INSERT INTO product_purchases VALUES("1681","166","1097","","200","200","7","30.55","0","0","0","6110","2021-08-05 02:44:18","2021-08-05 02:44:18");
INSERT INTO product_purchases VALUES("1682","166","1099","","100","100","7","44.37","0","0","0","4437","2021-08-05 02:44:18","2021-08-05 02:44:18");
INSERT INTO product_purchases VALUES("1683","166","1100","","100","100","7","44.37","0","0","0","4437","2021-08-05 02:44:18","2021-08-05 02:44:18");
INSERT INTO product_purchases VALUES("1692","167","1103","","100","100","7","12.82","0","0","0","1282","2021-08-05 02:50:58","2021-08-05 02:50:58");
INSERT INTO product_purchases VALUES("1693","167","1104","","500","500","7","16.77","0","0","0","8385","2021-08-05 02:50:58","2021-08-05 02:50:58");
INSERT INTO product_purchases VALUES("1694","167","1105","","400","400","7","16.77","0","0","0","6708","2021-08-05 02:50:58","2021-08-05 02:50:58");
INSERT INTO product_purchases VALUES("1695","167","1106","","100","100","7","16.76","0","0","0","1676","2021-08-05 02:50:58","2021-08-05 02:50:58");
INSERT INTO product_purchases VALUES("1696","167","1108","","200","200","7","25.48","0","0","0","5096","2021-08-05 02:50:58","2021-08-05 02:50:58");
INSERT INTO product_purchases VALUES("1697","167","1109","","200","200","7","25.48","0","0","0","5096","2021-08-05 02:50:59","2021-08-05 02:50:59");
INSERT INTO product_purchases VALUES("1698","167","1112","","100","100","7","37.02","0","0","0","3702","2021-08-05 02:50:59","2021-08-05 02:50:59");
INSERT INTO product_purchases VALUES("1699","167","1117","","5","5","1","1650","0","0","0","8250","2021-08-05 02:50:59","2021-08-05 02:50:59");
INSERT INTO product_purchases VALUES("1700","168","1118","","100","100","7","20.83","0","0","0","2083","2021-08-05 02:53:30","2021-08-05 02:53:30");
INSERT INTO product_purchases VALUES("1701","168","1119","","100","100","7","20.84","0","0","0","2084","2021-08-05 02:53:30","2021-08-05 02:53:30");
INSERT INTO product_purchases VALUES("1702","118","893","","50","50","1","63","0","0","0","3150","2021-08-10 02:24:05","2021-08-10 02:24:05");
INSERT INTO product_purchases VALUES("1703","118","306","","50","50","1","56","0","0","0","2800","2021-08-10 02:24:06","2021-08-10 02:24:06");
INSERT INTO product_purchases VALUES("1704","118","332","","36","36","1","37","0","0","0","1332","2021-08-10 02:24:06","2021-08-10 02:24:06");
INSERT INTO product_purchases VALUES("1705","118","333","","24","24","1","76","0","0","0","1824","2021-08-10 02:24:06","2021-08-10 02:24:06");
INSERT INTO product_purchases VALUES("1706","118","334","","20","20","1","97","0","0","0","1940","2021-08-10 02:24:06","2021-08-10 02:24:06");
INSERT INTO product_purchases VALUES("1707","118","335","","20","20","1","123","0","0","0","2460","2021-08-10 02:24:06","2021-08-10 02:24:06");
INSERT INTO product_purchases VALUES("1708","118","285","","20","20","1","13","0","0","0","260","2021-08-10 02:24:06","2021-08-10 02:24:06");
INSERT INTO product_purchases VALUES("1709","118","287","","20","20","1","40","0","0","0","800","2021-08-10 02:24:06","2021-08-10 02:24:06");
INSERT INTO product_purchases VALUES("1710","118","374","","20","20","8","62","0","0","0","1240","2021-08-10 02:24:06","2021-08-10 02:24:06");
INSERT INTO product_purchases VALUES("1711","118","376","","10","10","8","28","0","0","0","280","2021-08-10 02:24:07","2021-08-10 02:24:07");
INSERT INTO product_purchases VALUES("1712","118","377","","10","10","8","28","0","0","0","280","2021-08-10 02:24:07","2021-08-10 02:24:07");
INSERT INTO product_purchases VALUES("1713","118","375","","20","20","8","32","0","0","0","640","2021-08-10 02:24:07","2021-08-10 02:24:07");
INSERT INTO product_purchases VALUES("1714","118","894","","10","10","8","45","0","0","0","450","2021-08-10 02:24:07","2021-08-10 02:24:07");
INSERT INTO product_purchases VALUES("1715","118","895","","10","10","8","20","0","0","0","200","2021-08-10 02:24:07","2021-08-10 02:24:07");
INSERT INTO product_purchases VALUES("1716","118","896","","10","10","8","20","0","0","0","200","2021-08-10 02:24:08","2021-08-10 02:24:08");
INSERT INTO product_purchases VALUES("1717","118","303","","100","100","1","33","0","0","0","3300","2021-08-10 02:24:08","2021-08-10 02:24:08");
INSERT INTO product_purchases VALUES("1718","118","920","","100","100","7","42.5","0","0","0","4250","2021-08-10 02:24:08","2021-08-10 02:24:08");
INSERT INTO product_purchases VALUES("1719","118","921","","6","6","1","600","0","0","0","3600","2021-08-10 02:24:08","2021-08-10 02:24:08");
INSERT INTO product_purchases VALUES("1720","118","922","","4","4","1","980","0","0","0","3920","2021-08-10 02:24:08","2021-08-10 02:24:08");
INSERT INTO product_purchases VALUES("1721","118","897","","25","25","1","26","0","0","0","650","2021-08-10 02:24:09","2021-08-10 02:24:09");
INSERT INTO product_purchases VALUES("1722","118","898","","20","20","1","34","0","0","0","680","2021-08-10 02:24:09","2021-08-10 02:24:09");
INSERT INTO product_purchases VALUES("1723","118","899","","10","10","1","70","0","0","0","700","2021-08-10 02:24:09","2021-08-10 02:24:09");
INSERT INTO product_purchases VALUES("1724","118","900","","72","72","1","4","0","0","0","288","2021-08-10 02:24:09","2021-08-10 02:24:09");
INSERT INTO product_purchases VALUES("1725","118","340","","84","84","1","22.5","0","0","0","1890","2021-08-10 02:24:09","2021-08-10 02:24:09");
INSERT INTO product_purchases VALUES("1726","118","341","","36","36","1","22.5","0","0","0","810","2021-08-10 02:24:09","2021-08-10 02:24:09");
INSERT INTO product_purchases VALUES("1727","118","1073","","10","10","8","74","0","0","0","740","2021-08-10 02:24:09","2021-08-10 02:24:09");
INSERT INTO product_purchases VALUES("1728","118","1074","","10","10","8","74","0","0","0","740","2021-08-10 02:24:10","2021-08-10 02:24:10");
INSERT INTO product_purchases VALUES("1729","118","1075","","10","10","8","74","0","0","0","740","2021-08-10 02:24:10","2021-08-10 02:24:10");
INSERT INTO product_purchases VALUES("1730","118","1076","","10","10","8","74","0","0","0","740","2021-08-10 02:24:10","2021-08-10 02:24:10");
INSERT INTO product_purchases VALUES("1731","329","707","","300","300","1","19","0","0","0","5700","2021-06-08 12:06:00","2021-08-17 03:17:14");
INSERT INTO product_purchases VALUES("1732","329","709","","200","200","1","11","0","0","0","2200","2021-06-08 12:06:00","2021-08-17 03:17:14");
INSERT INTO product_purchases VALUES("1733","329","711","","50","50","1","123","0","0","0","6150","2021-06-08 12:06:00","2021-08-17 03:17:14");
INSERT INTO product_purchases VALUES("1734","329","718","","20","20","1","164","0","0","0","3280","2021-06-08 12:06:00","2021-08-17 03:17:14");
INSERT INTO product_purchases VALUES("1735","329","710","","30","30","1","123","0","0","0","3690","2021-06-08 12:06:00","2021-08-17 03:17:15");
INSERT INTO product_purchases VALUES("1736","329","712","","100","100","1","16","0","0","0","1600","2021-06-08 12:06:00","2021-08-17 03:17:15");
INSERT INTO product_purchases VALUES("1737","329","719","","100","100","1","24","0","0","0","2400","2021-06-08 12:06:00","2021-08-17 03:17:15");
INSERT INTO product_purchases VALUES("1738","329","728","","200","200","1","75","0","0","0","15000","2021-06-08 12:06:00","2021-08-17 03:17:15");
INSERT INTO product_purchases VALUES("1739","329","729","","200","200","1","75","0","0","0","15000","2021-06-08 12:06:00","2021-08-17 03:17:15");
INSERT INTO product_purchases VALUES("1740","329","730","","200","200","1","73","0","0","0","14600","2021-06-08 12:06:00","2021-08-17 03:17:15");
INSERT INTO product_purchases VALUES("1741","329","736","","100","100","1","100","0","0","0","10000","2021-06-08 12:06:00","2021-08-17 03:17:16");
INSERT INTO product_purchases VALUES("1742","329","264","","200","200","2","46","0","0","0","9200","2021-06-08 12:06:00","2021-08-17 03:17:16");
INSERT INTO product_purchases VALUES("1743","329","263","","300","300","2","29","0","0","0","8700","2021-06-08 12:06:00","2021-08-17 03:17:16");
INSERT INTO product_purchases VALUES("1744","329","262","","100","100","2","24","0","0","0","2400","2021-06-08 12:06:00","2021-08-17 03:17:16");
INSERT INTO product_purchases VALUES("1745","329","863","","24","24","1","280","0","0","0","6720","2021-06-08 12:06:00","2021-08-17 03:17:16");
INSERT INTO product_purchases VALUES("1746","329","862","","48","48","1","190","0","0","0","9120","2021-06-08 12:06:00","2021-08-17 03:17:16");
INSERT INTO product_purchases VALUES("1747","329","864","","60","60","1","110","0","0","0","6600","2021-06-08 12:06:00","2021-08-17 03:17:16");
INSERT INTO product_purchases VALUES("1748","330","680","","200","200","1","23","0","0","0","4600","2021-06-08 12:06:00","2021-08-17 03:37:42");
INSERT INTO product_purchases VALUES("1749","330","684","","700","700","1","18","0","0","0","12600","2021-06-08 12:06:00","2021-08-17 03:37:42");
INSERT INTO product_purchases VALUES("1750","330","682","","150","150","1","56","0","0","0","8400","2021-06-08 12:06:00","2021-08-17 03:37:42");
INSERT INTO product_purchases VALUES("1751","330","681","","400","400","1","18","0","0","0","7200","2021-06-08 12:06:00","2021-08-17 03:37:42");
INSERT INTO product_purchases VALUES("1752","330","673","","380","380","1","19.5","0","0","0","7410","2021-06-08 12:06:00","2021-08-17 03:37:42");
INSERT INTO product_purchases VALUES("1753","330","677","","500","500","1","13","0","0","0","6500","2021-06-08 12:06:00","2021-08-17 03:37:42");
INSERT INTO product_purchases VALUES("1754","330","675","","192","192","1","42.5","0","0","0","8160","2021-06-08 12:06:00","2021-08-17 03:37:42");
INSERT INTO product_purchases VALUES("1755","330","674","","760","760","1","10.5","0","0","0","7980","2021-06-08 12:06:00","2021-08-17 03:37:43");
INSERT INTO product_purchases VALUES("1756","330","687","","144","144","1","65","0","0","0","9360","2021-06-08 12:06:00","2021-08-17 03:37:43");
INSERT INTO product_purchases VALUES("1757","330","686","","73","73","1","65","0","0","0","4745","2021-06-08 12:06:00","2021-08-17 03:37:43");
INSERT INTO product_purchases VALUES("1758","330","691","","240","240","1","45","0","0","0","10800","2021-06-08 12:06:00","2021-08-17 03:37:43");
INSERT INTO product_purchases VALUES("1759","330","689","","72","72","1","170","0","0","0","12240","2021-06-08 12:06:00","2021-08-17 03:37:43");
INSERT INTO product_purchases VALUES("1760","330","678","","50","50","1","45","0","0","0","2250","2021-06-08 12:06:00","2021-08-17 03:37:44");
INSERT INTO product_purchases VALUES("1761","330","692","","12","12","1","135","0","0","0","1620","2021-06-08 12:06:00","2021-08-17 03:37:44");
INSERT INTO product_purchases VALUES("1762","330","685","","50","50","1","85","0","0","0","4250","2021-06-08 12:06:00","2021-08-17 03:37:44");
INSERT INTO product_purchases VALUES("1763","330","679","","100","100","1","26","0","0","0","2600","2021-06-08 12:06:00","2021-08-17 03:37:44");



CREATE TABLE `product_quotation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quotation_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `product_returns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `product_sales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `product_transfer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `product_variants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `item_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_price` double DEFAULT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `product_warehouse` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1091 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_warehouse VALUES("1","1","","1","3","","2021-06-13 13:17:07","2021-07-28 15:02:25");
INSERT INTO product_warehouse VALUES("2","2","","1","4","","2021-06-13 13:22:21","2021-07-28 15:06:00");
INSERT INTO product_warehouse VALUES("3","277","","1","40","","2021-06-23 02:33:07","2021-07-01 12:44:04");
INSERT INTO product_warehouse VALUES("4","332","","1","48","","2021-06-23 02:54:12","2021-08-10 02:24:06");
INSERT INTO product_warehouse VALUES("5","333","","1","36","","2021-06-23 02:59:17","2021-08-10 02:24:06");
INSERT INTO product_warehouse VALUES("6","334","","1","50","","2021-06-23 03:00:17","2021-08-10 02:24:06");
INSERT INTO product_warehouse VALUES("7","335","","1","30","","2021-06-23 03:00:57","2021-08-10 02:24:06");
INSERT INTO product_warehouse VALUES("8","278","","1","100","","2021-07-01 12:45:19","2021-07-01 12:45:19");
INSERT INTO product_warehouse VALUES("9","279","","1","20","","2021-07-01 12:47:12","2021-07-03 15:07:13");
INSERT INTO product_warehouse VALUES("10","280","","1","20","","2021-07-01 12:48:35","2021-07-01 12:48:35");
INSERT INTO product_warehouse VALUES("11","281","","1","20","","2021-07-01 12:49:31","2021-07-01 12:49:31");
INSERT INTO product_warehouse VALUES("12","282","","1","20","","2021-07-01 13:48:36","2021-07-14 11:19:43");
INSERT INTO product_warehouse VALUES("13","283","","1","40","","2021-07-01 13:49:30","2021-08-05 02:23:55");
INSERT INTO product_warehouse VALUES("14","284","","1","10","","2021-07-01 13:50:16","2021-07-01 13:50:16");
INSERT INTO product_warehouse VALUES("15","285","","1","60","","2021-07-01 13:51:05","2021-08-10 02:24:06");
INSERT INTO product_warehouse VALUES("16","286","","1","10","","2021-07-01 13:51:57","2021-07-01 13:51:57");
INSERT INTO product_warehouse VALUES("17","287","","1","30","","2021-07-01 13:52:31","2021-08-10 02:24:06");
INSERT INTO product_warehouse VALUES("18","288","","1","10","","2021-07-01 13:53:07","2021-07-01 13:53:07");
INSERT INTO product_warehouse VALUES("19","289","","1","12","","2021-07-01 13:53:59","2021-07-01 13:53:59");
INSERT INTO product_warehouse VALUES("20","290","","1","12","","2021-07-01 13:54:38","2021-07-14 10:34:11");
INSERT INTO product_warehouse VALUES("21","291","","1","12","","2021-07-01 13:55:10","2021-07-01 13:55:10");
INSERT INTO product_warehouse VALUES("22","292","","1","12","","2021-07-01 13:57:18","2021-07-01 13:57:18");
INSERT INTO product_warehouse VALUES("23","293","","1","36","","2021-07-01 14:05:27","2021-08-05 02:23:56");
INSERT INTO product_warehouse VALUES("24","294","","1","36","","2021-07-01 14:06:02","2021-08-05 02:23:56");
INSERT INTO product_warehouse VALUES("25","295","","1","36","","2021-07-01 14:06:52","2021-08-05 02:23:56");
INSERT INTO product_warehouse VALUES("26","296","","1","36","","2021-07-01 14:08:08","2021-08-05 02:23:56");
INSERT INTO product_warehouse VALUES("27","297","","1","36","","2021-07-01 14:08:51","2021-08-05 02:23:57");
INSERT INTO product_warehouse VALUES("28","298","","1","12","","2021-07-01 14:09:24","2021-07-01 14:09:24");
INSERT INTO product_warehouse VALUES("29","299","","1","12","","2021-07-01 14:10:00","2021-07-01 14:10:00");
INSERT INTO product_warehouse VALUES("30","300","","1","12","","2021-07-01 14:11:01","2021-07-14 10:44:09");
INSERT INTO product_warehouse VALUES("31","301","","1","12","","2021-07-01 14:11:54","2021-07-14 10:45:17");
INSERT INTO product_warehouse VALUES("32","302","","1","100","","2021-07-01 14:13:15","2021-07-01 14:13:15");
INSERT INTO product_warehouse VALUES("33","303","","1","300","","2021-07-01 14:16:28","2021-08-10 02:24:08");
INSERT INTO product_warehouse VALUES("34","304","","1","200","","2021-07-01 14:17:27","2021-07-25 14:18:34");
INSERT INTO product_warehouse VALUES("35","305","","1","200","","2021-07-01 14:18:11","2021-07-25 14:18:33");
INSERT INTO product_warehouse VALUES("36","306","","1","100","","2021-07-01 14:19:06","2021-08-10 02:24:05");
INSERT INTO product_warehouse VALUES("37","307","","1","52","","2021-07-01 14:19:43","2021-07-01 14:19:43");
INSERT INTO product_warehouse VALUES("38","308","","1","50","","2021-07-01 14:20:27","2021-07-01 14:20:27");
INSERT INTO product_warehouse VALUES("39","309","","1","60","","2021-07-01 14:21:36","2021-07-14 10:58:58");
INSERT INTO product_warehouse VALUES("40","310","","1","24","","2021-07-01 14:22:27","2021-07-14 11:00:45");
INSERT INTO product_warehouse VALUES("41","311","","1","96","","2021-07-01 14:23:21","2021-08-05 02:23:56");
INSERT INTO product_warehouse VALUES("42","312","","1","36","","2021-07-01 14:24:05","2021-07-14 11:02:29");
INSERT INTO product_warehouse VALUES("43","313","","1","60","","2021-07-01 14:25:25","2021-07-14 11:03:45");
INSERT INTO product_warehouse VALUES("44","314","","1","24","","2021-07-01 14:26:44","2021-07-14 11:05:25");
INSERT INTO product_warehouse VALUES("45","315","","1","12","","2021-07-01 14:28:03","2021-07-14 11:07:03");
INSERT INTO product_warehouse VALUES("46","316","","1","12","","2021-07-01 14:28:43","2021-07-01 14:28:43");
INSERT INTO product_warehouse VALUES("47","317","","1","72","","2021-07-01 14:29:44","2021-07-01 14:29:44");
INSERT INTO product_warehouse VALUES("48","318","","1","24","","2021-07-01 14:30:31","2021-07-05 12:15:56");
INSERT INTO product_warehouse VALUES("49","321","","1","20","","2021-07-01 14:53:46","2021-07-01 14:53:46");
INSERT INTO product_warehouse VALUES("50","322","","1","12","","2021-07-01 14:54:46","2021-07-01 14:54:46");
INSERT INTO product_warehouse VALUES("51","324","","1","10","","2021-07-01 14:58:33","2021-07-01 14:58:33");
INSERT INTO product_warehouse VALUES("52","325","","1","5","","2021-07-01 14:59:13","2021-07-01 14:59:13");
INSERT INTO product_warehouse VALUES("53","326","","1","1","","2021-07-01 14:59:55","2021-07-01 14:59:55");
INSERT INTO product_warehouse VALUES("54","327","","1","1","","2021-07-01 15:00:24","2021-07-01 15:00:24");
INSERT INTO product_warehouse VALUES("55","328","","1","10","","2021-07-01 15:01:03","2021-07-01 15:01:03");
INSERT INTO product_warehouse VALUES("56","329","","1","5","","2021-07-01 15:01:44","2021-07-01 15:01:44");
INSERT INTO product_warehouse VALUES("57","330","","1","5","","2021-07-01 15:02:20","2021-07-01 15:02:20");
INSERT INTO product_warehouse VALUES("58","331","","1","10","","2021-07-01 15:03:25","2021-07-01 15:03:25");
INSERT INTO product_warehouse VALUES("59","336","","1","12","","2021-07-01 15:07:09","2021-07-01 15:07:09");
INSERT INTO product_warehouse VALUES("60","337","","1","12","","2021-07-01 15:07:41","2021-07-02 05:21:38");
INSERT INTO product_warehouse VALUES("61","338","","1","10","","2021-07-01 15:08:12","2021-07-01 15:08:12");
INSERT INTO product_warehouse VALUES("62","339","","1","10","","2021-07-01 15:08:50","2021-07-01 15:08:50");
INSERT INTO product_warehouse VALUES("63","344","","1","2","","2021-07-01 15:09:44","2021-07-30 15:30:10");
INSERT INTO product_warehouse VALUES("64","345","","1","2","","2021-07-01 15:10:22","2021-07-01 15:10:22");
INSERT INTO product_warehouse VALUES("65","346","","1","1","","2021-07-01 15:10:56","2021-07-01 15:10:56");
INSERT INTO product_warehouse VALUES("66","340","","1","204","","2021-07-01 15:12:08","2021-08-10 02:24:09");
INSERT INTO product_warehouse VALUES("67","341","","1","72","","2021-07-01 15:13:19","2021-08-10 02:24:09");
INSERT INTO product_warehouse VALUES("68","342","","1","3","","2021-07-01 15:14:22","2021-07-01 15:14:22");
INSERT INTO product_warehouse VALUES("69","343","","1","3","","2021-07-01 15:14:54","2021-07-01 15:14:54");
INSERT INTO product_warehouse VALUES("70","347","","1","12","","2021-07-01 15:15:43","2021-08-05 02:23:56");
INSERT INTO product_warehouse VALUES("71","348","","1","3","","2021-07-01 15:16:21","2021-07-01 15:16:21");
INSERT INTO product_warehouse VALUES("72","349","","1","3","","2021-07-01 15:16:55","2021-07-01 15:16:55");
INSERT INTO product_warehouse VALUES("73","350","","1","4","","2021-07-01 15:17:41","2021-08-05 02:23:56");
INSERT INTO product_warehouse VALUES("74","351","","1","72","","2021-07-01 15:18:40","2021-07-01 15:18:40");
INSERT INTO product_warehouse VALUES("75","352","","1","60","","2021-07-01 15:19:28","2021-07-01 15:19:28");
INSERT INTO product_warehouse VALUES("76","353","","1","36","","2021-07-01 15:20:19","2021-07-01 15:20:19");
INSERT INTO product_warehouse VALUES("77","354","","1","24","","2021-07-01 15:20:53","2021-07-01 15:20:53");
INSERT INTO product_warehouse VALUES("78","355","","1","24","","2021-07-01 15:21:22","2021-07-01 15:21:22");
INSERT INTO product_warehouse VALUES("79","356","","1","20","","2021-07-01 15:22:13","2021-07-01 15:22:13");
INSERT INTO product_warehouse VALUES("80","357","","1","60","","2021-07-01 15:23:08","2021-07-01 15:23:08");
INSERT INTO product_warehouse VALUES("81","358","","1","60","","2021-07-01 16:13:40","2021-07-01 16:13:40");
INSERT INTO product_warehouse VALUES("82","359","","1","6","","2021-07-01 16:14:25","2021-07-01 16:14:25");
INSERT INTO product_warehouse VALUES("83","360","","1","6","","2021-07-01 16:14:56","2021-07-01 16:14:56");
INSERT INTO product_warehouse VALUES("84","361","","1","6","","2021-07-01 16:16:08","2021-07-01 16:16:08");
INSERT INTO product_warehouse VALUES("85","362","","1","36","","2021-07-01 16:17:31","2021-07-01 16:17:31");
INSERT INTO product_warehouse VALUES("86","363","","1","24","","2021-07-01 16:21:07","2021-07-01 16:21:07");
INSERT INTO product_warehouse VALUES("87","364","","1","36","","2021-07-01 16:21:59","2021-07-01 16:21:59");
INSERT INTO product_warehouse VALUES("88","365","","1","12","","2021-07-01 16:22:46","2021-07-01 16:22:46");
INSERT INTO product_warehouse VALUES("89","366","","1","48","","2021-07-01 16:24:06","2021-07-01 16:24:06");
INSERT INTO product_warehouse VALUES("90","367","","1","18","","2021-07-01 16:24:54","2021-07-01 16:24:54");
INSERT INTO product_warehouse VALUES("91","368","","1","24","","2021-07-01 16:25:32","2021-07-01 16:25:32");
INSERT INTO product_warehouse VALUES("92","369","","1","12","","2021-07-01 16:26:35","2021-07-01 16:26:35");
INSERT INTO product_warehouse VALUES("93","370","","1","12","","2021-07-01 16:27:08","2021-07-01 16:27:08");
INSERT INTO product_warehouse VALUES("94","371","","1","2","","2021-07-01 16:27:51","2021-07-01 16:27:51");
INSERT INTO product_warehouse VALUES("95","372","","1","200","","2021-07-01 16:29:59","2021-07-01 16:29:59");
INSERT INTO product_warehouse VALUES("96","373","","1","320","","2021-07-01 16:32:12","2021-07-25 14:18:34");
INSERT INTO product_warehouse VALUES("97","374","","1","60","","2021-07-01 16:32:46","2021-08-10 02:24:06");
INSERT INTO product_warehouse VALUES("98","375","","1","60","","2021-07-01 16:33:25","2021-08-10 02:24:07");
INSERT INTO product_warehouse VALUES("99","376","","1","20","","2021-07-01 16:33:56","2021-08-10 02:24:06");
INSERT INTO product_warehouse VALUES("100","377","","1","20","","2021-07-01 16:34:26","2021-08-10 02:24:07");
INSERT INTO product_warehouse VALUES("101","378","","1","96","","2021-07-01 16:35:28","2021-08-05 02:23:56");
INSERT INTO product_warehouse VALUES("102","379","","1","18","","2021-07-01 16:36:09","2021-07-01 16:36:09");
INSERT INTO product_warehouse VALUES("103","380","","1","40","","2021-07-01 16:36:55","2021-07-01 16:36:55");
INSERT INTO product_warehouse VALUES("104","381","","1","6","","2021-07-01 16:37:33","2021-07-01 16:37:33");
INSERT INTO product_warehouse VALUES("105","319","","1","24","","2021-07-05 12:17:17","2021-07-05 12:24:57");
INSERT INTO product_warehouse VALUES("106","320","","1","20","","2021-07-05 12:18:56","2021-07-14 11:19:43");
INSERT INTO product_warehouse VALUES("107","915","","1","12","","2021-07-05 12:33:06","2021-07-05 12:33:06");
INSERT INTO product_warehouse VALUES("108","323","","1","25","","2021-07-05 12:34:11","2021-07-05 12:34:11");
INSERT INTO product_warehouse VALUES("109","893","","1","52","","2021-07-05 15:28:50","2021-08-10 02:24:05");
INSERT INTO product_warehouse VALUES("110","916","","1","0","","2021-07-05 15:28:51","2021-08-10 02:24:03");
INSERT INTO product_warehouse VALUES("111","917","","1","0","","2021-07-05 15:28:52","2021-08-10 02:24:03");
INSERT INTO product_warehouse VALUES("112","918","","1","0","","2021-07-05 15:28:52","2021-08-10 02:24:03");
INSERT INTO product_warehouse VALUES("113","919","","1","0","","2021-07-05 15:28:52","2021-08-10 02:24:04");
INSERT INTO product_warehouse VALUES("114","894","","1","10","","2021-07-05 15:28:52","2021-08-10 02:24:07");
INSERT INTO product_warehouse VALUES("115","895","","1","10","","2021-07-05 15:28:52","2021-08-10 02:24:07");
INSERT INTO product_warehouse VALUES("116","896","","1","10","","2021-07-05 15:28:52","2021-08-10 02:24:07");
INSERT INTO product_warehouse VALUES("117","920","","1","300","","2021-07-05 15:28:52","2021-08-10 02:24:08");
INSERT INTO product_warehouse VALUES("118","921","","1","6","","2021-07-05 15:28:52","2021-08-10 02:24:08");
INSERT INTO product_warehouse VALUES("119","922","","1","4","","2021-07-05 15:28:52","2021-08-10 02:24:08");
INSERT INTO product_warehouse VALUES("120","897","","1","25","","2021-07-05 15:28:53","2021-08-10 02:24:09");
INSERT INTO product_warehouse VALUES("121","898","","1","20","","2021-07-05 15:28:53","2021-08-10 02:24:09");
INSERT INTO product_warehouse VALUES("122","899","","1","10","","2021-07-05 15:28:53","2021-08-10 02:24:09");
INSERT INTO product_warehouse VALUES("123","900","","1","72","","2021-07-05 15:28:53","2021-08-10 02:24:09");
INSERT INTO product_warehouse VALUES("124","901","","1","9","","2021-07-06 13:39:31","2021-07-06 14:08:01");
INSERT INTO product_warehouse VALUES("125","902","","1","6","","2021-07-06 13:39:31","2021-07-06 14:06:13");
INSERT INTO product_warehouse VALUES("126","903","","1","2","","2021-07-06 13:39:32","2021-07-06 13:39:32");
INSERT INTO product_warehouse VALUES("127","904","","1","7","","2021-07-06 13:39:32","2021-07-06 13:39:32");
INSERT INTO product_warehouse VALUES("128","905","","1","10","","2021-07-06 13:43:00","2021-07-29 11:42:59");
INSERT INTO product_warehouse VALUES("129","912","","1","3","","2021-07-06 13:48:14","2021-07-26 14:34:15");
INSERT INTO product_warehouse VALUES("130","923","","1","5","","2021-07-06 13:55:41","2021-07-06 13:55:41");
INSERT INTO product_warehouse VALUES("131","924","","1","10","","2021-07-06 13:58:28","2021-07-06 13:58:28");
INSERT INTO product_warehouse VALUES("132","925","","1","20","","2021-07-06 13:58:28","2021-07-06 13:58:28");
INSERT INTO product_warehouse VALUES("133","926","","1","10","","2021-07-06 13:58:28","2021-07-06 13:58:28");
INSERT INTO product_warehouse VALUES("134","909","","1","2","","2021-07-06 14:02:29","2021-07-06 14:02:29");
INSERT INTO product_warehouse VALUES("135","911","","1","2","","2021-07-06 14:02:29","2021-07-06 14:02:29");
INSERT INTO product_warehouse VALUES("136","906","","1","4","","2021-07-06 14:06:13","2021-07-26 14:34:15");
INSERT INTO product_warehouse VALUES("137","907","","1","1","","2021-07-06 14:06:14","2021-07-06 14:06:14");
INSERT INTO product_warehouse VALUES("138","908","","1","3","","2021-07-06 14:06:14","2021-08-02 14:02:35");
INSERT INTO product_warehouse VALUES("139","383","","1","6","","2021-07-08 12:39:36","2021-08-01 09:38:46");
INSERT INTO product_warehouse VALUES("140","384","","1","6","","2021-07-08 12:39:36","2021-08-01 09:38:46");
INSERT INTO product_warehouse VALUES("141","382","","1","12","","2021-07-08 12:39:36","2021-08-01 09:38:46");
INSERT INTO product_warehouse VALUES("142","385","","1","6","","2021-07-08 12:39:37","2021-08-01 09:38:46");
INSERT INTO product_warehouse VALUES("143","386","","1","6","","2021-07-08 12:39:37","2021-08-01 09:38:46");
INSERT INTO product_warehouse VALUES("144","387","","1","6","","2021-07-08 12:39:37","2021-08-01 09:38:46");
INSERT INTO product_warehouse VALUES("145","388","","1","6","","2021-07-08 12:39:37","2021-08-01 09:38:47");
INSERT INTO product_warehouse VALUES("146","389","","1","6","","2021-07-08 12:39:37","2021-08-01 09:38:47");
INSERT INTO product_warehouse VALUES("147","390","","1","6","","2021-07-08 12:39:38","2021-08-01 09:38:47");
INSERT INTO product_warehouse VALUES("148","391","","1","10","","2021-07-08 12:39:38","2021-08-01 09:38:47");
INSERT INTO product_warehouse VALUES("149","392","","1","20","","2021-07-08 12:39:38","2021-08-01 09:38:47");
INSERT INTO product_warehouse VALUES("150","393","","1","10","","2021-07-08 12:39:38","2021-08-01 09:38:47");
INSERT INTO product_warehouse VALUES("151","394","","1","20","","2021-07-08 12:39:38","2021-08-01 09:38:47");
INSERT INTO product_warehouse VALUES("152","395","","1","20","","2021-07-08 12:39:38","2021-08-01 09:38:47");
INSERT INTO product_warehouse VALUES("153","396","","1","20","","2021-07-08 12:39:38","2021-08-01 09:38:48");
INSERT INTO product_warehouse VALUES("154","397","","1","20","","2021-07-08 12:39:38","2021-08-01 09:38:48");
INSERT INTO product_warehouse VALUES("155","398","","1","42","","2021-07-08 12:39:39","2021-08-01 09:38:48");
INSERT INTO product_warehouse VALUES("156","399","","1","10","","2021-07-08 12:39:39","2021-08-01 09:38:48");
INSERT INTO product_warehouse VALUES("157","400","","1","500","","2021-07-08 12:39:39","2021-08-01 09:38:48");
INSERT INTO product_warehouse VALUES("158","401","","1","500","","2021-07-08 12:39:39","2021-08-01 09:38:48");
INSERT INTO product_warehouse VALUES("159","402","","1","500","","2021-07-08 12:39:39","2021-08-01 09:38:48");
INSERT INTO product_warehouse VALUES("160","403","","1","500","","2021-07-08 12:39:39","2021-08-01 09:38:48");
INSERT INTO product_warehouse VALUES("161","404","","1","500","","2021-07-08 12:39:39","2021-08-01 09:38:49");
INSERT INTO product_warehouse VALUES("162","405","","1","500","","2021-07-08 12:39:39","2021-08-01 09:38:49");
INSERT INTO product_warehouse VALUES("163","406","","1","500","","2021-07-08 12:39:40","2021-08-01 09:38:49");
INSERT INTO product_warehouse VALUES("164","407","","1","500","","2021-07-08 12:39:40","2021-08-01 09:38:49");
INSERT INTO product_warehouse VALUES("165","408","","1","500","","2021-07-08 12:39:40","2021-08-01 09:38:49");
INSERT INTO product_warehouse VALUES("166","409","","1","500","","2021-07-08 12:39:40","2021-08-01 09:38:49");
INSERT INTO product_warehouse VALUES("167","410","","1","500","","2021-07-08 12:39:40","2021-08-01 09:38:49");
INSERT INTO product_warehouse VALUES("168","411","","1","300","","2021-07-08 12:39:40","2021-08-01 09:38:50");
INSERT INTO product_warehouse VALUES("169","412","","1","240","","2021-07-08 12:39:40","2021-08-01 09:38:50");
INSERT INTO product_warehouse VALUES("170","413","","1","10","","2021-07-08 12:39:40","2021-08-01 09:38:50");
INSERT INTO product_warehouse VALUES("171","414","","1","10","","2021-07-08 12:39:40","2021-08-01 09:38:50");
INSERT INTO product_warehouse VALUES("172","415","","1","20","","2021-07-08 12:39:41","2021-08-01 09:38:50");
INSERT INTO product_warehouse VALUES("173","416","","1","20","","2021-07-08 12:39:41","2021-08-01 09:38:50");
INSERT INTO product_warehouse VALUES("174","927","","1","12","","2021-07-08 12:39:41","2021-08-01 09:38:51");
INSERT INTO product_warehouse VALUES("175","928","","1","20","","2021-07-08 12:39:41","2021-08-01 09:38:51");
INSERT INTO product_warehouse VALUES("176","417","","1","20","","2021-07-08 12:41:48","2021-07-15 10:12:58");
INSERT INTO product_warehouse VALUES("177","418","","1","48","","2021-07-08 12:53:28","2021-07-08 13:51:33");
INSERT INTO product_warehouse VALUES("178","419","","1","48","","2021-07-08 12:53:28","2021-07-08 13:51:33");
INSERT INTO product_warehouse VALUES("179","420","","1","30","","2021-07-08 12:53:28","2021-07-08 13:51:33");
INSERT INTO product_warehouse VALUES("180","421","","1","6","","2021-07-08 12:53:28","2021-07-08 12:53:28");
INSERT INTO product_warehouse VALUES("181","422","","1","12","","2021-07-08 12:53:28","2021-07-08 12:53:28");
INSERT INTO product_warehouse VALUES("182","423","","1","6","","2021-07-08 12:53:28","2021-07-26 04:07:15");
INSERT INTO product_warehouse VALUES("183","424","","1","4","","2021-07-08 12:53:28","2021-07-08 12:53:28");
INSERT INTO product_warehouse VALUES("184","425","","1","3","","2021-07-08 12:53:29","2021-07-08 12:53:29");
INSERT INTO product_warehouse VALUES("185","426","","1","20","","2021-07-08 12:53:29","2021-07-08 12:53:29");
INSERT INTO product_warehouse VALUES("186","929","","1","12","","2021-07-08 13:51:33","2021-07-08 13:51:33");
INSERT INTO product_warehouse VALUES("187","930","","1","12","","2021-07-08 13:51:33","2021-07-08 13:51:33");
INSERT INTO product_warehouse VALUES("188","428","","1","12","","2021-07-08 14:16:34","2021-07-08 14:16:34");
INSERT INTO product_warehouse VALUES("189","429","","1","12","","2021-07-08 14:16:34","2021-07-08 14:16:34");
INSERT INTO product_warehouse VALUES("190","430","","1","24","","2021-07-08 14:16:34","2021-07-08 14:16:34");
INSERT INTO product_warehouse VALUES("191","431","","1","12","","2021-07-08 14:16:34","2021-07-08 14:16:34");
INSERT INTO product_warehouse VALUES("192","432","","1","12","","2021-07-08 14:16:34","2021-07-08 14:16:34");
INSERT INTO product_warehouse VALUES("193","433","","1","24","","2021-07-08 14:16:35","2021-07-08 14:16:35");
INSERT INTO product_warehouse VALUES("194","434","","1","24","","2021-07-08 14:16:35","2021-07-08 14:16:35");
INSERT INTO product_warehouse VALUES("195","435","","1","6","","2021-07-08 14:20:03","2021-07-08 14:20:03");
INSERT INTO product_warehouse VALUES("196","436","","1","3","","2021-07-08 14:20:03","2021-07-08 14:20:03");
INSERT INTO product_warehouse VALUES("197","437","","1","3","","2021-07-08 14:20:04","2021-07-08 14:20:04");
INSERT INTO product_warehouse VALUES("198","438","","1","6","","2021-07-08 14:24:19","2021-07-08 14:24:19");
INSERT INTO product_warehouse VALUES("199","439","","1","6","","2021-07-08 14:24:19","2021-07-08 14:24:19");
INSERT INTO product_warehouse VALUES("200","440","","1","6","","2021-07-08 14:24:20","2021-07-08 14:24:20");
INSERT INTO product_warehouse VALUES("201","441","","1","3","","2021-07-08 14:24:20","2021-07-08 14:24:20");
INSERT INTO product_warehouse VALUES("202","442","","1","3","","2021-07-08 14:24:20","2021-07-08 14:24:20");
INSERT INTO product_warehouse VALUES("203","443","","1","6","","2021-07-08 14:30:38","2021-07-08 15:02:34");
INSERT INTO product_warehouse VALUES("204","444","","1","6","","2021-07-08 14:30:38","2021-07-08 15:02:34");
INSERT INTO product_warehouse VALUES("205","445","","1","6","","2021-07-08 14:30:38","2021-07-08 15:02:34");
INSERT INTO product_warehouse VALUES("206","446","","1","3","","2021-07-08 14:30:38","2021-07-08 15:02:34");
INSERT INTO product_warehouse VALUES("207","447","","1","16","","2021-07-08 14:30:38","2021-07-08 15:02:35");
INSERT INTO product_warehouse VALUES("208","448","","1","6","","2021-07-08 14:30:38","2021-07-08 15:02:35");
INSERT INTO product_warehouse VALUES("209","449","","1","10","","2021-07-08 14:30:39","2021-07-08 15:02:35");
INSERT INTO product_warehouse VALUES("210","451","","1","12","","2021-07-08 14:30:39","2021-07-08 15:02:35");
INSERT INTO product_warehouse VALUES("211","452","","1","12","","2021-07-08 14:30:39","2021-07-08 15:02:35");
INSERT INTO product_warehouse VALUES("212","453","","1","12","","2021-07-08 14:30:39","2021-07-08 15:02:35");
INSERT INTO product_warehouse VALUES("213","427","","1","0","","2021-07-08 14:50:13","2021-07-08 15:09:15");
INSERT INTO product_warehouse VALUES("214","450","","1","20","","2021-07-08 15:07:44","2021-07-08 15:07:44");
INSERT INTO product_warehouse VALUES("215","454","","1","12","","2021-07-08 15:44:13","2021-07-08 15:44:13");
INSERT INTO product_warehouse VALUES("216","455","","1","12","","2021-07-08 15:44:13","2021-07-08 15:44:13");
INSERT INTO product_warehouse VALUES("217","456","","1","6","","2021-07-08 15:44:13","2021-07-08 15:44:13");
INSERT INTO product_warehouse VALUES("218","457","","1","12","","2021-07-08 15:44:13","2021-07-08 15:44:13");
INSERT INTO product_warehouse VALUES("219","458","","1","8","","2021-07-08 15:44:13","2021-07-08 15:44:13");
INSERT INTO product_warehouse VALUES("220","459","","1","3","","2021-07-08 15:44:13","2021-07-08 15:44:13");
INSERT INTO product_warehouse VALUES("221","460","","1","3","","2021-07-08 15:44:13","2021-07-08 15:44:13");
INSERT INTO product_warehouse VALUES("222","461","","1","15","","2021-07-08 15:44:13","2021-07-08 15:44:13");
INSERT INTO product_warehouse VALUES("223","462","","1","6","","2021-07-08 15:44:14","2021-07-08 15:44:14");
INSERT INTO product_warehouse VALUES("224","463","","1","12","","2021-07-08 15:44:14","2021-07-08 15:44:14");
INSERT INTO product_warehouse VALUES("225","464","","1","5","","2021-07-08 15:44:14","2021-07-08 15:44:14");
INSERT INTO product_warehouse VALUES("226","465","","1","20","","2021-07-08 15:44:14","2021-07-08 15:44:14");
INSERT INTO product_warehouse VALUES("227","466","","1","10","","2021-07-08 15:44:14","2021-07-08 15:44:14");
INSERT INTO product_warehouse VALUES("228","467","","1","2","","2021-07-08 15:44:15","2021-07-08 15:44:15");
INSERT INTO product_warehouse VALUES("229","468","","1","6","","2021-07-08 15:44:15","2021-07-08 15:44:15");
INSERT INTO product_warehouse VALUES("230","469","","1","3","","2021-07-08 15:44:15","2021-07-08 15:44:15");
INSERT INTO product_warehouse VALUES("231","470","","1","2","","2021-07-08 15:44:15","2021-07-08 15:44:15");
INSERT INTO product_warehouse VALUES("232","959","","1","3","","2021-07-09 12:32:41","2021-07-09 12:32:41");
INSERT INTO product_warehouse VALUES("233","960","","1","6","","2021-07-09 12:32:41","2021-07-09 12:32:41");
INSERT INTO product_warehouse VALUES("234","961","","1","6","","2021-07-09 12:32:41","2021-07-09 12:32:41");
INSERT INTO product_warehouse VALUES("235","963","","1","10","","2021-07-09 15:06:52","2021-07-09 15:06:52");
INSERT INTO product_warehouse VALUES("236","964","","1","10","","2021-07-09 15:06:52","2021-07-09 15:06:52");
INSERT INTO product_warehouse VALUES("237","965","","1","20","","2021-07-09 15:06:52","2021-07-09 15:45:23");
INSERT INTO product_warehouse VALUES("238","966","","1","10","","2021-07-09 15:06:52","2021-07-09 15:06:52");
INSERT INTO product_warehouse VALUES("239","967","","1","10","","2021-07-09 15:06:52","2021-07-09 15:06:52");
INSERT INTO product_warehouse VALUES("240","968","","1","10","","2021-07-09 15:06:52","2021-07-09 15:06:52");
INSERT INTO product_warehouse VALUES("241","969","","1","10","","2021-07-09 15:06:53","2021-07-09 15:06:53");
INSERT INTO product_warehouse VALUES("242","970","","1","18","","2021-07-09 15:06:53","2021-07-09 15:45:24");
INSERT INTO product_warehouse VALUES("243","971","","1","30","","2021-07-09 15:06:53","2021-07-09 15:45:24");
INSERT INTO product_warehouse VALUES("244","972","","1","10","","2021-07-10 12:14:36","2021-07-10 12:14:36");
INSERT INTO product_warehouse VALUES("245","973","","1","10","","2021-07-10 12:14:36","2021-07-10 12:14:36");
INSERT INTO product_warehouse VALUES("246","974","","1","10","","2021-07-10 12:14:36","2021-07-10 12:14:36");
INSERT INTO product_warehouse VALUES("247","975","","1","10","","2021-07-10 12:14:36","2021-07-10 12:14:36");
INSERT INTO product_warehouse VALUES("248","976","","1","10","","2021-07-10 12:14:36","2021-07-10 12:14:36");
INSERT INTO product_warehouse VALUES("249","977","","1","20","","2021-07-10 12:14:36","2021-07-10 12:14:36");
INSERT INTO product_warehouse VALUES("250","978","","1","10","","2021-07-10 12:14:36","2021-07-10 12:14:36");
INSERT INTO product_warehouse VALUES("251","979","","1","5","","2021-07-10 12:14:36","2021-07-10 12:14:36");
INSERT INTO product_warehouse VALUES("252","980","","1","5","","2021-07-10 12:14:37","2021-07-10 12:14:37");
INSERT INTO product_warehouse VALUES("253","981","","1","5","","2021-07-10 12:14:37","2021-07-10 12:14:37");
INSERT INTO product_warehouse VALUES("254","982","","1","5","","2021-07-10 12:14:37","2021-07-10 12:14:37");
INSERT INTO product_warehouse VALUES("255","983","","1","120","","2021-07-10 12:14:37","2021-07-10 12:14:37");
INSERT INTO product_warehouse VALUES("256","984","","1","72","","2021-07-10 12:14:37","2021-07-10 12:14:37");
INSERT INTO product_warehouse VALUES("257","985","","1","12","","2021-07-10 12:14:37","2021-07-10 12:14:37");
INSERT INTO product_warehouse VALUES("258","986","","1","12","","2021-07-10 12:14:37","2021-07-10 12:14:37");
INSERT INTO product_warehouse VALUES("259","987","","1","12","","2021-07-10 12:14:38","2021-07-10 12:14:38");
INSERT INTO product_warehouse VALUES("260","988","","1","40","","2021-07-10 12:14:38","2021-07-10 12:14:38");
INSERT INTO product_warehouse VALUES("261","989","","1","2","","2021-07-10 12:14:38","2021-07-10 12:14:38");
INSERT INTO product_warehouse VALUES("262","990","","1","2","","2021-07-10 12:14:38","2021-07-10 12:14:38");
INSERT INTO product_warehouse VALUES("263","991","","1","2","","2021-07-10 12:14:38","2021-07-10 12:14:38");
INSERT INTO product_warehouse VALUES("264","473","","1","30","","2021-07-10 13:10:10","2021-07-10 13:12:50");
INSERT INTO product_warehouse VALUES("265","474","","1","10","","2021-07-10 13:10:10","2021-07-10 13:10:10");
INSERT INTO product_warehouse VALUES("266","992","","1","50","","2021-07-10 13:10:10","2021-07-10 13:10:10");
INSERT INTO product_warehouse VALUES("267","1045","","1","10","","2021-07-12 11:11:22","2021-07-12 11:11:22");
INSERT INTO product_warehouse VALUES("268","1046","","1","10","","2021-07-12 11:11:22","2021-07-12 11:11:22");
INSERT INTO product_warehouse VALUES("269","1007","","1","10","","2021-07-12 14:37:42","2021-07-12 14:37:42");
INSERT INTO product_warehouse VALUES("270","1008","","1","20","","2021-07-12 14:37:42","2021-07-12 14:53:22");
INSERT INTO product_warehouse VALUES("271","1009","","1","10","","2021-07-12 14:37:42","2021-07-12 14:37:42");
INSERT INTO product_warehouse VALUES("272","1010","","1","10","","2021-07-12 14:37:42","2021-07-12 14:37:42");
INSERT INTO product_warehouse VALUES("273","1011","","1","10","","2021-07-12 14:37:42","2021-07-12 14:37:42");
INSERT INTO product_warehouse VALUES("274","1012","","1","20","","2021-07-12 14:37:42","2021-07-12 14:58:34");
INSERT INTO product_warehouse VALUES("275","1013","","1","10","","2021-07-12 14:37:42","2021-07-12 14:37:42");
INSERT INTO product_warehouse VALUES("276","1014","","1","10","","2021-07-12 14:37:43","2021-07-12 14:37:43");
INSERT INTO product_warehouse VALUES("277","1015","","1","10","","2021-07-12 14:37:43","2021-07-12 14:37:43");
INSERT INTO product_warehouse VALUES("278","1016","","1","20","","2021-07-12 14:37:43","2021-07-12 14:53:22");
INSERT INTO product_warehouse VALUES("279","1017","","1","10","","2021-07-12 14:37:43","2021-07-12 14:37:43");
INSERT INTO product_warehouse VALUES("280","1018","","1","10","","2021-07-12 14:37:43","2021-07-12 14:37:43");
INSERT INTO product_warehouse VALUES("281","1019","","1","10","","2021-07-12 14:37:43","2021-07-12 14:37:43");
INSERT INTO product_warehouse VALUES("282","1031","","1","10","","2021-07-12 14:37:43","2021-07-12 14:37:43");
INSERT INTO product_warehouse VALUES("283","1032","","1","10","","2021-07-12 14:37:44","2021-07-12 14:37:44");
INSERT INTO product_warehouse VALUES("284","1020","","1","10","","2021-07-12 14:44:45","2021-07-12 14:44:45");
INSERT INTO product_warehouse VALUES("285","1021","","1","10","","2021-07-12 14:44:45","2021-07-12 14:44:45");
INSERT INTO product_warehouse VALUES("286","1022","","1","10","","2021-07-12 14:44:45","2021-07-12 14:44:45");
INSERT INTO product_warehouse VALUES("287","1023","","1","10","","2021-07-12 14:44:45","2021-07-12 14:44:45");
INSERT INTO product_warehouse VALUES("288","1024","","1","10","","2021-07-12 14:44:45","2021-07-12 14:44:45");
INSERT INTO product_warehouse VALUES("289","1025","","1","10","","2021-07-12 14:44:46","2021-07-12 14:44:46");
INSERT INTO product_warehouse VALUES("290","1026","","1","10","","2021-07-12 14:44:46","2021-07-12 14:44:46");
INSERT INTO product_warehouse VALUES("291","1027","","1","10","","2021-07-12 14:44:46","2021-07-12 14:44:46");
INSERT INTO product_warehouse VALUES("292","1028","","1","10","","2021-07-12 14:44:46","2021-07-12 14:44:46");
INSERT INTO product_warehouse VALUES("293","1029","","1","10","","2021-07-12 14:44:46","2021-07-12 14:44:46");
INSERT INTO product_warehouse VALUES("294","1030","","1","6","","2021-07-12 14:44:46","2021-07-12 14:44:46");
INSERT INTO product_warehouse VALUES("295","1033","","1","1","","2021-07-12 14:50:49","2021-07-12 14:50:49");
INSERT INTO product_warehouse VALUES("296","1034","","1","1","","2021-07-12 14:50:49","2021-07-12 14:50:49");
INSERT INTO product_warehouse VALUES("297","1035","","1","1","","2021-07-12 14:50:49","2021-07-12 14:50:49");
INSERT INTO product_warehouse VALUES("298","1036","","1","1","","2021-07-12 14:50:50","2021-07-12 14:50:50");
INSERT INTO product_warehouse VALUES("299","1037","","1","1","","2021-07-12 14:50:50","2021-07-12 14:50:50");
INSERT INTO product_warehouse VALUES("300","1038","","1","1","","2021-07-12 14:50:50","2021-07-12 14:50:50");
INSERT INTO product_warehouse VALUES("301","1039","","1","1","","2021-07-12 14:50:50","2021-07-12 14:50:50");
INSERT INTO product_warehouse VALUES("302","1040","","1","1","","2021-07-12 14:50:50","2021-07-12 14:50:50");
INSERT INTO product_warehouse VALUES("303","1041","","1","1","","2021-07-12 14:50:50","2021-07-12 14:50:50");
INSERT INTO product_warehouse VALUES("304","1042","","1","1","","2021-07-12 14:50:51","2021-07-12 14:50:51");
INSERT INTO product_warehouse VALUES("305","1043","","1","1","","2021-07-12 14:50:51","2021-07-12 14:50:51");
INSERT INTO product_warehouse VALUES("306","1044","","1","1","","2021-07-12 14:50:51","2021-07-12 14:50:51");
INSERT INTO product_warehouse VALUES("307","993","","1","10","","2021-07-12 15:12:19","2021-07-12 15:12:19");
INSERT INTO product_warehouse VALUES("308","994","","1","10","","2021-07-12 15:12:19","2021-07-12 15:12:19");
INSERT INTO product_warehouse VALUES("309","995","","1","10","","2021-07-12 15:12:19","2021-07-12 15:12:19");
INSERT INTO product_warehouse VALUES("310","996","","1","10","","2021-07-12 15:12:19","2021-07-12 15:12:19");
INSERT INTO product_warehouse VALUES("311","997","","1","10","","2021-07-12 15:12:19","2021-07-12 15:12:19");
INSERT INTO product_warehouse VALUES("312","998","","1","10","","2021-07-12 15:12:20","2021-07-12 15:12:20");
INSERT INTO product_warehouse VALUES("313","999","","1","10","","2021-07-12 15:12:20","2021-07-12 15:12:20");
INSERT INTO product_warehouse VALUES("314","1000","","1","10","","2021-07-12 15:12:20","2021-07-12 15:12:20");
INSERT INTO product_warehouse VALUES("315","1001","","1","10","","2021-07-12 15:12:20","2021-07-12 15:12:20");
INSERT INTO product_warehouse VALUES("316","1002","","1","10","","2021-07-12 15:12:20","2021-07-12 15:12:20");
INSERT INTO product_warehouse VALUES("317","1003","","1","10","","2021-07-12 15:12:20","2021-07-12 15:12:20");
INSERT INTO product_warehouse VALUES("318","1004","","1","10","","2021-07-12 15:12:20","2021-07-12 15:12:20");
INSERT INTO product_warehouse VALUES("319","1005","","1","3","","2021-07-12 15:12:20","2021-07-12 15:12:20");
INSERT INTO product_warehouse VALUES("320","1006","","1","50","","2021-07-12 15:12:20","2021-07-12 15:12:20");
INSERT INTO product_warehouse VALUES("321","962","","1","50","","2021-07-12 15:15:45","2021-07-12 15:15:45");
INSERT INTO product_warehouse VALUES("322","1061","","1","15","","2021-07-12 16:09:18","2021-08-05 02:23:57");
INSERT INTO product_warehouse VALUES("323","1062","","1","15","","2021-07-12 16:09:18","2021-08-05 02:23:57");
INSERT INTO product_warehouse VALUES("324","1063","","1","15","","2021-07-12 16:09:18","2021-08-05 02:23:57");
INSERT INTO product_warehouse VALUES("325","1064","","1","15","","2021-07-12 16:09:18","2021-08-05 02:23:57");
INSERT INTO product_warehouse VALUES("326","1065","","1","5","","2021-07-12 16:09:18","2021-07-12 16:09:18");
INSERT INTO product_warehouse VALUES("327","1066","","1","5","","2021-07-12 16:09:18","2021-07-12 16:09:18");
INSERT INTO product_warehouse VALUES("328","1067","","1","10","","2021-07-12 16:09:19","2021-07-12 16:09:19");
INSERT INTO product_warehouse VALUES("329","1068","","1","10","","2021-07-12 16:09:19","2021-07-12 16:09:19");
INSERT INTO product_warehouse VALUES("330","1069","","1","3","","2021-07-12 16:09:19","2021-07-12 16:09:19");
INSERT INTO product_warehouse VALUES("331","1070","","1","3","","2021-07-12 16:09:19","2021-07-12 16:09:19");
INSERT INTO product_warehouse VALUES("332","1071","","1","3","","2021-07-12 16:09:19","2021-07-12 16:09:19");
INSERT INTO product_warehouse VALUES("333","1072","","1","3","","2021-07-12 16:09:20","2021-07-12 16:09:20");
INSERT INTO product_warehouse VALUES("334","1073","","1","12","","2021-07-12 16:09:20","2021-08-10 02:24:09");
INSERT INTO product_warehouse VALUES("335","1074","","1","12","","2021-07-12 16:09:20","2021-08-10 02:24:09");
INSERT INTO product_warehouse VALUES("336","1075","","1","12","","2021-07-12 16:09:20","2021-08-10 02:24:10");
INSERT INTO product_warehouse VALUES("337","1076","","1","12","","2021-07-12 16:09:20","2021-08-10 02:24:10");
INSERT INTO product_warehouse VALUES("338","1077","","1","5","","2021-07-12 16:09:20","2021-07-12 16:09:20");
INSERT INTO product_warehouse VALUES("339","1078","","1","5","","2021-07-12 16:09:20","2021-07-12 16:09:20");
INSERT INTO product_warehouse VALUES("340","1079","","1","5","","2021-07-12 16:09:21","2021-07-12 16:09:21");
INSERT INTO product_warehouse VALUES("341","1080","","1","5","","2021-07-12 16:09:21","2021-07-12 16:09:21");
INSERT INTO product_warehouse VALUES("342","1082","","1","1400","","2021-07-12 17:28:45","2021-08-05 02:35:54");
INSERT INTO product_warehouse VALUES("343","1083","","1","600","","2021-07-12 17:28:45","2021-08-05 02:32:34");
INSERT INTO product_warehouse VALUES("344","1081","","1","100","","2021-07-12 17:28:45","2021-08-05 02:32:34");
INSERT INTO product_warehouse VALUES("345","1086","","1","500","","2021-07-12 17:28:46","2021-08-05 02:35:54");
INSERT INTO product_warehouse VALUES("346","1087","","1","500","","2021-07-12 17:28:46","2021-08-05 02:35:54");
INSERT INTO product_warehouse VALUES("347","1089","","1","338","","2021-07-12 17:28:46","2021-08-05 02:39:24");
INSERT INTO product_warehouse VALUES("348","1084","","1","200","","2021-07-12 17:34:18","2021-08-05 02:28:41");
INSERT INTO product_warehouse VALUES("349","1085","","1","200","","2021-07-12 17:34:18","2021-08-05 02:28:41");
INSERT INTO product_warehouse VALUES("350","1088","","1","100","","2021-07-12 17:34:19","2021-08-05 02:28:42");
INSERT INTO product_warehouse VALUES("351","1090","","1","200","","2021-07-12 17:34:19","2021-08-05 02:35:54");
INSERT INTO product_warehouse VALUES("352","1101","","1","100","","2021-07-13 04:20:52","2021-08-05 02:41:55");
INSERT INTO product_warehouse VALUES("353","1091","","1","200","","2021-07-13 04:25:02","2021-08-05 02:44:18");
INSERT INTO product_warehouse VALUES("354","1092","","1","300","","2021-07-13 04:25:02","2021-08-05 02:44:18");
INSERT INTO product_warehouse VALUES("355","1093","","1","300","","2021-07-13 04:25:02","2021-08-05 02:44:18");
INSERT INTO product_warehouse VALUES("356","1096","","1","200","","2021-07-13 04:25:02","2021-08-05 02:44:18");
INSERT INTO product_warehouse VALUES("357","1097","","1","200","","2021-07-13 04:25:02","2021-08-05 02:44:18");
INSERT INTO product_warehouse VALUES("358","1099","","1","100","","2021-07-13 04:25:02","2021-08-05 02:44:18");
INSERT INTO product_warehouse VALUES("359","1100","","1","100","","2021-07-13 04:25:02","2021-08-05 02:44:18");
INSERT INTO product_warehouse VALUES("360","1103","","1","100","","2021-07-13 09:40:17","2021-08-05 02:50:58");
INSERT INTO product_warehouse VALUES("361","1104","","1","500","","2021-07-13 09:40:18","2021-08-05 02:50:58");
INSERT INTO product_warehouse VALUES("362","1105","","1","400","","2021-07-13 09:40:18","2021-08-05 02:50:58");
INSERT INTO product_warehouse VALUES("363","1106","","1","100","","2021-07-13 09:40:18","2021-08-05 02:50:58");
INSERT INTO product_warehouse VALUES("364","1108","","1","200","","2021-07-13 09:40:18","2021-08-05 02:50:58");
INSERT INTO product_warehouse VALUES("365","1109","","1","200","","2021-07-13 09:40:18","2021-08-05 02:50:58");
INSERT INTO product_warehouse VALUES("366","1112","","1","100","","2021-07-13 09:40:18","2021-08-05 02:50:59");
INSERT INTO product_warehouse VALUES("367","1117","","1","5","","2021-07-13 09:40:19","2021-08-05 02:50:59");
INSERT INTO product_warehouse VALUES("368","1118","","1","100","","2021-07-13 09:55:18","2021-08-05 02:53:30");
INSERT INTO product_warehouse VALUES("369","1119","","1","100","","2021-07-13 09:55:18","2021-08-05 02:53:30");
INSERT INTO product_warehouse VALUES("370","1116","","1","75","","2021-07-13 10:10:49","2021-07-13 10:28:50");
INSERT INTO product_warehouse VALUES("371","1114","","1","30","","2021-07-13 10:17:41","2021-07-13 10:17:41");
INSERT INTO product_warehouse VALUES("372","1120","","1","42","","2021-07-13 10:23:37","2021-07-13 10:28:50");
INSERT INTO product_warehouse VALUES("373","931","","1","120","","2021-07-13 11:01:29","2021-07-13 11:01:29");
INSERT INTO product_warehouse VALUES("374","932","","1","84","","2021-07-13 11:01:29","2021-07-13 11:01:29");
INSERT INTO product_warehouse VALUES("375","933","","1","24","","2021-07-13 11:01:29","2021-07-13 11:01:29");
INSERT INTO product_warehouse VALUES("376","934","","1","12","","2021-07-13 11:01:30","2021-07-13 11:01:30");
INSERT INTO product_warehouse VALUES("377","935","","1","24","","2021-07-13 11:01:30","2021-07-13 11:01:30");
INSERT INTO product_warehouse VALUES("378","936","","1","12","","2021-07-13 11:06:43","2021-07-13 11:06:43");
INSERT INTO product_warehouse VALUES("379","937","","1","12","","2021-07-13 11:06:43","2021-07-13 11:06:43");
INSERT INTO product_warehouse VALUES("380","938","","1","12","","2021-07-13 11:06:43","2021-07-13 11:06:43");
INSERT INTO product_warehouse VALUES("381","939","","1","12","","2021-07-13 11:06:43","2021-07-13 11:06:43");
INSERT INTO product_warehouse VALUES("382","940","","1","12","","2021-07-13 11:06:44","2021-07-13 11:06:44");
INSERT INTO product_warehouse VALUES("383","941","","1","12","","2021-07-13 11:06:44","2021-07-13 11:06:44");
INSERT INTO product_warehouse VALUES("384","942","","1","12","","2021-07-13 11:06:44","2021-07-13 11:06:44");
INSERT INTO product_warehouse VALUES("385","943","","1","144","","2021-07-13 11:09:53","2021-07-13 11:09:53");
INSERT INTO product_warehouse VALUES("386","944","","1","5","","2021-07-13 11:09:53","2021-07-13 11:09:53");
INSERT INTO product_warehouse VALUES("387","956","","1","12","","2021-07-13 11:11:48","2021-07-13 11:11:48");
INSERT INTO product_warehouse VALUES("388","957","","1","12","","2021-07-13 11:11:48","2021-07-13 11:11:48");
INSERT INTO product_warehouse VALUES("389","958","","1","12","","2021-07-13 11:11:48","2021-07-13 11:11:48");
INSERT INTO product_warehouse VALUES("390","945","","1","10","","2021-07-13 12:10:15","2021-07-13 12:10:15");
INSERT INTO product_warehouse VALUES("391","946","","1","20","","2021-07-13 12:10:15","2021-07-13 12:10:15");
INSERT INTO product_warehouse VALUES("392","947","","1","20","","2021-07-13 12:10:15","2021-07-13 12:10:15");
INSERT INTO product_warehouse VALUES("393","948","","1","10","","2021-07-13 12:10:15","2021-07-13 12:10:15");
INSERT INTO product_warehouse VALUES("394","949","","1","10","","2021-07-13 12:10:16","2021-07-13 12:10:16");
INSERT INTO product_warehouse VALUES("395","950","","1","6","","2021-07-13 12:10:16","2021-07-13 12:10:16");
INSERT INTO product_warehouse VALUES("396","951","","1","12","","2021-07-13 12:10:16","2021-07-13 12:10:16");
INSERT INTO product_warehouse VALUES("397","952","","1","10","","2021-07-13 12:10:16","2021-07-13 12:10:16");
INSERT INTO product_warehouse VALUES("398","953","","1","20","","2021-07-13 12:10:16","2021-07-13 12:10:16");
INSERT INTO product_warehouse VALUES("399","954","","1","10","","2021-07-13 12:10:16","2021-07-13 12:10:16");
INSERT INTO product_warehouse VALUES("400","955","","1","6","","2021-07-13 12:10:17","2021-07-13 12:10:17");
INSERT INTO product_warehouse VALUES("401","1047","","1","12","","2021-07-13 12:16:46","2021-07-13 12:16:46");
INSERT INTO product_warehouse VALUES("402","1048","","1","12","","2021-07-13 12:16:46","2021-07-13 12:16:46");
INSERT INTO product_warehouse VALUES("403","1049","","1","12","","2021-07-13 12:16:46","2021-07-13 12:16:46");
INSERT INTO product_warehouse VALUES("404","1050","","1","12","","2021-07-13 12:16:46","2021-07-13 12:16:46");
INSERT INTO product_warehouse VALUES("405","1051","","1","12","","2021-07-13 12:16:47","2021-07-13 12:16:47");
INSERT INTO product_warehouse VALUES("406","1052","","1","6","","2021-07-13 12:16:47","2021-07-13 12:16:47");
INSERT INTO product_warehouse VALUES("407","1053","","1","6","","2021-07-13 12:16:47","2021-07-13 12:16:47");
INSERT INTO product_warehouse VALUES("408","1054","","1","6","","2021-07-13 12:16:47","2021-07-13 12:16:47");
INSERT INTO product_warehouse VALUES("409","1055","","1","2","","2021-07-13 12:16:47","2021-07-13 12:16:47");
INSERT INTO product_warehouse VALUES("410","1056","","1","2","","2021-07-13 12:16:47","2021-07-13 12:16:47");
INSERT INTO product_warehouse VALUES("411","1057","","1","2","","2021-07-13 12:16:47","2021-07-13 12:16:47");
INSERT INTO product_warehouse VALUES("412","1058","","1","6","","2021-07-13 12:16:47","2021-07-13 12:16:47");
INSERT INTO product_warehouse VALUES("413","1059","","1","24","","2021-07-13 12:18:08","2021-07-13 12:18:08");
INSERT INTO product_warehouse VALUES("414","1060","","1","24","","2021-07-13 12:18:08","2021-07-13 12:18:08");
INSERT INTO product_warehouse VALUES("415","1122","","1","9","","2021-07-14 16:43:37","2021-07-26 11:38:33");
INSERT INTO product_warehouse VALUES("416","1121","","1","1","","2021-07-14 16:43:37","2021-07-14 16:43:37");
INSERT INTO product_warehouse VALUES("417","1123","","1","5","","2021-07-14 16:43:37","2021-07-14 16:43:37");
INSERT INTO product_warehouse VALUES("418","1124","","1","20","","2021-07-14 16:43:37","2021-07-14 16:43:37");
INSERT INTO product_warehouse VALUES("419","1125","","1","20","","2021-07-14 16:43:37","2021-07-14 16:43:37");
INSERT INTO product_warehouse VALUES("420","1126","","1","20","","2021-07-14 16:43:37","2021-08-02 14:11:30");
INSERT INTO product_warehouse VALUES("421","1127","","1","10","","2021-07-14 16:43:38","2021-07-14 16:43:38");
INSERT INTO product_warehouse VALUES("422","1128","","1","10","","2021-07-14 16:43:38","2021-07-14 16:43:38");
INSERT INTO product_warehouse VALUES("423","1129","","1","50","","2021-07-14 16:43:38","2021-07-14 16:43:38");
INSERT INTO product_warehouse VALUES("424","1130","","1","150","","2021-07-14 16:43:38","2021-08-02 14:11:30");
INSERT INTO product_warehouse VALUES("425","1131","","1","50","","2021-07-14 16:43:38","2021-07-14 16:43:38");
INSERT INTO product_warehouse VALUES("426","1132","","1","9","","2021-07-14 16:43:38","2021-07-14 16:43:38");
INSERT INTO product_warehouse VALUES("427","1133","","1","12","","2021-07-14 16:43:38","2021-07-14 16:43:38");
INSERT INTO product_warehouse VALUES("428","1134","","1","5","","2021-07-14 16:43:39","2021-07-14 16:43:39");
INSERT INTO product_warehouse VALUES("429","1135","","1","144","","2021-07-14 16:50:21","2021-07-14 16:50:21");
INSERT INTO product_warehouse VALUES("430","1136","","1","6","","2021-07-14 16:50:22","2021-07-14 16:50:22");
INSERT INTO product_warehouse VALUES("431","1137","","1","1","","2021-07-14 16:50:22","2021-07-14 16:50:22");
INSERT INTO product_warehouse VALUES("432","1138","","1","24","","2021-07-14 16:56:17","2021-07-14 16:56:17");
INSERT INTO product_warehouse VALUES("433","1139","","1","24","","2021-07-14 16:56:17","2021-07-14 16:56:17");
INSERT INTO product_warehouse VALUES("434","1140","","1","2","","2021-07-14 16:56:17","2021-07-14 16:56:17");
INSERT INTO product_warehouse VALUES("435","1141","","1","2","","2021-07-14 16:56:17","2021-07-14 16:56:17");
INSERT INTO product_warehouse VALUES("436","1142","","1","2","","2021-07-14 16:56:17","2021-07-14 16:56:17");
INSERT INTO product_warehouse VALUES("437","1143","","1","2","","2021-07-14 16:56:17","2021-07-14 16:56:17");
INSERT INTO product_warehouse VALUES("438","1144","","1","6","","2021-07-14 16:56:18","2021-07-14 16:56:18");
INSERT INTO product_warehouse VALUES("439","1145","","1","6","","2021-07-14 16:56:18","2021-07-14 16:56:18");
INSERT INTO product_warehouse VALUES("440","1146","","1","30","","2021-07-14 16:56:18","2021-07-15 02:31:31");
INSERT INTO product_warehouse VALUES("441","1147","","1","3","","2021-07-14 17:07:54","2021-07-14 17:07:54");
INSERT INTO product_warehouse VALUES("442","1148","","1","3","","2021-07-14 17:07:54","2021-07-14 17:07:54");
INSERT INTO product_warehouse VALUES("443","1149","","1","3","","2021-07-14 17:07:54","2021-07-14 17:07:54");
INSERT INTO product_warehouse VALUES("444","1150","","1","3","","2021-07-14 17:07:55","2021-07-14 17:07:55");
INSERT INTO product_warehouse VALUES("445","1151","","1","3","","2021-07-14 17:07:55","2021-07-14 17:07:55");
INSERT INTO product_warehouse VALUES("446","1152","","1","3","","2021-07-14 17:07:55","2021-07-14 17:07:55");
INSERT INTO product_warehouse VALUES("447","1153","","1","3","","2021-07-14 17:07:55","2021-07-14 17:07:55");
INSERT INTO product_warehouse VALUES("448","1154","","1","3","","2021-07-14 17:07:55","2021-07-14 17:07:55");
INSERT INTO product_warehouse VALUES("449","1155","","1","3","","2021-07-14 17:07:55","2021-07-14 17:07:55");
INSERT INTO product_warehouse VALUES("450","1156","","1","3","","2021-07-14 17:07:55","2021-07-14 17:07:55");
INSERT INTO product_warehouse VALUES("451","1157","","1","3","","2021-07-14 17:07:55","2021-07-14 17:07:55");
INSERT INTO product_warehouse VALUES("452","1158","","1","3","","2021-07-14 17:07:56","2021-07-14 17:07:56");
INSERT INTO product_warehouse VALUES("453","1159","","1","3","","2021-07-14 17:07:56","2021-07-14 17:07:56");
INSERT INTO product_warehouse VALUES("454","1160","","1","20","","2021-07-14 17:07:56","2021-07-14 17:07:56");
INSERT INTO product_warehouse VALUES("455","1161","","1","20","","2021-07-14 17:07:56","2021-07-14 17:07:56");
INSERT INTO product_warehouse VALUES("456","1162","","1","12","","2021-07-14 17:07:56","2021-07-14 17:07:56");
INSERT INTO product_warehouse VALUES("457","1163","","1","12","","2021-07-14 17:07:56","2021-07-14 17:07:56");
INSERT INTO product_warehouse VALUES("458","1164","","1","12","","2021-07-14 17:07:56","2021-07-14 17:07:56");
INSERT INTO product_warehouse VALUES("459","1165","","1","12","","2021-07-14 17:07:56","2021-07-14 17:07:56");
INSERT INTO product_warehouse VALUES("460","1166","","1","12","","2021-07-14 17:07:57","2021-07-14 17:07:57");
INSERT INTO product_warehouse VALUES("461","1167","","1","2","","2021-07-14 17:07:57","2021-07-14 17:07:57");
INSERT INTO product_warehouse VALUES("462","1168","","1","6","","2021-07-14 17:13:51","2021-07-14 17:13:51");
INSERT INTO product_warehouse VALUES("463","1169","","1","6","","2021-07-14 17:13:51","2021-07-14 17:13:51");
INSERT INTO product_warehouse VALUES("464","1170","","1","12","","2021-07-14 17:13:51","2021-07-14 17:13:51");
INSERT INTO product_warehouse VALUES("465","1171","","1","20","","2021-07-14 17:13:51","2021-07-14 17:13:51");
INSERT INTO product_warehouse VALUES("466","1172","","1","6","","2021-07-14 17:13:51","2021-07-14 17:13:51");
INSERT INTO product_warehouse VALUES("467","1173","","1","6","","2021-07-14 17:13:52","2021-07-14 17:13:52");
INSERT INTO product_warehouse VALUES("468","1174","","1","6","","2021-07-14 17:13:52","2021-07-14 17:13:52");
INSERT INTO product_warehouse VALUES("469","1175","","1","6","","2021-07-14 17:13:52","2021-07-14 17:13:52");
INSERT INTO product_warehouse VALUES("470","1176","","1","6","","2021-07-14 17:13:52","2021-07-14 17:13:52");
INSERT INTO product_warehouse VALUES("471","1177","","1","6","","2021-07-14 17:13:52","2021-07-14 17:13:52");
INSERT INTO product_warehouse VALUES("472","1178","","1","4","","2021-07-14 17:13:52","2021-07-14 17:13:52");
INSERT INTO product_warehouse VALUES("473","1179","","1","53.611","","2021-07-14 17:18:13","2021-07-15 02:47:55");
INSERT INTO product_warehouse VALUES("474","1180","","1","2","","2021-07-14 17:20:57","2021-07-14 17:20:57");
INSERT INTO product_warehouse VALUES("475","1198","","1","6","","2021-07-15 02:12:07","2021-07-15 02:12:07");
INSERT INTO product_warehouse VALUES("476","1199","","1","6","","2021-07-15 02:12:07","2021-07-15 02:12:07");
INSERT INTO product_warehouse VALUES("477","1201","","1","2","","2021-07-15 02:12:07","2021-07-15 02:12:07");
INSERT INTO product_warehouse VALUES("478","1200","","1","2","","2021-07-15 02:12:08","2021-07-15 02:12:08");
INSERT INTO product_warehouse VALUES("479","1202","","1","12","","2021-07-15 02:12:08","2021-07-15 02:12:08");
INSERT INTO product_warehouse VALUES("480","1203","","1","12","","2021-07-15 02:12:08","2021-07-15 02:12:08");
INSERT INTO product_warehouse VALUES("481","1188","","1","12","","2021-07-15 02:18:58","2021-07-15 02:18:58");
INSERT INTO product_warehouse VALUES("482","1189","","1","12","","2021-07-15 02:18:58","2021-07-15 02:18:58");
INSERT INTO product_warehouse VALUES("483","1190","","1","12","","2021-07-15 02:18:58","2021-07-15 02:18:58");
INSERT INTO product_warehouse VALUES("484","1191","","1","12","","2021-07-15 02:18:58","2021-07-15 02:18:58");
INSERT INTO product_warehouse VALUES("485","1192","","1","6","","2021-07-15 02:18:58","2021-07-15 02:18:58");
INSERT INTO product_warehouse VALUES("486","1193","","1","6","","2021-07-15 02:18:58","2021-07-15 02:18:58");
INSERT INTO product_warehouse VALUES("487","1194","","1","6","","2021-07-15 02:18:59","2021-07-15 02:18:59");
INSERT INTO product_warehouse VALUES("488","1195","","1","12","","2021-07-15 02:18:59","2021-07-15 02:18:59");
INSERT INTO product_warehouse VALUES("489","1196","","1","15","","2021-07-15 02:18:59","2021-07-15 02:18:59");
INSERT INTO product_warehouse VALUES("490","1197","","1","100","","2021-07-15 02:18:59","2021-08-02 14:11:30");
INSERT INTO product_warehouse VALUES("491","1204","","1","72","","2021-07-15 02:27:16","2021-07-15 02:31:31");
INSERT INTO product_warehouse VALUES("492","1205","","1","48","","2021-07-15 02:27:16","2021-07-15 04:37:44");
INSERT INTO product_warehouse VALUES("493","1206","","1","12","","2021-07-15 02:27:16","2021-07-15 02:31:31");
INSERT INTO product_warehouse VALUES("494","1207","","1","6","","2021-07-15 02:27:17","2021-07-15 02:31:31");
INSERT INTO product_warehouse VALUES("495","1208","","1","13","","2021-07-15 02:27:17","2021-07-15 02:31:31");
INSERT INTO product_warehouse VALUES("496","1209","","1","106","","2021-07-15 02:27:17","2021-07-15 02:31:31");
INSERT INTO product_warehouse VALUES("497","1210","","1","12","","2021-07-15 02:27:17","2021-07-15 02:31:31");
INSERT INTO product_warehouse VALUES("498","1211","","1","12","","2021-07-15 02:27:17","2021-07-15 02:31:32");
INSERT INTO product_warehouse VALUES("499","1212","","1","12","","2021-07-15 02:27:17","2021-07-15 02:31:32");
INSERT INTO product_warehouse VALUES("500","1213","","1","30","","2021-07-15 02:27:17","2021-07-15 02:31:32");
INSERT INTO product_warehouse VALUES("501","1214","","1","30","","2021-07-15 02:27:17","2021-07-15 02:31:32");
INSERT INTO product_warehouse VALUES("502","1215","","1","30","","2021-07-15 02:27:17","2021-07-15 02:31:32");
INSERT INTO product_warehouse VALUES("503","1216","","1","2","","2021-07-15 02:39:56","2021-07-15 02:39:56");
INSERT INTO product_warehouse VALUES("504","1217","","1","10","","2021-07-15 02:39:56","2021-07-15 02:39:56");
INSERT INTO product_warehouse VALUES("505","1218","","1","10","","2021-07-15 02:39:56","2021-07-15 02:39:56");
INSERT INTO product_warehouse VALUES("506","1219","","1","10","","2021-07-15 02:39:56","2021-07-15 02:39:56");
INSERT INTO product_warehouse VALUES("507","1220","","1","10","","2021-07-15 02:39:56","2021-07-15 02:39:56");
INSERT INTO product_warehouse VALUES("508","1221","","1","2","","2021-07-15 02:39:56","2021-07-15 02:39:56");
INSERT INTO product_warehouse VALUES("509","1222","","1","6","","2021-07-15 02:39:57","2021-07-15 02:39:57");
INSERT INTO product_warehouse VALUES("510","1186","","1","110","","2021-07-15 02:39:57","2021-07-15 04:15:49");
INSERT INTO product_warehouse VALUES("511","1223","","1","10","","2021-07-15 02:43:06","2021-07-15 02:43:06");
INSERT INTO product_warehouse VALUES("512","1224","","1","40","","2021-07-15 02:45:31","2021-07-15 02:45:31");
INSERT INTO product_warehouse VALUES("513","1181","","1","50","","2021-07-15 04:10:50","2021-07-15 04:10:50");
INSERT INTO product_warehouse VALUES("514","1182","","1","25","","2021-07-15 04:10:51","2021-07-15 04:10:51");
INSERT INTO product_warehouse VALUES("515","1183","","1","80","","2021-07-15 04:10:51","2021-07-15 04:15:49");
INSERT INTO product_warehouse VALUES("516","1184","","1","25","","2021-07-15 04:15:49","2021-07-15 04:15:49");
INSERT INTO product_warehouse VALUES("517","1185","","1","25","","2021-07-15 04:15:49","2021-07-15 04:15:49");
INSERT INTO product_warehouse VALUES("518","1187","","1","20","","2021-07-15 04:15:49","2021-07-15 04:15:49");
INSERT INTO product_warehouse VALUES("519","1246","","1","24","","2021-07-15 04:37:44","2021-07-15 04:37:44");
INSERT INTO product_warehouse VALUES("520","1247","","1","12","","2021-07-15 09:40:08","2021-08-02 02:46:56");
INSERT INTO product_warehouse VALUES("521","1248","","1","6","","2021-07-15 09:40:08","2021-08-02 02:35:19");
INSERT INTO product_warehouse VALUES("522","1249","","1","3","","2021-07-15 09:40:09","2021-08-02 02:35:19");
INSERT INTO product_warehouse VALUES("523","1250","","1","3","","2021-07-15 09:40:09","2021-08-02 02:35:19");
INSERT INTO product_warehouse VALUES("524","1251","","1","3","","2021-07-15 09:40:09","2021-08-02 02:35:19");
INSERT INTO product_warehouse VALUES("525","1252","","1","3","","2021-07-15 09:40:09","2021-08-02 02:35:19");
INSERT INTO product_warehouse VALUES("526","1253","","1","1","","2021-07-15 09:40:09","2021-08-02 02:35:19");
INSERT INTO product_warehouse VALUES("527","1254","","1","1","","2021-07-15 09:40:09","2021-08-02 02:46:57");
INSERT INTO product_warehouse VALUES("528","1255","","1","0","","2021-07-15 09:40:09","2021-08-02 02:35:18");
INSERT INTO product_warehouse VALUES("529","1256","","1","0","","2021-07-15 09:40:10","2021-08-02 02:35:18");
INSERT INTO product_warehouse VALUES("530","1257","","1","12","","2021-07-15 09:40:10","2021-08-02 02:35:20");
INSERT INTO product_warehouse VALUES("531","1258","","1","12","","2021-07-15 09:40:10","2021-08-02 02:35:20");
INSERT INTO product_warehouse VALUES("532","1259","","1","6","","2021-07-15 09:40:10","2021-08-02 02:35:20");
INSERT INTO product_warehouse VALUES("533","1260","","1","6","","2021-07-15 09:40:10","2021-08-02 02:35:20");
INSERT INTO product_warehouse VALUES("534","1261","","1","20","","2021-07-15 09:40:10","2021-08-02 02:35:20");
INSERT INTO product_warehouse VALUES("535","1263","","1","100","","2021-07-15 10:05:02","2021-07-15 10:05:02");
INSERT INTO product_warehouse VALUES("536","1264","","1","100","","2021-07-15 10:05:03","2021-07-15 10:05:03");
INSERT INTO product_warehouse VALUES("537","1265","","1","50","","2021-07-15 10:05:03","2021-07-15 10:05:03");
INSERT INTO product_warehouse VALUES("538","1262","","1","6","","2021-07-15 10:08:32","2021-07-15 10:10:25");
INSERT INTO product_warehouse VALUES("539","1228","","1","7","","2021-07-15 10:27:27","2021-07-15 10:27:27");
INSERT INTO product_warehouse VALUES("540","1226","","1","1","","2021-07-15 10:27:27","2021-07-15 10:27:27");
INSERT INTO product_warehouse VALUES("541","1227","","1","5","","2021-07-15 10:27:28","2021-07-15 10:38:19");
INSERT INTO product_warehouse VALUES("542","1229","","1","1","","2021-07-15 10:27:28","2021-07-15 10:27:28");
INSERT INTO product_warehouse VALUES("543","1230","","1","1","","2021-07-15 10:27:28","2021-07-15 10:27:28");
INSERT INTO product_warehouse VALUES("544","1232","","1","5","","2021-07-15 10:27:28","2021-07-15 10:27:28");
INSERT INTO product_warehouse VALUES("545","1233","","1","5","","2021-07-15 10:27:28","2021-07-15 10:27:28");
INSERT INTO product_warehouse VALUES("546","1234","","1","6","","2021-07-15 10:27:28","2021-07-15 10:27:28");
INSERT INTO product_warehouse VALUES("547","1235","","1","10","","2021-07-15 10:27:28","2021-07-15 10:27:28");
INSERT INTO product_warehouse VALUES("548","1236","","1","10","","2021-07-15 10:27:29","2021-07-15 10:27:29");
INSERT INTO product_warehouse VALUES("549","1237","","1","10","","2021-07-15 10:27:29","2021-07-15 10:27:29");
INSERT INTO product_warehouse VALUES("550","1238","","1","10","","2021-07-15 10:27:29","2021-07-15 10:27:29");
INSERT INTO product_warehouse VALUES("551","1239","","1","10","","2021-07-15 10:27:29","2021-07-15 10:27:29");
INSERT INTO product_warehouse VALUES("552","1240","","1","6","","2021-07-15 10:27:29","2021-07-15 10:27:29");
INSERT INTO product_warehouse VALUES("553","1241","","1","1","","2021-07-15 10:27:29","2021-07-15 10:27:29");
INSERT INTO product_warehouse VALUES("554","1242","","1","10","","2021-07-15 10:27:29","2021-07-15 10:27:29");
INSERT INTO product_warehouse VALUES("555","1243","","1","24","","2021-07-15 10:27:30","2021-07-15 10:27:30");
INSERT INTO product_warehouse VALUES("556","1244","","1","24","","2021-07-15 10:27:30","2021-07-15 10:27:30");
INSERT INTO product_warehouse VALUES("557","1245","","1","24","","2021-07-15 10:27:30","2021-07-15 10:27:30");
INSERT INTO product_warehouse VALUES("558","1231","","1","2","","2021-07-15 10:38:20","2021-07-15 10:38:20");
INSERT INTO product_warehouse VALUES("559","1266","","1","10","","2021-07-15 10:38:20","2021-07-15 10:38:20");
INSERT INTO product_warehouse VALUES("560","1267","","1","2","","2021-07-16 02:36:23","2021-07-16 02:41:52");
INSERT INTO product_warehouse VALUES("561","1268","","1","1","","2021-07-16 02:36:23","2021-07-16 02:36:23");
INSERT INTO product_warehouse VALUES("562","1269","","1","3","","2021-07-16 02:36:23","2021-07-16 02:41:51");
INSERT INTO product_warehouse VALUES("563","1270","","1","2","","2021-07-16 02:36:23","2021-07-16 02:36:23");
INSERT INTO product_warehouse VALUES("564","1271","","1","2","","2021-07-16 02:36:24","2021-07-16 02:36:24");
INSERT INTO product_warehouse VALUES("565","1272","","1","2","","2021-07-16 02:36:24","2021-07-16 02:36:24");
INSERT INTO product_warehouse VALUES("566","1273","","1","2","","2021-07-16 02:36:24","2021-07-16 02:36:24");
INSERT INTO product_warehouse VALUES("567","1274","","1","1","","2021-07-16 02:36:24","2021-07-16 02:36:24");
INSERT INTO product_warehouse VALUES("568","1275","","1","11","","2021-07-16 02:36:24","2021-07-16 02:44:59");
INSERT INTO product_warehouse VALUES("569","1276","","1","1","","2021-07-16 02:36:24","2021-07-16 02:36:24");
INSERT INTO product_warehouse VALUES("570","634","","1","19","","2021-07-16 03:13:39","2021-07-28 12:12:30");
INSERT INTO product_warehouse VALUES("571","635","","1","20","","2021-07-16 03:13:39","2021-07-16 03:13:39");
INSERT INTO product_warehouse VALUES("572","636","","1","2","","2021-07-16 03:13:40","2021-07-16 03:13:40");
INSERT INTO product_warehouse VALUES("573","637","","1","2","","2021-07-16 03:13:40","2021-07-16 03:13:40");
INSERT INTO product_warehouse VALUES("574","638","","1","2","","2021-07-16 03:13:40","2021-07-16 03:13:40");
INSERT INTO product_warehouse VALUES("575","639","","1","2","","2021-07-16 03:13:40","2021-07-16 03:13:40");
INSERT INTO product_warehouse VALUES("576","640","","1","1","","2021-07-16 03:13:40","2021-07-16 03:13:40");
INSERT INTO product_warehouse VALUES("577","641","","1","1","","2021-07-16 03:13:40","2021-07-16 03:13:40");
INSERT INTO product_warehouse VALUES("578","642","","1","2","","2021-07-16 03:13:41","2021-07-16 03:13:41");
INSERT INTO product_warehouse VALUES("579","1277","","1","100","","2021-07-16 03:42:27","2021-07-28 10:50:05");
INSERT INTO product_warehouse VALUES("580","226","","1","380","","2021-07-16 04:03:12","2021-07-16 04:03:12");
INSERT INTO product_warehouse VALUES("581","232","","1","40","","2021-07-16 04:03:12","2021-07-16 04:03:12");
INSERT INTO product_warehouse VALUES("582","856","","1","22","","2021-07-16 04:06:51","2021-08-02 02:16:23");
INSERT INTO product_warehouse VALUES("583","1278","","1","2","","2021-07-16 04:14:28","2021-07-16 04:18:05");
INSERT INTO product_warehouse VALUES("584","1279","","1","1","","2021-07-16 04:26:21","2021-07-16 04:26:21");
INSERT INTO product_warehouse VALUES("585","70","","1","120","","2021-07-16 04:50:26","2021-07-16 04:50:26");
INSERT INTO product_warehouse VALUES("586","529","","1","2","","2021-07-16 04:50:26","2021-07-18 14:50:34");
INSERT INTO product_warehouse VALUES("587","481","","1","12","","2021-07-16 04:50:27","2021-07-18 14:50:33");
INSERT INTO product_warehouse VALUES("588","1280","","1","10","","2021-07-16 04:50:27","2021-07-16 04:50:27");
INSERT INTO product_warehouse VALUES("589","1281","","1","10","","2021-07-16 04:50:27","2021-07-16 04:50:27");
INSERT INTO product_warehouse VALUES("590","493","","1","1","","2021-07-16 04:50:27","2021-07-16 04:50:27");
INSERT INTO product_warehouse VALUES("591","505","","1","6","","2021-07-16 04:50:27","2021-07-16 04:50:27");
INSERT INTO product_warehouse VALUES("592","517","","1","6","","2021-07-16 04:50:27","2021-07-16 04:50:27");
INSERT INTO product_warehouse VALUES("593","475","","1","8","","2021-07-16 04:50:27","2021-07-18 14:50:34");
INSERT INTO product_warehouse VALUES("594","1282","","1","7","","2021-07-16 04:57:43","2021-07-16 04:57:43");
INSERT INTO product_warehouse VALUES("595","1283","","1","1","","2021-07-16 05:03:44","2021-07-16 05:03:44");
INSERT INTO product_warehouse VALUES("596","1284","","1","1","","2021-07-16 05:03:44","2021-07-16 05:03:44");
INSERT INTO product_warehouse VALUES("597","1285","","1","1","","2021-07-16 05:03:45","2021-07-16 05:03:45");
INSERT INTO product_warehouse VALUES("598","1286","","1","24","","2021-07-18 03:35:14","2021-07-18 03:35:14");
INSERT INTO product_warehouse VALUES("599","1287","","1","48","","2021-07-18 03:35:14","2021-07-18 03:35:14");
INSERT INTO product_warehouse VALUES("600","1288","","1","48","","2021-07-18 03:35:14","2021-07-18 03:35:14");
INSERT INTO product_warehouse VALUES("601","1289","","1","24","","2021-07-18 03:35:14","2021-07-18 03:35:14");
INSERT INTO product_warehouse VALUES("602","1290","","1","24","","2021-07-18 03:35:14","2021-07-18 03:35:14");
INSERT INTO product_warehouse VALUES("603","1291","","1","24","","2021-07-18 03:35:14","2021-07-18 03:35:14");
INSERT INTO product_warehouse VALUES("604","1292","","1","60","","2021-07-18 03:35:14","2021-07-18 03:35:14");
INSERT INTO product_warehouse VALUES("605","1293","","1","60","","2021-07-18 03:35:15","2021-07-18 12:40:58");
INSERT INTO product_warehouse VALUES("606","1294","","1","24","","2021-07-18 03:35:15","2021-07-18 03:35:15");
INSERT INTO product_warehouse VALUES("607","1295","","1","168","","2021-07-18 03:35:15","2021-07-18 12:40:57");
INSERT INTO product_warehouse VALUES("608","1296","","1","48","","2021-07-18 03:35:15","2021-07-18 03:35:15");
INSERT INTO product_warehouse VALUES("609","1297","","1","24","","2021-07-18 03:35:15","2021-07-18 03:35:15");
INSERT INTO product_warehouse VALUES("610","1298","","1","24","","2021-07-18 03:35:15","2021-07-18 03:35:15");
INSERT INTO product_warehouse VALUES("611","1299","","1","60","","2021-07-18 03:35:15","2021-07-18 03:35:15");
INSERT INTO product_warehouse VALUES("612","1300","","1","95","","2021-07-18 03:35:16","2021-07-22 05:05:05");
INSERT INTO product_warehouse VALUES("613","1301","","1","12","","2021-07-18 03:35:16","2021-07-18 03:35:16");
INSERT INTO product_warehouse VALUES("614","1302","","1","12","","2021-07-18 03:54:25","2021-07-18 03:54:25");
INSERT INTO product_warehouse VALUES("615","1303","","1","12","","2021-07-18 03:54:25","2021-07-18 03:54:25");
INSERT INTO product_warehouse VALUES("616","1304","","1","12","","2021-07-18 03:54:26","2021-07-18 03:54:26");
INSERT INTO product_warehouse VALUES("617","1305","","1","12","","2021-07-18 03:54:26","2021-07-18 03:54:26");
INSERT INTO product_warehouse VALUES("618","1306","","1","12","","2021-07-18 03:54:26","2021-07-18 03:54:26");
INSERT INTO product_warehouse VALUES("619","1307","","1","12","","2021-07-18 03:54:26","2021-07-18 03:54:26");
INSERT INTO product_warehouse VALUES("620","820","","1","6","","2021-07-18 03:54:26","2021-07-18 03:54:26");
INSERT INTO product_warehouse VALUES("621","821","","1","12","","2021-07-18 03:54:26","2021-07-18 03:54:26");
INSERT INTO product_warehouse VALUES("622","822","","1","24","","2021-07-18 03:54:26","2021-07-18 03:54:26");
INSERT INTO product_warehouse VALUES("623","874","","1","6","","2021-07-18 03:54:27","2021-07-18 03:54:27");
INSERT INTO product_warehouse VALUES("624","1311","","1","6","","2021-07-18 03:54:27","2021-07-18 03:54:27");
INSERT INTO product_warehouse VALUES("625","1312","","1","11","","2021-07-18 03:54:27","2021-07-26 10:58:17");
INSERT INTO product_warehouse VALUES("626","1313","","1","100","","2021-07-18 03:54:27","2021-07-18 03:54:27");
INSERT INTO product_warehouse VALUES("627","1314","","1","200","","2021-07-18 03:54:27","2021-07-18 03:54:27");
INSERT INTO product_warehouse VALUES("628","1336","","1","25","","2021-07-18 03:54:27","2021-07-18 03:54:27");
INSERT INTO product_warehouse VALUES("629","1337","","1","25","","2021-07-18 03:54:28","2021-07-18 03:54:28");
INSERT INTO product_warehouse VALUES("630","1315","","1","25","","2021-07-18 04:04:03","2021-07-18 04:36:06");
INSERT INTO product_warehouse VALUES("631","1316","","1","6","","2021-07-18 04:04:03","2021-07-18 04:04:03");
INSERT INTO product_warehouse VALUES("632","1317","","1","6","","2021-07-18 04:04:04","2021-07-18 04:04:04");
INSERT INTO product_warehouse VALUES("633","1318","","1","6","","2021-07-18 04:04:04","2021-07-18 04:04:04");
INSERT INTO product_warehouse VALUES("634","1319","","1","6","","2021-07-18 04:04:04","2021-07-18 04:04:04");
INSERT INTO product_warehouse VALUES("635","1320","","1","6","","2021-07-18 04:04:04","2021-07-18 04:04:04");
INSERT INTO product_warehouse VALUES("636","1321","","1","3","","2021-07-18 04:04:04","2021-07-18 04:04:04");
INSERT INTO product_warehouse VALUES("637","831","","1","3","","2021-07-18 04:04:04","2021-07-18 04:04:04");
INSERT INTO product_warehouse VALUES("638","830","","1","3","","2021-07-18 04:04:05","2021-07-18 04:04:05");
INSERT INTO product_warehouse VALUES("639","833","","1","6","","2021-07-18 04:04:05","2021-07-18 04:04:05");
INSERT INTO product_warehouse VALUES("640","832","","1","6","","2021-07-18 04:04:05","2021-07-18 04:04:05");
INSERT INTO product_warehouse VALUES("641","869","","1","3","","2021-07-18 04:04:05","2021-07-18 04:04:05");
INSERT INTO product_warehouse VALUES("642","870","","1","4","","2021-07-18 04:04:05","2021-07-18 04:36:06");
INSERT INTO product_warehouse VALUES("643","1326","","1","500","","2021-07-18 04:04:05","2021-07-18 11:54:43");
INSERT INTO product_warehouse VALUES("644","1327","","1","3","","2021-07-18 04:04:05","2021-07-18 04:04:05");
INSERT INTO product_warehouse VALUES("645","1328","","1","3","","2021-07-18 04:04:05","2021-07-18 04:04:05");
INSERT INTO product_warehouse VALUES("646","1329","","1","3","","2021-07-18 04:10:19","2021-07-18 04:10:19");
INSERT INTO product_warehouse VALUES("647","1330","","1","3","","2021-07-18 04:10:19","2021-07-18 04:10:19");
INSERT INTO product_warehouse VALUES("648","1331","","1","3","","2021-07-18 04:10:19","2021-07-18 04:10:19");
INSERT INTO product_warehouse VALUES("649","1332","","1","100","","2021-07-18 04:10:19","2021-07-18 04:10:19");
INSERT INTO product_warehouse VALUES("650","1338","","1","200","","2021-07-18 04:10:20","2021-07-18 04:10:20");
INSERT INTO product_warehouse VALUES("651","1339","","1","100","","2021-07-18 04:10:20","2021-07-18 04:10:20");
INSERT INTO product_warehouse VALUES("652","1333","","1","20","","2021-07-18 04:10:20","2021-07-18 04:10:20");
INSERT INTO product_warehouse VALUES("653","1334","","1","20","","2021-07-18 04:10:20","2021-07-18 04:10:20");
INSERT INTO product_warehouse VALUES("654","1335","","1","15","","2021-07-18 04:10:20","2021-07-18 14:58:29");
INSERT INTO product_warehouse VALUES("655","1340","","1","4","","2021-07-18 04:10:21","2021-07-18 04:10:21");
INSERT INTO product_warehouse VALUES("656","836","","1","10","","2021-07-18 04:10:21","2021-07-18 04:10:21");
INSERT INTO product_warehouse VALUES("657","837","","1","6","","2021-07-18 04:10:21","2021-07-18 04:10:21");
INSERT INTO product_warehouse VALUES("658","890","","1","8","","2021-07-18 04:21:02","2021-07-18 04:21:02");
INSERT INTO product_warehouse VALUES("659","891","","1","4","","2021-07-18 04:21:02","2021-07-18 04:21:02");
INSERT INTO product_warehouse VALUES("660","883","","1","4","","2021-07-18 04:21:02","2021-07-18 04:21:02");
INSERT INTO product_warehouse VALUES("661","887","","1","2","","2021-07-18 04:21:02","2021-07-18 04:21:02");
INSERT INTO product_warehouse VALUES("662","888","","1","5","","2021-07-18 04:21:02","2021-07-18 04:21:02");
INSERT INTO product_warehouse VALUES("663","884","","1","12","","2021-07-18 04:21:03","2021-07-18 04:21:03");
INSERT INTO product_warehouse VALUES("664","1341","","1","4","","2021-07-18 04:21:03","2021-07-18 04:21:03");
INSERT INTO product_warehouse VALUES("665","885","","1","4","","2021-07-18 04:21:03","2021-07-18 04:21:03");
INSERT INTO product_warehouse VALUES("666","886","","1","3","","2021-07-18 04:21:03","2021-07-18 04:21:03");
INSERT INTO product_warehouse VALUES("667","882","","1","2","","2021-07-18 04:21:03","2021-07-18 04:21:03");
INSERT INTO product_warehouse VALUES("668","889","","1","30","","2021-07-18 04:21:03","2021-07-26 10:58:17");
INSERT INTO product_warehouse VALUES("669","879","","1","6","","2021-07-18 04:21:04","2021-07-18 04:21:04");
INSERT INTO product_warehouse VALUES("670","878","","1","4","","2021-07-18 04:21:04","2021-07-18 04:21:04");
INSERT INTO product_warehouse VALUES("671","880","","1","16","","2021-07-18 04:21:04","2021-07-18 12:40:59");
INSERT INTO product_warehouse VALUES("672","1342","","1","2","","2021-07-18 04:27:52","2021-07-18 04:27:52");
INSERT INTO product_warehouse VALUES("673","1343","","1","10","","2021-07-18 04:27:52","2021-07-18 04:27:52");
INSERT INTO product_warehouse VALUES("674","1344","","1","10","","2021-07-18 04:27:52","2021-07-18 04:27:52");
INSERT INTO product_warehouse VALUES("675","1345","","1","10","","2021-07-18 04:27:53","2021-07-18 04:27:53");
INSERT INTO product_warehouse VALUES("676","1346","","1","10","","2021-07-18 04:27:53","2021-07-18 04:27:53");
INSERT INTO product_warehouse VALUES("677","1347","","1","6","","2021-07-18 04:27:53","2021-07-18 04:27:53");
INSERT INTO product_warehouse VALUES("678","1348","","1","18","","2021-07-18 04:27:53","2021-07-18 10:08:06");
INSERT INTO product_warehouse VALUES("679","1349","","1","6","","2021-07-18 04:27:53","2021-07-18 04:27:53");
INSERT INTO product_warehouse VALUES("680","1350","","1","20","","2021-07-18 04:27:53","2021-07-18 04:27:53");
INSERT INTO product_warehouse VALUES("681","1351","","1","20","","2021-07-18 04:27:54","2021-07-18 04:27:54");
INSERT INTO product_warehouse VALUES("682","1352","","1","6","","2021-07-18 04:27:54","2021-07-18 04:27:54");
INSERT INTO product_warehouse VALUES("683","875","","1","10","","2021-07-18 04:27:54","2021-07-18 04:27:54");
INSERT INTO product_warehouse VALUES("684","855","","1","24","","2021-07-18 04:27:54","2021-07-18 04:27:54");
INSERT INTO product_warehouse VALUES("685","857","","1","10","","2021-07-18 04:27:54","2021-07-18 04:27:54");
INSERT INTO product_warehouse VALUES("686","841","","1","3","","2021-07-18 04:27:54","2021-07-18 04:27:54");
INSERT INTO product_warehouse VALUES("687","1353","","1","6","","2021-07-18 04:33:42","2021-07-18 04:33:42");
INSERT INTO product_warehouse VALUES("688","1354","","1","10","","2021-07-18 04:33:42","2021-07-26 09:52:07");
INSERT INTO product_warehouse VALUES("689","1355","","1","6","","2021-07-18 04:33:42","2021-07-18 04:33:42");
INSERT INTO product_warehouse VALUES("690","1356","","1","6","","2021-07-18 04:33:42","2021-07-18 04:33:42");
INSERT INTO product_warehouse VALUES("691","1357","","1","6","","2021-07-18 04:33:43","2021-07-18 04:33:43");
INSERT INTO product_warehouse VALUES("692","1358","","1","6","","2021-07-18 04:33:43","2021-07-18 04:33:43");
INSERT INTO product_warehouse VALUES("693","1359","","1","6","","2021-07-18 04:33:43","2021-07-18 04:33:43");
INSERT INTO product_warehouse VALUES("694","1360","","1","6","","2021-07-18 04:33:43","2021-07-18 04:33:43");
INSERT INTO product_warehouse VALUES("695","1361","","1","50","","2021-07-18 04:33:43","2021-07-18 04:33:43");
INSERT INTO product_warehouse VALUES("696","1362","","1","100","","2021-07-18 04:33:43","2021-07-18 04:33:43");
INSERT INTO product_warehouse VALUES("697","1363","","1","55","","2021-07-18 04:33:43","2021-07-18 04:33:43");
INSERT INTO product_warehouse VALUES("698","1364","","1","40","","2021-07-18 04:33:43","2021-07-18 04:33:43");
INSERT INTO product_warehouse VALUES("699","1365","","1","100","","2021-07-18 04:33:44","2021-07-18 04:33:44");
INSERT INTO product_warehouse VALUES("700","1366","","1","7","","2021-07-18 04:33:44","2021-07-18 04:33:44");
INSERT INTO product_warehouse VALUES("701","1367","","1","2","","2021-07-18 04:33:44","2021-07-18 04:33:44");
INSERT INTO product_warehouse VALUES("702","1368","","1","6","","2021-07-18 04:36:05","2021-07-18 04:36:05");
INSERT INTO product_warehouse VALUES("703","1369","","1","6","","2021-07-18 04:36:05","2021-07-18 04:36:05");
INSERT INTO product_warehouse VALUES("704","1370","","1","6","","2021-07-18 04:36:06","2021-07-18 04:36:06");
INSERT INTO product_warehouse VALUES("705","1371","","1","3","","2021-07-18 04:36:06","2021-07-18 04:36:06");
INSERT INTO product_warehouse VALUES("706","741","","1","65","","2021-07-18 07:30:39","2021-07-18 12:40:56");
INSERT INTO product_warehouse VALUES("707","1372","","1","48","","2021-07-18 07:30:39","2021-07-26 09:52:07");
INSERT INTO product_warehouse VALUES("708","1373","","1","42","","2021-07-18 07:30:39","2021-07-26 09:52:07");
INSERT INTO product_warehouse VALUES("709","1374","","1","6","","2021-07-18 07:30:39","2021-07-18 07:30:39");
INSERT INTO product_warehouse VALUES("710","738","","1","13","","2021-07-18 07:53:25","2021-07-22 04:32:14");
INSERT INTO product_warehouse VALUES("711","737","","1","11","","2021-07-18 07:53:25","2021-07-22 04:32:14");
INSERT INTO product_warehouse VALUES("712","742","","1","15","","2021-07-18 07:53:25","2021-07-18 07:53:25");
INSERT INTO product_warehouse VALUES("713","740","","1","11","","2021-07-18 07:53:25","2021-07-22 04:32:14");
INSERT INTO product_warehouse VALUES("714","739","","1","33","","2021-07-18 07:53:25","2021-07-22 04:32:14");
INSERT INTO product_warehouse VALUES("715","744","","1","6","","2021-07-18 07:53:26","2021-07-18 07:53:26");
INSERT INTO product_warehouse VALUES("716","746","","1","20","","2021-07-18 07:53:26","2021-07-18 07:53:26");
INSERT INTO product_warehouse VALUES("717","745","","1","20","","2021-07-18 07:53:26","2021-07-18 07:53:26");
INSERT INTO product_warehouse VALUES("718","749","","1","50","","2021-07-18 07:53:26","2021-07-18 07:53:26");
INSERT INTO product_warehouse VALUES("719","750","","1","52","","2021-07-18 07:53:26","2021-07-18 12:40:56");
INSERT INTO product_warehouse VALUES("720","748","","1","20","","2021-07-18 07:53:26","2021-07-18 07:53:26");
INSERT INTO product_warehouse VALUES("721","747","","1","50","","2021-07-18 07:53:26","2021-07-18 07:53:26");
INSERT INTO product_warehouse VALUES("722","752","","1","6","","2021-07-18 07:53:26","2021-07-18 07:53:26");
INSERT INTO product_warehouse VALUES("723","786","","1","10","","2021-07-18 07:53:27","2021-07-18 07:53:27");
INSERT INTO product_warehouse VALUES("724","801","","1","10","","2021-07-18 07:53:27","2021-07-18 07:53:27");
INSERT INTO product_warehouse VALUES("725","797","","1","10","","2021-07-18 09:18:30","2021-07-18 09:18:30");
INSERT INTO product_warehouse VALUES("726","793","","1","6","","2021-07-18 09:18:30","2021-07-18 09:18:30");
INSERT INTO product_warehouse VALUES("727","1375","","1","20","","2021-07-18 09:18:30","2021-07-18 09:18:30");
INSERT INTO product_warehouse VALUES("728","755","","1","20","","2021-07-18 09:18:30","2021-07-18 09:18:30");
INSERT INTO product_warehouse VALUES("729","754","","1","20","","2021-07-18 09:18:30","2021-07-18 09:18:30");
INSERT INTO product_warehouse VALUES("730","753","","1","20","","2021-07-18 09:18:30","2021-07-18 09:18:30");
INSERT INTO product_warehouse VALUES("731","757","","1","20","","2021-07-18 09:18:30","2021-07-18 09:18:30");
INSERT INTO product_warehouse VALUES("732","756","","1","10","","2021-07-18 09:18:30","2021-07-18 09:18:30");
INSERT INTO product_warehouse VALUES("733","758","","1","30","","2021-07-18 09:18:31","2021-07-18 09:18:31");
INSERT INTO product_warehouse VALUES("734","680","","1","210","","2021-07-18 09:18:31","2021-08-17 03:37:42");
INSERT INTO product_warehouse VALUES("735","679","","1","110","","2021-07-18 09:18:31","2021-08-17 03:37:44");
INSERT INTO product_warehouse VALUES("736","681","","1","410","","2021-07-18 09:18:31","2021-08-17 03:37:42");
INSERT INTO product_warehouse VALUES("737","684","","1","710","","2021-07-18 09:18:31","2021-08-17 03:37:42");
INSERT INTO product_warehouse VALUES("738","682","","1","160","","2021-07-18 09:18:31","2021-08-17 03:37:42");
INSERT INTO product_warehouse VALUES("739","1376","","1","30","","2021-07-18 09:18:32","2021-07-18 12:40:56");
INSERT INTO product_warehouse VALUES("740","1377","","1","30","","2021-07-18 09:18:32","2021-07-18 12:40:57");
INSERT INTO product_warehouse VALUES("741","1378","","1","20","","2021-07-18 09:34:44","2021-07-18 09:34:44");
INSERT INTO product_warehouse VALUES("742","1380","","1","40","","2021-07-18 09:34:44","2021-07-18 12:40:57");
INSERT INTO product_warehouse VALUES("743","1379","","1","40","","2021-07-18 09:34:44","2021-07-18 12:40:57");
INSERT INTO product_warehouse VALUES("744","1381","","1","20","","2021-07-18 09:34:44","2021-07-18 09:34:44");
INSERT INTO product_warehouse VALUES("745","673","","1","400","","2021-07-18 09:34:44","2021-08-17 03:37:42");
INSERT INTO product_warehouse VALUES("746","672","","1","50","","2021-07-18 09:34:44","2021-07-29 11:40:30");
INSERT INTO product_warehouse VALUES("747","674","","1","1540","","2021-07-18 09:34:45","2021-08-17 03:37:43");
INSERT INTO product_warehouse VALUES("748","677","","1","1020","","2021-07-18 09:34:45","2021-08-17 03:37:42");
INSERT INTO product_warehouse VALUES("749","675","","1","404","","2021-07-18 09:34:45","2021-08-17 03:37:42");
INSERT INTO product_warehouse VALUES("750","687","","1","156","","2021-07-18 09:34:45","2021-08-17 03:37:43");
INSERT INTO product_warehouse VALUES("751","686","","1","83","","2021-07-18 09:34:45","2021-08-17 03:37:43");
INSERT INTO product_warehouse VALUES("752","691","","1","250","","2021-07-18 09:34:45","2021-08-17 03:37:43");
INSERT INTO product_warehouse VALUES("753","688","","1","39","","2021-07-18 09:34:45","2021-07-18 14:58:29");
INSERT INTO product_warehouse VALUES("754","689","","1","77","","2021-07-18 09:34:46","2021-08-17 03:37:43");
INSERT INTO product_warehouse VALUES("755","685","","1","110","","2021-07-18 09:34:46","2021-08-17 03:37:44");
INSERT INTO product_warehouse VALUES("756","678","","1","60","","2021-07-18 09:34:46","2021-08-17 03:37:43");
INSERT INTO product_warehouse VALUES("757","692","","1","29","","2021-07-18 09:44:28","2021-08-17 03:37:44");
INSERT INTO product_warehouse VALUES("758","1382","","1","21","","2021-07-18 09:44:28","2021-07-18 12:11:30");
INSERT INTO product_warehouse VALUES("759","1383","","1","21","","2021-07-18 09:44:28","2021-07-18 12:11:30");
INSERT INTO product_warehouse VALUES("760","840","","1","3","","2021-07-18 09:44:28","2021-07-18 09:44:28");
INSERT INTO product_warehouse VALUES("761","839","","1","2","","2021-07-18 09:44:29","2021-07-18 09:44:29");
INSERT INTO product_warehouse VALUES("762","846","","1","6","","2021-07-18 10:04:31","2021-07-18 10:08:05");
INSERT INTO product_warehouse VALUES("763","847","","1","3","","2021-07-18 10:04:31","2021-07-18 10:08:05");
INSERT INTO product_warehouse VALUES("764","848","","1","2","","2021-07-18 10:04:31","2021-07-18 10:08:05");
INSERT INTO product_warehouse VALUES("765","1386","","1","3","","2021-07-18 10:04:31","2021-07-18 10:08:05");
INSERT INTO product_warehouse VALUES("766","1387","","1","3","","2021-07-18 10:04:31","2021-07-18 10:08:05");
INSERT INTO product_warehouse VALUES("767","842","","1","10","","2021-07-18 10:04:32","2021-07-18 10:08:06");
INSERT INTO product_warehouse VALUES("768","853","","1","200","","2021-07-18 10:04:32","2021-07-18 10:08:06");
INSERT INTO product_warehouse VALUES("769","1324","","1","11","","2021-07-18 10:08:06","2021-07-22 05:12:20");
INSERT INTO product_warehouse VALUES("770","1388","","1","12","","2021-07-18 10:20:49","2021-07-18 10:20:49");
INSERT INTO product_warehouse VALUES("771","1389","","1","12","","2021-07-18 10:20:49","2021-07-18 10:20:49");
INSERT INTO product_warehouse VALUES("772","1390","","1","12","","2021-07-18 10:20:49","2021-07-18 10:20:49");
INSERT INTO product_warehouse VALUES("773","1391","","1","12","","2021-07-18 10:20:49","2021-07-18 10:20:49");
INSERT INTO product_warehouse VALUES("774","1392","","1","12","","2021-07-18 10:20:49","2021-07-18 10:20:49");
INSERT INTO product_warehouse VALUES("775","1393","","1","6","","2021-07-18 10:20:49","2021-07-18 10:20:49");
INSERT INTO product_warehouse VALUES("776","1394","","1","6","","2021-07-18 10:20:49","2021-07-18 10:20:49");
INSERT INTO product_warehouse VALUES("777","629","","1","6","","2021-07-18 10:20:50","2021-07-18 10:20:50");
INSERT INTO product_warehouse VALUES("778","630","","1","6","","2021-07-18 10:20:50","2021-07-18 10:20:50");
INSERT INTO product_warehouse VALUES("779","631","","1","6","","2021-07-18 10:20:50","2021-07-18 10:20:50");
INSERT INTO product_warehouse VALUES("780","632","","1","6","","2021-07-18 10:20:50","2021-07-18 10:20:50");
INSERT INTO product_warehouse VALUES("781","633","","1","6","","2021-07-18 10:20:50","2021-07-18 10:20:50");
INSERT INTO product_warehouse VALUES("782","611","","1","5","","2021-07-18 10:20:50","2021-07-18 10:20:50");
INSERT INTO product_warehouse VALUES("783","608","","1","5","","2021-07-18 10:20:50","2021-07-18 10:20:50");
INSERT INTO product_warehouse VALUES("784","607","","1","5","","2021-07-18 10:29:25","2021-07-18 10:29:25");
INSERT INTO product_warehouse VALUES("785","626","","1","5","","2021-07-18 10:29:25","2021-07-18 10:29:25");
INSERT INTO product_warehouse VALUES("786","1395","","1","10","","2021-07-18 10:29:25","2021-07-18 10:29:25");
INSERT INTO product_warehouse VALUES("787","610","","1","6","","2021-07-18 10:29:25","2021-07-18 10:29:25");
INSERT INTO product_warehouse VALUES("788","780","","1","20","","2021-07-18 10:29:25","2021-07-18 10:29:25");
INSERT INTO product_warehouse VALUES("789","779","","1","20","","2021-07-18 10:29:25","2021-07-18 10:29:25");
INSERT INTO product_warehouse VALUES("790","1397","","1","33","","2021-07-18 10:29:25","2021-07-26 10:39:55");
INSERT INTO product_warehouse VALUES("791","1398","","1","20","","2021-07-18 10:29:26","2021-07-18 10:29:26");
INSERT INTO product_warehouse VALUES("792","778","","1","2","","2021-07-18 10:34:33","2021-07-18 10:34:33");
INSERT INTO product_warehouse VALUES("793","777","","1","1","","2021-07-18 10:34:33","2021-07-18 10:34:33");
INSERT INTO product_warehouse VALUES("794","1399","","1","2","","2021-07-18 10:34:33","2021-07-18 10:34:33");
INSERT INTO product_warehouse VALUES("795","843","","1","10","","2021-07-18 10:34:33","2021-07-18 10:34:33");
INSERT INTO product_warehouse VALUES("796","1400","","1","8","","2021-07-18 10:36:18","2021-07-18 10:36:18");
INSERT INTO product_warehouse VALUES("797","1407","","1","10","","2021-07-18 10:45:21","2021-07-18 10:45:21");
INSERT INTO product_warehouse VALUES("798","1408","","1","10","","2021-07-18 10:45:21","2021-07-18 10:45:21");
INSERT INTO product_warehouse VALUES("799","1409","","1","13","","2021-07-18 10:45:21","2021-07-19 04:26:24");
INSERT INTO product_warehouse VALUES("800","1323","","1","1","","2021-07-18 10:45:21","2021-07-18 10:45:21");
INSERT INTO product_warehouse VALUES("801","1402","","1","10","","2021-07-18 11:42:06","2021-07-18 11:42:06");
INSERT INTO product_warehouse VALUES("802","1401","","1","5","","2021-07-18 11:42:07","2021-07-18 11:42:07");
INSERT INTO product_warehouse VALUES("803","1422","","1","4","","2021-07-18 11:42:07","2021-07-18 12:40:56");
INSERT INTO product_warehouse VALUES("804","1404","","1","2","","2021-07-18 11:42:07","2021-07-18 11:42:07");
INSERT INTO product_warehouse VALUES("805","784","","1","10","","2021-07-18 11:42:07","2021-07-18 11:42:07");
INSERT INTO product_warehouse VALUES("806","785","","1","10","","2021-07-18 11:42:07","2021-07-18 11:42:07");
INSERT INTO product_warehouse VALUES("807","783","","1","10","","2021-07-18 11:42:07","2021-07-18 11:42:07");
INSERT INTO product_warehouse VALUES("808","799","","1","5","","2021-07-18 11:42:07","2021-07-18 11:42:07");
INSERT INTO product_warehouse VALUES("809","819","","1","7","","2021-07-18 11:42:08","2021-07-22 04:32:14");
INSERT INTO product_warehouse VALUES("810","1405","","1","6","","2021-07-18 11:42:08","2021-07-18 11:42:08");
INSERT INTO product_warehouse VALUES("811","1406","","1","6","","2021-07-18 11:42:08","2021-07-18 11:42:08");
INSERT INTO product_warehouse VALUES("812","1413","","1","10","","2021-07-18 11:54:43","2021-07-18 11:54:43");
INSERT INTO product_warehouse VALUES("813","708","","1","90","","2021-07-18 11:54:43","2021-07-19 12:52:38");
INSERT INTO product_warehouse VALUES("814","707","","1","400","","2021-07-18 11:54:43","2021-08-17 03:17:14");
INSERT INTO product_warehouse VALUES("815","1414","","1","10","","2021-07-18 11:54:43","2021-07-18 11:54:43");
INSERT INTO product_warehouse VALUES("816","1415","","1","83","","2021-07-18 11:54:43","2021-07-19 12:52:38");
INSERT INTO product_warehouse VALUES("817","1416","","1","6","","2021-07-18 11:54:44","2021-07-18 11:54:44");
INSERT INTO product_warehouse VALUES("818","721","","1","15","","2021-07-18 11:54:44","2021-07-18 11:54:44");
INSERT INTO product_warehouse VALUES("819","722","","1","10","","2021-07-18 11:54:44","2021-07-18 11:54:44");
INSERT INTO product_warehouse VALUES("820","723","","1","15","","2021-07-18 11:54:44","2021-07-18 11:54:44");
INSERT INTO product_warehouse VALUES("821","1417","","1","10","","2021-07-18 11:54:44","2021-07-18 11:54:44");
INSERT INTO product_warehouse VALUES("822","1418","","1","14","","2021-07-18 11:54:45","2021-07-18 11:57:53");
INSERT INTO product_warehouse VALUES("823","1419","","1","6","","2021-07-18 11:57:53","2021-07-18 11:57:53");
INSERT INTO product_warehouse VALUES("824","725","","1","2","","2021-07-18 11:57:53","2021-07-18 11:57:53");
INSERT INTO product_warehouse VALUES("825","1420","","1","1","","2021-07-18 11:57:53","2021-07-18 11:57:53");
INSERT INTO product_warehouse VALUES("826","1421","","1","1","","2021-07-18 11:57:54","2021-07-18 11:57:54");
INSERT INTO product_warehouse VALUES("827","690","","1","30","","2021-07-18 12:06:50","2021-07-18 12:11:30");
INSERT INTO product_warehouse VALUES("828","683","","1","20","","2021-07-18 12:06:50","2021-07-18 12:11:30");
INSERT INTO product_warehouse VALUES("829","1410","","1","12","","2021-07-18 12:06:50","2021-07-18 12:11:30");
INSERT INTO product_warehouse VALUES("830","802","","1","6","","2021-07-18 12:06:51","2021-07-18 12:11:31");
INSERT INTO product_warehouse VALUES("831","791","","1","6","","2021-07-18 12:06:51","2021-07-18 12:11:31");
INSERT INTO product_warehouse VALUES("832","1411","","1","21","","2021-07-18 12:06:51","2021-07-18 15:02:09");
INSERT INTO product_warehouse VALUES("833","1412","","1","22","","2021-07-18 12:06:51","2021-07-18 14:17:02");
INSERT INTO product_warehouse VALUES("834","1325","","1","12","","2021-07-18 12:11:31","2021-07-18 12:11:31");
INSERT INTO product_warehouse VALUES("835","1423","","1","50","","2021-07-18 12:34:47","2021-07-18 12:40:56");
INSERT INTO product_warehouse VALUES("836","1424","","1","100","","2021-07-18 12:34:48","2021-07-18 12:40:57");
INSERT INTO product_warehouse VALUES("837","1425","","1","50","","2021-07-18 12:34:48","2021-07-18 12:40:57");
INSERT INTO product_warehouse VALUES("838","624","","1","81","","2021-07-18 12:34:48","2021-07-29 10:56:01");
INSERT INTO product_warehouse VALUES("839","625","","1","30","","2021-07-18 12:34:48","2021-07-20 06:07:25");
INSERT INTO product_warehouse VALUES("840","1426","","1","30","","2021-07-18 12:34:49","2021-07-18 12:40:58");
INSERT INTO product_warehouse VALUES("841","1427","","1","36","","2021-07-18 12:34:49","2021-07-18 12:40:58");
INSERT INTO product_warehouse VALUES("842","1428","","1","4","","2021-07-18 12:34:49","2021-07-18 12:40:58");
INSERT INTO product_warehouse VALUES("843","1429","","1","4","","2021-07-18 12:34:49","2021-07-18 12:40:59");
INSERT INTO product_warehouse VALUES("844","1430","","1","4","","2021-07-18 12:34:49","2021-07-18 12:40:59");
INSERT INTO product_warehouse VALUES("845","1431","","1","4","","2021-07-18 12:34:49","2021-07-18 12:40:59");
INSERT INTO product_warehouse VALUES("846","263","","1","564","","2021-07-18 12:34:50","2021-08-17 03:17:16");
INSERT INTO product_warehouse VALUES("847","1432","","1","264","","2021-07-18 12:40:59","2021-07-18 12:40:59");
INSERT INTO product_warehouse VALUES("848","103","","1","190","","2021-07-18 13:58:26","2021-07-29 10:56:00");
INSERT INTO product_warehouse VALUES("849","574","","1","1","","2021-07-18 13:58:26","2021-07-18 13:58:26");
INSERT INTO product_warehouse VALUES("850","556","","1","9","","2021-07-18 14:02:27","2021-07-29 11:38:45");
INSERT INTO product_warehouse VALUES("851","538","","1","2","","2021-07-18 14:02:27","2021-07-18 14:02:27");
INSERT INTO product_warehouse VALUES("852","496","","1","5","","2021-07-18 14:12:41","2021-07-29 11:38:45");
INSERT INTO product_warehouse VALUES("853","67","","1","420","","2021-07-18 14:12:42","2021-07-26 10:03:59");
INSERT INTO product_warehouse VALUES("854","1433","","1","6","","2021-07-18 14:17:02","2021-07-18 14:17:02");
INSERT INTO product_warehouse VALUES("855","73","","1","161","","2021-07-18 14:20:59","2021-07-29 10:56:01");
INSERT INTO product_warehouse VALUES("856","526","","1","11","","2021-07-18 14:20:59","2021-07-20 06:07:25");
INSERT INTO product_warehouse VALUES("857","523","","1","3","","2021-07-18 14:34:26","2021-07-18 14:37:11");
INSERT INTO product_warehouse VALUES("858","1434","","1","9","","2021-07-18 14:37:12","2021-07-18 14:52:19");
INSERT INTO product_warehouse VALUES("859","499","","1","20","","2021-07-18 14:50:34","2021-07-18 14:50:34");
INSERT INTO product_warehouse VALUES("860","490","","1","4","","2021-07-19 04:26:23","2021-07-19 04:26:23");
INSERT INTO product_warehouse VALUES("861","1435","","1","12","","2021-07-19 12:34:15","2021-07-19 12:34:15");
INSERT INTO product_warehouse VALUES("862","1436","","1","50","","2021-07-19 12:34:15","2021-07-19 12:34:15");
INSERT INTO product_warehouse VALUES("863","1437","","1","500","","2021-07-19 12:52:38","2021-07-19 12:52:38");
INSERT INTO product_warehouse VALUES("864","1438","","1","100","","2021-07-19 12:52:38","2021-07-19 12:52:38");
INSERT INTO product_warehouse VALUES("865","844","","1","5","","2021-07-19 12:52:38","2021-07-19 12:52:38");
INSERT INTO product_warehouse VALUES("866","845","","1","5","","2021-07-19 12:52:38","2021-07-19 12:52:38");
INSERT INTO product_warehouse VALUES("867","1439","","1","6","","2021-07-19 13:28:36","2021-07-19 13:28:36");
INSERT INTO product_warehouse VALUES("868","1440","","1","3","","2021-07-19 13:28:36","2021-07-19 13:28:36");
INSERT INTO product_warehouse VALUES("869","1441","","1","1","","2021-07-19 13:28:37","2021-07-19 13:28:37");
INSERT INTO product_warehouse VALUES("870","1442","","1","2","","2021-07-19 13:28:37","2021-07-19 13:28:37");
INSERT INTO product_warehouse VALUES("871","645","","1","2","","2021-07-19 13:48:37","2021-07-19 13:50:48");
INSERT INTO product_warehouse VALUES("872","646","","1","2","","2021-07-19 13:48:37","2021-07-19 13:50:48");
INSERT INTO product_warehouse VALUES("873","647","","1","2","","2021-07-19 13:48:37","2021-07-19 13:50:48");
INSERT INTO product_warehouse VALUES("874","648","","1","2","","2021-07-19 13:48:37","2021-07-19 13:50:48");
INSERT INTO product_warehouse VALUES("875","649","","1","4","","2021-07-19 13:48:37","2021-07-19 13:50:48");
INSERT INTO product_warehouse VALUES("876","650","","1","4","","2021-07-19 13:48:37","2021-07-19 13:50:48");
INSERT INTO product_warehouse VALUES("877","651","","1","3","","2021-07-19 13:48:37","2021-07-19 13:50:49");
INSERT INTO product_warehouse VALUES("878","652","","1","2","","2021-07-19 13:48:37","2021-07-19 13:50:49");
INSERT INTO product_warehouse VALUES("879","1444","","1","300","","2021-07-19 14:36:43","2021-07-19 14:36:43");
INSERT INTO product_warehouse VALUES("880","1443","","1","300","","2021-07-19 14:40:27","2021-07-19 14:43:56");
INSERT INTO product_warehouse VALUES("881","165","","1","1300","","2021-07-19 14:40:27","2021-07-19 14:46:17");
INSERT INTO product_warehouse VALUES("882","159","","1","500","","2021-07-19 14:40:27","2021-07-19 14:43:56");
INSERT INTO product_warehouse VALUES("883","28","","1","1","","2021-07-19 15:02:56","2021-07-19 15:02:56");
INSERT INTO product_warehouse VALUES("884","25","","1","1","","2021-07-19 15:02:56","2021-07-19 15:02:56");
INSERT INTO product_warehouse VALUES("885","1446","","1","1","","2021-07-19 15:25:03","2021-07-19 15:25:03");
INSERT INTO product_warehouse VALUES("886","1448","","1","1","","2021-07-19 15:25:03","2021-07-19 15:25:03");
INSERT INTO product_warehouse VALUES("887","1447","","1","1","","2021-07-19 15:28:09","2021-07-19 15:28:09");
INSERT INTO product_warehouse VALUES("888","1445","","1","2","","2021-07-19 15:33:55","2021-07-19 15:33:55");
INSERT INTO product_warehouse VALUES("889","1449","","1","1","","2021-07-19 15:57:34","2021-07-19 15:59:58");
INSERT INTO product_warehouse VALUES("890","1450","","1","1","","2021-07-19 15:57:34","2021-07-19 15:59:58");
INSERT INTO product_warehouse VALUES("891","1451","","1","1","","2021-07-19 15:57:34","2021-07-19 15:59:58");
INSERT INTO product_warehouse VALUES("892","1452","","1","1","","2021-07-19 15:57:34","2021-07-19 15:59:58");
INSERT INTO product_warehouse VALUES("893","34","","1","300","","2021-07-20 04:38:35","2021-07-20 04:43:08");
INSERT INTO product_warehouse VALUES("894","36","","1","300","","2021-07-20 04:38:35","2021-07-20 04:43:08");
INSERT INTO product_warehouse VALUES("895","38","","1","90","","2021-07-20 04:38:35","2021-07-20 04:43:09");
INSERT INTO product_warehouse VALUES("896","268","","1","300","","2021-07-20 04:38:35","2021-07-20 04:43:09");
INSERT INTO product_warehouse VALUES("897","1453","","1","96","","2021-07-20 04:53:11","2021-07-20 04:53:11");
INSERT INTO product_warehouse VALUES("898","1454","","1","48","","2021-07-20 04:53:11","2021-07-20 04:53:11");
INSERT INTO product_warehouse VALUES("899","1455","","1","12","","2021-07-20 04:53:11","2021-07-20 04:53:11");
INSERT INTO product_warehouse VALUES("900","1456","","1","12","","2021-07-20 04:53:11","2021-07-20 04:53:11");
INSERT INTO product_warehouse VALUES("901","1457","","1","24","","2021-07-20 04:53:11","2021-07-20 04:53:11");
INSERT INTO product_warehouse VALUES("902","1458","","1","24","","2021-07-20 04:53:12","2021-07-20 04:53:12");
INSERT INTO product_warehouse VALUES("903","1459","","1","24","","2021-07-20 04:53:12","2021-07-20 04:53:12");
INSERT INTO product_warehouse VALUES("904","1460","","1","12","","2021-07-20 04:53:12","2021-07-20 04:53:12");
INSERT INTO product_warehouse VALUES("905","1461","","1","12","","2021-07-20 04:53:12","2021-07-20 04:53:12");
INSERT INTO product_warehouse VALUES("906","1462","","1","24","","2021-07-20 04:53:12","2021-07-20 04:53:12");
INSERT INTO product_warehouse VALUES("907","1463","","1","24","","2021-07-20 04:53:12","2021-07-20 04:53:12");
INSERT INTO product_warehouse VALUES("908","1464","","1","12","","2021-07-20 04:53:13","2021-07-20 04:53:13");
INSERT INTO product_warehouse VALUES("909","1465","","1","24","","2021-07-20 04:53:13","2021-07-20 04:53:13");
INSERT INTO product_warehouse VALUES("910","147","","1","200","","2021-07-20 04:53:13","2021-07-20 04:53:13");
INSERT INTO product_warehouse VALUES("911","1466","","1","48","","2021-07-20 04:53:13","2021-07-20 04:53:13");
INSERT INTO product_warehouse VALUES("912","3","","1","3","","2021-07-20 05:29:20","2021-07-20 05:33:29");
INSERT INTO product_warehouse VALUES("913","5","","1","2","","2021-07-20 05:29:20","2021-07-20 05:33:29");
INSERT INTO product_warehouse VALUES("914","1467","","1","10","","2021-07-20 05:41:27","2021-07-20 05:41:27");
INSERT INTO product_warehouse VALUES("915","622","","1","6","","2021-07-20 05:41:27","2021-07-20 05:41:27");
INSERT INTO product_warehouse VALUES("916","616","","1","8","","2021-07-20 05:41:27","2021-07-20 06:07:23");
INSERT INTO product_warehouse VALUES("917","612","","1","20","","2021-07-20 06:07:23","2021-07-20 06:07:23");
INSERT INTO product_warehouse VALUES("918","613","","1","10","","2021-07-20 06:07:23","2021-07-22 04:38:12");
INSERT INTO product_warehouse VALUES("919","614","","1","4","","2021-07-20 06:07:23","2021-07-20 06:07:23");
INSERT INTO product_warehouse VALUES("920","615","","1","20","","2021-07-20 06:07:23","2021-07-20 06:07:23");
INSERT INTO product_warehouse VALUES("921","617","","1","1","","2021-07-20 06:07:23","2021-07-20 06:07:23");
INSERT INTO product_warehouse VALUES("922","618","","1","1","","2021-07-20 06:07:23","2021-07-20 06:07:23");
INSERT INTO product_warehouse VALUES("923","619","","1","1","","2021-07-20 06:07:24","2021-07-20 06:07:24");
INSERT INTO product_warehouse VALUES("924","15","","1","100","","2021-07-20 06:07:24","2021-07-20 06:07:24");
INSERT INTO product_warehouse VALUES("925","13","","1","500","","2021-07-20 06:07:24","2021-07-20 06:07:24");
INSERT INTO product_warehouse VALUES("926","14","","1","400","","2021-07-20 06:07:24","2021-07-20 06:07:24");
INSERT INTO product_warehouse VALUES("927","21","","1","201","","2021-07-20 06:07:24","2021-07-29 10:56:01");
INSERT INTO product_warehouse VALUES("928","24","","1","100","","2021-07-20 06:07:24","2021-07-20 06:07:24");
INSERT INTO product_warehouse VALUES("929","532","","1","17","","2021-07-20 06:07:25","2021-07-29 10:56:01");
INSERT INTO product_warehouse VALUES("930","478","","1","18","","2021-07-20 06:07:25","2021-07-20 06:07:25");
INSERT INTO product_warehouse VALUES("931","484","","1","30","","2021-07-20 06:07:25","2021-07-29 10:56:01");
INSERT INTO product_warehouse VALUES("932","502","","1","53","","2021-07-20 06:07:25","2021-07-26 10:00:31");
INSERT INTO product_warehouse VALUES("933","520","","1","24","","2021-07-20 06:07:25","2021-07-20 06:07:25");
INSERT INTO product_warehouse VALUES("934","508","","1","16","","2021-07-20 06:07:25","2021-07-20 06:07:25");
INSERT INTO product_warehouse VALUES("935","621","","1","2","","2021-07-20 06:11:02","2021-07-20 06:11:02");
INSERT INTO product_warehouse VALUES("936","620","","1","6","","2021-07-20 06:11:02","2021-07-20 06:11:02");
INSERT INTO product_warehouse VALUES("937","1468","","1","20","","2021-07-20 08:32:50","2021-07-20 08:32:50");
INSERT INTO product_warehouse VALUES("938","1469","","1","20","","2021-07-20 08:32:51","2021-07-20 08:32:51");
INSERT INTO product_warehouse VALUES("939","1470","","1","16","","2021-07-20 08:32:51","2021-07-20 08:32:51");
INSERT INTO product_warehouse VALUES("940","1471","","1","14","","2021-07-20 08:32:51","2021-07-20 08:32:51");
INSERT INTO product_warehouse VALUES("941","1472","","1","30","","2021-07-20 08:32:51","2021-07-20 08:32:51");
INSERT INTO product_warehouse VALUES("942","1473","","1","40","","2021-07-20 08:32:51","2021-07-20 08:32:51");
INSERT INTO product_warehouse VALUES("943","1474","","1","16","","2021-07-20 08:32:51","2021-07-26 13:55:37");
INSERT INTO product_warehouse VALUES("944","1475","","1","6","","2021-07-20 08:32:51","2021-07-20 08:32:51");
INSERT INTO product_warehouse VALUES("945","1476","","1","10","","2021-07-20 08:32:51","2021-07-20 08:32:51");
INSERT INTO product_warehouse VALUES("946","1477","","1","10","","2021-07-20 08:32:51","2021-07-20 08:32:51");
INSERT INTO product_warehouse VALUES("947","1478","","1","10","","2021-07-20 08:32:52","2021-07-20 08:46:48");
INSERT INTO product_warehouse VALUES("948","1479","","1","6","","2021-07-20 08:32:52","2021-07-20 08:32:52");
INSERT INTO product_warehouse VALUES("949","1480","","1","3","","2021-07-20 08:32:52","2021-07-20 08:32:52");
INSERT INTO product_warehouse VALUES("950","1481","","1","24","","2021-07-20 08:32:52","2021-07-20 08:32:52");
INSERT INTO product_warehouse VALUES("951","1482","","1","18","","2021-07-20 08:32:52","2021-07-20 08:32:52");
INSERT INTO product_warehouse VALUES("952","877","","1","6","","2021-07-20 08:32:52","2021-07-20 08:32:52");
INSERT INTO product_warehouse VALUES("953","876","","1","6","","2021-07-20 08:32:52","2021-07-20 08:32:52");
INSERT INTO product_warehouse VALUES("954","1483","","1","2","","2021-07-20 08:32:52","2021-07-20 08:32:52");
INSERT INTO product_warehouse VALUES("955","1484","","1","3","","2021-07-20 08:32:53","2021-07-20 08:32:53");
INSERT INTO product_warehouse VALUES("956","1485","","1","3","","2021-07-20 08:32:53","2021-07-20 08:32:53");
INSERT INTO product_warehouse VALUES("957","1486","","1","15","","2021-07-20 08:32:53","2021-07-20 08:32:53");
INSERT INTO product_warehouse VALUES("958","1487","","1","15","","2021-07-20 08:32:53","2021-07-20 08:32:53");
INSERT INTO product_warehouse VALUES("959","1488","","1","6","","2021-07-20 08:32:53","2021-07-20 08:32:53");
INSERT INTO product_warehouse VALUES("960","1489","","1","6","","2021-07-20 08:32:53","2021-07-20 08:32:53");
INSERT INTO product_warehouse VALUES("961","1490","","1","6","","2021-07-20 08:32:53","2021-07-20 08:32:53");
INSERT INTO product_warehouse VALUES("962","1491","","1","6","","2021-07-20 08:32:53","2021-07-26 10:23:30");
INSERT INTO product_warehouse VALUES("963","1492","","1","4","","2021-07-20 08:32:53","2021-07-20 08:32:53");
INSERT INTO product_warehouse VALUES("964","1493","","1","140","","2021-07-20 08:46:48","2021-07-20 08:46:48");
INSERT INTO product_warehouse VALUES("965","764","","1","1","","2021-07-20 08:46:48","2021-07-20 08:46:48");
INSERT INTO product_warehouse VALUES("966","1494","","1","4","","2021-07-20 09:25:56","2021-07-20 09:25:56");
INSERT INTO product_warehouse VALUES("967","1495","","1","2","","2021-07-20 09:25:57","2021-07-20 09:25:57");
INSERT INTO product_warehouse VALUES("968","1496","","1","2","","2021-07-20 09:25:57","2021-07-20 09:25:57");
INSERT INTO product_warehouse VALUES("969","1497","","1","4","","2021-07-20 09:25:57","2021-07-20 09:25:57");
INSERT INTO product_warehouse VALUES("970","1498","","1","6","","2021-07-20 09:25:57","2021-07-20 09:25:57");
INSERT INTO product_warehouse VALUES("971","1499","","1","4","","2021-07-20 09:25:57","2021-07-20 09:25:57");
INSERT INTO product_warehouse VALUES("972","1500","","1","4","","2021-07-20 09:25:57","2021-07-20 09:25:57");
INSERT INTO product_warehouse VALUES("973","1501","","1","2","","2021-07-20 09:25:57","2021-07-20 09:25:57");
INSERT INTO product_warehouse VALUES("974","1502","","1","1","","2021-07-20 09:25:57","2021-07-20 09:25:57");
INSERT INTO product_warehouse VALUES("975","1503","","1","2","","2021-07-20 09:25:57","2021-07-20 09:25:57");
INSERT INTO product_warehouse VALUES("976","1504","","1","2","","2021-07-20 09:25:58","2021-07-20 09:25:58");
INSERT INTO product_warehouse VALUES("977","1505","","1","2","","2021-07-20 09:25:58","2021-07-20 09:25:58");
INSERT INTO product_warehouse VALUES("978","873","","1","12","","2021-07-20 09:25:58","2021-07-20 09:25:58");
INSERT INTO product_warehouse VALUES("979","1506","","1","6","","2021-07-21 14:13:01","2021-07-21 14:13:01");
INSERT INTO product_warehouse VALUES("980","1507","","1","6","","2021-07-21 14:13:01","2021-07-21 14:13:01");
INSERT INTO product_warehouse VALUES("981","1508","","1","6","","2021-07-21 14:13:01","2021-07-21 14:13:01");
INSERT INTO product_warehouse VALUES("982","1509","","1","6","","2021-07-21 14:13:01","2021-07-21 14:13:01");
INSERT INTO product_warehouse VALUES("983","1510","","1","6","","2021-07-21 14:13:01","2021-07-21 14:13:01");
INSERT INTO product_warehouse VALUES("984","1511","","1","3","","2021-07-21 14:13:01","2021-07-21 14:13:01");
INSERT INTO product_warehouse VALUES("985","1512","","1","6","","2021-07-21 14:13:02","2021-07-21 14:13:02");
INSERT INTO product_warehouse VALUES("986","1513","","1","6","","2021-07-21 14:13:02","2021-07-21 14:13:02");
INSERT INTO product_warehouse VALUES("987","1514","","1","3","","2021-07-21 14:13:02","2021-07-21 14:13:02");
INSERT INTO product_warehouse VALUES("988","1515","","1","3","","2021-07-21 14:13:02","2021-07-21 14:13:02");
INSERT INTO product_warehouse VALUES("989","1516","","1","3","","2021-07-21 14:13:02","2021-07-21 14:13:02");
INSERT INTO product_warehouse VALUES("990","1517","","1","6","","2021-07-21 14:13:02","2021-07-21 14:13:02");
INSERT INTO product_warehouse VALUES("991","1518","","1","7","","2021-07-21 14:13:02","2021-07-22 04:32:14");
INSERT INTO product_warehouse VALUES("992","1519","","1","6","","2021-07-21 14:13:02","2021-07-21 14:13:02");
INSERT INTO product_warehouse VALUES("993","1520","","1","12","","2021-07-21 14:13:02","2021-07-21 14:13:02");
INSERT INTO product_warehouse VALUES("994","1521","","1","6","","2021-07-21 14:13:03","2021-07-21 14:13:03");
INSERT INTO product_warehouse VALUES("995","1522","","1","6","","2021-07-21 14:13:03","2021-07-21 14:13:03");
INSERT INTO product_warehouse VALUES("996","1523","","1","6","","2021-07-21 14:13:03","2021-07-21 14:13:03");
INSERT INTO product_warehouse VALUES("997","1524","","1","6","","2021-07-21 14:13:03","2021-07-21 14:13:03");
INSERT INTO product_warehouse VALUES("998","1525","","1","6","","2021-07-21 14:13:03","2021-07-21 14:13:03");
INSERT INTO product_warehouse VALUES("999","1526","","1","6","","2021-07-21 14:13:03","2021-07-21 14:13:03");
INSERT INTO product_warehouse VALUES("1000","1527","","1","3","","2021-07-21 14:13:03","2021-07-21 14:13:03");
INSERT INTO product_warehouse VALUES("1001","1528","","1","3","","2021-07-21 14:13:03","2021-07-21 14:13:03");
INSERT INTO product_warehouse VALUES("1002","913","","1","3","","2021-07-22 03:29:12","2021-07-22 03:29:12");
INSERT INTO product_warehouse VALUES("1003","1537","","1","0","","2021-07-22 03:55:00","2021-08-05 02:39:24");
INSERT INTO product_warehouse VALUES("1004","1539","","1","8","","2021-07-22 04:06:10","2021-07-22 04:06:10");
INSERT INTO product_warehouse VALUES("1005","774","","1","1","","2021-07-22 04:32:13","2021-07-22 04:32:13");
INSERT INTO product_warehouse VALUES("1006","761","","1","1","","2021-07-22 04:32:13","2021-07-22 04:32:13");
INSERT INTO product_warehouse VALUES("1007","787","","1","1","","2021-07-22 04:32:14","2021-07-22 04:32:14");
INSERT INTO product_warehouse VALUES("1008","598","","1","5","","2021-07-22 04:41:51","2021-07-22 04:41:51");
INSERT INTO product_warehouse VALUES("1009","1540","","1","2","","2021-07-22 05:00:35","2021-07-22 05:00:35");
INSERT INTO product_warehouse VALUES("1010","1541","","1","3","","2021-07-22 05:33:59","2021-07-22 05:33:59");
INSERT INTO product_warehouse VALUES("1011","1542","","1","3","","2021-07-22 05:34:00","2021-07-22 05:34:00");
INSERT INTO product_warehouse VALUES("1012","1543","","1","4","","2021-07-22 05:34:00","2021-07-22 05:34:00");
INSERT INTO product_warehouse VALUES("1013","1548","","1","200","","2021-07-22 05:58:02","2021-08-05 02:35:53");
INSERT INTO product_warehouse VALUES("1014","1544","","1","300","","2021-07-22 05:58:02","2021-08-05 02:35:54");
INSERT INTO product_warehouse VALUES("1015","1546","","1","300","","2021-07-22 05:58:02","2021-08-05 02:35:54");
INSERT INTO product_warehouse VALUES("1016","1550","","1","200","","2021-07-22 05:58:03","2021-08-05 02:35:54");
INSERT INTO product_warehouse VALUES("1017","1551","","1","200","","2021-07-22 05:58:03","2021-08-05 02:35:55");
INSERT INTO product_warehouse VALUES("1018","231","","1","200","","2021-07-22 06:15:42","2021-07-22 06:15:42");
INSERT INTO product_warehouse VALUES("1019","237","","1","20","","2021-07-22 06:15:42","2021-07-22 06:15:42");
INSERT INTO product_warehouse VALUES("1020","1552","","1","160","","2021-07-25 14:18:34","2021-07-25 14:18:34");
INSERT INTO product_warehouse VALUES("1021","20","","1","50","","2021-07-25 14:30:46","2021-07-25 14:52:57");
INSERT INTO product_warehouse VALUES("1022","866","","1","1","","2021-07-25 14:30:46","2021-07-25 14:52:57");
INSERT INTO product_warehouse VALUES("1023","644","","1","20","","2021-07-25 14:52:57","2021-07-25 14:52:57");
INSERT INTO product_warehouse VALUES("1024","102","","1","240","","2021-07-25 14:59:35","2021-07-26 10:48:39");
INSERT INTO product_warehouse VALUES("1025","576","","1","10","","2021-07-26 10:07:06","2021-07-26 10:07:06");
INSERT INTO product_warehouse VALUES("1026","487","","1","15","","2021-07-26 10:12:39","2021-07-26 10:12:39");
INSERT INTO product_warehouse VALUES("1027","1553","","1","110","","2021-07-26 10:35:19","2021-07-26 13:52:28");
INSERT INTO product_warehouse VALUES("1028","1554","","1","10","","2021-07-26 10:35:19","2021-07-26 10:35:19");
INSERT INTO product_warehouse VALUES("1029","1555","","1","10","","2021-07-26 10:35:19","2021-07-26 10:35:19");
INSERT INTO product_warehouse VALUES("1030","1556","","1","2","","2021-07-26 10:39:55","2021-07-26 10:39:55");
INSERT INTO product_warehouse VALUES("1031","531","","1","10","","2021-07-26 10:48:39","2021-07-26 10:48:39");
INSERT INTO product_warehouse VALUES("1032","1558","","1","3","","2021-07-26 10:48:39","2021-07-26 10:48:39");
INSERT INTO product_warehouse VALUES("1033","1559","","1","80","","2021-07-26 10:54:53","2021-07-26 10:54:53");
INSERT INTO product_warehouse VALUES("1034","1560","","1","5","","2021-07-26 10:54:53","2021-07-26 10:54:53");
INSERT INTO product_warehouse VALUES("1035","1557","","1","6","","2021-07-26 10:58:17","2021-07-26 10:58:17");
INSERT INTO product_warehouse VALUES("1036","656","","1","3","","2021-07-26 11:03:49","2021-07-26 11:03:49");
INSERT INTO product_warehouse VALUES("1037","660","","1","3","","2021-07-26 11:03:50","2021-07-26 11:03:50");
INSERT INTO product_warehouse VALUES("1038","664","","1","3","","2021-07-26 11:03:50","2021-07-26 11:03:50");
INSERT INTO product_warehouse VALUES("1039","663","","1","3","","2021-07-26 11:03:50","2021-07-26 11:03:50");
INSERT INTO product_warehouse VALUES("1040","1561","","1","2","","2021-07-26 11:08:06","2021-07-26 11:08:06");
INSERT INTO product_warehouse VALUES("1041","1562","","1","30","","2021-07-26 11:34:20","2021-07-26 11:34:20");
INSERT INTO product_warehouse VALUES("1042","1563","","1","30","","2021-07-26 11:34:21","2021-07-26 11:34:21");
INSERT INTO product_warehouse VALUES("1043","1564","","1","6","","2021-07-26 11:34:21","2021-07-26 11:34:21");
INSERT INTO product_warehouse VALUES("1044","1565","","1","12","","2021-07-26 11:34:21","2021-07-26 11:34:21");
INSERT INTO product_warehouse VALUES("1045","1566","","1","144","","2021-07-26 11:34:21","2021-07-26 11:34:21");
INSERT INTO product_warehouse VALUES("1046","1567","","1","144","","2021-07-26 11:34:21","2021-07-26 11:34:21");
INSERT INTO product_warehouse VALUES("1047","1568","","1","3","","2021-07-26 12:04:33","2021-07-26 12:04:33");
INSERT INTO product_warehouse VALUES("1048","1569","","1","3","","2021-07-26 12:04:34","2021-07-26 12:04:34");
INSERT INTO product_warehouse VALUES("1049","1570","","1","60","","2021-07-26 12:04:34","2021-07-26 12:04:34");
INSERT INTO product_warehouse VALUES("1050","1571","","1","12","","2021-07-26 12:04:34","2021-07-26 12:04:34");
INSERT INTO product_warehouse VALUES("1051","1572","","1","12","","2021-07-26 12:04:34","2021-07-26 12:04:34");
INSERT INTO product_warehouse VALUES("1052","1573","","1","24","","2021-07-26 12:04:34","2021-07-26 12:04:34");
INSERT INTO product_warehouse VALUES("1053","1574","","1","24","","2021-07-26 12:31:16","2021-07-26 12:31:16");
INSERT INTO product_warehouse VALUES("1054","1575","","1","24","","2021-07-26 12:31:16","2021-07-26 12:31:16");
INSERT INTO product_warehouse VALUES("1055","1576","","1","24","","2021-07-26 12:31:16","2021-07-26 12:31:16");
INSERT INTO product_warehouse VALUES("1056","1577","","1","3","","2021-07-26 12:31:16","2021-07-26 12:31:16");
INSERT INTO product_warehouse VALUES("1057","1578","","1","3","","2021-07-26 12:31:16","2021-07-26 12:31:16");
INSERT INTO product_warehouse VALUES("1058","1579","","1","12","","2021-07-26 12:31:17","2021-07-26 12:31:17");
INSERT INTO product_warehouse VALUES("1059","1580","","1","60","","2021-07-26 13:52:28","2021-07-26 13:52:28");
INSERT INTO product_warehouse VALUES("1060","1102","","1","20","","2021-07-26 14:16:35","2021-07-26 14:16:35");
INSERT INTO product_warehouse VALUES("1061","1582","","1","120","","2021-07-26 14:16:35","2021-07-29 10:56:01");
INSERT INTO product_warehouse VALUES("1062","1583","","1","4","","2021-07-26 14:34:14","2021-07-26 14:34:14");
INSERT INTO product_warehouse VALUES("1063","910","","1","1","","2021-07-26 14:34:15","2021-07-26 14:34:15");
INSERT INTO product_warehouse VALUES("1064","1584","","1","1","","2021-07-26 14:34:15","2021-07-26 14:34:15");
INSERT INTO product_warehouse VALUES("1065","1585","","1","15","","2021-07-29 10:31:24","2021-07-29 10:31:24");
INSERT INTO product_warehouse VALUES("1066","1586","","1","15","","2021-07-29 10:31:24","2021-07-29 10:31:24");
INSERT INTO product_warehouse VALUES("1067","1587","","1","50","","2021-07-29 10:31:25","2021-07-29 10:31:25");
INSERT INTO product_warehouse VALUES("1068","1588","","1","15","","2021-07-29 10:31:25","2021-07-29 10:31:25");
INSERT INTO product_warehouse VALUES("1069","1581","","1","100","","2021-07-29 10:51:23","2021-07-29 10:56:02");
INSERT INTO product_warehouse VALUES("1070","1396","","1","4","","2021-07-29 10:54:54","2021-07-29 10:56:02");
INSERT INTO product_warehouse VALUES("1071","858","","1","18","","2021-08-02 02:35:21","2021-08-02 02:46:57");
INSERT INTO product_warehouse VALUES("1072","859","","1","6","","2021-08-02 02:35:21","2021-08-02 02:35:21");
INSERT INTO product_warehouse VALUES("1073","860","","1","26","","2021-08-02 02:35:21","2021-08-02 02:46:57");
INSERT INTO product_warehouse VALUES("1074","1589","","1","80","","2021-08-02 13:56:24","2021-08-05 02:23:57");
INSERT INTO product_warehouse VALUES("1075","1590","","1","1","","2021-08-02 14:02:34","2021-08-02 14:02:34");
INSERT INTO product_warehouse VALUES("1076","709","","1","200","","2021-08-17 03:17:14","2021-08-17 03:17:14");
INSERT INTO product_warehouse VALUES("1077","711","","1","50","","2021-08-17 03:17:14","2021-08-17 03:17:14");
INSERT INTO product_warehouse VALUES("1078","718","","1","20","","2021-08-17 03:17:14","2021-08-17 03:17:14");
INSERT INTO product_warehouse VALUES("1079","710","","1","30","","2021-08-17 03:17:15","2021-08-17 03:17:15");
INSERT INTO product_warehouse VALUES("1080","712","","1","100","","2021-08-17 03:17:15","2021-08-17 03:17:15");
INSERT INTO product_warehouse VALUES("1081","719","","1","100","","2021-08-17 03:17:15","2021-08-17 03:17:15");
INSERT INTO product_warehouse VALUES("1082","728","","1","200","","2021-08-17 03:17:15","2021-08-17 03:17:15");
INSERT INTO product_warehouse VALUES("1083","729","","1","200","","2021-08-17 03:17:15","2021-08-17 03:17:15");
INSERT INTO product_warehouse VALUES("1084","730","","1","200","","2021-08-17 03:17:15","2021-08-17 03:17:15");
INSERT INTO product_warehouse VALUES("1085","736","","1","100","","2021-08-17 03:17:16","2021-08-17 03:17:16");
INSERT INTO product_warehouse VALUES("1086","264","","1","200","","2021-08-17 03:17:16","2021-08-17 03:17:16");
INSERT INTO product_warehouse VALUES("1087","262","","1","100","","2021-08-17 03:17:16","2021-08-17 03:17:16");
INSERT INTO product_warehouse VALUES("1088","863","","1","24","","2021-08-17 03:17:16","2021-08-17 03:17:16");
INSERT INTO product_warehouse VALUES("1089","862","","1","48","","2021-08-17 03:17:16","2021-08-17 03:17:16");
INSERT INTO product_warehouse VALUES("1090","864","","1","60","","2021-08-17 03:17:16","2021-08-17 03:17:16");



CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode_symbology` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `cost` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` double DEFAULT NULL,
  `alert_quantity` double DEFAULT NULL,
  `promotion` tinyint(4) DEFAULT NULL,
  `promotion_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starting_date` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_date` date DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `tax_method` int(11) DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_variant` tinyint(1) DEFAULT NULL,
  `is_diffPrice` tinyint(1) DEFAULT NULL,
  `featured` tinyint(4) DEFAULT NULL,
  `product_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1591 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO products VALUES("1","500 LTR WATER TANK(G)","101","standard","C128","2","1","1","1","1","3555","3650","3","2","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-13 12:52:24","2021-07-28 15:04:58");
INSERT INTO products VALUES("2","1000 LTR WATER TANK(G)","102","standard","C128","2","1","1","1","1","7110","7300","4","2","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-13 12:54:08","2021-07-28 15:06:00");
INSERT INTO products VALUES("3","500 LTR WATER TANK(M)","104","standard","C128","3","1","1","1","1","0","0","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-13 12:58:10","2021-07-20 05:33:29");
INSERT INTO products VALUES("4","2000 LTR WATER TANK(G)","103","standard","C128","2","1","1","1","1","1","1","0","2","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-13 12:59:27","2021-06-13 14:38:26");
INSERT INTO products VALUES("5","1000 LTR WATER TANK(M)","105","standard","C128","3","1","1","1","1","1","1","2","1","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-13 13:00:47","2021-07-20 05:33:29");
INSERT INTO products VALUES("6","2000 LTR WATER TANK(M)","106","standard","C128","3","1","1","1","1","0","0","0","1","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-13 13:02:31","2021-06-13 13:02:31");
INSERT INTO products VALUES("7","3/4 Thread Pipe(G)","107","standard","C128","2","1","2","2","2","1","1","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-13 13:26:00","2021-06-14 03:43:52");
INSERT INTO products VALUES("8","1 Thread Pipe(G)","108","standard","C128","2","1","2","2","2","1","1","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-13 13:27:47","2021-07-20 04:02:52");
INSERT INTO products VALUES("9","1.5 Thread Pipe(G)","109","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-13 13:28:54","2021-07-28 17:47:41");
INSERT INTO products VALUES("10","3/4 Thread Pipe(M)","110","standard","C128","3","1","2","2","2","1","1","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-13 13:30:42","2021-06-14 03:44:19");
INSERT INTO products VALUES("11","1 Thread Pipe(M)","111","standard","C128","3","1","2","2","2","1","1","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-13 13:32:08","2021-07-20 04:03:38");
INSERT INTO products VALUES("12","1.5 Thread Pipe(M)","112","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-13 13:32:56","2021-07-28 17:44:53");
INSERT INTO products VALUES("13","3/4 Thread Pipe(N/M)","113","standard","C128","6","1","2","2","2","19.7","22","500","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-13 13:36:49","2021-07-20 06:07:24");
INSERT INTO products VALUES("14","1 Thread Pipe(N/M)","114","standard","C128","6","1","2","2","2","29.26","32","400","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-13 13:40:25","2021-07-20 06:07:24");
INSERT INTO products VALUES("15","1.5 Thread Pipe(N/M)","115","standard","C128","6","1","2","2","2","50.5","52","100","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-13 13:41:27","2021-07-28 17:44:12");
INSERT INTO products VALUES("16","2 Thread Pipe(G)","116","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-13 13:50:27","2021-07-20 04:10:49");
INSERT INTO products VALUES("17","2 Thread Pipe(M)","117","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-13 13:51:27","2021-07-20 04:11:24");
INSERT INTO products VALUES("18","2 Thread Pipe(N/M)","118","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-13 13:52:16","2021-07-20 04:12:02");
INSERT INTO products VALUES("19","1.5 UPVC Pipe(G)","119","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-13 14:00:09","2021-07-28 17:43:41");
INSERT INTO products VALUES("20","1.5 UPVC Pipe(M)","120","standard","C128","3","1","2","2","2","0","0","50","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-13 14:01:21","2021-07-28 17:43:18");
INSERT INTO products VALUES("21","1.5 UPVC Pipe(N/M)","121","standard","C128","6","1","2","2","2","0","0","201","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-13 14:02:04","2021-07-29 10:56:01");
INSERT INTO products VALUES("22","2 UPVC Pipe (G)","122","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-13 14:04:48","2021-07-28 16:30:29");
INSERT INTO products VALUES("23","2 UPVC Pipe (M)","123","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-13 14:05:49","2021-07-28 16:30:55");
INSERT INTO products VALUES("24","2 UPVC Pipe (N/M)","124","standard","C128","6","1","2","2","2","0","0","100","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-13 14:06:44","2021-07-28 16:31:18");
INSERT INTO products VALUES("25","500 LTR WATER TANK(RFL-Supt)","125","standard","C128","1","1","1","1","1","1","1","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-13 14:41:22","2021-07-19 15:02:56");
INSERT INTO products VALUES("26","500 LTR WATER TANK(A1)","126","standard","C128","7","1","1","1","1","1","1","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-13 14:42:18","2021-06-13 14:42:18");
INSERT INTO products VALUES("27","500 LTR WATER TANK(N/P)","127","standard","C128","8","1","1","1","1","1","1","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-13 14:43:29","2021-06-13 14:43:29");
INSERT INTO products VALUES("28","1000 LTR WATER TANK(RFL-Supt)","128","standard","C128","1","1","1","1","1","6700","0","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-13 14:44:58","2021-07-19 15:02:56");
INSERT INTO products VALUES("29","1000 LTR WATER TANK(A1)","129","standard","C128","7","1","1","1","1","1","1","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-13 14:46:45","2021-06-13 14:46:45");
INSERT INTO products VALUES("30","1000 LTR WATER TANK(N/P)","130","standard","C128","8","1","1","1","1","1","1","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-13 14:48:50","2021-06-13 14:48:50");
INSERT INTO products VALUES("31","2000 LTR WATER TANK(RFL)","131","standard","C128","1","1","1","1","1","1","1","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 02:25:15","2021-06-14 02:25:15");
INSERT INTO products VALUES("32","2000 LTR WATER TANK(N/M)","132","standard","C128","6","1","1","1","1","1","1","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 02:26:02","2021-06-14 02:26:02");
INSERT INTO products VALUES("33","2000 LTR WATER TANK(N/P)","133","standard","C128","8","1","1","1","1","1","1","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 02:26:46","2021-06-14 02:26:46");
INSERT INTO products VALUES("34","3/4 Thread Pipe(RFL)","134","standard","C128","1","1","2","2","2","22.3","24","300","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 02:29:20","2021-07-20 04:43:08");
INSERT INTO products VALUES("35","3/4 Thread Pipe(N/P)","135","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 02:30:17","2021-06-14 03:45:19");
INSERT INTO products VALUES("36","1 Thread Pipe(RFL)","136","standard","C128","1","1","2","2","2","32","34","300","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 02:31:20","2021-07-20 04:43:08");
INSERT INTO products VALUES("37","1 Thread Pipe(N/P)","137","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 02:32:04","2021-07-20 04:04:09");
INSERT INTO products VALUES("38","1.5 Thread Pipe(RFL)","138","standard","C128","1","1","2","2","2","57","59","90","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 02:33:12","2021-07-28 17:42:14");
INSERT INTO products VALUES("39","1.5 Thread Pipe(N/P)","139","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 02:33:50","2021-07-28 17:41:52");
INSERT INTO products VALUES("40","2 Thread Pipe(RFL)","140","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 02:35:44","2021-07-20 04:09:37");
INSERT INTO products VALUES("41","2 Thread Pipe(N/P)","141","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 02:36:23","2021-07-20 04:12:36");
INSERT INTO products VALUES("42","1.5 UPVC Pipe(RFL)","142","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 02:39:06","2021-07-28 17:41:22");
INSERT INTO products VALUES("43","1.5 UPVC Pipe(N/P)","143","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 02:39:56","2021-07-28 17:40:59");
INSERT INTO products VALUES("44","2 UPVC Pipe (RFL)","144","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 02:40:57","2021-07-28 16:44:55");
INSERT INTO products VALUES("45","2 UPVC Pipe (N/P)","145","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 02:41:45","2021-07-28 16:44:31");
INSERT INTO products VALUES("46","3/4 Thread Pipe(A1)","146","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 02:46:36","2021-06-14 03:43:27");
INSERT INTO products VALUES("47","1 Thread Pipe(A1)","147","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 02:48:02","2021-07-20 04:02:06");
INSERT INTO products VALUES("48","1.5 Thread Pipe(A1)","148","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 02:49:07","2021-07-28 17:40:21");
INSERT INTO products VALUES("49","2 Thread Pipe(A1)","149","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 02:50:09","2021-07-20 04:10:15");
INSERT INTO products VALUES("50","1.5 UPVC Pipe(A1)","150","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 02:53:49","2021-07-28 17:39:58");
INSERT INTO products VALUES("51","2 UPVC Pipe (A1)","151","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 02:54:35","2021-07-28 16:43:52");
INSERT INTO products VALUES("52","3 UPVC Pipe(A1)","152","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:15:11","2021-06-14 10:15:11");
INSERT INTO products VALUES("53","3 UPVC Pipe(G)","153","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:16:12","2021-06-14 10:16:12");
INSERT INTO products VALUES("54","3 UPVC Pipe(M)","154","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:17:06","2021-06-14 10:17:06");
INSERT INTO products VALUES("55","3 UPVC Pipe(N/M)","155","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:19:54","2021-06-14 10:19:54");
INSERT INTO products VALUES("56","3 UPVC Pipe(N/P)","156","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:20:37","2021-06-14 10:20:37");
INSERT INTO products VALUES("57","3 UPVC Pipe(RFL)","157","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:21:15","2021-06-14 10:21:15");
INSERT INTO products VALUES("58","4 UPVC 2.0 (A1)","158","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:23:23","2021-06-14 10:23:23");
INSERT INTO products VALUES("59","4 UPVC 2.0 (G)","159","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:24:09","2021-06-14 10:24:09");
INSERT INTO products VALUES("60","4 UPVC 2.0 (M)","160","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:24:53","2021-06-14 10:24:53");
INSERT INTO products VALUES("61","4 UPVC 2.0 (N/M)","161","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:25:42","2021-06-14 10:25:42");
INSERT INTO products VALUES("62","4 UPVC 2.0 (N/P)","162","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:26:17","2021-06-14 10:26:17");
INSERT INTO products VALUES("63","4 UPVC 2.0 (RFL)","163","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:27:04","2021-06-14 10:27:04");
INSERT INTO products VALUES("64","4 UPVC 2.7 (A1)","164","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:29:59","2021-06-14 10:29:59");
INSERT INTO products VALUES("65","4 UPVC 2.7 (G)","165","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:30:31","2021-06-14 10:30:31");
INSERT INTO products VALUES("66","4 UPVC 2.7 (M)","166","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:31:10","2021-06-14 10:31:10");
INSERT INTO products VALUES("67","4 UPVC 2.7 (N/M)","167","standard","C128","6","1","2","2","2","0","0","420","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:31:46","2021-07-26 10:03:59");
INSERT INTO products VALUES("68","4 UPVC 2.7 (N/P)","168","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:32:29","2021-06-14 10:32:29");
INSERT INTO products VALUES("69","4 UPVC 2.7 (RFL)","169","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:33:04","2021-06-14 10:33:04");
INSERT INTO products VALUES("70","4 UPVC 3.0 (A1)","170","standard","C128","7","1","2","2","2","0","0","120","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:35:16","2021-07-16 04:50:26");
INSERT INTO products VALUES("71","4 UPVC 3.0 (G)","171","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:35:55","2021-06-14 10:35:55");
INSERT INTO products VALUES("72","4 UPVC 3.0 (M)","172","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:36:31","2021-06-14 10:36:31");
INSERT INTO products VALUES("73","4 UPVC 3.0 (N/M)","173","standard","C128","6","1","2","2","2","0","0","161","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:37:06","2021-07-29 10:56:01");
INSERT INTO products VALUES("74","4 UPVC 3.0 (N/P)","174","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:37:43","2021-06-14 10:37:43");
INSERT INTO products VALUES("75","4 UPVC 3.0 (RFL)","175","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:38:32","2021-06-14 10:38:32");
INSERT INTO products VALUES("76","4 UPVC 3.4 (A1)","176","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:41:10","2021-06-14 10:41:10");
INSERT INTO products VALUES("77","4 UPVC 3.4 (G)","177","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:41:59","2021-06-14 10:41:59");
INSERT INTO products VALUES("78","4 UPVC 3.4 (M)","178","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:42:33","2021-06-14 10:42:33");
INSERT INTO products VALUES("79","4 UPVC 3.4 (N/M)","179","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:43:19","2021-06-14 10:43:19");
INSERT INTO products VALUES("80","4 UPVC 3.4 (N/P)","180","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:43:55","2021-06-14 10:43:55");
INSERT INTO products VALUES("81","4 UPVC 3.4 (RFL)","181","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:44:30","2021-06-14 10:44:30");
INSERT INTO products VALUES("82","6 UPVC 2.7 (A1)","182","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:48:40","2021-06-14 10:48:40");
INSERT INTO products VALUES("83","6 UPVC 2.7 (G)","183","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:49:21","2021-06-14 10:49:21");
INSERT INTO products VALUES("84","6 UPVC 2.7 (M)","184","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:49:58","2021-06-14 10:49:58");
INSERT INTO products VALUES("85","6 UPVC 2.7 (N/M)","185","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:50:41","2021-06-14 10:50:41");
INSERT INTO products VALUES("86","6 UPVC 2.7 (N/P)","186","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:51:20","2021-06-14 10:51:20");
INSERT INTO products VALUES("87","6 UPVC 2.7 (RFL)","187","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:51:54","2021-06-14 10:51:54");
INSERT INTO products VALUES("88","6 UPVC 3.0 (A1)","188","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:54:05","2021-06-14 10:54:05");
INSERT INTO products VALUES("89","6 UPVC 3.0 (G)","189","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:56:34","2021-06-14 10:56:34");
INSERT INTO products VALUES("90","6 UPVC 3.0 (M)","190","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:57:18","2021-06-14 10:57:18");
INSERT INTO products VALUES("91","6 UPVC 3.0 (N/M)","191","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 10:58:05","2021-06-14 10:58:05");
INSERT INTO products VALUES("92","6 UPVC 3.0 (N/P)","192","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 11:01:02","2021-06-14 11:01:02");
INSERT INTO products VALUES("93","6 UPVC 3.0 (RFL)","193","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 11:01:51","2021-06-14 11:01:51");
INSERT INTO products VALUES("94","6 UPVC 3.2 (A1)","194","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 11:04:39","2021-06-14 11:04:39");
INSERT INTO products VALUES("95","6 UPVC 3.2 (G)","195","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 11:05:54","2021-06-14 11:05:54");
INSERT INTO products VALUES("96","6 UPVC 3.2 (M)","196","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 11:07:32","2021-06-14 11:07:32");
INSERT INTO products VALUES("97","6 UPVC 3.2 (N/M)","197","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 11:08:39","2021-06-14 11:12:17");
INSERT INTO products VALUES("98","6 UPVC 3.2 (N/P)","198","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 11:09:21","2021-06-14 11:09:21");
INSERT INTO products VALUES("99","6 UPVC 3.2 (RFL)","199","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 11:10:11","2021-06-14 11:10:11");
INSERT INTO products VALUES("100","6 UPVC 4.0 (A1)","200","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 11:17:35","2021-06-14 11:17:35");
INSERT INTO products VALUES("101","6 UPVC 4.0 (G)","201","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 11:18:12","2021-06-14 11:18:12");
INSERT INTO products VALUES("102","6 UPVC 4.0 (M)","202","standard","C128","3","1","2","2","2","0","0","240","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 11:18:47","2021-07-26 10:48:39");
INSERT INTO products VALUES("103","6 UPVC 4.0 (N/M)","203","standard","C128","6","1","2","2","2","0","0","190","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 11:20:16","2021-07-29 10:56:00");
INSERT INTO products VALUES("104","6 UPVC 4.0 (N/P)","204","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 11:20:56","2021-06-14 11:20:56");
INSERT INTO products VALUES("105","6 UPVC 4.0 (RFL)","205","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 11:21:36","2021-06-14 11:21:36");
INSERT INTO products VALUES("106","8 PVC Pipe 3.0 (A1)","206","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 11:48:13","2021-06-14 11:48:13");
INSERT INTO products VALUES("107","8 PVC Pipe 3.0 (G)","207","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 11:49:08","2021-06-14 11:49:08");
INSERT INTO products VALUES("108","8 PVC Pipe 3.0 (M)","208","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 11:50:25","2021-06-14 11:50:25");
INSERT INTO products VALUES("109","8 PVC Pipe 3.0 (N/M)","209","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 11:51:23","2021-06-14 11:51:23");
INSERT INTO products VALUES("110","8 PVC Pipe 3.0 (N/P)","210","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 11:52:01","2021-06-14 11:52:01");
INSERT INTO products VALUES("111","8 PVC Pipe 3.0 (RFL)","211","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 11:53:13","2021-06-14 11:53:13");
INSERT INTO products VALUES("112","8 PVC Pipe 3.5 (A1)","212","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 12:02:52","2021-06-14 12:02:52");
INSERT INTO products VALUES("113","8 PVC Pipe 3.5 (G)","213","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 12:04:19","2021-06-14 12:04:19");
INSERT INTO products VALUES("114","8 PVC Pipe 3.5 (M)","214","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 12:05:26","2021-06-14 12:05:26");
INSERT INTO products VALUES("115","8 PVC Pipe 3.5 (N/M)","215","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 12:06:09","2021-06-14 12:06:09");
INSERT INTO products VALUES("116","8 PVC Pipe 3.5 (N/P)","216","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 12:06:52","2021-06-14 12:06:52");
INSERT INTO products VALUES("117","8 PVC Pipe 3.5 (RFL)","217","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 12:07:29","2021-06-14 12:07:29");
INSERT INTO products VALUES("118","8 PVC Pipe 4.0 (A1)","218","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 12:09:59","2021-06-14 12:09:59");
INSERT INTO products VALUES("119","8 PVC Pipe 4.0 (G)","219","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 12:11:19","2021-06-14 12:11:19");
INSERT INTO products VALUES("120","8 PVC Pipe 4.0 (M)","220","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 12:12:23","2021-06-14 12:12:23");
INSERT INTO products VALUES("121","8 PVC Pipe 4.0 (N/M)","221","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 12:12:56","2021-06-14 12:12:56");
INSERT INTO products VALUES("122","8 PVC Pipe 4.0 (N/P)","222","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 12:13:30","2021-06-14 12:13:30");
INSERT INTO products VALUES("123","8 PVC Pipe 4.0 (RFL)","223","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 12:14:02","2021-06-14 12:14:02");
INSERT INTO products VALUES("124","10 PVC Pipe 3.0 (A1)","224","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 13:06:40","2021-06-14 13:06:40");
INSERT INTO products VALUES("125","10 PVC Pipe 3.0 (G)","225","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 13:07:22","2021-06-14 13:07:22");
INSERT INTO products VALUES("126","10 PVC Pipe 3.0 (M)","226","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 13:07:57","2021-06-14 13:07:57");
INSERT INTO products VALUES("127","10 PVC Pipe 3.0 (N/M)","227","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 13:08:32","2021-06-14 13:08:32");
INSERT INTO products VALUES("128","10 PVC Pipe 3.0 (N/P)","228","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 13:09:14","2021-06-14 13:09:14");
INSERT INTO products VALUES("129","10 PVC Pipe 3.0 (RFL)","229","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 13:09:50","2021-06-14 13:09:50");
INSERT INTO products VALUES("130","10 PVC Pipe 3.5 (A1)","230","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 13:11:47","2021-06-14 13:11:47");
INSERT INTO products VALUES("131","10 PVC Pipe 3.5 (G)","231","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 13:12:24","2021-06-14 13:12:24");
INSERT INTO products VALUES("132","10 PVC Pipe 3.5 (M)","232","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 13:13:05","2021-06-14 13:13:05");
INSERT INTO products VALUES("133","10 PVC Pipe 3.5 (N/M)","233","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 13:13:49","2021-06-14 13:13:49");
INSERT INTO products VALUES("134","10 PVC Pipe 3.5 (N/P)","234","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 13:14:22","2021-06-14 13:14:22");
INSERT INTO products VALUES("135","10 PVC Pipe 3.5 (RFL)","235","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 13:14:54","2021-06-14 13:14:54");
INSERT INTO products VALUES("136","10 PVC Pipe 4.0 (A1)","236","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 13:15:34","2021-06-14 13:15:34");
INSERT INTO products VALUES("137","10 PVC Pipe 4.0 (G)","237","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 13:16:08","2021-06-14 13:16:08");
INSERT INTO products VALUES("138","10 PVC Pipe 4.0 (M)","238","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 13:16:41","2021-06-14 13:16:41");
INSERT INTO products VALUES("139","10 PVC Pipe 4.0 (N/M)","239","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 13:17:19","2021-06-14 13:17:19");
INSERT INTO products VALUES("140","10 PVC Pipe 4.0 (N/P)","240","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 13:17:55","2021-06-14 13:17:55");
INSERT INTO products VALUES("141","10 PVC Pipe 4.0 (RFL)","241","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 13:18:35","2021-06-14 13:18:35");
INSERT INTO products VALUES("142","1/2 Thread Pipe (A1)","242","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 13:22:21","2021-06-14 13:22:21");
INSERT INTO products VALUES("143","1/2 Thread Pipe (G)","243","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 13:22:58","2021-06-14 13:22:58");
INSERT INTO products VALUES("144","1/2 Thread Pipe (M)","244","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 13:23:49","2021-06-14 13:23:49");
INSERT INTO products VALUES("145","1/2 Thread Pipe (N/M)","245","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 13:24:29","2021-06-14 13:24:29");
INSERT INTO products VALUES("146","1/2 Thread Pipe (N/P)","246","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 13:25:16","2021-06-14 13:25:16");
INSERT INTO products VALUES("147","1/2 Thread Pipe (RFL)","247","standard","C128","1","1","2","2","2","0","0","200","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 13:26:11","2021-07-20 04:53:13");
INSERT INTO products VALUES("148","1.25 Thread Pipe (A1)","248","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 13:28:10","2021-07-28 17:39:07");
INSERT INTO products VALUES("149","1.25 Thread Pipe (G)","249","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 13:29:50","2021-07-28 17:38:43");
INSERT INTO products VALUES("150","1.25 Thread Pipe (M)","250","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 13:30:32","2021-07-28 17:38:20");
INSERT INTO products VALUES("151","1.25 Thread Pipe (N/M)","251","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 13:31:13","2021-07-28 17:37:57");
INSERT INTO products VALUES("152","1.25 Thread Pipe (N/P)","252","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 13:31:47","2021-07-28 17:37:33");
INSERT INTO products VALUES("153","1.25 Thread Pipe (RFL)","253","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 13:32:26","2021-07-28 17:37:07");
INSERT INTO products VALUES("154","3/4 Coil Pipe (A1)","254","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 13:35:02","2021-06-14 13:35:02");
INSERT INTO products VALUES("155","3/4 Coil Pipe (G)","255","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 13:35:44","2021-06-14 13:35:44");
INSERT INTO products VALUES("156","3/4 Coil Pipe (M)","256","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 13:36:25","2021-06-14 13:36:25");
INSERT INTO products VALUES("157","3/4 Coil Pipe (N/M)","257","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 13:37:01","2021-06-14 13:37:01");
INSERT INTO products VALUES("158","3/4 Coil Pipe (N/P)","258","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 13:37:42","2021-06-14 13:37:42");
INSERT INTO products VALUES("159","3/4 Coil Pipe-Black (RFL)","259","standard","C128","1","1","2","2","2","10","0","500","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 13:38:18","2021-07-19 14:43:56");
INSERT INTO products VALUES("160","1 Coil Pipe (A1)","260","standard","C128","7","1","2","2","2","12.50","15","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 13:39:10","2021-06-21 12:27:27");
INSERT INTO products VALUES("161","1 Coil Pipe (G)","261","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 13:39:50","2021-06-14 13:39:50");
INSERT INTO products VALUES("162","1 Coil Pipe (M)","262","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 13:40:23","2021-06-14 13:40:23");
INSERT INTO products VALUES("163","1 Coil Pipe (N/M)","263","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 13:40:53","2021-06-14 13:40:53");
INSERT INTO products VALUES("164","1 Coil Pipe (N/P)","264","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 13:41:29","2021-06-14 13:41:29");
INSERT INTO products VALUES("165","1 Coil Pipe-Black (RFL)","265","standard","C128","1","1","2","2","2","12.5","15","1300","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 13:42:01","2021-07-19 14:46:17");
INSERT INTO products VALUES("166","1.5 D Pipe (A1)","266","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 13:45:27","2021-07-28 17:36:37");
INSERT INTO products VALUES("167","1.5 D Filter (A1)","267","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 13:48:17","2021-07-28 17:36:17");
INSERT INTO products VALUES("168","1.5 D Pipe (G)","268","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 13:49:51","2021-07-28 17:35:57");
INSERT INTO products VALUES("169","1.5 D Filter (G)","269","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 13:50:33","2021-07-28 17:35:36");
INSERT INTO products VALUES("170","1.5 D Pipe (M)","270","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 13:51:12","2021-07-28 17:35:13");
INSERT INTO products VALUES("171","1.5 D Filter (M)","271","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 13:51:45","2021-07-28 17:34:47");
INSERT INTO products VALUES("172","1.5 D Pipe (N/M)","272","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 13:52:27","2021-07-28 17:34:26");
INSERT INTO products VALUES("173","1.5 D Filter (N/M)","273","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 13:53:01","2021-07-28 17:34:04");
INSERT INTO products VALUES("174","1.5 D Pipe (N/P)","274","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 13:53:48","2021-07-28 17:33:45");
INSERT INTO products VALUES("175","1.5 D Filter (N/P)","275","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 13:54:39","2021-07-28 17:33:23");
INSERT INTO products VALUES("176","1.5 D Pipe (RFL)","276","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 13:55:17","2021-07-28 17:33:01");
INSERT INTO products VALUES("177","1.5 D Filter (RFL)","277","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 13:55:50","2021-07-28 17:32:41");
INSERT INTO products VALUES("178","2 D Pipe (A1)","278","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 14:55:56","2021-06-14 14:55:56");
INSERT INTO products VALUES("179","2 D Pipe (G)","279","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 14:56:40","2021-06-14 14:56:40");
INSERT INTO products VALUES("180","2 D Pipe (M)","280","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 14:57:10","2021-06-14 14:57:10");
INSERT INTO products VALUES("181","2 D Pipe (N/M)","281","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 14:57:43","2021-06-14 14:57:43");
INSERT INTO products VALUES("182","2 D Pipe (N/P)","282","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 14:58:24","2021-06-14 14:58:24");
INSERT INTO products VALUES("183","2 D Pipe (RFL)","283","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 14:59:09","2021-06-14 14:59:09");
INSERT INTO products VALUES("184","2 D Filter (A1)","284","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 15:00:58","2021-06-14 15:00:58");
INSERT INTO products VALUES("185","2 D Filter (G)","285","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 15:01:37","2021-06-14 15:01:37");
INSERT INTO products VALUES("186","2 D Filter (M)","286","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 15:02:08","2021-06-14 15:02:08");
INSERT INTO products VALUES("187","2 D Filter (N/M)","287","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 15:02:44","2021-06-14 15:02:44");
INSERT INTO products VALUES("188","2 D Filter (N/P)","288","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 15:03:24","2021-06-14 15:03:24");
INSERT INTO products VALUES("189","2 D Filter (RFL)","289","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 15:03:59","2021-06-14 15:03:59");
INSERT INTO products VALUES("190","3 C Pipe (A1)","290","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 15:47:23","2021-06-14 15:47:23");
INSERT INTO products VALUES("191","3 C Pipe (G)","291","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 15:49:32","2021-06-14 15:49:32");
INSERT INTO products VALUES("192","3 C Pipe (M)","292","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 15:50:07","2021-06-14 15:50:07");
INSERT INTO products VALUES("193","3 C Pipe (N/M)","293","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 15:50:50","2021-06-14 15:50:50");
INSERT INTO products VALUES("194","3 C Pipe (N/P)","294","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 15:51:32","2021-06-14 15:51:32");
INSERT INTO products VALUES("195","3 C Pipe (RFL)","295","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 15:52:12","2021-06-14 15:52:12");
INSERT INTO products VALUES("196","3 C Filter (A1)","296","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 15:53:10","2021-06-14 15:53:10");
INSERT INTO products VALUES("197","3 C Filter (G)","297","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 15:53:50","2021-06-14 15:53:50");
INSERT INTO products VALUES("198","3 C Filter (M)","298","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 15:54:29","2021-06-14 15:54:29");
INSERT INTO products VALUES("199","3 C Filter (N/M)","299","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 15:55:06","2021-06-14 15:55:06");
INSERT INTO products VALUES("200","3 C Filter (N/P)","300","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 15:55:44","2021-06-14 15:55:44");
INSERT INTO products VALUES("201","3 C Filter (RFL)","301","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 15:56:23","2021-06-14 15:56:23");
INSERT INTO products VALUES("202","3 D Pipe (A1)","302","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 15:57:46","2021-06-14 15:57:46");
INSERT INTO products VALUES("203","3 D Pipe (G)","303","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 15:58:41","2021-06-14 15:58:41");
INSERT INTO products VALUES("204","3 D Pipe (M)","304","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 15:59:26","2021-06-14 15:59:26");
INSERT INTO products VALUES("205","3 D Pipe (N/M)","305","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:00:03","2021-06-14 16:00:03");
INSERT INTO products VALUES("206","3 D Pipe (N/P)","306","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:00:37","2021-06-14 16:00:37");
INSERT INTO products VALUES("207","3 D Pipe (RFL)","307","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:01:16","2021-06-14 16:01:16");
INSERT INTO products VALUES("208","3 D Filter (A1)","308","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:02:25","2021-06-14 16:02:25");
INSERT INTO products VALUES("209","3 D Filter (G)","309","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:03:10","2021-06-14 16:03:10");
INSERT INTO products VALUES("210","3 D Filter (M)","310","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:03:45","2021-06-14 16:03:45");
INSERT INTO products VALUES("211","3 D Filter (N/M)","311","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:04:22","2021-06-14 16:04:22");
INSERT INTO products VALUES("212","3 D Filter (N/P)","312","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:05:02","2021-06-14 16:05:02");
INSERT INTO products VALUES("213","3 D Filter (RFL)","313","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:05:42","2021-06-14 16:05:42");
INSERT INTO products VALUES("214","4 C Pipe (A1)","314","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:06:57","2021-06-14 16:06:57");
INSERT INTO products VALUES("215","4 C Pipe (G)","315","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:07:31","2021-06-14 16:07:31");
INSERT INTO products VALUES("216","4 C Pipe (M)","316","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:08:04","2021-06-14 16:08:04");
INSERT INTO products VALUES("217","4 C Pipe (N/M)","317","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:08:39","2021-06-14 16:08:39");
INSERT INTO products VALUES("218","4 C Pipe (N/P)","318","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:09:13","2021-06-14 16:09:13");
INSERT INTO products VALUES("219","4 C Pipe (RFL)","319","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:09:54","2021-06-14 16:09:54");
INSERT INTO products VALUES("220","4 C Filter (A1)","320","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:11:42","2021-06-14 16:11:42");
INSERT INTO products VALUES("221","4 C Filter (G)","321","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:12:14","2021-06-14 16:12:14");
INSERT INTO products VALUES("222","4 C Filter (M)","322","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:12:50","2021-06-14 16:12:50");
INSERT INTO products VALUES("223","4 C Filter (N/M)","323","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:13:28","2021-06-14 16:13:28");
INSERT INTO products VALUES("224","4 C Filter (N/P)","324","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:14:08","2021-06-14 16:14:08");
INSERT INTO products VALUES("225","4 C Filter (RFL)","325","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:14:46","2021-06-14 16:14:46");
INSERT INTO products VALUES("226","4 D Pipe (A1)","326","standard","C128","7","1","2","2","2","0","0","380","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:18:36","2021-07-16 04:03:12");
INSERT INTO products VALUES("227","4 D Pipe (G)","327","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:19:14","2021-06-14 16:19:14");
INSERT INTO products VALUES("228","4 D Pipe (M)","328","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:19:49","2021-06-14 16:19:49");
INSERT INTO products VALUES("229","4 D Pipe (N/M)","329","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:20:23","2021-06-14 16:20:23");
INSERT INTO products VALUES("230","4 D Pipe (N/P)","330","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:21:03","2021-06-14 16:21:03");
INSERT INTO products VALUES("231","4 D Pipe (RFL)","331","standard","C128","1","1","2","2","2","0","0","200","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:21:39","2021-07-22 06:15:42");
INSERT INTO products VALUES("232","4 D Filter (A1)","332","standard","C128","7","1","2","2","2","0","0","40","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:22:27","2021-07-16 04:03:12");
INSERT INTO products VALUES("233","4 D Filter (G)","333","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:23:19","2021-06-14 16:23:19");
INSERT INTO products VALUES("234","4 D Filter (M)","334","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:23:51","2021-06-14 16:23:51");
INSERT INTO products VALUES("235","4 D Filter (N/M)","335","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:24:28","2021-06-14 16:24:28");
INSERT INTO products VALUES("236","4 D Filter (N/P)","336","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:25:11","2021-06-14 16:25:11");
INSERT INTO products VALUES("237","4 D Filter (RFL)","337","standard","C128","1","1","2","2","2","0","0","20","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:25:49","2021-07-22 06:15:42");
INSERT INTO products VALUES("238","5 D Pipe (A1)","338","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:27:19","2021-06-14 16:27:19");
INSERT INTO products VALUES("239","5 D Pipe (G)","339","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:27:52","2021-06-14 16:27:52");
INSERT INTO products VALUES("240","5 D Pipe (M)","340","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:28:24","2021-06-14 16:28:24");
INSERT INTO products VALUES("241","5 D Pipe (N/M)","341","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:29:02","2021-06-14 16:29:02");
INSERT INTO products VALUES("242","5 D Pipe (N/P)","342","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:29:35","2021-06-14 16:29:35");
INSERT INTO products VALUES("243","5 D Pipe (RFL)","343","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:30:14","2021-06-14 16:30:14");
INSERT INTO products VALUES("244","5 D Filter (A1)","344","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:32:05","2021-06-14 16:32:05");
INSERT INTO products VALUES("245","5 D Filter (G)","345","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:32:44","2021-06-14 16:32:44");
INSERT INTO products VALUES("246","5 D Filter (M)","346","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:33:16","2021-06-14 16:33:16");
INSERT INTO products VALUES("247","5 D Filter (N/M)","347","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:33:57","2021-06-14 16:33:57");
INSERT INTO products VALUES("248","5 D Filter (N/P)","348","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:34:35","2021-06-14 16:34:35");
INSERT INTO products VALUES("249","5 D Filter (RFL)","349","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:35:10","2021-06-14 16:35:10");
INSERT INTO products VALUES("250","5 E Pipe (A1)","350","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:36:24","2021-06-14 16:36:24");
INSERT INTO products VALUES("251","5 E Pipe (G)","351","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:37:02","2021-06-14 16:37:02");
INSERT INTO products VALUES("252","5 E Pipe (M)","352","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:37:38","2021-06-14 16:37:38");
INSERT INTO products VALUES("253","5 E Pipe (N/M)","353","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:38:14","2021-06-14 16:38:14");
INSERT INTO products VALUES("254","5 E Pipe (N/P)","354","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:38:47","2021-06-14 16:38:47");
INSERT INTO products VALUES("255","5 E Pipe (RFL)","355","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:39:25","2021-06-14 16:39:25");
INSERT INTO products VALUES("256","5 E Filter (A1)","356","standard","C128","7","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:40:35","2021-06-14 16:40:35");
INSERT INTO products VALUES("257","5 E Filter (G)","357","standard","C128","2","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:41:15","2021-06-14 16:41:15");
INSERT INTO products VALUES("258","5 E Filter (M)","358","standard","C128","3","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:41:48","2021-06-14 16:41:48");
INSERT INTO products VALUES("259","5 E Filter (N/M)","359","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:42:22","2021-06-14 16:42:22");
INSERT INTO products VALUES("260","5 E Filter (N/P)","360","standard","C128","8","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:42:55","2021-06-14 16:42:55");
INSERT INTO products VALUES("261","5 E Filter (RFL)","361","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 16:43:32","2021-06-14 16:43:32");
INSERT INTO products VALUES("262","1/2 PPR Pipe (ERA)","362","standard","C128","9","1","2","2","2","24","0","100","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 17:00:56","2021-08-17 04:01:11");
INSERT INTO products VALUES("263","3/4 PPR Pipe (ERA)","363","standard","C128","9","1","2","2","2","29","0","564","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 17:02:02","2021-08-17 04:00:40");
INSERT INTO products VALUES("264","1 PPR Pipe (ERA)","364","standard","C128","9","1","2","2","2","46","0","200","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 17:02:52","2021-08-17 04:00:01");
INSERT INTO products VALUES("265","1.5 PPR Pipe (ERA)","365","standard","C128","9","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 17:03:59","2021-07-28 17:31:56");
INSERT INTO products VALUES("266","2 PPR Pipe (ERA)","366","standard","C128","9","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 17:04:48","2021-06-14 17:04:48");
INSERT INTO products VALUES("267","1/2 PPR Pipe (RFL)","367","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 17:05:56","2021-06-14 17:05:56");
INSERT INTO products VALUES("268","3/4 PPR Pipe (RFL)","368","standard","C128","1","1","2","2","2","22","25","300","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 17:06:39","2021-07-20 04:43:09");
INSERT INTO products VALUES("269","1 PPR Pipe (RFL)","369","standard","C128","1","1","2","2","2","35","37","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 17:07:23","2021-06-21 13:11:33");
INSERT INTO products VALUES("270","1.5 PPR Pipe (RFL)","370","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 17:08:16","2021-07-28 17:31:32");
INSERT INTO products VALUES("271","2 PPR Pipe (RFL)","371","standard","C128","1","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 17:09:03","2021-06-14 17:09:03");
INSERT INTO products VALUES("272","1/2 PPR Pipe (N/M)","372","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 17:09:55","2021-06-14 17:09:55");
INSERT INTO products VALUES("273","3/4 PPR Pipe (N/M)","373","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 17:10:43","2021-06-14 17:10:43");
INSERT INTO products VALUES("274","1 PPR Pipe (N/M)","374","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 17:11:24","2021-06-14 17:11:24");
INSERT INTO products VALUES("275","1.5 PPR Pipe (N/M)","375","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-14 17:12:00","2021-07-28 17:31:11");
INSERT INTO products VALUES("276","2 PPR Pipe (N/M)","376","standard","C128","6","1","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-14 17:12:42","2021-06-14 17:12:42");
INSERT INTO products VALUES("277","M K Cover","2001","standard","C128","42","2","1","1","1","6","10","40","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 03:11:41","2021-08-09 02:34:12");
INSERT INTO products VALUES("278","Round Block","2002","standard","C128","42","2","1","1","1","5","8","100","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 03:21:18","2021-08-09 02:34:32");
INSERT INTO products VALUES("279","PVC Meter Board","2003","standard","C128","42","2","1","1","1","50","80","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 03:23:00","2021-08-09 02:34:56");
INSERT INTO products VALUES("280","L-1 Box (GFC)","2004","standard","C128","10","2","1","1","1","35","45","20","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 03:30:26","2021-07-01 12:48:35");
INSERT INTO products VALUES("281","L-2 Box (GFC)","2005","standard","C128","10","2","1","1","1","42","70","20","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 03:31:51","2021-07-01 12:49:31");
INSERT INTO products VALUES("282","L-2 Box (Super)","2006","standard","C128","43","2","1","1","1","18","40","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 03:37:58","2021-08-09 02:35:31");
INSERT INTO products VALUES("283","HP Combine Socket","2007","standard","C128","11","2","1","1","1","120","140","40","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 03:40:29","2021-08-05 02:23:56");
INSERT INTO products VALUES("284","GFC Combine Socket","2008","standard","C128","10","2","1","1","1","90","120","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 03:46:59","2021-07-01 13:50:16");
INSERT INTO products VALUES("285","1 Gang M K Box","2009","standard","C128","10","2","1","1","1","12","20","60","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 03:48:28","2021-08-10 02:24:06");
INSERT INTO products VALUES("286","2 Gang M K Box","2010","standard","C128","10","2","1","1","1","25","40","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 03:50:31","2021-08-09 02:36:19");
INSERT INTO products VALUES("287","3 Gang M K Box","2011","standard","C128","10","2","1","1","1","42","60","30","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 04:03:54","2021-08-10 02:24:06");
INSERT INTO products VALUES("288","4 Gang M K Box","2012","standard","C128","10","2","1","1","1","52","80","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 04:04:47","2021-08-09 02:37:09");
INSERT INTO products VALUES("289","6*8 Board (Gat)","2013","standard","C128","42","2","1","1","1","21","35","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 04:10:03","2021-08-09 02:37:38");
INSERT INTO products VALUES("290","6*8 Board (P)","2014","standard","C128","42","2","1","1","1","22","35","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 04:11:10","2021-08-09 02:38:01");
INSERT INTO products VALUES("291","8*10 Board (Gat)","2015","standard","C128","42","2","1","1","1","32","50","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 04:12:24","2021-08-09 02:39:01");
INSERT INTO products VALUES("292","8*10 Board (P)","2016","standard","C128","42","2","1","1","1","33","50","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 04:13:11","2021-08-09 02:39:26");
INSERT INTO products VALUES("293","1 Gang PNO Board","2017","standard","C128","42","2","1","1","1","7","15","36","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 09:06:44","2021-08-09 02:39:52");
INSERT INTO products VALUES("294","2 Gang PNO Board","2018","standard","C128","42","2","1","1","1","10","25","36","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 09:08:13","2021-08-09 02:40:16");
INSERT INTO products VALUES("295","3 Gang PNO Board","2019","standard","C128","42","2","1","1","1","14","30","36","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 09:09:14","2021-08-09 02:40:37");
INSERT INTO products VALUES("296","4 Gang PNO Board","2020","standard","C128","42","2","1","1","1","16","40","36","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 09:10:31","2021-08-09 02:40:58");
INSERT INTO products VALUES("297","5 Gang PNO Board","2021","standard","C128","42","2","1","1","1","18","50","36","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 09:12:24","2021-08-09 02:41:24");
INSERT INTO products VALUES("298","6 Gang PNO Board","2022","standard","C128","42","2","1","1","1","19","55","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 09:13:15","2021-08-09 02:41:54");
INSERT INTO products VALUES("299","7 Gang PNO Board","2023","standard","C128","42","2","1","1","1","21","60","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 09:13:57","2021-08-09 02:42:15");
INSERT INTO products VALUES("300","8 Gang PNO Board","2024","standard","C128","42","2","1","1","1","23","65","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 09:14:46","2021-08-09 02:42:40");
INSERT INTO products VALUES("301","10 Gang PNO Board","2025","standard","C128","42","2","1","1","1","38","70","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 09:15:34","2021-08-09 02:43:02");
INSERT INTO products VALUES("302","1/2 Badhan Pipe","2026","standard","C128","43","2","1","1","1","21","25","100","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 09:18:09","2021-08-09 02:43:32");
INSERT INTO products VALUES("303","3/4 Badhan Pipe (H)","2027","standard","C128","43","2","1","1","1","31","35","300","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 09:19:17","2021-08-10 02:24:08");
INSERT INTO products VALUES("304","3/4 Badhan Pipe (M)","2028","standard","C128","43","2","1","1","1","29","33","200","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 09:20:06","2021-08-09 02:44:17");
INSERT INTO products VALUES("305","3/4 Badhan Pipe White (H)","2029","standard","C128","43","2","1","1","1","40","42","200","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 09:21:28","2021-08-09 02:44:56");
INSERT INTO products VALUES("306","3/4 VIP DX Pipe","2030","standard","C128","43","2","1","1","1","58","60","100","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 09:24:31","2021-08-10 02:24:05");
INSERT INTO products VALUES("307","3/4 Sajib (D)","2031","standard","C128","43","2","1","1","1","29","33","52","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 09:25:43","2021-08-09 02:45:38");
INSERT INTO products VALUES("308","1 Badhan Pipe","2032","standard","C128","43","2","1","1","1","45","50","50","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 09:26:37","2021-08-09 02:46:03");
INSERT INTO products VALUES("309","Twin Holder (GFC)","2033","standard","C128","10","2","1","1","1","45","50","60","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 09:28:26","2021-07-14 10:58:58");
INSERT INTO products VALUES("310","Celling Rose (GFC)","2034","standard","C128","10","2","1","1","1","23","40","24","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 09:35:28","2021-08-09 02:46:36");
INSERT INTO products VALUES("311","Twin Holder (HP)","2035","standard","C128","11","2","1","1","1","50","55","96","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 09:36:43","2021-08-09 02:46:59");
INSERT INTO products VALUES("312","Celling Rose (HP)","2036","standard","C128","11","2","1","1","1","38","45","36","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 09:38:00","2021-07-14 11:02:30");
INSERT INTO products VALUES("313","Button Holder (HP)","2037","standard","C128","11","2","1","1","1","38","45","60","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 09:39:35","2021-07-14 11:03:45");
INSERT INTO products VALUES("314","Pendel Holder (HP)","2038","standard","C128","11","2","1","1","1","17","22","24","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 09:42:33","2021-07-14 11:05:25");
INSERT INTO products VALUES("315","15 Amp HP Plag","2039","standard","C128","11","2","1","1","1","45","60","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 09:44:38","2021-07-14 11:07:03");
INSERT INTO products VALUES("316","13 Amp M R Plag","2040","standard","C128","12","2","1","1","1","35","50","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 09:45:34","2021-07-01 14:28:43");
INSERT INTO products VALUES("317","Pendel Holder (GFC)","2041","standard","C128","10","2","1","1","1","10","20","72","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 09:46:44","2021-07-01 14:29:44");
INSERT INTO products VALUES("318","22/27 Holder(EP)","2042","standard","C128","43","2","1","1","1","9","20","24","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 09:48:36","2021-08-09 02:47:32");
INSERT INTO products VALUES("319","Quality Bed Switch","2043","standard","C128","43","2","1","1","1","12","25","24","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 09:50:22","2021-08-09 02:47:58");
INSERT INTO products VALUES("320","PNO Dimer (GFC)","2044","standard","C128","10","2","1","1","1","30","50","20","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 09:52:45","2021-07-14 11:19:43");
INSERT INTO products VALUES("321","2 Head Tester","2045","standard","C128","43","2","1","1","1","14","25","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 10:02:56","2021-08-09 02:52:41");
INSERT INTO products VALUES("322","2 Pin Multi plug","2046","standard","C128","43","2","1","1","1","38","50","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 10:04:22","2021-08-13 12:00:38");
INSERT INTO products VALUES("323","Philips Starter","2047","standard","C128","43","2","1","1","1","9","15","25","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 10:07:26","2021-08-09 02:53:45");
INSERT INTO products VALUES("324","GFC Capacitor(3.5)","2048","standard","C128","10","2","1","1","1","35","45","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 10:09:31","2021-07-01 14:58:33");
INSERT INTO products VALUES("325","30 Amp Changeover","2049","standard","C128","43","2","1","1","1","95","120","5","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 10:10:48","2021-08-09 02:54:36");
INSERT INTO products VALUES("326","60 Amp Changeover","2050","standard","C128","43","2","1","1","1","250","280","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 10:11:34","2021-08-09 02:54:59");
INSERT INTO products VALUES("327","100 Amp Changeover","2051","standard","C128","43","2","1","1","1","350","380","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 10:13:11","2021-08-09 02:55:23");
INSERT INTO products VALUES("328","Spark Chak","2052","standard","C128","43","2","1","1","1","112","130","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 10:15:20","2021-08-09 02:56:01");
INSERT INTO products VALUES("329","Cona Bell- Zoom 1 No","2053","standard","C128","43","2","1","1","1","210","270","5","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 10:21:42","2021-08-09 02:56:32");
INSERT INTO products VALUES("330","Cona Bell- Ding Dong","2054","standard","C128","43","2","1","1","1","125","160","5","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 10:22:40","2021-08-09 02:57:10");
INSERT INTO products VALUES("331","Spark PNO Dimer","2055","standard","C128","43","2","1","1","1","40","50","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 10:29:11","2021-08-09 02:57:35");
INSERT INTO products VALUES("332","1 Gang AGS (O) Box","2056","standard","C128","43","2","1","1","1","37","40","48","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 10:43:09","2021-08-10 02:24:06");
INSERT INTO products VALUES("333","2 Gang AGS (O) Box","2057","standard","C128","43","2","1","1","1","75","80","36","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 10:44:03","2021-08-10 02:24:06");
INSERT INTO products VALUES("334","3 Gang AGS (O) Box","2058","standard","C128","43","2","1","1","1","97","105","50","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 10:52:37","2021-08-10 02:24:06");
INSERT INTO products VALUES("335","4 Gang AGS (O) Box","2059","standard","C128","43","2","1","1","1","123","128","30","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 10:54:11","2021-08-10 02:24:06");
INSERT INTO products VALUES("336","1 Gang AGS (R) Box","2060","standard","C128","43","2","1","1","1","33","36","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 10:55:33","2021-08-09 03:00:28");
INSERT INTO products VALUES("337","2 Gang AGS (R) Box","2061","standard","C128","43","2","1","1","1","71","75","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 10:56:22","2021-08-09 03:00:50");
INSERT INTO products VALUES("338","3 Gang AGS (R) Box","2062","standard","C128","43","2","1","1","1","88","92","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 10:57:41","2021-08-09 03:01:14");
INSERT INTO products VALUES("339","4 Gang AGS (R) Box","2063","standard","C128","43","2","1","1","1","112","115","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 10:58:40","2021-08-09 03:01:38");
INSERT INTO products VALUES("340","GFC Zara Holder","2067","standard","C128","10","2","1","1","1","23","30","204","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 11:10:15","2021-08-10 02:24:09");
INSERT INTO products VALUES("341","GFC Celling Rose(Zara)","2068","standard","C128","10","2","1","1","1","23","30","72","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 11:11:41","2021-08-10 02:24:09");
INSERT INTO products VALUES("342","Multi plug 2 M (GFC)","2069","standard","C128","10","2","1","1","1","180","220","3","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 12:04:05","2021-08-13 12:07:26");
INSERT INTO products VALUES("343","Multi plug 5 M (GFC)","2070","standard","C128","10","2","1","1","1","210","260","3","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 12:05:36","2021-08-13 12:09:39");
INSERT INTO products VALUES("344","10 Exast Fan (GFC)","2064","standard","C128","10","2","1","1","1","950","1050","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 13:04:02","2021-07-30 15:30:10");
INSERT INTO products VALUES("345","12 Exast Fan (GFC)","2065","standard","C128","10","2","1","1","1","1050","1150","2","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 13:04:57","2021-07-01 15:10:22");
INSERT INTO products VALUES("346","16 Exast Fan (GFC)","2066","standard","C128","10","2","1","1","1","1950","2050","1","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 13:05:56","2021-07-01 15:10:56");
INSERT INTO products VALUES("347","RCD Breaker","2071","standard","C128","43","2","1","1","1","430","480","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 13:07:09","2021-08-09 03:05:28");
INSERT INTO products VALUES("348","7*9 SDB GFC","2072","standard","C128","10","2","1","1","1","330","380","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 13:08:38","2021-07-01 15:16:21");
INSERT INTO products VALUES("349","10*13 SDB GFC","2073","standard","C128","10","2","1","1","1","430","480","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 13:10:10","2021-07-01 15:16:55");
INSERT INTO products VALUES("350","14*16 SDB GFC","2074","standard","C128","10","2","1","1","1","550","620","4","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 13:11:15","2021-08-05 02:23:56");
INSERT INTO products VALUES("351","PVC Tape(GFC)","2075","standard","C128","10","2","1","1","1","13","20","72","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 13:12:30","2021-08-01 02:56:48");
INSERT INTO products VALUES("352","GFC PNO Switch","2076","standard","C128","10","2","1","1","1","13","20","60","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 13:13:35","2021-07-01 15:19:28");
INSERT INTO products VALUES("353","GFC PNO Socket","2077","standard","C128","10","2","1","1","1","13","20","36","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 13:14:52","2021-07-01 15:20:19");
INSERT INTO products VALUES("354","GFC PNO Indicator","2078","standard","C128","10","2","1","1","1","14","20","24","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 13:15:53","2021-07-01 15:20:53");
INSERT INTO products VALUES("355","GFC Fuse","2079","standard","C128","10","2","1","1","1","15","25","24","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 13:17:03","2021-07-01 15:21:22");
INSERT INTO products VALUES("356","GFC PNO VIP Dimer","2080","standard","C128","10","2","1","1","1","55","90","20","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 13:18:23","2021-07-01 15:22:13");
INSERT INTO products VALUES("357","GFC 2 Pin Plag","2081","standard","C128","10","2","1","1","1","12","20","60","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 13:19:29","2021-07-01 15:23:07");
INSERT INTO products VALUES("358","HP 2 Pin Plag Rubber","2082","standard","C128","11","2","1","1","1","12","20","60","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 13:21:02","2021-07-01 16:13:40");
INSERT INTO products VALUES("359","13w GFC (IPS) LED","2083","standard","C128","10","2","1","1","1","340","360","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 13:22:50","2021-07-01 16:14:25");
INSERT INTO products VALUES("360","16w GFC (IPS) LED","2084","standard","C128","10","2","1","1","1","350","380","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 13:23:58","2021-07-01 16:14:56");
INSERT INTO products VALUES("361","18w GFC (IPS) LED","2085","standard","C128","10","2","1","1","1","360","390","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 13:24:48","2021-07-01 16:16:08");
INSERT INTO products VALUES("362","China Design Holder","2086","standard","C128","10","2","1","1","1","60","65","36","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 13:26:04","2021-07-01 16:19:06");
INSERT INTO products VALUES("363","China Design Celling Rose","2087","standard","C128","10","2","1","1","1","60","65","24","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 13:27:32","2021-07-01 16:21:07");
INSERT INTO products VALUES("364","GFC DX Holder","2088","standard","C128","10","2","1","1","1","18","22","36","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 13:28:40","2021-07-01 16:21:59");
INSERT INTO products VALUES("365","Sumana DX Celling Rose","2089","standard","C128","","2","1","1","1","13","20","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 13:29:49","2021-07-01 16:22:46");
INSERT INTO products VALUES("366","GFC SP-6/10/16/20","2090","standard","C128","10","2","1","1","1","70","110","48","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 13:31:16","2021-07-01 16:24:06");
INSERT INTO products VALUES("367","GFC DP 32/40/63 Breaker","2091","standard","C128","10","2","1","1","1","140","250","18","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 13:32:32","2021-07-01 16:24:54");
INSERT INTO products VALUES("368","SPARK 2 Pin Plag","2092","standard","C128","43","2","1","1","1","14","20","24","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 13:33:40","2021-08-09 03:06:17");
INSERT INTO products VALUES("369","15A Cutwat","2093","standard","C128","43","2","1","1","1","27","35","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 13:35:09","2021-08-09 03:06:43");
INSERT INTO products VALUES("370","30A Cutwat","2094","standard","C128","43","2","1","1","1","60","75","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 13:36:08","2021-08-09 03:07:08");
INSERT INTO products VALUES("371","60A Cutwat","2095","standard","C128","43","2","1","1","1","120","140","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 13:36:54","2021-08-09 03:07:28");
INSERT INTO products VALUES("372","23/76 Cable","2096","standard","C128","10","2","7","7","7","6","8","200","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 13:39:47","2021-07-01 16:29:59");
INSERT INTO products VALUES("373","GFC Dish Cable(T)","2097","standard","C128","10","2","7","7","7","12","20","320","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 13:44:24","2021-07-25 14:18:34");
INSERT INTO products VALUES("374","SPI 3/4 Band","2098","standard","C128","31","2","8","8","8","60","80","60","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 13:47:49","2021-08-10 02:24:06");
INSERT INTO products VALUES("375","SPI 3/4 Socket","2099","standard","C128","31","2","8","8","8","32","50","60","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 13:48:52","2021-08-10 02:24:07");
INSERT INTO products VALUES("376","SPI 3/4 Tee","2100","standard","C128","31","2","8","8","8","24","50","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 13:50:05","2021-08-10 02:24:06");
INSERT INTO products VALUES("377","SPI 3/4 Elbo","2101","standard","C128","31","2","8","8","8","24","40","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 13:51:17","2021-08-10 02:24:07");
INSERT INTO products VALUES("378","Hager (SP) Breaker 6/10/16/20","2102","standard","C128","43","2","1","1","1","95","130","96","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 13:53:30","2021-08-09 03:08:19");
INSERT INTO products VALUES("379","Hager (DP) Breaker 32/40/63","2103","standard","C128","43","2","1","1","1","190","300","18","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 13:54:40","2021-08-09 03:08:49");
INSERT INTO products VALUES("380","2.5/3.5 Capacitor (PK)","2104","standard","C128","10","2","1","1","1","40","60","40","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 13:55:56","2021-08-09 03:09:18");
INSERT INTO products VALUES("381","Kemco Meter","2105","standard","C128","43","2","1","1","1","650","750","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 13:56:59","2021-08-09 03:10:14");
INSERT INTO products VALUES("382","60A Capacitor","2106","standard","C128","43","2","1","1","1","125","160","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 13:59:17","2021-08-09 03:10:42");
INSERT INTO products VALUES("383","25A Capacitor","2107","standard","C128","43","2","1","1","1","72","100","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 14:36:35","2021-08-09 03:11:03");
INSERT INTO products VALUES("384","20A Capacitor","2108","standard","C128","43","2","1","1","1","65","100","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 14:42:05","2021-08-09 03:11:28");
INSERT INTO products VALUES("385","16A Capacitor","2109","standard","C128","43","2","1","1","1","60","100","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 14:43:01","2021-08-09 03:12:15");
INSERT INTO products VALUES("386","30A Capacitor","2110","standard","C128","43","2","1","1","1","82","150","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 14:43:56","2021-08-09 03:12:33");
INSERT INTO products VALUES("387","40A Capacitor","2111","standard","C128","43","2","1","1","1","96","170","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 14:44:43","2021-08-09 03:12:57");
INSERT INTO products VALUES("388","50A Capacitor","2112","standard","C128","43","2","1","1","1","120","170","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 14:45:23","2021-08-09 03:13:18");
INSERT INTO products VALUES("389","150A Capacitor(R)","2113","standard","C128","43","2","1","1","1","95","150","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 14:47:20","2021-08-09 03:13:40");
INSERT INTO products VALUES("390","200A Capacitor(P)","2114","standard","C128","43","2","1","1","1","125","220","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 14:48:18","2021-08-09 03:13:59");
INSERT INTO products VALUES("391","10A Connector","2115","standard","C128","43","2","9","9","9","10","25","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 14:55:54","2021-08-09 03:14:17");
INSERT INTO products VALUES("392","14A Connector","2116","standard","C128","43","2","9","9","9","22","30","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 14:56:43","2021-08-09 03:15:34");
INSERT INTO products VALUES("393","16A Connector","2117","standard","C128","43","2","9","9","9","22","30","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 14:57:42","2021-08-09 03:15:54");
INSERT INTO products VALUES("394","100MM C Tie","2118","standard","C128","30","2","10","10","10","15","25","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 14:58:43","2021-08-09 03:16:16");
INSERT INTO products VALUES("395","150MM C Tie","2119","standard","C128","30","2","10","10","10","31","50","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 14:59:30","2021-08-09 03:16:37");
INSERT INTO products VALUES("396","200MM C Tie","2120","standard","C128","30","2","10","10","10","65","80","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 15:00:15","2021-08-09 03:16:56");
INSERT INTO products VALUES("397","250MM C Tie","2121","standard","C128","30","2","10","10","10","74","100","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 15:00:57","2021-08-09 03:17:15");
INSERT INTO products VALUES("398","300MM C Tie","2122","standard","C128","30","2","10","10","10","87","130","42","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 15:01:39","2021-08-09 03:17:32");
INSERT INTO products VALUES("399","350MM C Tie","2123","standard","C128","30","2","10","10","10","140","170","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 15:02:32","2021-08-09 03:18:02");
INSERT INTO products VALUES("400","4 MM Clip","2124","standard","C128","30","2","1","1","1","0.20","0.50","500","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 15:03:47","2021-08-09 07:17:44");
INSERT INTO products VALUES("401","5 MM Clip","2125","standard","C128","30","2","1","1","1","0.21","0.50","500","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 15:04:41","2021-08-09 07:18:11");
INSERT INTO products VALUES("402","6 MM Clip","2126","standard","C128","30","2","1","1","1","0.27","0.50","500","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 15:05:30","2021-08-09 07:18:37");
INSERT INTO products VALUES("403","7 MM Clip","2127","standard","C128","30","2","1","1","1","0.29","0.50","500","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 15:06:15","2021-08-09 07:19:03");
INSERT INTO products VALUES("404","8 MM Clip","2128","standard","C128","30","2","1","1","1","0.38","0.50","500","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 15:06:58","2021-08-09 07:19:31");
INSERT INTO products VALUES("405","9 MM Clip","2129","standard","C128","30","2","1","1","1","0.48","1","500","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 15:07:54","2021-08-09 07:19:54");
INSERT INTO products VALUES("406","10 MM Clip","2130","standard","C128","30","2","1","1","1","0.50","1","500","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 15:08:47","2021-08-09 07:20:15");
INSERT INTO products VALUES("407","12 MM Clip","2131","standard","C128","30","2","1","1","1","0.68","1","500","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 15:09:29","2021-08-09 07:20:34");
INSERT INTO products VALUES("408","14 MM Clip","2132","standard","C128","30","2","1","1","1","0.70","1","500","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 15:10:11","2021-08-09 07:16:13");
INSERT INTO products VALUES("409","16 MM Clip","2133","standard","C128","30","2","1","1","1","0.96","1.5","500","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 15:11:09","2021-08-09 07:21:15");
INSERT INTO products VALUES("410","20 MM Clip","2134","standard","C128","30","2","1","1","1","1.5","2","500","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 15:11:52","2021-08-09 03:22:56");
INSERT INTO products VALUES("411","22 MM Clip","2135","standard","C128","30","2","1","1","1","2.10","2.50","300","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 15:12:38","2021-08-09 03:24:00");
INSERT INTO products VALUES("412","25 MM Clip","2136","standard","C128","30","2","1","1","1","2.75","3","240","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 15:13:16","2021-08-09 03:24:25");
INSERT INTO products VALUES("413","Capacitor-Thailand(1 No)","2137","standard","C128","43","2","1","1","1","71","90","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 15:14:59","2021-08-09 03:27:10");
INSERT INTO products VALUES("414","Capacitor-Thailand(2 No)","2138","standard","C128","43","2","1","1","1","66","80","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 15:15:40","2021-08-09 03:27:36");
INSERT INTO products VALUES("415","Capacitor-Table Fan(2.5)","2139","standard","C128","43","2","1","1","1","16","30","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 15:16:53","2021-08-09 03:27:56");
INSERT INTO products VALUES("416","Capacitor-Table Fan(3.5)","2140","standard","C128","43","2","1","1","1","19","30","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 15:17:36","2021-08-09 03:28:48");
INSERT INTO products VALUES("417","Fan Huke","2141","standard","C128","43","2","1","1","1","44","55","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 15:18:32","2021-08-09 03:29:12");
INSERT INTO products VALUES("418","Orlee 3w LED","2142","standard","C128","13","2","1","1","1","85","110","48","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 16:04:06","2021-07-08 13:51:33");
INSERT INTO products VALUES("419","Orlee 5w LED","2143","standard","C128","13","2","1","1","1","96","120","48","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 16:05:08","2021-07-08 13:51:33");
INSERT INTO products VALUES("420","Orlee 15w LED","2144","standard","C128","13","2","1","1","1","176","195","30","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 16:06:28","2021-07-08 13:51:33");
INSERT INTO products VALUES("421","Orlee 18w LED","2145","standard","C128","13","2","1","1","1","216","265","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 16:07:18","2021-07-08 12:53:28");
INSERT INTO products VALUES("422","Orlee 20w LED","2146","standard","C128","13","2","1","1","1","232","280","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 16:08:23","2021-07-08 12:53:28");
INSERT INTO products VALUES("423","Orlee 20w Bulb LED","2147","standard","C128","13","2","1","1","1","240","320","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 16:10:07","2021-07-26 04:07:15");
INSERT INTO products VALUES("424","Orlee 40w Bulb LED","2148","standard","C128","13","2","1","1","1","476","550","4","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 16:11:16","2021-07-08 12:53:28");
INSERT INTO products VALUES("425","Orlee 50w Bulb LED","2149","standard","C128","13","2","1","1","1","607","685","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 16:12:48","2021-07-08 12:53:28");
INSERT INTO products VALUES("426","Orlee LED Tube(Eco-T8)","2150","standard","C128","13","2","1","1","1","205","250","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 16:14:25","2021-07-08 12:53:29");
INSERT INTO products VALUES("428","200w Bulb (S/Star)","2152","standard","C128","4","2","1","1","1","42","48","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 16:31:43","2021-07-08 14:16:34");
INSERT INTO products VALUES("429","100w Bulb (S/Star)","2153","standard","C128","4","2","1","1","1","26","30","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 16:32:42","2021-07-08 14:16:34");
INSERT INTO products VALUES("430","60w Bulb (S/Star)","2154","standard","C128","4","2","1","1","1","24","28","24","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 16:33:49","2021-07-08 14:16:34");
INSERT INTO products VALUES("431","40w Bulb (S/Star)","2155","standard","C128","4","2","1","1","1","24","28","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 16:34:40","2021-07-08 14:16:34");
INSERT INTO products VALUES("432","25w Bulb (S/Star)","2156","standard","C128","4","2","1","1","1","24","28","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 16:35:35","2021-07-08 14:16:34");
INSERT INTO products VALUES("433","5w Deem Light (S/Star)","2157","standard","C128","4","2","1","1","1","26","28","24","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 16:38:00","2021-07-08 14:16:35");
INSERT INTO products VALUES("434","5w Deem Candle (S/Star)","2158","standard","C128","4","2","1","1","1","29","32","24","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 16:39:48","2021-07-08 14:16:35");
INSERT INTO products VALUES("435","9w Deem Capsule (S/Star)","2159","standard","C128","4","2","1","1","1","150","170","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 16:43:05","2021-07-08 14:20:03");
INSERT INTO products VALUES("436","15w Tablet (S/Star)","2160","standard","C128","4","2","1","1","1","275","290","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 16:45:10","2021-07-08 14:20:03");
INSERT INTO products VALUES("437","20w Tablet (S/Star)","2161","standard","C128","4","2","1","1","1","320","380","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 16:46:12","2021-07-08 14:20:03");
INSERT INTO products VALUES("438","30w Mega LED (S/Star)","2162","standard","C128","4","2","1","1","1","410","460","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 16:48:57","2021-07-08 14:24:19");
INSERT INTO products VALUES("439","40w Mega LED (S/Star)","2163","standard","C128","4","2","1","1","1","580","650","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 16:50:02","2021-07-08 14:24:19");
INSERT INTO products VALUES("440","20w (M) Luxery LED (S/Star)","2164","standard","C128","4","2","1","1","1","330","370","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 16:53:37","2021-07-08 14:24:20");
INSERT INTO products VALUES("441","30w (M) Luxery LED (S/Star)","2165","standard","C128","4","2","1","1","1","430","480","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 16:54:48","2021-07-08 14:24:20");
INSERT INTO products VALUES("442","40w (M) Luxery LED (S/Star)","2166","standard","C128","4","2","1","1","1","660","720","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 16:56:15","2021-07-08 14:24:20");
INSERT INTO products VALUES("443","3w LED (S/Star)","2167","standard","C128","4","2","1","1","1","110","130","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 16:57:34","2021-07-08 15:02:34");
INSERT INTO products VALUES("444","5w LED (S/Star)","2168","standard","C128","4","2","1","1","1","126","155","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 16:59:10","2021-07-08 15:02:34");
INSERT INTO products VALUES("445","12w LED-AC (S/Star)","2169","standard","C128","4","2","1","1","1","206","255","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 17:00:40","2021-07-08 15:02:34");
INSERT INTO products VALUES("446","12w T LED (S/Star)","2170","standard","C128","4","2","1","1","1","256","275","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 17:01:49","2021-07-08 15:02:34");
INSERT INTO products VALUES("447","9w Colour LED (S/Star)","2171","standard","C128","4","2","1","1","1","185","220","16","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 17:04:46","2021-07-08 15:02:34");
INSERT INTO products VALUES("448","20w 2 Feet Bucket(S/Star)","2172","standard","C128","4","2","1","1","1","370","395","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 17:06:44","2021-07-08 15:02:35");
INSERT INTO products VALUES("449","10w 1 Feet Bucket(S/Star)","2173","standard","C128","4","2","1","1","1","260","285","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 17:07:55","2021-07-08 15:02:35");
INSERT INTO products VALUES("450","40w 4 Feet Bucket(S/Star)","2174","standard","C128","4","2","1","1","1","520","550","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 17:09:18","2021-07-08 15:07:44");
INSERT INTO products VALUES("451","10w IPS Bulb (S/Star)","2175","standard","C128","4","2","1","1","1","435","460","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 17:10:46","2021-07-08 15:02:35");
INSERT INTO products VALUES("452","8w IPS Bulb (S/Star)","2176","standard","C128","4","2","1","1","1","390","420","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-15 17:11:46","2021-07-08 15:02:35");
INSERT INTO products VALUES("453","5w LED Deem Light (S/Star)","2177","standard","C128","4","2","1","1","1","35","45","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-15 17:12:53","2021-08-13 12:14:31");
INSERT INTO products VALUES("454","3w LED Bulb (WT)","2178","standard","C128","14","2","1","1","1","87","110","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 02:38:55","2021-07-08 15:44:13");
INSERT INTO products VALUES("455","5w LED Bulb (WT)","2179","standard","C128","14","2","1","1","1","100","130","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 02:39:48","2021-07-08 15:44:13");
INSERT INTO products VALUES("456","7w LED Bulb (WT)","2180","standard","C128","14","2","1","1","1","119","140","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 02:40:34","2021-07-08 15:44:13");
INSERT INTO products VALUES("457","12w LED Bulb (WT)","2181","standard","C128","14","2","1","1","1","143","180","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 02:41:19","2021-07-08 15:44:13");
INSERT INTO products VALUES("458","18w LED Bulb (WT)","2182","standard","C128","14","2","1","1","1","200","230","8","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 02:42:10","2021-07-08 15:44:13");
INSERT INTO products VALUES("459","12w Panel White (WT)","2183","standard","C128","14","2","1","1","1","400","450","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 02:43:18","2021-07-08 15:44:13");
INSERT INTO products VALUES("460","18w Panel White (WT)","2184","standard","C128","14","2","1","1","1","535","585","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 02:44:09","2021-07-08 15:44:13");
INSERT INTO products VALUES("461","10w IPS Bulb (W/T)","2185","standard","C128","14","2","1","1","1","410","460","15","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 02:45:08","2021-07-08 15:44:13");
INSERT INTO products VALUES("462","12w Panel Color(WT)","2186","standard","C128","14","2","1","1","1","407","480","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-16 02:46:03","2021-07-08 15:46:12");
INSERT INTO products VALUES("463","7w Color LED (W/T)","2187","standard","C128","14","2","1","1","1","160","185","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-16 02:48:13","2021-07-08 15:48:37");
INSERT INTO products VALUES("464","40w Prime LED (W/T)","2188","standard","C128","14","2","1","1","1","570","630","5","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-16 02:49:30","2021-07-08 15:47:23");
INSERT INTO products VALUES("465","L-2 Box (W/T)","2189","standard","C128","14","2","1","1","1","42","60","20","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 02:50:43","2021-07-08 15:44:14");
INSERT INTO products VALUES("466","L-3 Box (W/T)","2190","standard","C128","14","2","1","1","1","60","80","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 02:51:32","2021-07-08 15:44:14");
INSERT INTO products VALUES("467","4*6 SDB (W/T)","2191","standard","C128","14","2","1","1","1","343","390","2","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 02:53:05","2021-07-08 15:44:14");
INSERT INTO products VALUES("468","7*9 SDB (W/T)","2192","standard","C128","14","2","1","1","1","345","420","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 02:53:57","2021-07-08 15:44:15");
INSERT INTO products VALUES("469","10*13 SDB (W/T)","2193","standard","C128","14","2","1","1","1","470","550","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 02:54:46","2021-07-08 15:44:15");
INSERT INTO products VALUES("470","14*16 SDB (W/T)","2194","standard","C128","14","2","1","1","1","560","650","2","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 02:55:40","2021-07-08 15:44:15");
INSERT INTO products VALUES("471","5M Multiplag (W/T)","2195","standard","C128","14","2","1","1","1","472","540","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","0","2021-06-16 02:56:59","2021-07-10 12:17:31");
INSERT INTO products VALUES("472","3M Multiplag (W/T)","2196","standard","C128","14","2","1","1","1","414","490","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","0","2021-06-16 02:57:58","2021-07-10 12:18:24");
INSERT INTO products VALUES("473","HTC (KITTY) 6 Pin Socket","2197","standard","C128","30","2","1","1","1","80","120","30","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-16 03:02:22","2021-07-10 13:12:50");
INSERT INTO products VALUES("474","Opple Duble(KITTY) 6 Pin Socket","2198","standard","C128","30","2","1","1","1","134","180","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-16 03:04:26","2021-07-10 13:10:10");
INSERT INTO products VALUES("475","4 Plain Tee (A1)","377","standard","C128","7","1","1","1","1","142.43","150","8","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-16 13:23:05","2021-07-18 14:50:34");
INSERT INTO products VALUES("476","4 Plain Tee (G)","378","standard","C128","2","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 13:31:54","2021-06-16 13:31:54");
INSERT INTO products VALUES("477","4 Plain Tee (M)","379","standard","C128","3","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 13:38:34","2021-06-16 13:38:34");
INSERT INTO products VALUES("478","4 Plain Tee (N/M)","380","standard","C128","6","1","1","1","1","0","0","18","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 13:40:07","2021-07-20 06:07:25");
INSERT INTO products VALUES("479","4 Plain Tee (N/P)","381","standard","C128","8","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 13:41:03","2021-06-16 13:41:03");
INSERT INTO products VALUES("480","4 Plain Tee (RFL)","382","standard","C128","1","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 13:42:02","2021-06-16 13:42:02");
INSERT INTO products VALUES("481","4 Plain Band (A1)","383","standard","C128","7","1","1","1","1","107","130","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-16 14:22:28","2021-07-18 14:50:33");
INSERT INTO products VALUES("482","4 Plain Band (G)","384","standard","C128","2","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:23:06","2021-06-16 14:23:06");
INSERT INTO products VALUES("483","4 Plain Band (M)","385","standard","C128","3","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:23:40","2021-06-16 14:23:40");
INSERT INTO products VALUES("484","4 Plain Band (N/M)","386","standard","C128","6","1","1","1","1","0","0","30","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:24:11","2021-07-29 10:56:01");
INSERT INTO products VALUES("485","4 Plain Band (N/P)","387","standard","C128","8","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:24:48","2021-06-16 14:24:48");
INSERT INTO products VALUES("486","4 Plain Band (RFL)","388","standard","C128","1","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:25:23","2021-06-16 14:25:23");
INSERT INTO products VALUES("487","4 Plain Socket (A1)","389","standard","C128","7","1","1","1","1","0","0","15","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:26:24","2021-07-26 10:12:39");
INSERT INTO products VALUES("488","4 Plain Socket (G)","390","standard","C128","2","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:27:25","2021-06-16 14:27:25");
INSERT INTO products VALUES("489","4 Plain Socket (M)","391","standard","C128","3","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:28:12","2021-06-16 14:28:12");
INSERT INTO products VALUES("490","4 Plain Socket (N/M)","392","standard","C128","6","1","1","1","1","0","0","4","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:28:54","2021-07-19 04:26:23");
INSERT INTO products VALUES("491","4 Plain Socket (N/P)","393","standard","C128","8","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:29:36","2021-06-16 14:29:36");
INSERT INTO products VALUES("492","4 Plain Socket (RFL)","394","standard","C128","1","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:30:22","2021-06-16 14:30:22");
INSERT INTO products VALUES("493","4 S Door Tee (A1)","395","standard","C128","7","1","1","1","1","208","240","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-16 14:31:29","2021-07-17 06:42:17");
INSERT INTO products VALUES("494","4 S Door Tee (G)","396","standard","C128","2","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:32:03","2021-06-16 14:32:03");
INSERT INTO products VALUES("495","4 S Door Tee (M)","397","standard","C128","3","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:32:36","2021-06-16 14:32:36");
INSERT INTO products VALUES("496","4 S Door Tee (N/M)","398","standard","C128","6","1","1","1","1","0","0","5","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:33:19","2021-07-29 11:38:45");
INSERT INTO products VALUES("497","4 S Door Tee (N/P)","399","standard","C128","8","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:33:56","2021-06-16 14:33:56");
INSERT INTO products VALUES("498","4 S Door Tee (RFL)","400","standard","C128","1","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:34:34","2021-06-16 14:34:34");
INSERT INTO products VALUES("499","4 S Door Band (A1)","401","standard","C128","7","1","1","1","1","0","0","20","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:35:56","2021-07-18 14:50:33");
INSERT INTO products VALUES("500","4 S Door Band (G)","402","standard","C128","2","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:36:39","2021-06-16 14:36:39");
INSERT INTO products VALUES("501","4 S Door Band (M)","403","standard","C128","3","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:37:10","2021-06-16 14:37:10");
INSERT INTO products VALUES("502","4 S Door Band (N/M)","404","standard","C128","6","1","1","1","1","0","0","53","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:37:52","2021-07-26 10:00:31");
INSERT INTO products VALUES("503","4 S Door Band (N/P)","405","standard","C128","8","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:38:24","2021-06-16 14:38:24");
INSERT INTO products VALUES("504","4 S Door Band (RFL)","406","standard","C128","1","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:39:03","2021-06-16 14:39:03");
INSERT INTO products VALUES("505","4 B Door Tee (A1)","407","standard","C128","7","1","1","1","1","181.15","240","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-16 14:40:05","2021-07-17 06:43:03");
INSERT INTO products VALUES("506","4 B Door Tee (G)","408","standard","C128","2","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:40:35","2021-06-16 14:40:35");
INSERT INTO products VALUES("507","4 B Door Tee (M)","409","standard","C128","3","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:41:14","2021-06-16 14:41:14");
INSERT INTO products VALUES("508","4 B Door Tee (N/M)","410","standard","C128","6","1","1","1","1","0","0","16","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:41:59","2021-07-20 06:07:25");
INSERT INTO products VALUES("509","4 B Door Tee (N/P)","411","standard","C128","8","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:45:20","2021-06-16 14:45:20");
INSERT INTO products VALUES("510","4 B Door Tee (RFL)","412","standard","C128","1","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:48:18","2021-06-16 14:48:18");
INSERT INTO products VALUES("511","4 B Door Band (A1)","413","standard","C128","7","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:49:18","2021-06-16 14:49:18");
INSERT INTO products VALUES("512","4 B Door Band (G)","414","standard","C128","2","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:50:13","2021-06-16 14:50:13");
INSERT INTO products VALUES("513","4 B Door Band (M)","415","standard","C128","3","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:50:52","2021-06-16 14:50:52");
INSERT INTO products VALUES("514","4 B Door Band (N/M)","416","standard","C128","6","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:51:24","2021-06-16 14:51:24");
INSERT INTO products VALUES("515","4 B Door Band (N/P)","417","standard","C128","8","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:51:56","2021-06-16 14:51:56");
INSERT INTO products VALUES("516","4 B Door Band (RFL)","418","standard","C128","1","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:52:29","2021-06-16 14:52:29");
INSERT INTO products VALUES("517","4 Off Band (A1)","419","standard","C128","7","1","1","1","1","183.5","190","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-16 14:54:05","2021-07-17 06:43:54");
INSERT INTO products VALUES("518","4 Off Band (G)","420","standard","C128","2","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:54:34","2021-06-16 14:54:34");
INSERT INTO products VALUES("519","4 Off Band (M)","421","standard","C128","3","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:55:04","2021-06-16 14:55:04");
INSERT INTO products VALUES("520","4 Off Band (N/M)","422","standard","C128","6","1","1","1","1","0","0","24","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:55:35","2021-07-20 06:07:25");
INSERT INTO products VALUES("521","4 Off Band (N/P)","423","standard","C128","8","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:56:04","2021-06-16 14:56:04");
INSERT INTO products VALUES("522","4 Off Band (RFL)","424","standard","C128","1","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:56:41","2021-06-16 14:56:41");
INSERT INTO products VALUES("523","4 ST Saifun (A1)","425","standard","C128","7","1","1","1","1","0","0","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:58:34","2021-07-18 14:37:11");
INSERT INTO products VALUES("524","4 ST Saifun (G)","426","standard","C128","2","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:59:06","2021-06-16 14:59:06");
INSERT INTO products VALUES("525","4 ST Saifun (M)","427","standard","C128","3","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 14:59:35","2021-06-16 14:59:35");
INSERT INTO products VALUES("526","4 ST Saifun (N/M)","428","standard","C128","6","1","1","1","1","0","0","11","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 15:00:07","2021-07-20 06:07:25");
INSERT INTO products VALUES("527","4 ST Saifun (N/P)","429","standard","C128","8","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 15:00:37","2021-06-16 15:00:37");
INSERT INTO products VALUES("528","4 ST Saifun (RFL)","430","standard","C128","1","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 15:01:15","2021-06-16 15:01:15");
INSERT INTO products VALUES("529","4 LG Saifun (A1)","431","standard","C128","7","1","1","1","1","239","260","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-16 15:09:29","2021-07-18 14:50:34");
INSERT INTO products VALUES("530","4 LG Saifun (G)","432","standard","C128","2","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 15:10:29","2021-06-16 15:10:29");
INSERT INTO products VALUES("531","4 LG Saifun (M)","433","standard","C128","3","1","1","1","1","0","0","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 15:12:07","2021-07-26 10:48:39");
INSERT INTO products VALUES("532","4 LG Saifun (N/M)","434","standard","C128","6","1","1","1","1","0","0","17","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 15:13:09","2021-07-29 10:56:01");
INSERT INTO products VALUES("533","4 LG Saifun (N/P)","435","standard","C128","8","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 15:19:08","2021-06-16 15:19:08");
INSERT INTO products VALUES("534","4 LG Saifun (RFL)","436","standard","C128","1","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 15:19:59","2021-06-16 15:19:59");
INSERT INTO products VALUES("535","4 Zam Plag (A1)","437","standard","C128","7","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 16:41:21","2021-06-16 16:41:21");
INSERT INTO products VALUES("536","4 Zam Plag (G)","438","standard","C128","2","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 16:42:49","2021-06-16 16:42:49");
INSERT INTO products VALUES("537","4 Zam Plag (M)","439","standard","C128","3","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 16:43:48","2021-06-16 16:43:48");
INSERT INTO products VALUES("538","4 Zam Plag (N/M)","440","standard","C128","6","1","1","1","1","0","0","2","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 16:44:56","2021-07-18 14:02:27");
INSERT INTO products VALUES("539","4 Zam Plag (N/P)","441","standard","C128","8","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 16:45:30","2021-06-16 16:45:30");
INSERT INTO products VALUES("540","4 Zam Plag (RFL)","442","standard","C128","1","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 16:46:05","2021-06-16 16:46:05");
INSERT INTO products VALUES("541","4 Y Tee (A1)","443","standard","C128","7","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 16:46:59","2021-06-16 16:46:59");
INSERT INTO products VALUES("542","4 Y Tee (G)","444","standard","C128","2","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 16:47:32","2021-06-16 16:47:32");
INSERT INTO products VALUES("543","4 Y Tee (M)","445","standard","C128","3","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 16:48:08","2021-06-16 16:48:08");
INSERT INTO products VALUES("544","4 Y Tee (N/M)","446","standard","C128","6","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 16:48:46","2021-06-16 16:48:46");
INSERT INTO products VALUES("545","4 Y Tee (N/P)","447","standard","C128","8","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 16:49:17","2021-06-16 16:49:17");
INSERT INTO products VALUES("546","4 Y Tee (RFL)","448","standard","C128","1","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 16:49:57","2021-06-16 16:49:57");
INSERT INTO products VALUES("547","4 Cross Tee (A1)","449","standard","C128","7","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 16:51:13","2021-06-16 16:51:13");
INSERT INTO products VALUES("548","4 Cross Tee (G)","450","standard","C128","2","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 16:51:46","2021-06-16 16:51:46");
INSERT INTO products VALUES("549","4 Cross Tee (M)","451","standard","C128","3","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 16:52:26","2021-06-16 16:52:26");
INSERT INTO products VALUES("550","4 Cross Tee (N/M)","452","standard","C128","6","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 16:53:06","2021-06-16 16:53:06");
INSERT INTO products VALUES("551","4 Cross Tee (N/P)","453","standard","C128","8","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 16:53:41","2021-06-16 16:53:41");
INSERT INTO products VALUES("552","4 Cross Tee (RFL)","454","standard","C128","1","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 16:54:24","2021-06-16 16:54:24");
INSERT INTO products VALUES("553","6 Plain Band (A1)","455","standard","C128","7","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 16:59:02","2021-06-16 16:59:02");
INSERT INTO products VALUES("554","6 Plain Band (G)","456","standard","C128","2","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 16:59:48","2021-06-16 16:59:48");
INSERT INTO products VALUES("555","6 Plain Band (M)","457","standard","C128","3","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 17:04:22","2021-06-16 17:04:22");
INSERT INTO products VALUES("556","6 Plain Band (N/M)","458","standard","C128","6","1","1","1","1","0","0","9","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 17:05:07","2021-07-29 11:38:45");
INSERT INTO products VALUES("557","6 Plain Band (N/P)","459","standard","C128","8","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 17:05:42","2021-06-16 17:05:42");
INSERT INTO products VALUES("558","6 Plain Band (RFL)","460","standard","C128","1","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 17:06:18","2021-06-16 17:06:18");
INSERT INTO products VALUES("559","6 Plain Tee (A1)","461","standard","C128","7","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 17:07:06","2021-06-16 17:07:06");
INSERT INTO products VALUES("560","6 Plain Tee (G)","462","standard","C128","2","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 17:08:00","2021-06-16 17:08:00");
INSERT INTO products VALUES("561","6 Plain Tee (M)","463","standard","C128","3","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 17:08:58","2021-06-16 17:08:58");
INSERT INTO products VALUES("562","6 Plain Tee (N/M)","464","standard","C128","6","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 17:09:39","2021-06-16 17:09:39");
INSERT INTO products VALUES("563","6 Plain Tee (N/P)","465","standard","C128","8","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 17:10:15","2021-06-16 17:10:15");
INSERT INTO products VALUES("564","6 Plain Tee (RFL)","466","standard","C128","1","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 17:10:56","2021-06-16 17:10:56");
INSERT INTO products VALUES("565","6 Plain Socket (A1)","467","standard","C128","7","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 17:11:55","2021-06-16 17:11:55");
INSERT INTO products VALUES("566","6 Plain Socket (G)","468","standard","C128","2","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 17:13:31","2021-06-16 17:13:31");
INSERT INTO products VALUES("567","6 Plain Socket (M)","469","standard","C128","3","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 17:14:28","2021-06-16 17:14:28");
INSERT INTO products VALUES("568","6 Plain Socket (N/M)","470","standard","C128","6","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 17:15:31","2021-06-16 17:15:31");
INSERT INTO products VALUES("569","6 Plain Socket (N/P)","471","standard","C128","8","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 17:16:23","2021-06-16 17:16:23");
INSERT INTO products VALUES("570","6 Plain Socket (RFL)","472","standard","C128","1","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 17:17:06","2021-06-16 17:17:06");
INSERT INTO products VALUES("571","6 Zam Plag (A1)","473","standard","C128","7","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 17:18:37","2021-06-16 17:18:37");
INSERT INTO products VALUES("572","6 Zam Plag (G)","474","standard","C128","2","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-16 17:19:31","2021-06-16 17:19:31");
INSERT INTO products VALUES("573","6 Zam Plag (M)","475","standard","C128","3","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 02:33:12","2021-06-17 02:33:12");
INSERT INTO products VALUES("574","6 Zam Plag (N/M)","476","standard","C128","6","1","1","1","1","0","0","1","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 02:33:48","2021-07-18 13:58:26");
INSERT INTO products VALUES("575","6 Zam Plag (N/P)","477","standard","C128","8","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 02:34:21","2021-06-17 02:34:21");
INSERT INTO products VALUES("576","6 Zam Plag (RFL)","478","standard","C128","1","1","1","1","1","0","0","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 02:35:03","2021-07-26 10:07:06");
INSERT INTO products VALUES("577","6 B Door Band (A1)","479","standard","C128","7","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 02:35:52","2021-06-17 02:35:52");
INSERT INTO products VALUES("578","6 B Door Band (G)","480","standard","C128","2","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 02:36:27","2021-06-17 02:36:27");
INSERT INTO products VALUES("579","6 B Door Band (M)","481","standard","C128","3","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 02:36:57","2021-06-17 02:36:57");
INSERT INTO products VALUES("580","6 B Door Band (N/M)","482","standard","C128","6","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 02:37:34","2021-06-17 02:37:34");
INSERT INTO products VALUES("581","6 B Door Band (N/P)","483","standard","C128","8","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 02:38:04","2021-06-17 02:38:04");
INSERT INTO products VALUES("582","6 B Door Band (RFL)","484","standard","C128","1","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 02:38:42","2021-06-17 02:38:42");
INSERT INTO products VALUES("583","6 B Door Tee (A1)","485","standard","C128","7","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 02:39:33","2021-06-17 02:39:33");
INSERT INTO products VALUES("584","6 B Door Tee (G)","486","standard","C128","2","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 02:40:15","2021-06-17 02:40:15");
INSERT INTO products VALUES("585","6 B Door Tee (M)","487","standard","C128","3","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 02:40:50","2021-06-17 02:40:50");
INSERT INTO products VALUES("586","6 B Door Tee (N/M)","488","standard","C128","6","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 02:41:29","2021-06-17 02:41:29");
INSERT INTO products VALUES("587","6 B Door Tee (N/P)","489","standard","C128","8","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 02:42:06","2021-06-17 02:42:06");
INSERT INTO products VALUES("588","6 B Door Tee (RFL)","490","standard","C128","1","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 02:42:39","2021-06-17 02:42:39");
INSERT INTO products VALUES("589","6 S Door Tee (A1)","491","standard","C128","7","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 02:43:55","2021-06-17 02:43:55");
INSERT INTO products VALUES("590","6 S Door Tee (G)","492","standard","C128","2","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 02:44:29","2021-06-17 02:44:29");
INSERT INTO products VALUES("591","6 S Door Tee (M)","493","standard","C128","3","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 02:45:03","2021-06-17 02:45:03");
INSERT INTO products VALUES("592","6 S Door Tee (N/M)","494","standard","C128","6","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 02:45:37","2021-06-17 02:45:37");
INSERT INTO products VALUES("593","6 S Door Tee (N/P)","495","standard","C128","8","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 02:46:10","2021-06-17 02:46:10");
INSERT INTO products VALUES("594","6 S Door Tee (RFL)","496","standard","C128","1","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 02:46:45","2021-06-17 02:46:45");
INSERT INTO products VALUES("595","6 S Door Band (A1)","497","standard","C128","7","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 02:47:45","2021-06-17 02:47:45");
INSERT INTO products VALUES("596","6 S Door Band (G)","498","standard","C128","2","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 02:48:28","2021-06-17 02:48:28");
INSERT INTO products VALUES("597","6 S Door Band (M)","499","standard","C128","3","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 02:49:14","2021-06-17 02:49:14");
INSERT INTO products VALUES("598","6 S Door Band (N/M)","500","standard","C128","6","1","1","1","1","0","0","5","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 02:49:55","2021-07-22 04:41:50");
INSERT INTO products VALUES("599","6 S Door Band (N/P)","501","standard","C128","8","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 02:50:33","2021-06-17 02:50:33");
INSERT INTO products VALUES("600","6 S Door Band (RFL)","502","standard","C128","1","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 02:51:07","2021-06-17 02:51:07");
INSERT INTO products VALUES("601","6 Off Band (A1)","503","standard","C128","7","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 02:52:08","2021-06-17 02:52:08");
INSERT INTO products VALUES("602","6 Off Band (G)","504","standard","C128","2","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 02:52:48","2021-06-17 02:52:48");
INSERT INTO products VALUES("603","6 Off Band (M)","505","standard","C128","3","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 02:53:18","2021-06-17 02:53:18");
INSERT INTO products VALUES("604","6 Off Band (N/M)","506","standard","C128","6","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 02:53:58","2021-06-17 02:53:58");
INSERT INTO products VALUES("605","6 Off Band (N/P)","507","standard","C128","8","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 02:54:32","2021-06-17 02:54:32");
INSERT INTO products VALUES("606","6 Off Band (RFL)","508","standard","C128","1","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 02:55:09","2021-06-17 02:55:09");
INSERT INTO products VALUES("607","6 TR Tee","509","standard","C128","15","1","1","1","1","300","350","5","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-17 03:00:23","2021-08-12 15:15:20");
INSERT INTO products VALUES("608","6 TR Band","510","standard","C128","15","1","1","1","1","260","290","5","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-17 03:04:55","2021-08-12 15:14:54");
INSERT INTO products VALUES("609","6 TR Socket","511","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 03:05:41","2021-06-17 03:05:41");
INSERT INTO products VALUES("610","6 TR Plag","512","standard","C128","15","1","1","1","1","0","0","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-17 03:06:33","2021-07-18 10:29:25");
INSERT INTO products VALUES("611","6 TR Off Band","513","standard","C128","15","1","1","1","1","400","480","5","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-17 03:07:21","2021-08-12 15:14:28");
INSERT INTO products VALUES("612","3/4 Conceal Stop Cock (Apex)","514","standard","C128","5","1","1","1","1","862","1000","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 03:58:41","2021-07-27 11:12:17");
INSERT INTO products VALUES("613","1/2 Moving Pillar Cock (Apex)","515","standard","C128","5","1","1","1","1","960","1200","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 04:00:40","2021-07-27 11:06:20");
INSERT INTO products VALUES("614","1/2 Moving Sink Cock (Apex)","516","standard","C128","5","1","1","1","1","960","1200","4","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 04:01:42","2021-07-27 11:07:45");
INSERT INTO products VALUES("615","1/2 Bib Cock (Apex)","517","standard","C128","5","1","1","1","1","625","720","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 04:03:23","2021-07-27 11:11:30");
INSERT INTO products VALUES("616","1/2 Moving Shower (Apex)","518","standard","C128","5","1","1","1","1","545","620","8","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 04:06:57","2021-07-27 11:08:35");
INSERT INTO products VALUES("617","1/2 Basin Mixer (Apex)","519","standard","C128","5","1","1","1","1","1800","2300","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 04:08:27","2021-07-27 11:04:11");
INSERT INTO products VALUES("618","1/2 Sink Mixer (Apex)","520","standard","C128","5","1","1","1","1","17150","2300","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 04:09:45","2021-07-27 11:04:44");
INSERT INTO products VALUES("619","1/2 Bath Tub Mixer (Apex)","521","standard","C128","5","1","1","1","1","3125","3800","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 04:11:01","2021-07-27 11:03:26");
INSERT INTO products VALUES("620","1/2 Angle Stop Cock (Apex)","522","standard","C128","5","1","1","1","1","544","600","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 04:13:08","2021-07-27 11:10:14");
INSERT INTO products VALUES("621","2 in 1 Bib Cock (Apex)","523","standard","C128","5","1","1","1","1","1056","1300","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 04:16:14","2021-07-27 11:10:57");
INSERT INTO products VALUES("622","Basin Waste (Apex)","524","standard","C128","5","1","1","1","1","232","290","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 04:23:45","2021-07-27 11:14:16");
INSERT INTO products VALUES("623","4 Floor Dain-Net (Apex)","525","standard","C128","5","1","1","1","1","112","140","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 04:25:46","2021-07-27 11:27:48");
INSERT INTO products VALUES("624","1.5 UPVC Band (N/M)","526","standard","C128","6","1","1","1","1","0","0","81","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 04:27:55","2021-07-29 10:56:01");
INSERT INTO products VALUES("625","2 UPVC Band (N/M)","527","standard","C128","6","1","1","1","1","0","0","30","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-19 04:29:12","2021-07-20 06:07:25");
INSERT INTO products VALUES("626","6*4 TR Plain Tee","528","standard","C128","15","1","1","1","1","0","0","5","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-19 04:31:10","2021-07-18 10:29:25");
INSERT INTO products VALUES("627","2*1.5 UPVC Bush","529","standard","C128","","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 04:34:36","2021-07-28 17:29:37");
INSERT INTO products VALUES("628","2*1 UPVC Bush","530","standard","C128","","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-19 04:35:56","2021-06-19 04:35:56");
INSERT INTO products VALUES("629","3*1.5 UPVC Bush","531","standard","C128","","1","1","1","1","45","65","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 04:37:23","2021-08-12 15:13:37");
INSERT INTO products VALUES("630","3*2 UPVC Bush","532","standard","C128","","1","1","1","1","45","65","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 04:39:33","2021-08-12 15:13:19");
INSERT INTO products VALUES("631","4*1.5 UPVC Bush","533","standard","C128","","1","1","1","1","45","65","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 10:06:25","2021-08-12 15:13:00");
INSERT INTO products VALUES("632","4*2 UPVC Bush","534","standard","C128","","1","1","1","1","45","65","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 10:07:22","2021-08-12 15:12:39");
INSERT INTO products VALUES("633","4*3 UPVC Bush","535","standard","C128","","1","1","1","1","45","65","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 10:08:17","2021-08-12 15:12:10");
INSERT INTO products VALUES("634","Oriana-18 cm (Rosa)","536","standard","C128","16","1","1","1","1","794","950","19","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 10:55:23","2021-07-28 12:12:30");
INSERT INTO products VALUES("635","LEA-29cm (Rosa)","537","standard","C128","16","1","1","1","1","1370","1450","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 10:57:08","2021-07-17 06:21:40");
INSERT INTO products VALUES("636","ORINA-50cm Wash Basin (Rosa)","538","standard","C128","16","1","1","1","1","1864","2400","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 10:59:54","2021-07-17 06:29:26");
INSERT INTO products VALUES("637","NEO-45cm Wash Basin(Rosa)","539","standard","C128","16","1","1","1","1","1719","2400","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 11:01:24","2021-07-17 06:26:17");
INSERT INTO products VALUES("638","MARGO-55cm Wash Basin (Rosa)","540","standard","C128","16","1","1","1","1","1920","2450","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 11:06:00","2021-07-17 06:23:01");
INSERT INTO products VALUES("639","MARINA-60cm Wash Basin (Rosa)","541","standard","C128","16","1","1","1","1","2120","2600","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 11:08:00","2021-07-17 06:24:12");
INSERT INTO products VALUES("640","English Comet-MARGO","542","standard","C128","16","1","1","1","1","5305","5900","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 11:12:10","2021-07-17 06:18:06");
INSERT INTO products VALUES("641","English Comet-MARINA","543","standard","C128","16","1","1","1","1","6723","7400","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 11:14:36","2021-07-17 06:19:53");
INSERT INTO products VALUES("642","English Comet-MARINA Normal","544","standard","C128","16","1","1","1","1","5870","6400","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 11:19:52","2021-07-17 06:20:31");
INSERT INTO products VALUES("643","SOLAR Basin (Normal)","545","standard","C128","17","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-19 11:21:17","2021-06-19 11:21:17");
INSERT INTO products VALUES("644","1.5 UPVC Band (M)","546","standard","C128","15","1","1","1","1","20","25","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 11:34:05","2021-08-12 15:11:26");
INSERT INTO products VALUES("645","SINK-Elite-36*18 (RFL)","547","standard","C128","1","1","1","1","1","2325","2525","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 12:00:42","2021-08-12 15:11:02");
INSERT INTO products VALUES("646","SINK-Lily-36*18 (RFL)","548","standard","C128","1","1","1","1","1","1860","1960","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 12:01:58","2021-08-12 15:10:37");
INSERT INTO products VALUES("647","SINK-Lily-30*18 (RFL)","549","standard","C128","1","1","1","1","1","1675","1850","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 12:02:53","2021-08-12 15:10:14");
INSERT INTO products VALUES("648","SINK-Lily-20*17 (RFL)","550","standard","C128","1","1","1","1","1","1302","1450","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 12:04:03","2021-08-12 15:09:22");
INSERT INTO products VALUES("649","SINK-Tulip-36*18 (RFL)","551","standard","C128","1","1","1","1","1","1395","1450","4","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 12:05:24","2021-08-12 15:08:27");
INSERT INTO products VALUES("650","SINK-Tulip-30*18 (RFL)","552","standard","C128","1","1","1","1","1","1302","1390","4","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 12:07:01","2021-08-12 15:07:57");
INSERT INTO products VALUES("651","SINK-Tulip-20*17 (RFL)","553","standard","C128","1","1","1","1","1","930","1020","3","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 12:08:13","2021-08-12 15:07:34");
INSERT INTO products VALUES("652","SINK-Daisy-20*17 (RFL)","554","standard","C128","1","1","1","1","1","1581","1780","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 12:09:26","2021-08-12 15:07:05");
INSERT INTO products VALUES("653","SINK-6 inc Deep-36*18 (GAZI)","555","standard","C128","2","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-19 12:16:46","2021-06-19 12:16:46");
INSERT INTO products VALUES("654","SINK-6 inc Deep-36*18 (Madina)","556","standard","C128","3","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-19 12:17:40","2021-06-19 12:17:40");
INSERT INTO products VALUES("655","SINK-8 inc Deep-36*18 (GAZI)","557","standard","C128","2","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-19 12:18:18","2021-06-19 12:18:18");
INSERT INTO products VALUES("656","SINK-8 inc Deep-36*18 (Madina)","558","standard","C128","3","1","1","1","1","1680","1850","3","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 12:19:20","2021-08-12 15:06:44");
INSERT INTO products VALUES("657","SINK-6 inc Deep-30*18 (GAZI)","559","standard","C128","2","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-19 12:21:23","2021-06-19 12:21:23");
INSERT INTO products VALUES("658","SINK-6 inc Deep-30*18 (Madina)","560","standard","C128","3","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-19 12:22:34","2021-06-19 12:22:34");
INSERT INTO products VALUES("659","SINK-8 inc Deep-30*18 (GAZI)","561","standard","C128","2","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-19 12:23:38","2021-06-19 12:23:38");
INSERT INTO products VALUES("660","SINK-8 inc Deep-30*18 (Madina)","562","standard","C128","3","1","1","1","1","1520","1750","3","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 12:25:41","2021-08-12 15:06:17");
INSERT INTO products VALUES("661","SINK-6 inc Deep-20*17 (GAZI)","563","standard","C128","2","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-19 12:29:44","2021-06-19 12:29:44");
INSERT INTO products VALUES("662","SINK-8 inc Deep-20*17 (GAZI)","564","standard","C128","2","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-19 12:30:40","2021-06-19 12:30:40");
INSERT INTO products VALUES("663","SINK-6 inc Deep-20*17 (Madina)","565","standard","C128","3","1","1","1","1","1080","1250","3","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 12:31:29","2021-08-12 15:05:52");
INSERT INTO products VALUES("664","SINK-8 inc Deep-20*17 (Madina)","566","standard","C128","3","1","1","1","1","1250","1400","3","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-19 12:32:28","2021-08-12 15:05:22");
INSERT INTO products VALUES("665","1/2 PVC Tee (ERA)","567","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 03:21:17","2021-06-20 03:21:17");
INSERT INTO products VALUES("666","1/2 PVC Elbo (ERA)","568","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 03:23:29","2021-06-20 03:23:29");
INSERT INTO products VALUES("667","1/2 PVC H Nipple (ERA)","569","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 03:24:50","2021-06-20 03:24:50");
INSERT INTO products VALUES("668","1/2 PVC Union (ERA)","570","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 03:25:57","2021-06-20 03:25:57");
INSERT INTO products VALUES("669","1/2 PVC Plag (ERA)","571","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 03:26:51","2021-06-20 03:26:51");
INSERT INTO products VALUES("670","1/2 PVC Socket (ERA)","572","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 03:28:02","2021-06-20 03:28:02");
INSERT INTO products VALUES("671","1/2 PVC Ball Valve (ERA)","573","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 03:31:00","2021-06-20 03:31:00");
INSERT INTO products VALUES("672","3/4 PVC Tee (ERA)","574","standard","C128","9","1","1","1","1","0","0","50","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 03:32:50","2021-07-29 11:40:30");
INSERT INTO products VALUES("673","3/4 PVC Elbo (ERA)","575","standard","C128","9","1","1","1","1","19.5","0","400","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 03:34:42","2021-08-17 04:06:22");
INSERT INTO products VALUES("674","3/4 PVC H Nipple (ERA)","576","standard","C128","9","1","1","1","1","10.5","0","1540","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 03:35:52","2021-08-17 04:07:42");
INSERT INTO products VALUES("675","3/4 PVC Union (ERA)","577","standard","C128","9","1","1","1","1","42.5","0","404","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 03:36:43","2021-08-17 04:07:16");
INSERT INTO products VALUES("676","3/4 PVC Plag (ERA)","578","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 03:37:46","2021-06-20 03:37:46");
INSERT INTO products VALUES("677","3/4 PVC Socket (ERA)","579","standard","C128","9","1","1","1","1","13","0","1020","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 03:38:35","2021-08-17 04:06:49");
INSERT INTO products VALUES("678","3/4 PVC Ball Valve (ERA)","580","standard","C128","9","1","1","1","1","45","0","60","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 03:39:34","2021-08-17 04:11:52");
INSERT INTO products VALUES("679","1 PVC Tee (ERA)","581","standard","C128","9","1","1","1","1","26","0","110","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 03:41:00","2021-08-17 04:13:11");
INSERT INTO products VALUES("680","1 PVC Elbo (ERA)","582","standard","C128","9","1","1","1","1","23","0","210","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 03:41:44","2021-08-17 04:04:20");
INSERT INTO products VALUES("681","1 PVC H Nipple (ERA)","583","standard","C128","9","1","1","1","1","18","0","410","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 03:46:41","2021-08-17 04:05:36");
INSERT INTO products VALUES("682","1 PVC Union (ERA)","584","standard","C128","9","1","1","1","1","56","0","160","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 03:47:47","2021-08-17 04:05:12");
INSERT INTO products VALUES("683","1 PVC Plag (ERA)","585","standard","C128","9","1","1","1","1","0","0","20","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 03:49:33","2021-07-18 12:11:30");
INSERT INTO products VALUES("684","1 PVC Socket (ERA)","586","standard","C128","9","1","1","1","1","18","0","710","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 03:50:35","2021-08-17 04:04:49");
INSERT INTO products VALUES("685","1 PVC Ball Valve (ERA)","587","standard","C128","9","1","1","1","1","85","0","110","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 03:51:59","2021-08-17 04:12:39");
INSERT INTO products VALUES("686","1.5 PVC Tee (ERA)","588","standard","C128","9","1","1","1","1","65","0","83","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 03:53:32","2021-08-17 04:08:45");
INSERT INTO products VALUES("687","1.5 PVC Elbo (ERA)","589","standard","C128","9","1","1","1","1","65","0","156","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 03:54:28","2021-08-17 04:08:15");
INSERT INTO products VALUES("688","1.5 PVC H Nipple (ERA)","590","standard","C128","9","1","1","1","1","0","0","39","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 03:55:37","2021-07-28 17:26:37");
INSERT INTO products VALUES("689","1.5 PVC Union (ERA)","591","standard","C128","9","1","1","1","1","170","0","77","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 03:56:33","2021-08-17 04:11:06");
INSERT INTO products VALUES("690","1.5 PVC Plag (ERA)","592","standard","C128","9","1","1","1","1","0","0","30","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 03:57:31","2021-07-28 17:25:54");
INSERT INTO products VALUES("691","1.5 PVC Socket (ERA)","593","standard","C128","9","1","1","1","1","45","0","250","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 03:58:24","2021-08-17 04:09:21");
INSERT INTO products VALUES("692","1.5 PVC Ball Valve (ERA)","594","standard","C128","9","1","1","1","1","140","190","29","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 03:59:24","2021-08-17 03:37:44");
INSERT INTO products VALUES("693","2 PVC Tee (ERA)","595","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 04:01:03","2021-06-20 04:01:03");
INSERT INTO products VALUES("694","2 PVC Elbo (ERA)","596","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 04:01:50","2021-06-20 04:01:50");
INSERT INTO products VALUES("695","2 PVC H Nipple (ERA)","597","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 04:03:24","2021-06-20 04:03:24");
INSERT INTO products VALUES("696","2 PVC Union (ERA)","598","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 04:04:25","2021-06-20 04:04:25");
INSERT INTO products VALUES("697","2 PVC Plag (ERA)","599","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 04:05:13","2021-06-20 04:05:13");
INSERT INTO products VALUES("698","2 PVC Socket (ERA)","600","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 04:06:07","2021-06-20 04:06:07");
INSERT INTO products VALUES("699","2 PVC Ball Valve (ERA)","601","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 04:06:59","2021-06-20 04:06:59");
INSERT INTO products VALUES("700","1/2 PPR Elbo (ERA)","602","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 04:09:46","2021-06-20 04:09:46");
INSERT INTO products VALUES("701","1/2 PPR Tee (ERA)","603","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 04:10:39","2021-06-20 04:10:39");
INSERT INTO products VALUES("702","1/2 PPR Socket (ERA)","604","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 04:11:41","2021-06-20 04:11:41");
INSERT INTO products VALUES("703","1/2 PPR Off Band (ERA)","605","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 04:12:33","2021-06-20 04:12:33");
INSERT INTO products VALUES("704","1/2 PPR Union (ERA)","606","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 04:13:20","2021-06-20 04:13:20");
INSERT INTO products VALUES("705","1/2 PPR Cap (ERA)","607","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 04:14:22","2021-06-20 04:14:22");
INSERT INTO products VALUES("706","1/2 PPR Cross Tee (ERA)","608","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 04:15:51","2021-06-20 04:15:51");
INSERT INTO products VALUES("707","3/4 PPR Elbo (ERA)","609","standard","C128","9","1","1","1","1","19","25","400","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 04:17:55","2021-08-17 03:17:14");
INSERT INTO products VALUES("708","3/4 PPR Tee (ERA)","610","standard","C128","9","1","1","1","1","20","35","90","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 04:19:19","2021-08-12 15:03:21");
INSERT INTO products VALUES("709","3/4 PPR Socket (ERA)","611","standard","C128","9","1","1","1","1","11","0","200","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 04:20:24","2021-08-17 03:52:04");
INSERT INTO products VALUES("710","3/4 PPR Off Band (ERA)","612","standard","C128","9","1","1","1","1","123","0","30","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 04:21:11","2021-08-17 03:53:33");
INSERT INTO products VALUES("711","3/4 PPR Union (ERA)","613","standard","C128","9","1","1","1","1","123","0","50","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 04:21:57","2021-08-17 03:52:34");
INSERT INTO products VALUES("712","3/4 PPR Cap (ERA)","614","standard","C128","9","1","1","1","1","16","0","100","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 04:22:43","2021-08-17 03:54:41");
INSERT INTO products VALUES("713","3/4 PPR Cross Tee (ERA)","615","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 04:23:43","2021-06-20 04:23:43");
INSERT INTO products VALUES("714","1 PPR Elbo (ERA)","616","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 04:26:17","2021-06-20 04:26:17");
INSERT INTO products VALUES("715","1 PPR Tee (ERA)","617","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 04:27:00","2021-06-20 04:27:00");
INSERT INTO products VALUES("716","1 PPR Socket (ERA)","618","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 04:29:33","2021-06-20 04:29:33");
INSERT INTO products VALUES("717","1 PPR Off Band (ERA)","619","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 04:30:22","2021-06-20 04:30:22");
INSERT INTO products VALUES("718","1 PPR Union (ERA)","620","standard","C128","9","1","1","1","1","164","0","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 04:31:27","2021-08-17 03:53:02");
INSERT INTO products VALUES("719","1 PPR Cap (ERA)","621","standard","C128","9","1","1","1","1","24","0","100","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 04:32:17","2021-08-17 03:55:30");
INSERT INTO products VALUES("720","1 PPR Cross Tee (ERA)","622","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 04:33:03","2021-06-20 04:33:03");
INSERT INTO products VALUES("721","1.5 PPR Elbo (ERA)","623","standard","C128","9","1","1","1","1","65","90","15","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 09:57:15","2021-08-12 15:02:53");
INSERT INTO products VALUES("722","1.5 PPR Tee (ERA)","624","standard","C128","9","1","1","1","1","65","110","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 09:58:02","2021-08-12 15:02:19");
INSERT INTO products VALUES("723","1.5 PPR Socket (ERA)","625","standard","C128","9","1","1","1","1","45","90","15","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 09:58:48","2021-08-12 15:01:55");
INSERT INTO products VALUES("724","1.5 PPR Off Band (ERA)","626","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 09:59:44","2021-07-28 17:22:24");
INSERT INTO products VALUES("725","1.5 PPR Union (ERA)","627","standard","C128","9","1","1","1","1","360","470","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 10:00:26","2021-08-12 15:01:29");
INSERT INTO products VALUES("726","1.5 PPR Cap (ERA)","628","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 10:01:09","2021-07-28 17:21:41");
INSERT INTO products VALUES("727","1.5 PPR Cross Tee (ERA)","629","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 10:01:55","2021-07-28 17:21:11");
INSERT INTO products VALUES("728","3/4*1/2 FM Tee (ERA)","630","standard","C128","9","1","1","1","1","75","0","200","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 10:04:36","2021-08-17 03:56:25");
INSERT INTO products VALUES("729","3/4*1/2 FM Elbo (ERA)","631","standard","C128","9","1","1","1","1","75","0","200","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 10:07:51","2021-08-17 03:57:28");
INSERT INTO products VALUES("730","3/4*1/2 FM Socket (ERA)","632","standard","C128","9","1","1","1","1","73","0","200","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 10:08:47","2021-08-17 03:58:09");
INSERT INTO products VALUES("731","3/4 ML Tee (ERA)","633","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 10:09:48","2021-06-20 10:09:48");
INSERT INTO products VALUES("732","3/4 ML Elbo (ERA)","634","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 10:10:56","2021-06-20 10:10:56");
INSERT INTO products VALUES("733","3/4 ML Socket (ERA)","635","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 10:12:11","2021-06-20 10:12:11");
INSERT INTO products VALUES("734","3/4*1/2 ML Tee (ERA)","636","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 10:13:18","2021-06-20 10:13:18");
INSERT INTO products VALUES("735","3/4*1/2 ML Elbo (ERA)","637","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 10:14:57","2021-06-20 10:14:57");
INSERT INTO products VALUES("736","3/4*1/2 ML Socket (ERA)","638","standard","C128","9","1","1","1","1","100","0","100","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 10:16:38","2021-08-17 03:59:14");
INSERT INTO products VALUES("737","1 GI Tee","639","standard","C128","15","1","1","1","1","0","0","11","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 10:25:39","2021-07-22 04:32:14");
INSERT INTO products VALUES("738","1 GI Elbo","640","standard","C128","15","1","1","1","1","0","0","13","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 10:26:58","2021-07-22 04:32:14");
INSERT INTO products VALUES("739","1 GI H Nipple","641","standard","C128","15","1","1","1","1","0","0","33","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 10:33:02","2021-07-22 04:32:14");
INSERT INTO products VALUES("740","1 GI Union","642","standard","C128","15","1","1","1","1","0","0","11","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 10:33:58","2021-07-22 04:32:14");
INSERT INTO products VALUES("741","1 GI Socket","643","standard","C128","15","1","1","1","1","25","50","65","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 10:34:38","2021-07-18 12:40:56");
INSERT INTO products VALUES("742","1 GI Plug","644","standard","C128","15","1","1","1","1","0","0","15","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 10:35:37","2021-07-18 07:53:25");
INSERT INTO products VALUES("743","1 GI Offset","645","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 10:44:15","2021-06-20 10:44:15");
INSERT INTO products VALUES("744","1 GI Band","646","standard","C128","15","1","1","1","1","0","0","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 10:45:10","2021-07-18 07:53:26");
INSERT INTO products VALUES("745","3/4 GI Tee","647","standard","C128","15","1","1","1","1","0","0","20","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 10:46:15","2021-07-18 07:53:26");
INSERT INTO products VALUES("746","3/4 GI Elbo","648","standard","C128","15","1","1","1","1","0","0","20","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 10:47:00","2021-07-18 07:53:26");
INSERT INTO products VALUES("747","3/4 GI H Nipple","649","standard","C128","15","1","1","1","1","0","0","50","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 10:47:54","2021-07-18 07:53:26");
INSERT INTO products VALUES("748","3/4 GI Union","650","standard","C128","15","1","1","1","1","0","0","20","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 10:48:42","2021-07-18 07:53:26");
INSERT INTO products VALUES("749","3/4 GI Socket","651","standard","C128","15","1","1","1","1","0","0","50","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 10:49:29","2021-07-18 07:53:26");
INSERT INTO products VALUES("750","3/4 GI Plug","652","standard","C128","15","1","1","1","1","0","0","52","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 10:50:16","2021-07-18 12:40:56");
INSERT INTO products VALUES("751","3/4 GI Offset","653","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 10:51:01","2021-06-20 10:51:01");
INSERT INTO products VALUES("752","3/4 GI Band","654","standard","C128","15","1","1","1","1","0","0","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 10:51:47","2021-07-18 07:53:26");
INSERT INTO products VALUES("753","1/2 GI Tee","655","standard","C128","15","1","1","1","1","0","0","20","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 10:52:56","2021-07-18 09:18:30");
INSERT INTO products VALUES("754","1/2 GI H Nipple","656","standard","C128","15","1","1","1","1","0","0","20","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 10:53:51","2021-07-18 09:18:30");
INSERT INTO products VALUES("755","1/2 GI Elbo","657","standard","C128","15","1","1","1","1","0","0","20","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 10:54:41","2021-07-18 09:18:30");
INSERT INTO products VALUES("756","1/2 GI Union","658","standard","C128","15","1","1","1","1","0","0","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 10:55:40","2021-07-18 09:18:30");
INSERT INTO products VALUES("757","1/2 GI Socket","659","standard","C128","15","1","1","1","1","0","0","20","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 10:56:38","2021-07-18 09:18:30");
INSERT INTO products VALUES("758","1/2 GI Plug","660","standard","C128","15","1","1","1","1","0","0","30","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 10:57:17","2021-07-18 09:18:31");
INSERT INTO products VALUES("759","1/2 GI Offset","661","standard","C128","15","1","1","1","1","00","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 10:58:22","2021-06-20 10:58:22");
INSERT INTO products VALUES("760","1/2 GI Band","662","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 10:59:13","2021-06-20 10:59:13");
INSERT INTO products VALUES("761","1.5 GI Tee","663","standard","C128","15","1","1","1","1","0","0","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 11:00:34","2021-07-28 17:20:15");
INSERT INTO products VALUES("762","1.5 GI Elbo","664","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 11:01:14","2021-07-28 17:19:53");
INSERT INTO products VALUES("763","1.5 GI H Nipple","665","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 11:02:01","2021-07-28 17:19:32");
INSERT INTO products VALUES("764","1.5 GI Union","666","standard","C128","15","1","1","1","1","0","0","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 11:02:50","2021-07-28 17:19:10");
INSERT INTO products VALUES("765","1.5 GI Socket","667","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 11:03:36","2021-07-28 17:18:50");
INSERT INTO products VALUES("766","1.5 GI Plug","668","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 11:04:19","2021-07-28 17:18:29");
INSERT INTO products VALUES("767","1.5 GI Offset","669","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 11:05:47","2021-07-28 17:18:08");
INSERT INTO products VALUES("768","1.5 GI Band","670","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 11:06:42","2021-07-28 17:17:49");
INSERT INTO products VALUES("769","2 GI Tee","671","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 11:08:32","2021-06-20 11:08:32");
INSERT INTO products VALUES("770","2 GI Elbo","672","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 11:09:21","2021-06-20 11:09:21");
INSERT INTO products VALUES("771","2 GI H Nipple","673","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 11:10:16","2021-06-20 11:10:16");
INSERT INTO products VALUES("772","2 GI Union","674","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 11:11:02","2021-06-20 11:11:02");
INSERT INTO products VALUES("773","2 GI Socket","675","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 11:11:49","2021-06-20 11:11:49");
INSERT INTO products VALUES("774","2 GI Plug","676","standard","C128","15","1","1","1","1","0","0","1","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 11:12:35","2021-07-22 04:32:13");
INSERT INTO products VALUES("775","2 GI Offset","677","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 11:13:15","2021-06-20 11:13:15");
INSERT INTO products VALUES("776","2 GI Band","678","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 11:13:57","2021-06-20 11:13:57");
INSERT INTO products VALUES("777","3 GI Socket","679","standard","C128","15","1","1","1","1","0","0","1","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 11:24:30","2021-07-18 10:34:33");
INSERT INTO products VALUES("778","4 GI Socket","680","standard","C128","15","1","1","1","1","0","0","2","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 11:25:27","2021-07-18 10:34:33");
INSERT INTO products VALUES("779","3/4*1/2 GI Tee","681","standard","C128","15","1","1","1","1","0","0","20","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 11:40:26","2021-07-18 10:29:25");
INSERT INTO products VALUES("780","3/4*1/2 GI Elbo","682","standard","C128","15","1","1","1","1","0","0","20","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 11:41:22","2021-07-18 10:29:25");
INSERT INTO products VALUES("781","3/4*1/2 GI Socket","683","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 11:42:48","2021-06-20 11:42:48");
INSERT INTO products VALUES("782","3/4*1/2 GI Bush","684","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 11:43:48","2021-06-20 11:43:48");
INSERT INTO products VALUES("783","1*3/4 GI Tee","685","standard","C128","15","1","1","1","1","0","0","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 11:45:15","2021-07-18 11:42:07");
INSERT INTO products VALUES("784","1*3/4 GI Elbo","686","standard","C128","15","1","1","1","1","0","0","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 11:46:34","2021-07-18 11:42:07");
INSERT INTO products VALUES("785","1*3/4 GI Socket","687","standard","C128","15","1","1","1","1","0","0","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 11:47:29","2021-07-18 11:42:07");
INSERT INTO products VALUES("786","1*3/4 GI Bush","688","standard","C128","15","1","1","1","1","0","0","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 11:48:18","2021-07-18 07:53:27");
INSERT INTO products VALUES("787","1*1/2 GI Tee","689","standard","C128","15","1","1","1","1","0","0","1","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 11:53:45","2021-07-22 04:32:14");
INSERT INTO products VALUES("788","1*1/2 GI Elbo","690","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 11:54:52","2021-06-20 11:54:52");
INSERT INTO products VALUES("789","1*1/2 GI Socket","691","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 11:55:51","2021-06-20 11:55:51");
INSERT INTO products VALUES("790","1*1/2 GI Bush","692","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 11:56:45","2021-06-20 11:56:45");
INSERT INTO products VALUES("791","1.5*1/2 GI Tee","693","standard","C128","15","1","1","1","1","0","0","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 11:58:06","2021-07-28 17:17:15");
INSERT INTO products VALUES("792","1.5*1/2 GI Elbo","694","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 11:58:51","2021-07-28 17:16:54");
INSERT INTO products VALUES("793","1.5*1/2 GI Bush","695","standard","C128","35","1","1","1","1","35","70","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 11:59:57","2021-08-12 15:00:36");
INSERT INTO products VALUES("794","1.5*1/2 GI Socket","696","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 12:01:29","2021-07-28 17:16:13");
INSERT INTO products VALUES("795","1.5*3/4 GI Tee","697","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 12:02:29","2021-07-28 17:15:53");
INSERT INTO products VALUES("796","1.5*3/4 GI Elbo","698","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 12:03:22","2021-07-28 17:15:33");
INSERT INTO products VALUES("797","1.5*3/4 GI Bush","699","standard","C128","35","1","1","1","1","35","65","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 12:04:11","2021-08-12 14:59:59");
INSERT INTO products VALUES("798","1.5*3/4 GI Socket","700","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 12:05:08","2021-07-28 17:14:52");
INSERT INTO products VALUES("799","1.5*1 GI Tee","701","standard","C128","15","1","1","1","1","82","120","5","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 12:05:56","2021-08-12 14:59:19");
INSERT INTO products VALUES("800","1.5*1 GI Elbo","702","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 12:06:47","2021-07-28 17:14:11");
INSERT INTO products VALUES("801","1.5*1 GI Bush","703","standard","C128","15","1","1","1","1","35","70","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 12:07:40","2021-08-12 14:58:52");
INSERT INTO products VALUES("802","1.5*1 GI Socket","704","standard","C128","15","1","1","1","1","0","0","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 12:09:06","2021-07-28 17:13:30");
INSERT INTO products VALUES("803","2*1.5 GI Tee","705","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 12:10:18","2021-07-28 17:12:58");
INSERT INTO products VALUES("804","2*1.5 GI Elbo","706","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 12:11:13","2021-07-28 17:12:20");
INSERT INTO products VALUES("805","2*1.5 GI Bush","707","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 12:12:08","2021-07-28 17:11:59");
INSERT INTO products VALUES("806","2*1.5 GI Socket","708","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 12:13:03","2021-07-28 17:11:32");
INSERT INTO products VALUES("807","2*1 GI Tee","709","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 12:14:03","2021-06-20 12:14:03");
INSERT INTO products VALUES("808","2*1 GI Elbo","710","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 12:15:35","2021-06-20 12:15:35");
INSERT INTO products VALUES("809","2*1 GI Bush","711","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 12:16:13","2021-06-20 12:16:13");
INSERT INTO products VALUES("810","2*1 GI Socket","712","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 12:16:57","2021-06-20 12:16:57");
INSERT INTO products VALUES("811","2*3/4 GI Tee","713","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 12:17:54","2021-06-20 12:17:54");
INSERT INTO products VALUES("812","2*3/4 GI Elbo","714","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 12:18:51","2021-06-20 12:18:51");
INSERT INTO products VALUES("813","2*3/4 GI Bush","715","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 12:19:28","2021-06-20 12:19:28");
INSERT INTO products VALUES("814","2*3/4 GI Socket","716","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 12:20:30","2021-06-20 12:20:30");
INSERT INTO products VALUES("815","2*1/2 GI Tee","717","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 12:23:06","2021-06-20 12:23:06");
INSERT INTO products VALUES("816","2*1/2 GI Elbo","718","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 12:32:55","2021-06-20 12:32:55");
INSERT INTO products VALUES("817","2*1/2 GI Bush","719","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 12:33:46","2021-06-20 12:33:46");
INSERT INTO products VALUES("818","2*1/2 GI Socket","720","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 12:34:50","2021-06-20 12:34:50");
INSERT INTO products VALUES("819","1.25*1 GI Bush","721","standard","C128","15","1","1","1","1","25","60","7","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 13:35:09","2021-08-12 14:58:22");
INSERT INTO products VALUES("820","1.5 PVC RFL Tank Fitting","722","standard","C128","1","1","1","1","1","90","130","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 13:42:50","2021-08-02 03:00:35");
INSERT INTO products VALUES("821","1 PVC RFL Tank Fitting","723","standard","C128","1","1","1","1","1","50","80","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 13:47:10","2021-08-12 14:57:54");
INSERT INTO products VALUES("822","3/4 PVC RFL Tank Fitting","724","standard","C128","1","1","1","1","1","38","70","24","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 13:48:31","2021-08-12 14:57:35");
INSERT INTO products VALUES("823","1.5 PVC ERA Tank Fitting","725","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 13:49:54","2021-07-28 17:10:03");
INSERT INTO products VALUES("824","1 PVC ERA Tank Fitting","726","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 13:50:41","2021-06-20 13:50:41");
INSERT INTO products VALUES("825","3/4 PVC ERA Tank Fitting","727","standard","C128","9","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 13:51:38","2021-06-20 13:51:38");
INSERT INTO products VALUES("826","1.5 Handle Gate Valve (Sunwa)","728","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 13:54:33","2021-07-28 17:09:32");
INSERT INTO products VALUES("827","1 Handle Gate Valve (Sunwa)","729","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 13:55:31","2021-06-20 13:55:31");
INSERT INTO products VALUES("828","3/4 Handle Gate Valve (Sunwa)","730","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 13:56:18","2021-06-20 13:56:18");
INSERT INTO products VALUES("829","1/2 Handle Gate Valve (Sunwa)","731","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 13:57:00","2021-06-20 13:57:00");
INSERT INTO products VALUES("830","1 Line Check Valve","732","standard","C128","15","1","1","1","1","290","350","3","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 13:58:32","2021-07-18 04:04:05");
INSERT INTO products VALUES("831","3/4 Line Check Valve","733","standard","C128","15","1","1","1","1","190","250","3","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 13:59:16","2021-07-18 04:04:04");
INSERT INTO products VALUES("832","1 Check Valve PVC Net","734","standard","C128","15","1","1","1","1","190","250","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 14:05:56","2021-07-18 04:04:05");
INSERT INTO products VALUES("833","3/4 Check Valve PVC Net","735","standard","C128","15","1","1","1","1","140","180","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 14:06:48","2021-07-18 04:04:05");
INSERT INTO products VALUES("834","1/2 Check Valve PVC Net","736","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 14:08:57","2021-06-20 14:08:57");
INSERT INTO products VALUES("835","1.5 Check Valve PVC Net","737","standard","C128","15","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 14:10:01","2021-07-28 17:08:42");
INSERT INTO products VALUES("836","Compresser Filter","738","standard","C128","15","1","1","1","1","35","55","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 14:12:18","2021-07-18 04:10:21");
INSERT INTO products VALUES("837","Compresser Filter Box","739","standard","C128","15","1","1","1","1","67","120","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 14:13:05","2021-07-18 04:10:21");
INSERT INTO products VALUES("838","English Comet Off Band","740","standard","C128","15","1","1","1","1","90","170","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 14:14:22","2021-08-12 14:56:39");
INSERT INTO products VALUES("839","Flash Tank Fitting-Big (WDI)","741","standard","C128","15","1","1","1","1","640","750","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 14:17:03","2021-08-12 14:56:06");
INSERT INTO products VALUES("840","Flash Tank Fitting-Sml (WDI)","742","standard","C128","15","1","1","1","1","250","350","3","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 14:18:30","2021-08-12 14:55:41");
INSERT INTO products VALUES("841","4 Nany Truaf","743","standard","C128","15","1","1","1","1","300","400","3","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 14:21:27","2021-07-18 04:27:54");
INSERT INTO products VALUES("842","Gas Tape (Big)","744","standard","C128","15","5","1","1","1","175","220","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 14:23:39","2021-07-18 10:08:06");
INSERT INTO products VALUES("843","Gas Tape (Sml)","745","standard","C128","15","5","1","1","1","43","80","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 14:24:57","2021-07-18 10:34:33");
INSERT INTO products VALUES("844","Compresser Oil","746","standard","C128","15","1","1","1","1","100","130","5","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 14:25:49","2021-07-28 03:12:51");
INSERT INTO products VALUES("845","Compresser Mobil","747","standard","C128","15","1","1","1","1","115","140","5","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 14:26:52","2021-07-28 03:13:28");
INSERT INTO products VALUES("846","1/2 Gas Key","748","standard","C128","15","5","1","1","1","140","170","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 14:32:26","2021-07-28 03:10:18");
INSERT INTO products VALUES("847","3/4 Gas Key","749","standard","C128","15","5","1","1","1","320","450","3","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 14:33:25","2021-07-18 10:08:05");
INSERT INTO products VALUES("848","1 Gas Key","750","standard","C128","15","5","1","1","1","780","850","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 14:34:16","2021-07-18 10:08:05");
INSERT INTO products VALUES("849","1/2 Gas Pipe (T J Gold)","751","standard","C128","","5","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 14:36:50","2021-06-20 14:36:50");
INSERT INTO products VALUES("850","3/4 Gas Pipe (T J Gold)","752","standard","C128","","5","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 14:38:08","2021-06-20 14:38:08");
INSERT INTO products VALUES("851","1 Gas Pipe (T J Gold)","753","standard","C128","","5","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 14:39:40","2021-06-20 14:39:40");
INSERT INTO products VALUES("852","1/2 Gas Pipe (Asia Gold)","754","standard","C128","","5","2","2","2","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-06-20 14:40:51","2021-06-20 14:40:51");
INSERT INTO products VALUES("853","3/4 Gas Pipe (Asia Gold)","755","standard","C128","","5","2","2","2","57.5","62","200","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 14:42:05","2021-07-18 10:08:06");
INSERT INTO products VALUES("854","1 Gas Pipe (Asia Gold)","756","standard","C128","","5","2","2","2","57.5","62","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 14:42:58","2021-06-21 12:34:41");
INSERT INTO products VALUES("855","Panda Gum-20g","757","standard","C128","","1","1","1","1","10","20","24","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 14:46:06","2021-07-18 04:27:54");
INSERT INTO products VALUES("856","Keny Bond Gum(1)-100g","758","standard","C128","","1","1","1","1","350","470","22","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 14:47:20","2021-08-02 02:16:23");
INSERT INTO products VALUES("857","Keny Bond Gum(2)-100g","759","standard","C128","","1","1","1","1","30","100","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 14:48:06","2021-07-18 04:27:54");
INSERT INTO products VALUES("858","M-Seal PVC Gum-100ml","760","standard","C128","","1","1","1","1","76","100","18","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 14:50:12","2021-08-02 02:46:57");
INSERT INTO products VALUES("859","M-Seal PVC Gum-200ml","761","standard","C128","","1","1","1","1","116","180","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 14:50:50","2021-08-02 02:35:21");
INSERT INTO products VALUES("860","M-Seal PVC Gum-500ml","762","standard","C128","","1","1","1","1","247","350","26","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-20 14:51:33","2021-08-02 02:46:57");
INSERT INTO products VALUES("861","ERA PVC Gum-100ml","763","standard","C128","9","1","1","1","1","110","140","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-21 02:38:07","2021-08-12 14:55:03");
INSERT INTO products VALUES("862","ERA PVC Gum-237ml","764","standard","C128","9","1","1","1","1","190","220","48","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-21 02:39:04","2021-08-17 03:17:16");
INSERT INTO products VALUES("863","ERA PVC Gum-473ml","765","standard","C128","9","1","1","1","1","360","520","24","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-21 02:39:56","2021-08-17 03:17:16");
INSERT INTO products VALUES("864","HOPSON PVC Gum-100ml","766","standard","C128","15","1","1","1","1","110","140","60","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-21 02:41:10","2021-08-17 03:17:16");
INSERT INTO products VALUES("865","HOPSON PVC Gum-200ml","767","standard","C128","15","1","1","1","1","130","180","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-21 02:41:57","2021-08-12 14:54:11");
INSERT INTO products VALUES("866","HOPSON PVC Gum-500ml","768","standard","C128","15","1","1","1","1","260","290","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-21 02:43:52","2021-08-12 14:53:46");
INSERT INTO products VALUES("867","S S 8 inc Head Shower","769","standard","C128","15","1","1","1","1","320","420","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-21 02:47:27","2021-08-12 14:53:22");
INSERT INTO products VALUES("868","S S 6 inc Head Shower","770","standard","C128","15","1","1","1","1","185","240","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-21 02:48:38","2021-08-12 14:52:44");
INSERT INTO products VALUES("869","SS Corner Rack (DP)","771","standard","C128","1","1","1","1","1","430","550","3","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-21 02:50:32","2021-07-18 04:04:05");
INSERT INTO products VALUES("870","SS Corner Rack (SP)","772","standard","C128","1","1","1","1","1","200","300","4","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-21 02:51:44","2021-07-18 04:36:06");
INSERT INTO products VALUES("871","S S 6 inc Push Net","773","standard","C128","15","1","1","1","1","235","320","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-21 02:58:15","2021-08-12 14:52:21");
INSERT INTO products VALUES("872","S S 5 inc Box Net","774","standard","C128","15","1","1","1","1","160","230","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-21 02:59:39","2021-08-12 14:52:04");
INSERT INTO products VALUES("873","Liquid Box Mini Color(HK Jinda)","775","standard","C128","15","1","1","1","1","180","250","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-21 03:03:35","2021-07-27 11:32:31");
INSERT INTO products VALUES("874","Liquid Box Big Color Touch","776","standard","C128","15","1","1","1","1","290","380","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-21 03:04:56","2021-07-27 11:31:52");
INSERT INTO products VALUES("875","Tissue Holder(Aristonitaly)","777","standard","C128","15","1","1","1","1","175","250","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-21 03:08:07","2021-07-18 04:27:54");
INSERT INTO products VALUES("876","Tissue Holder(RFL Box)","778","standard","C128","1","1","1","1","1","230","290","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-21 03:09:37","2021-08-12 14:51:18");
INSERT INTO products VALUES("877","Tissue Holder(RFL P/L)","779","standard","C128","1","1","1","1","1","165","190","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-21 03:10:19","2021-08-12 14:50:40");
INSERT INTO products VALUES("878","10mm Glass Self (Color)","780","standard","C128","15","1","1","1","1","330","500","4","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-21 03:11:51","2021-07-18 04:21:04");
INSERT INTO products VALUES("879","10mm Glass Self (White)","781","standard","C128","15","1","1","1","1","250","400","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-21 03:13:11","2021-07-18 04:21:03");
INSERT INTO products VALUES("880","18 inc S S Self(H)","782","standard","C128","15","1","1","1","1","190","350","16","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-21 03:14:30","2021-07-18 12:40:59");
INSERT INTO products VALUES("881","18 inc S S Self(M)","783","standard","C128","15","1","1","1","1","145","250","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-21 03:15:34","2021-07-17 13:35:01");
INSERT INTO products VALUES("882","2 in 1 Bib Cock (Zihad)","784","standard","C128","15","1","1","1","1","500","750","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-21 03:20:38","2021-07-18 04:21:03");
INSERT INTO products VALUES("883","1/2 Bib Cock-M (IS)","785","standard","C128","18","1","1","1","1","560","650","4","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-21 03:23:01","2021-07-18 04:21:02");
INSERT INTO products VALUES("884","1/2 Bib Cock-M (IM)","786","standard","C128","33","1","1","1","1","370","450","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-21 03:24:28","2021-07-18 04:21:03");
INSERT INTO products VALUES("885","1/2 Moving Pillar Cock-M (I/M)","787","standard","C128","33","1","1","1","1","545","650","4","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-21 03:26:08","2021-07-18 04:21:03");
INSERT INTO products VALUES("886","1/2 Moving Sink Cock-M (IM)","789","standard","C128","33","1","1","1","1","545","650","3","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-21 03:27:23","2021-07-18 04:21:03");
INSERT INTO products VALUES("887","1/2 Moving Sink Cock-H (IS)","790","standard","C128","18","1","1","1","1","780","1000","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-21 03:28:50","2021-07-18 04:21:02");
INSERT INTO products VALUES("888","1/2 Moving Pillar Cock-H (IS)","791","standard","C128","18","1","1","1","1","780","1000","5","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-21 03:31:14","2021-07-18 04:21:02");
INSERT INTO products VALUES("889","1/2 S S Angle Stop Cock-Mini","792","standard","C128","15","1","1","1","1","110","170","30","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-21 03:34:23","2021-07-26 10:58:17");
INSERT INTO products VALUES("890","3/4 Conceal Stop Cock (M)","793","standard","C128","18","1","1","1","1","680","850","8","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-21 03:36:40","2021-07-18 04:21:02");
INSERT INTO products VALUES("891","3/4 Conceal Stop Cock (H)","794","standard","C128","18","1","1","1","1","780","980","4","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-21 03:37:58","2021-07-18 04:21:02");
INSERT INTO products VALUES("892","1/2 Sink Bib Cock-Long (M)","795","standard","C128","18","1","1","1","1","435","650","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-06-21 03:39:50","2021-08-12 14:50:11");
INSERT INTO products VALUES("893","1 Sajib DX Pipe","2199","standard","C128","43","2","1","1","1","63","70","52","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-02 13:17:32","2021-08-10 02:24:05");
INSERT INTO products VALUES("894","SPI 1/2 White Band","2200","standard","C128","31","2","8","8","8","45","60","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-02 13:29:20","2021-08-10 02:24:07");
INSERT INTO products VALUES("895","SPI 1/2 White Tee","2201","standard","C128","31","2","8","8","8","20","40","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-02 13:30:26","2021-08-10 02:24:07");
INSERT INTO products VALUES("896","SPI 1/2 White Elbo","2202","standard","C128","31","2","8","8","8","20","35","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-02 13:31:16","2021-08-10 02:24:07");
INSERT INTO products VALUES("897","MEP 3/4 Chanel","2203","standard","C128","29","2","1","1","1","26","32","25","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-02 13:39:37","2021-08-10 02:24:09");
INSERT INTO products VALUES("898","MEP 1 Chanel","2204","standard","C128","29","2","1","1","1","34","40","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-02 13:41:36","2021-08-10 02:24:09");
INSERT INTO products VALUES("899","MEP 1.5 Chanel","2205","standard","C128","29","2","1","1","1","70","75","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-02 13:42:25","2021-08-10 02:24:09");
INSERT INTO products VALUES("900","Chanel Box","2206","standard","C128","42","2","1","1","1","4","10","72","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-02 13:44:29","2021-08-10 02:24:09");
INSERT INTO products VALUES("901","Water Sealer-Dram(M/S)","4001","standard","C128","27","4","6","6","6","2480","2500","9","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-03 14:12:21","2021-07-06 14:08:01");
INSERT INTO products VALUES("902","Putty-Dram(M/S)","4002","standard","C128","27","4","6","6","6","1180","1230","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-03 14:15:15","2021-07-06 14:06:13");
INSERT INTO products VALUES("903","Weather Sealer-Dram(M/S)","4003","standard","C128","27","4","6","6","6","2900","3050","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-03 14:16:51","2021-07-06 13:39:32");
INSERT INTO products VALUES("904","Enamel-Galan(M/S)","4004","standard","C128","27","4","3","3","3","1000","1020","7","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-03 14:20:00","2021-07-06 13:39:32");
INSERT INTO products VALUES("905","Distemper-Dram(M/S)","4005","standard","C128","27","4","6","6","6","1450","1500","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-03 14:22:07","2021-07-29 11:42:59");
INSERT INTO products VALUES("906","Plastic-Dram(M/S)","4006","standard","C128","27","4","6","6","6","3600","00","4","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-03 14:25:12","2021-07-26 14:34:15");
INSERT INTO products VALUES("907","Weather Paint-Dram(M/S)","4007","standard","C128","27","4","6","6","6","4600","0","1","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-03 14:26:39","2021-07-06 14:06:14");
INSERT INTO products VALUES("908","Thiner-2 ltr(M/S)","4008","standard","C128","27","4","12","12","12","280","0","3","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-03 14:30:31","2021-08-02 14:02:35");
INSERT INTO products VALUES("909","Water Sealer-Galan(M/S)","4009","standard","C128","27","4","3","3","3","0","0","2","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-03 14:56:08","2021-07-06 14:02:29");
INSERT INTO products VALUES("910","Weather Sealer-Galan(M/S)","4010","standard","C128","27","4","3","3","3","0","0","1","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-03 14:56:52","2021-07-26 14:34:15");
INSERT INTO products VALUES("911","Putty-Galan(M/S)","4011","standard","C128","27","4","3","3","3","0","0","2","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-03 14:57:46","2021-07-06 14:02:29");
INSERT INTO products VALUES("912","Distemper-Galan(M/S)","4012","standard","C128","27","4","3","3","3","0","0","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-03 14:58:37","2021-07-26 14:34:15");
INSERT INTO products VALUES("913","Plastic-Galan(M/S)","4013","standard","C128","27","4","3","3","3","0","0","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-03 14:59:21","2021-07-22 03:29:12");
INSERT INTO products VALUES("914","Weather Paint-Galan(M/S)","4014","standard","C128","27","4","3","3","3","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-03 15:00:35","2021-07-03 15:00:35");
INSERT INTO products VALUES("915","13 A Multi Plug","2207","standard","C128","43","2","1","1","1","38","50","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-05 12:10:23","2021-08-09 03:38:46");
INSERT INTO products VALUES("916","1 way Box (D)","2208","standard","C128","","2","8","8","8","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-05 14:21:43","2021-08-10 02:30:01");
INSERT INTO products VALUES("917","2 way Box (D)","2209","standard","C128","","2","8","8","8","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-05 14:22:21","2021-08-10 02:30:26");
INSERT INTO products VALUES("918","3 way Box (D)","2210","standard","C128","","2","8","8","8","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-05 14:22:59","2021-08-10 02:30:51");
INSERT INTO products VALUES("919","4 way Box (D)","2211","standard","C128","","2","8","8","8","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-05 14:23:36","2021-08-10 02:31:12");
INSERT INTO products VALUES("920","7/44 Estern Cable","2212","standard","C128","43","2","7","7","7","42.50","80","300","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-05 14:26:23","2021-08-10 02:24:08");
INSERT INTO products VALUES("921","6 Exust Fan Round PVC (GFC)","2213","standard","C128","10","2","1","1","1","600","630","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-05 14:28:29","2021-08-10 02:24:08");
INSERT INTO products VALUES("922","8 Exust Fan Steel(GFC)","2214","standard","C128","10","2","1","1","1","980","1080","4","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-05 14:29:21","2021-08-10 02:24:08");
INSERT INTO products VALUES("923","1 Maskin Tape","3004","standard","C128","","3","1","1","1","20","0","5","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-06 13:51:00","2021-07-07 07:46:58");
INSERT INTO products VALUES("924","1.5 Nail","3001","standard","C128","","3","4","4","4","85","95","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-06 13:53:02","2021-07-28 17:52:38");
INSERT INTO products VALUES("925","2 Nail","3002","standard","C128","","3","4","4","4","85","95","20","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-06 13:54:01","2021-07-06 13:58:28");
INSERT INTO products VALUES("926","21/2 Nail","3003","standard","C128","","3","4","4","4","85","95","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-06 13:54:36","2021-07-06 13:58:28");
INSERT INTO products VALUES("927","Multi Plug (Nokia)","2215","standard","C128","43","2","1","1","1","9","20","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-07 15:26:55","2021-08-09 07:04:41");
INSERT INTO products VALUES("928","Philips Tester","2216","standard","C128","43","2","1","1","1","14","25","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-07 15:28:14","2021-08-09 07:05:08");
INSERT INTO products VALUES("929","Orlee 12 w LED","2217","standard","C128","13","2","1","1","1","166","185","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-07 16:05:38","2021-07-08 13:51:33");
INSERT INTO products VALUES("930","Orlee King 20","2218","standard","C128","13","2","1","1","1","305","330","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-07 16:08:38","2021-07-08 13:51:33");
INSERT INTO products VALUES("931","PNO Switch(S/Star)","2231","standard","C128","4","2","1","1","1","23","27","120","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 10:38:41","2021-08-08 13:33:08");
INSERT INTO products VALUES("932","2 Pin Socket(S/Star)","2232","standard","C128","4","2","1","1","1","26","30","84","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 10:41:01","2021-08-08 13:33:37");
INSERT INTO products VALUES("933","Fusa(S/Star)","2233","standard","C128","4","2","1","1","1","33","40","24","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 10:42:48","2021-08-08 13:34:04");
INSERT INTO products VALUES("934","PNO Indicator(S/Star)","2234","standard","C128","4","2","1","1","1","27","30","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 10:44:35","2021-08-08 13:34:36");
INSERT INTO products VALUES("935","PNO Regulator(S/Star)","2235","standard","C128","4","2","1","1","1","125","125","24","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 10:46:14","2021-08-08 13:35:18");
INSERT INTO products VALUES("936","Pendent Holder-22(S/Star)","2236","standard","C128","4","2","1","1","1","29","35","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 10:54:15","2021-08-08 13:35:48");
INSERT INTO products VALUES("937","Pendent Holder-27(S/Star)","2237","standard","C128","4","2","1","1","1","35","40","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 10:55:57","2021-08-08 13:36:37");
INSERT INTO products VALUES("938","2 Pin Plug(S/Star)","2238","standard","C128","4","2","1","1","1","35","40","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 10:58:01","2021-08-08 13:37:02");
INSERT INTO products VALUES("939","Bed Switch(S/Star)","2239","standard","C128","4","2","1","1","1","29","32","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 10:59:14","2021-08-08 13:37:45");
INSERT INTO products VALUES("940","3 Pin Plug-13A(S/Star)","2240","standard","C128","4","2","1","1","1","75","80","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 11:01:03","2021-08-08 13:38:08");
INSERT INTO products VALUES("941","3 Pin Plug-6A(S/Star)","2241","standard","C128","4","2","1","1","1","50","55","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 11:01:59","2021-08-08 13:38:33");
INSERT INTO products VALUES("942","3 Pin Plug-16A(S/Star)","2242","standard","C128","4","2","1","1","1","75","80","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 11:03:06","2021-08-08 13:38:53");
INSERT INTO products VALUES("943","PVC Tape(S/Star)","2243","standard","C128","4","2","1","1","1","15","20","144","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 11:05:07","2021-08-08 13:39:30");
INSERT INTO products VALUES("944","32A Main Switch(S/Star)","2244","standard","C128","4","2","1","1","1","320","480","5","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 11:07:39","2021-08-08 13:39:55");
INSERT INTO products VALUES("945","1 Gang Switch(S/Star)","2245","standard","C128","4","2","1","1","1","115","130","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 11:09:25","2021-08-08 13:40:40");
INSERT INTO products VALUES("946","2 Gang Switch(S/Star)","2246","standard","C128","4","2","1","1","1","217","270","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 11:10:10","2021-08-08 13:41:09");
INSERT INTO products VALUES("947","3 Gang Switch(S/Star)","2247","standard","C128","4","2","1","1","1","267","310","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 11:10:59","2021-08-08 13:41:39");
INSERT INTO products VALUES("948","4 Gang Switch(S/Star)","2248","standard","C128","4","2","1","1","1","325","370","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 11:11:42","2021-08-08 13:42:04");
INSERT INTO products VALUES("949","DP Switch(S/Star)","2249","standard","C128","4","2","1","1","1","463","530","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 11:54:41","2021-08-08 13:42:28");
INSERT INTO products VALUES("950","Bell Push(S/Star)","2250","standard","C128","4","2","1","1","1","260","290","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 11:55:55","2021-08-08 13:43:01");
INSERT INTO products VALUES("951","Fan Dimer(S/Star)","2251","standard","C128","4","2","1","1","1","507","580","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 11:58:41","2021-08-08 13:43:26");
INSERT INTO products VALUES("952","15 Amp Socket(S/Star)","2252","standard","C128","4","2","1","1","1","315","380","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 12:00:01","2021-08-08 13:43:51");
INSERT INTO products VALUES("953","13A(5 Pin) Socket(S/Star)","2253","standard","C128","4","2","1","1","1","341","390","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 12:02:12","2021-08-08 13:44:48");
INSERT INTO products VALUES("954","6 Pin Socket(S/Star)","2254","standard","C128","4","2","1","1","1","372","410","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 12:03:50","2021-08-08 13:45:21");
INSERT INTO products VALUES("955","TV Socket(S/Star)","2255","standard","C128","4","2","1","1","1","298","330","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 12:04:34","2021-08-08 13:45:49");
INSERT INTO products VALUES("956","Big Holder-Hex-22(S/Star)","2256","standard","C128","4","2","1","1","1","75","95","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 12:12:43","2021-08-08 13:49:12");
INSERT INTO products VALUES("957","Big Holder-Hex-27(S/Star)","2257","standard","C128","4","2","1","1","1","83","100","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 12:13:49","2021-08-08 13:49:54");
INSERT INTO products VALUES("958","Big Celing Rose(S/Star)","2258","standard","C128","4","2","1","1","1","80","85","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 12:16:38","2021-08-08 13:50:32");
INSERT INTO products VALUES("959","18w Panel Round(S/Star)","2219","standard","C128","4","2","1","1","1","641","680","3","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 12:27:12","2021-08-08 13:21:47");
INSERT INTO products VALUES("960","12w Panel Round(S/Star)","2220","standard","C128","4","2","1","1","1","480","560","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 12:28:15","2021-08-08 13:22:12");
INSERT INTO products VALUES("961","6w Panel Round(S/Star)","2221","standard","C128","4","2","1","1","1","334","380","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 12:29:22","2021-08-08 13:22:36");
INSERT INTO products VALUES("962","NG 20w Bulb","2151","standard","C128","43","2","1","1","1","37","50","50","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 12:41:07","2021-08-11 04:32:04");
INSERT INTO products VALUES("963","1 Gang Switch(S/Star Gold)","2271","standard","C128","28","2","1","1","1","95","120","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 13:58:12","2021-08-08 13:57:29");
INSERT INTO products VALUES("964","2 Gang Switch(S/Star Gold)","2272","standard","C128","28","2","1","1","1","163","190","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 13:59:50","2021-08-08 13:57:58");
INSERT INTO products VALUES("965","3 Gang Switch(S/Star Gold)","2273","standard","C128","28","2","1","1","1","204","240","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 14:01:27","2021-08-08 13:58:20");
INSERT INTO products VALUES("966","4 Gang Switch(S/Star Gold)","2274","standard","C128","28","2","1","1","1","244","290","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 14:03:12","2021-08-08 13:58:50");
INSERT INTO products VALUES("967","Bell Push(S/Star Gold)","2275","standard","C128","28","2","1","1","1","212","250","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 14:05:05","2021-08-08 13:59:16");
INSERT INTO products VALUES("968","3 Pin Round Socket(S/Star Gold)","2276","standard","C128","28","2","1","1","1","285","370","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 14:07:25","2021-08-08 13:59:43");
INSERT INTO products VALUES("969","DP Switch(S/Star Gold)","2277","standard","C128","28","2","1","1","1","244","420","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 14:08:39","2021-08-08 14:00:15");
INSERT INTO products VALUES("970","Fan Dimer(S/Star Gold)","2278","standard","C128","28","2","1","1","1","406","520","18","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 14:10:43","2021-08-08 14:00:38");
INSERT INTO products VALUES("971","3 Pin Multi Socket(S/Star Gold)","2279","standard","C128","28","2","1","1","1","244","350","30","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-09 14:13:25","2021-08-08 14:00:58");
INSERT INTO products VALUES("972","1 Gang Switch(WT)","2281","standard","C128","14","2","1","1","1","60","80","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 05:59:34","2021-08-08 14:02:07");
INSERT INTO products VALUES("973","2 Gang Switch(WT)","2282","standard","C128","14","2","1","1","1","98","120","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 06:00:50","2021-08-08 14:02:25");
INSERT INTO products VALUES("974","3 Gang Switch(WT)","2283","standard","C128","14","2","1","1","1","139","160","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 06:01:50","2021-08-08 14:02:50");
INSERT INTO products VALUES("975","4 Gang Switch(WT)","2284","standard","C128","14","2","1","1","1","184","220","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 06:02:48","2021-08-08 14:03:09");
INSERT INTO products VALUES("976","3 Pin Socket(WT)","2285","standard","C128","14","2","1","1","1","143","210","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 06:04:01","2021-08-08 14:03:33");
INSERT INTO products VALUES("977","5 Pin Socket(WT)","2286","standard","C128","14","2","1","1","1","225","280","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 06:05:20","2021-08-08 14:03:54");
INSERT INTO products VALUES("978","Fan Dimer(WT)","2287","standard","C128","14","2","1","1","1","263","320","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 06:06:27","2021-08-08 14:04:13");
INSERT INTO products VALUES("979","15A Socket(WT)","2288","standard","C128","14","2","1","1","1","188","230","5","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 06:08:05","2021-08-08 14:04:30");
INSERT INTO products VALUES("980","DP Switch(WT)","2289","standard","C128","14","2","1","1","1","345","395","5","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 06:09:01","2021-08-08 14:04:55");
INSERT INTO products VALUES("981","TV Socket(WT)","2290","standard","C128","14","2","1","1","1","75","90","5","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 06:09:52","2021-08-08 14:05:14");
INSERT INTO products VALUES("982","Bell Push(WT)","2291","standard","C128","14","2","1","1","1","75","95","5","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 06:11:05","2021-08-08 14:05:38");
INSERT INTO products VALUES("983","PNO Switch(WT)","2292","standard","C128","14","2","1","1","1","21","25","120","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 06:15:44","2021-08-08 14:06:23");
INSERT INTO products VALUES("984","PNO Socket(WT)","2293","standard","C128","14","2","1","1","1","23","27","72","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 06:16:49","2021-08-08 14:06:51");
INSERT INTO products VALUES("985","PNO Indicator(WT)","2294","standard","C128","14","2","1","1","1","21","25","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 06:23:53","2021-08-08 14:07:11");
INSERT INTO products VALUES("986","Fuse(WT)","2295","standard","C128","14","2","1","1","1","26","35","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 06:25:19","2021-08-08 14:07:54");
INSERT INTO products VALUES("987","PNO Regulator(WT)","2296","standard","C128","14","2","1","1","1","108","125","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 06:26:42","2021-08-08 14:08:26");
INSERT INTO products VALUES("988","Tester(WT)","2297","standard","C128","14","2","1","1","1","28","35","40","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 06:46:19","2021-08-08 14:08:55");
INSERT INTO products VALUES("989","Multi plug 3 M (WT)","2298","standard","C128","14","2","1","1","1","340","380","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 06:50:11","2021-08-13 12:08:47");
INSERT INTO products VALUES("990","Multi plug 5 M (WT)","2299","standard","C128","14","2","1","1","1","472","550","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 06:52:41","2021-08-13 12:10:03");
INSERT INTO products VALUES("991","Multi plug 3 Pin(WT)","2300","standard","C128","14","2","1","1","1","414","460","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 06:54:23","2021-08-13 12:10:26");
INSERT INTO products VALUES("992","Wall Plug 6 mm","2280","standard","C128","30","2","10","10","10","23","45","50","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 12:30:39","2021-08-08 14:01:37");
INSERT INTO products VALUES("993","MEP 1 Gang Switch","2301","standard","C128","29","2","1","1","1","65","80","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 14:05:16","2021-08-08 14:10:47");
INSERT INTO products VALUES("994","MEP 2 Gang Switch","2302","standard","C128","29","2","1","1","1","127","150","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 14:07:03","2021-08-08 14:11:13");
INSERT INTO products VALUES("995","MEP 3 Gang Switch","2303","standard","C128","29","2","1","1","1","172.50","195","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 14:09:00","2021-08-08 14:11:44");
INSERT INTO products VALUES("996","MEP 4 Gang Switch","2304","standard","C128","29","2","1","1","1","200","230","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 14:11:00","2021-08-08 14:12:12");
INSERT INTO products VALUES("997","MEP Bell Push","2305","standard","C128","29","2","1","1","1","172.50","220","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 14:13:26","2021-08-08 14:12:33");
INSERT INTO products VALUES("998","MEP TV Socket","2306","standard","C128","29","2","1","1","1","180","220","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 14:15:53","2021-08-08 14:13:06");
INSERT INTO products VALUES("999","MEP Fan Dimer","2307","standard","C128","29","2","1","1","1","407","520","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 14:18:04","2021-08-08 14:13:33");
INSERT INTO products VALUES("1000","MEP 5 Hole Socket","2308","standard","C128","29","2","1","1","1","252.50","320","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 14:20:26","2021-08-08 14:14:06");
INSERT INTO products VALUES("1001","MEP 3 Hole Socket","2309","standard","C128","29","2","1","1","1","243","290","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 14:22:18","2021-08-08 14:14:26");
INSERT INTO products VALUES("1002","MEP 3 Hole(16A) Socket","2310","standard","C128","29","2","1","1","1","253","310","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 14:24:24","2021-08-08 14:14:46");
INSERT INTO products VALUES("1003","MEP DP Switch","2311","standard","C128","29","2","1","1","1","282","380","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 14:26:36","2021-08-08 14:15:11");
INSERT INTO products VALUES("1004","MEP DP Cona Switch","2312","standard","C128","29","2","1","1","1","167","210","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 14:30:56","2021-08-08 14:15:55");
INSERT INTO products VALUES("1005","MEP Main Switch","2313","standard","C128","29","2","1","1","1","297","350","3","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 14:32:23","2021-08-08 14:16:39");
INSERT INTO products VALUES("1006","MEP 1/2 Chanel","2314","standard","C128","29","2","1","1","1","20","25","50","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 14:34:02","2021-08-08 14:17:31");
INSERT INTO products VALUES("1007","Wener 1 Gang Switch","2321","standard","C128","19","2","1","1","1","59","90","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 14:58:16","2021-08-08 14:21:09");
INSERT INTO products VALUES("1008","Wener 2 Gang Switch","2322","standard","C128","19","2","1","1","1","112","160","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 14:59:57","2021-08-08 14:21:29");
INSERT INTO products VALUES("1009","Wener 3 Gang Switch","2323","standard","C128","19","2","1","1","1","143","195","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 15:02:01","2021-08-08 14:21:53");
INSERT INTO products VALUES("1010","Wener 4 Gang Switch","2324","standard","C128","19","2","1","1","1","202","230","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 15:04:24","2021-08-08 14:22:20");
INSERT INTO products VALUES("1011","Wener 5 Gang Switch","2325","standard","C128","19","2","1","1","1","242","290","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 15:06:28","2021-08-08 14:22:40");
INSERT INTO products VALUES("1012","Wener Multi Socket","2326","standard","C128","19","2","1","1","1","186","260","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 15:11:09","2021-08-08 14:23:03");
INSERT INTO products VALUES("1013","Wener 5 Pin Socket","2327","standard","C128","19","2","1","1","1","232.5","320","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 15:13:05","2021-08-10 02:50:10");
INSERT INTO products VALUES("1014","Wener DP Switch","2328","standard","C128","19","2","1","1","1","310","420","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 15:15:01","2021-08-10 02:50:29");
INSERT INTO products VALUES("1015","Wener Fan Dimer(switch)","2329","standard","C128","19","2","1","1","1","291.50","480","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 15:17:36","2021-08-10 02:50:51");
INSERT INTO products VALUES("1016","Wener Fan Dimer","2330","standard","C128","19","2","1","1","1","248","450","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 15:19:46","2021-08-10 02:51:22");
INSERT INTO products VALUES("1017","Wener TV Socket","2331","standard","C128","19","2","1","1","1","174","220","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 15:22:13","2021-08-10 02:52:37");
INSERT INTO products VALUES("1018","Wener Bell Push","2332","standard","C128","19","2","1","1","1","136.50","220","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 15:24:12","2021-08-10 02:53:02");
INSERT INTO products VALUES("1019","Wener 15A Socket","2333","standard","C128","19","2","1","1","1","310","380","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 15:27:36","2021-08-10 02:53:53");
INSERT INTO products VALUES("1020","Wener Gold 1 Gang Switch","2341","standard","C128","20","2","1","1","1","115","170","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 15:34:30","2021-08-10 02:54:32");
INSERT INTO products VALUES("1021","Wener Gold 2 Gang Switch","2342","standard","C128","20","2","1","1","1","177","220","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 15:36:37","2021-08-09 07:09:09");
INSERT INTO products VALUES("1022","Wener Gold 3 Gang Switch","2343","standard","C128","20","2","1","1","1","239","290","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 15:38:19","2021-08-10 02:54:59");
INSERT INTO products VALUES("1023","Wener Gold 4 Gang Switch","2344","standard","C128","20","2","1","1","1","301","345","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 15:40:48","2021-08-10 02:55:25");
INSERT INTO products VALUES("1024","Wener Gold Multi Socket","2345","standard","C128","20","2","1","1","1","279","360","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 15:42:48","2021-08-10 02:55:47");
INSERT INTO products VALUES("1025","Wener Gold 5 Pin Socket","2346","standard","C128","20","2","1","1","1","341","390","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 15:44:45","2021-08-10 02:56:11");
INSERT INTO products VALUES("1026","Wener Gold 15A Socket","2347","standard","C128","20","2","1","1","1","372","410","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 15:46:36","2021-08-10 02:56:34");
INSERT INTO products VALUES("1027","Wener Gold DP Switch","2348","standard","C128","20","2","1","1","1","403","510","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 15:48:51","2021-08-10 02:56:54");
INSERT INTO products VALUES("1028","Wener Gold Bell Push","2349","standard","C128","20","2","1","1","1","236","290","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 15:51:04","2021-08-10 02:57:23");
INSERT INTO products VALUES("1029","Wener Gold TV Socket","2350","standard","C128","20","2","1","1","1","248","330","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 15:52:51","2021-08-10 02:57:48");
INSERT INTO products VALUES("1030","Wener Gold Fan Dimer(switch)","2351","standard","C128","20","2","1","1","1","403","550","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-10 15:59:56","2021-08-10 02:58:07");
INSERT INTO products VALUES("1031","replace","2315","standard","C128","29","2","1","1","1","0","0","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 10:28:35","2021-08-08 14:19:51");
INSERT INTO products VALUES("1032","replac","2316","standard","C128","29","2","1","1","1","0","0","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 10:29:48","2021-08-08 14:20:49");
INSERT INTO products VALUES("1033","Wener 6 ways DB (Deluxe)","2352","standard","C128","19","2","1","1","1","1054","1350","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 10:35:23","2021-08-10 02:58:31");
INSERT INTO products VALUES("1034","Wener 9 ways DB (Deluxe)","2353","standard","C128","19","2","1","1","1","1302","1650","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 10:36:26","2021-08-10 02:58:53");
INSERT INTO products VALUES("1035","Wener 12 ways DB (Deluxe)","2354","standard","C128","19","2","1","1","1","1612","1850","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 10:37:43","2021-08-10 02:59:21");
INSERT INTO products VALUES("1036","Wener 16 ways DB (Deluxe)","2355","standard","C128","19","2","1","1","1","2046","2350","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 10:38:42","2021-08-10 02:59:43");
INSERT INTO products VALUES("1037","Wener 19 ways DB (Deluxe)","2356","standard","C128","19","2","1","1","1","2666","2850","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 10:39:47","2021-08-10 03:00:14");
INSERT INTO products VALUES("1038","Wener 24 ways DB (Deluxe)","2357","standard","C128","19","2","1","1","1","3534","3850","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 10:40:53","2021-08-10 03:00:45");
INSERT INTO products VALUES("1039","Wener 4*6 SDB","2358","standard","C128","19","2","1","1","1","496","580","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 10:42:35","2021-08-10 03:01:25");
INSERT INTO products VALUES("1040","Wener 7*9 SDB","2359","standard","C128","19","2","1","1","1","589","650","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 10:43:53","2021-08-10 03:02:12");
INSERT INTO products VALUES("1041","Wener 10*13 SDB","2360","standard","C128","19","2","1","1","1","713","880","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 10:45:14","2021-08-10 03:03:00");
INSERT INTO products VALUES("1042","Wener 14*16 SDB","2361","standard","C128","19","2","1","1","1","806","950","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 10:46:19","2021-08-10 03:03:28");
INSERT INTO products VALUES("1043","Wener 14*18 SDB","2362","standard","C128","19","2","1","1","1","930","1250","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 10:47:24","2021-08-10 03:03:52");
INSERT INTO products VALUES("1044","Wener 16*20 SDB","2363","standard","C128","19","2","1","1","1","1147","1350","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 10:49:11","2021-08-08 14:26:14");
INSERT INTO products VALUES("1045","Capacitor-2.5","2222","standard","C128","43","2","1","1","1","32","50","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 11:08:46","2021-08-09 07:06:01");
INSERT INTO products VALUES("1046","Capacitor-3.5","2223","standard","C128","43","2","1","1","1","32","50","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 11:09:26","2021-08-09 07:06:27");
INSERT INTO products VALUES("1047","6A Single Breaker(S/Star)","2259","standard","C128","4","2","1","1","1","108","150","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 13:20:24","2021-08-08 13:50:56");
INSERT INTO products VALUES("1048","10A Single Breaker(S/Star)","2260","standard","C128","4","2","1","1","1","108","150","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 13:21:11","2021-08-08 13:51:14");
INSERT INTO products VALUES("1049","16A Single Breaker(S/Star)","2261","standard","C128","4","2","1","1","1","108","150","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 13:22:36","2021-08-08 13:51:48");
INSERT INTO products VALUES("1050","20A Single Breaker(S/Star)","2262","standard","C128","4","2","1","1","1","108","150","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 13:23:28","2021-08-08 13:52:11");
INSERT INTO products VALUES("1051","32A Single Breaker(S/Star)","2263","standard","C128","4","2","1","1","1","118","150","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 13:24:25","2021-08-08 13:52:36");
INSERT INTO products VALUES("1052","32A D Breaker(S/Star)","2264","standard","C128","4","2","1","1","1","233","350","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 13:26:28","2021-08-08 13:53:06");
INSERT INTO products VALUES("1053","40A D Breaker(S/Star)","2265","standard","C128","4","2","1","1","1","233","350","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 13:27:21","2021-08-08 13:53:24");
INSERT INTO products VALUES("1054","63A D Breaker(S/Star)","2266","standard","C128","4","2","1","1","1","233","350","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 13:28:10","2021-08-08 13:54:37");
INSERT INTO products VALUES("1055","Multi Plug-3 Hole (S/star)","2267","standard","C128","4","2","1","1","1","354","390","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 13:32:12","2021-08-13 12:02:24");
INSERT INTO products VALUES("1056","Multi Plug-4 Hole (S/star)","2268","standard","C128","4","2","1","1","1","390","450","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 13:33:02","2021-08-13 12:02:49");
INSERT INTO products VALUES("1057","Multi Plug-5 Hole (S/star)","2269","standard","C128","4","2","1","1","1","420","480","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 13:34:12","2021-08-13 12:03:25");
INSERT INTO products VALUES("1058","Multi Adapter-TA-02(S/star)","2270","standard","C128","4","2","1","1","1","100","120","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 13:37:49","2021-08-08 13:57:04");
INSERT INTO products VALUES("1059","Tester-42(S/Star)","2224","standard","C128","4","2","1","1","1","30","35","24","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 13:44:56","2021-08-08 13:23:07");
INSERT INTO products VALUES("1060","Tester-43(S/Star)","2225","standard","C128","4","2","1","1","1","35","40","24","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 13:45:59","2021-08-08 13:23:24");
INSERT INTO products VALUES("1061","SPI Single 3/4 1 way","2371","standard","C128","31","2","8","8","8","63","75","15","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 15:36:47","2021-08-08 14:26:38");
INSERT INTO products VALUES("1062","SPI Single 3/4- 2 way","2372","standard","C128","31","2","8","8","8","66","80","15","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 15:38:04","2021-08-08 14:26:54");
INSERT INTO products VALUES("1063","SPI Single 3/4- 3 way","2373","standard","C128","31","2","8","8","8","69","85","15","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 15:39:02","2021-08-08 14:27:17");
INSERT INTO products VALUES("1064","SPI Single 3/4- 4 way","2374","standard","C128","31","2","8","8","8","72","90","15","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 15:39:55","2021-08-08 14:29:24");
INSERT INTO products VALUES("1065","SPI Double(N) 3/4- 1 way","2375","standard","C128","31","2","8","8","8","80","90","5","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 15:41:35","2021-08-08 14:29:47");
INSERT INTO products VALUES("1066","SPI Double(N) 3/4- 2 way","2376","standard","C128","31","2","8","8","8","83","95","5","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 15:42:28","2021-08-08 14:30:11");
INSERT INTO products VALUES("1067","SPI Double(N) 3/4- 3 way","2377","standard","C128","31","2","8","8","8","86","100","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 15:43:18","2021-08-08 14:30:29");
INSERT INTO products VALUES("1068","SPI Double(N) 3/4- 4 way","2378","standard","C128","31","2","8","8","8","89","110","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 15:44:10","2021-08-08 14:30:48");
INSERT INTO products VALUES("1069","SPI Single 1- 1 way","2379","standard","C128","31","2","8","8","8","82","100","3","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 15:45:38","2021-08-08 14:31:07");
INSERT INTO products VALUES("1070","SPI Single 1- 2 way","2380","standard","C128","31","2","8","8","8","85","105","3","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 15:46:38","2021-08-08 14:31:37");
INSERT INTO products VALUES("1071","SPI Single 1- 3 way","2381","standard","C128","31","2","8","8","8","88","110","3","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 15:47:31","2021-08-08 14:31:56");
INSERT INTO products VALUES("1072","SPI Single 1- 4 way","2382","standard","C128","31","2","8","8","8","91","120","3","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 15:49:08","2021-08-08 14:32:12");
INSERT INTO products VALUES("1073","SPI Double 1- 1 way","2383","standard","C128","31","2","8","8","8","108","120","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 15:51:32","2021-08-10 02:24:09");
INSERT INTO products VALUES("1074","SPI Double 1- 2 way","2384","standard","C128","31","2","8","8","8","113","135","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 15:52:22","2021-08-10 02:24:09");
INSERT INTO products VALUES("1075","SPI Double 1- 3 way","2385","standard","C128","31","2","8","8","8","118","140","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 15:53:10","2021-08-10 02:24:10");
INSERT INTO products VALUES("1076","SPI Double 1- 4 way","2386","standard","C128","31","2","8","8","8","123","145","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 15:53:52","2021-08-10 02:24:10");
INSERT INTO products VALUES("1077","SPI 1/2- 1 way","2387","standard","C128","31","2","8","8","8","56","60","5","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 15:56:19","2021-08-08 14:34:35");
INSERT INTO products VALUES("1078","SPI 1/2- 2 way","2388","standard","C128","31","2","8","8","8","58","65","5","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 15:57:09","2021-08-08 14:34:54");
INSERT INTO products VALUES("1079","SPI 1/2- 3 way","2389","standard","C128","31","2","8","8","8","60","70","5","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 15:57:57","2021-08-08 14:35:10");
INSERT INTO products VALUES("1080","SPI 1/2- 4 way","2390","standard","C128","31","2","8","8","8","62","80","5","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 15:58:47","2021-08-08 14:35:27");
INSERT INTO products VALUES("1081","Bizli 1.0 re Green","2401","standard","C128","22","2","7","7","7","14.83","16","100","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 16:34:15","2021-08-05 02:32:34");
INSERT INTO products VALUES("1082","Bizli 1.3 rm Red","2402","standard","C128","22","2","7","7","7","19.41","21","1400","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 16:35:40","2021-08-05 02:35:54");
INSERT INTO products VALUES("1083","Bizli 1.3 rm Black","2403","standard","C128","22","2","7","7","7","19.41","21","600","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 16:38:44","2021-08-05 02:32:34");
INSERT INTO products VALUES("1084","Bizli 1.3 rm Yellow","2404","standard","C128","22","2","7","7","7","19.41","21","200","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 16:40:35","2021-08-05 02:28:41");
INSERT INTO products VALUES("1085","Bizli 1.5 re Green","2405","standard","C128","22","2","7","7","7","21.50","23","200","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 16:57:36","2021-08-05 02:28:41");
INSERT INTO products VALUES("1086","Bizli 2.0 rm Red","2406","standard","C128","22","2","7","7","7","29.45","32","500","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 17:16:28","2021-08-05 02:35:54");
INSERT INTO products VALUES("1087","Bizli 2.0 rm Black","2407","standard","C128","22","2","7","7","7","29.45","32","500","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 17:17:44","2021-08-05 02:35:54");
INSERT INTO products VALUES("1088","Bizli 2.0 rm Yellow","2408","standard","C128","22","2","7","7","7","29.45","32","100","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 17:19:01","2021-08-05 02:28:42");
INSERT INTO products VALUES("1089","Bizli 3.0 rm Red","2409","standard","C128","22","2","7","7","7","42.78","46","338","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 17:20:58","2021-08-05 02:39:24");
INSERT INTO products VALUES("1090","Bizli 3.0 rm Black","2410","standard","C128","22","2","7","7","7","42.78","46","200","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-12 17:22:08","2021-08-05 02:35:54");
INSERT INTO products VALUES("1091","BBS 1.0 re Green","2421","standard","C128","21","2","7","7","7","15.41","17","200","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-13 03:34:09","2021-08-12 03:18:48");
INSERT INTO products VALUES("1092","BBS 1.3 rm Red","2422","standard","C128","21","2","7","7","7","20.13","22","300","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-13 03:38:23","2021-08-12 03:20:16");
INSERT INTO products VALUES("1093","BBS 1.3 rm Black","2423","standard","C128","21","2","7","7","7","20.13","22","300","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-13 03:39:47","2021-08-12 03:19:50");
INSERT INTO products VALUES("1094","BBS 1.3 rm Yellow","2424","standard","C128","21","2","7","7","7","20.13","22","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-13 03:40:50","2021-08-12 03:20:46");
INSERT INTO products VALUES("1095","BBS 1.5 re Green","2425","standard","C128","21","2","7","7","7","22.32","24","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-13 03:42:10","2021-08-12 03:21:26");
INSERT INTO products VALUES("1096","BBS 2.0 rm Red","2426","standard","C128","21","2","7","7","7","30.55","32","200","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-13 03:43:29","2021-08-12 03:23:05");
INSERT INTO products VALUES("1097","BBS 2.0 rm Black","2427","standard","C128","21","2","7","7","7","30.55","32","200","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-13 03:44:20","2021-08-12 03:22:44");
INSERT INTO products VALUES("1098","BBS 2.0 rm Yellow","2428","standard","C128","21","2","7","7","7","30.55","32","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-13 03:45:45","2021-08-12 03:23:21");
INSERT INTO products VALUES("1099","BBS 3.0 rm Red","2429","standard","C128","21","2","7","7","7","44.37","46","100","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-13 03:47:46","2021-08-12 03:25:24");
INSERT INTO products VALUES("1100","BBS 3.0 rm Black","2430","standard","C128","21","2","7","7","7","44.37","46","100","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-13 03:48:36","2021-08-12 03:25:03");
INSERT INTO products VALUES("1101","BBS 7.0 rm Black","2431","standard","C128","21","2","7","7","7","98.40","105","100","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-13 04:13:24","2021-08-12 03:26:36");
INSERT INTO products VALUES("1102","BBS 7.0 rm Red","2432","standard","C128","21","2","7","7","7","98.40","105","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-13 04:15:18","2021-08-12 03:26:57");
INSERT INTO products VALUES("1103","Meghna 1.0 re Green","2441","standard","C128","32","2","7","7","7","12.83","15","100","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-13 09:05:08","2021-08-05 02:50:58");
INSERT INTO products VALUES("1104","Meghna 1.3 rm Red","2442","standard","C128","32","2","7","7","7","16.77","20","500","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-13 09:06:32","2021-08-05 02:50:58");
INSERT INTO products VALUES("1105","Meghna 1.3 rm Black","2443","standard","C128","32","2","7","7","7","16.77","20","400","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-13 09:07:31","2021-08-05 02:50:58");
INSERT INTO products VALUES("1106","Meghna 1.3 rm Yellow","2444","standard","C128","32","2","7","7","7","16.77","20","100","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-13 09:08:27","2021-08-05 02:50:58");
INSERT INTO products VALUES("1107","Meghna 1.5 re Green","2445","standard","C128","32","2","7","7","7","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-13 09:09:34","2021-08-01 14:31:33");
INSERT INTO products VALUES("1108","Meghna 2.0 rm Red","2446","standard","C128","32","2","7","7","7","25.48","29","200","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-13 09:10:50","2021-08-08 14:38:44");
INSERT INTO products VALUES("1109","Meghna 2.0 rm Black","2447","standard","C128","32","2","7","7","7","25.48","29","200","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-13 09:12:17","2021-08-05 02:50:58");
INSERT INTO products VALUES("1110","Meghna 2.0 rm Yellow","2448","standard","C128","32","2","7","7","7","25.48","29","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-13 09:13:28","2021-08-01 14:34:09");
INSERT INTO products VALUES("1111","Meghna 3.0 rm Black","2450","standard","C128","32","2","7","7","7","37.02","42","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-13 09:17:02","2021-08-01 14:35:49");
INSERT INTO products VALUES("1112","Meghna 3.0 rm Red","2449","standard","C128","32","2","7","7","7","37.02","42","100","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-13 09:18:15","2021-08-05 02:50:59");
INSERT INTO products VALUES("1113","Meghna 4.0 rm Black","2452","standard","C128","32","2","7","7","7","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-13 09:21:21","2021-08-01 14:36:32");
INSERT INTO products VALUES("1114","Meghna 4.0 rm Red","2451","standard","C128","32","2","7","7","7","55","0","30","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-13 09:22:43","2021-07-13 10:17:41");
INSERT INTO products VALUES("1115","Meghna 7.0 rm Black","2454","standard","C128","32","2","7","7","7","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-13 09:23:53","2021-08-01 14:36:59");
INSERT INTO products VALUES("1116","Meghna 7.0 rm Red","2453","standard","C128","32","2","7","7","7","95","0","75","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-13 09:24:56","2021-07-13 10:28:50");
INSERT INTO products VALUES("1117","Fan 56 inc Meghna","2471","standard","C128","32","2","1","1","1","1650","2100","5","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-13 09:35:54","2021-08-05 02:50:59");
INSERT INTO products VALUES("1118","Meghna 1.5 rm Red","2455","standard","C128","32","2","7","7","7","20.84","24","100","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-13 09:50:35","2021-08-05 02:53:30");
INSERT INTO products VALUES("1119","Meghna 1.5 rm Black","2456","standard","C128","32","2","7","7","7","20.84","24","100","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-13 09:51:37","2021-08-05 02:53:30");
INSERT INTO products VALUES("1120","Meghna 4 core Cable","2461","standard","C128","32","2","7","7","7","80","120","42","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-13 10:22:22","2021-07-13 10:28:50");
INSERT INTO products VALUES("1121","Rance 8 inc","3005","standard","C128","","3","1","1","1","198","0","1","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-13 14:06:39","2021-07-14 16:43:37");
INSERT INTO products VALUES("1122","Plus 8 inc (HMBR)","3006","standard","C128","","3","1","1","1","130","0","2","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-13 14:07:41","2021-07-26 11:38:32");
INSERT INTO products VALUES("1123","Scraper 6 inc","3007","standard","C128","","3","1","1","1","55","0","5","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-13 14:09:15","2021-08-03 15:05:17");
INSERT INTO products VALUES("1124","S S Hing 4 inc","3008","standard","C128","","3","1","1","1","75","0","20","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-13 14:13:47","2021-07-14 16:43:37");
INSERT INTO products VALUES("1125","S S Hing 5 inc","3009","standard","C128","","3","1","1","1","86","0","20","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-13 14:14:51","2021-07-14 16:43:37");
INSERT INTO products VALUES("1126","S S Magnet","3010","standard","C128","","3","1","1","1","40","0","20","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-13 14:15:55","2021-08-02 14:11:30");
INSERT INTO products VALUES("1127","Door View (Big)","3011","standard","C128","","3","1","1","1","75","0","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-13 14:16:52","2021-07-14 16:43:38");
INSERT INTO products VALUES("1128","Handle 6 inc","3012","standard","C128","","3","1","1","1","75","0","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-13 14:19:08","2021-07-14 16:43:38");
INSERT INTO products VALUES("1129","120 Paper (Black)","3013","standard","C128","","3","1","1","1","7.5","0","50","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-13 14:20:20","2021-07-14 16:43:38");
INSERT INTO products VALUES("1130","120 Paper (White-Chaina)","3014","standard","C128","","3","1","1","1","16","0","150","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-13 14:22:28","2021-08-02 14:11:30");
INSERT INTO products VALUES("1131","3 No Amari","3015","standard","C128","","3","1","1","1","14","0","50","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-13 14:24:08","2021-07-14 16:43:38");
INSERT INTO products VALUES("1132","Scrow Driver 8 inc","3016","standard","C128","","3","1","1","1","92","0","9","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-13 14:26:30","2021-07-14 16:43:38");
INSERT INTO products VALUES("1133","Scraper 8 icn","3017","standard","C128","","3","1","1","1","65","0","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-13 14:28:59","2021-08-03 15:06:36");
INSERT INTO products VALUES("1134","Handle Scraper 4 inc","3018","standard","C128","","3","1","1","1","38","0","5","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-13 14:30:03","2021-08-03 15:04:46");
INSERT INTO products VALUES("1135","Ari Blade","3019","standard","C128","","3","1","1","1","4","0","144","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-13 14:48:23","2021-07-14 16:50:21");
INSERT INTO products VALUES("1136","Ari Frame","3020","standard","C128","","3","1","1","1","115","0","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-13 14:49:21","2021-07-14 16:50:22");
INSERT INTO products VALUES("1137","S S Stair (8 Step)","3021","standard","C128","","3","1","1","1","2600","2900","1","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-13 14:51:01","2021-07-14 16:50:22");
INSERT INTO products VALUES("1138","Tar Brush","3022","standard","C128","","3","1","1","1","25","0","24","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-13 14:52:43","2021-07-14 16:56:17");
INSERT INTO products VALUES("1139","Plastic Tar Brush","3023","standard","C128","","3","1","1","1","29","0","24","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-13 14:53:50","2021-07-14 16:56:17");
INSERT INTO products VALUES("1140","Steel Nail 1 inc","3024","standard","C128","","3","4","4","4","210","0","2","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-13 14:55:02","2021-07-14 16:56:17");
INSERT INTO products VALUES("1141","Steel Nail 1.5 inc","3025","standard","C128","","3","4","4","4","210","0","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-13 14:55:49","2021-07-28 17:53:07");
INSERT INTO products VALUES("1142","Steel Nail 2 inc","3026","standard","C128","","3","4","4","4","210","0","2","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-13 14:56:30","2021-07-14 16:56:17");
INSERT INTO products VALUES("1143","Steel Nail 21/2 inc","3027","standard","C128","","3","4","4","4","210","0","2","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-13 14:57:19","2021-07-14 16:56:17");
INSERT INTO products VALUES("1144","Tiles Cutter 4 in (Bir)","3028","standard","C128","","3","1","1","1","65","0","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-13 14:58:38","2021-07-14 16:56:18");
INSERT INTO products VALUES("1145","Wall Cutter 4 inc (Bir)","3029","standard","C128","","3","1","1","1","76","0","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-13 14:59:41","2021-07-14 16:56:18");
INSERT INTO products VALUES("1146","Drill Beet 4 inc 6.5","3030","standard","C128","","3","1","1","1","16","0","30","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-13 15:00:54","2021-07-15 02:31:31");
INSERT INTO products VALUES("1147","Drill Beet 6 inc 6.5m","3031","standard","C128","","3","1","1","1","30","0","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 02:11:34","2021-07-14 17:07:54");
INSERT INTO products VALUES("1148","Drill Beet 6 inc 8m","3032","standard","C128","","3","1","1","1","35","0","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 02:12:26","2021-07-14 17:07:54");
INSERT INTO products VALUES("1149","Drill Beet 6 inc 10m","3033","standard","C128","","3","1","1","1","40","0","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 02:13:06","2021-07-14 17:07:54");
INSERT INTO products VALUES("1150","Drill Beet 6 inc 12m","3034","standard","C128","","3","1","1","1","50","0","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 02:16:20","2021-07-14 17:07:55");
INSERT INTO products VALUES("1151","Drill Beet 8 inc 8m","3035","standard","C128","","3","1","1","1","55","0","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 02:17:20","2021-07-14 17:07:55");
INSERT INTO products VALUES("1152","Drill Beet 8 inc 10m","3036","standard","C128","","3","1","1","1","57","0","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 02:18:07","2021-07-14 17:07:55");
INSERT INTO products VALUES("1153","Drill Beet 8 inc 12m","3037","standard","C128","","3","1","1","1","65","0","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 02:18:46","2021-07-14 17:07:55");
INSERT INTO products VALUES("1154","Drill Beet 8 inc 14m","3038","standard","C128","","3","1","1","1","78","0","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 02:19:25","2021-07-14 17:07:55");
INSERT INTO products VALUES("1155","Drill Beet 10 inc 10m","3039","standard","C128","","3","1","1","1","85","0","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 02:20:12","2021-07-14 17:07:55");
INSERT INTO products VALUES("1156","Drill Beet 10 inc 12m","3040","standard","C128","","3","1","1","1","95","0","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 02:20:52","2021-07-14 17:07:55");
INSERT INTO products VALUES("1157","Drill Beet 12 inc 10m","3041","standard","C128","","3","1","1","1","100","0","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 02:21:39","2021-07-14 17:07:55");
INSERT INTO products VALUES("1158","Drill Beet 12 inc 12m","3042","standard","C128","","3","1","1","1","110","0","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 02:22:21","2021-07-14 17:07:56");
INSERT INTO products VALUES("1159","Drill Beet 12 inc 14m","3043","standard","C128","","3","1","1","1","115","0","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 02:23:09","2021-07-14 17:07:56");
INSERT INTO products VALUES("1160","3 Kora Chain","3044","standard","C128","","3","1","1","1","6.5","10","20","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 02:27:36","2021-07-14 17:07:56");
INSERT INTO products VALUES("1161","4 Kora Chain","3045","standard","C128","","3","1","1","1","7.5","12","20","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 02:28:46","2021-07-14 17:07:56");
INSERT INTO products VALUES("1162","1 Lock Kora","3046","standard","C128","","3","14","14","14","8.5","15","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 02:40:05","2021-07-14 17:07:56");
INSERT INTO products VALUES("1163","1.5 Lock Kora","3047","standard","C128","","3","14","14","14","12.50","20","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-14 02:41:24","2021-07-28 17:52:13");
INSERT INTO products VALUES("1164","2 Lock Kora","3048","standard","C128","","3","14","14","14","15","25","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 02:42:39","2021-07-14 17:07:56");
INSERT INTO products VALUES("1165","Altala 2.5 inc","3049","standard","C128","","3","1","1","1","8.5","15","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-14 02:44:34","2021-08-03 15:24:20");
INSERT INTO products VALUES("1166","Altala 3 inc","3050","standard","C128","","3","1","1","1","12","20","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-14 02:45:43","2021-08-03 15:24:45");
INSERT INTO products VALUES("1167","Haze Bolt 8 mm","3051","standard","C128","","3","1","1","1","240","0","2","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 02:54:57","2021-07-14 17:07:57");
INSERT INTO products VALUES("1168","9 Foam","3052","standard","C128","","3","1","1","1","75","0","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 02:57:52","2021-07-14 17:13:51");
INSERT INTO products VALUES("1169","9 Stand Foam","3053","standard","C128","","3","1","1","1","142","0","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 02:59:49","2021-07-14 17:13:51");
INSERT INTO products VALUES("1170","4 Stand","3054","standard","C128","","3","1","1","1","30","0","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 03:00:34","2021-07-14 17:13:51");
INSERT INTO products VALUES("1171","4 Foam","3055","standard","C128","","3","1","1","1","10","0","20","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 03:02:17","2021-07-14 17:13:51");
INSERT INTO products VALUES("1172","4 ft Chain","3056","standard","C128","","3","1","1","1","54","0","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 03:03:13","2021-07-14 17:13:51");
INSERT INTO products VALUES("1173","5 ft Chain","3057","standard","C128","","3","1","1","1","67.5","0","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 03:04:14","2021-07-14 17:13:52");
INSERT INTO products VALUES("1174","6 ft Chain","3058","standard","C128","","3","1","1","1","81","0","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 03:05:07","2021-07-14 17:13:52");
INSERT INTO products VALUES("1175","8 ft Chain","3059","standard","C128","","3","1","1","1","108","0","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 03:05:44","2021-07-14 17:13:52");
INSERT INTO products VALUES("1176","10 ft Chain","3060","standard","C128","","3","1","1","1","135","0","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 03:07:01","2021-07-14 17:13:52");
INSERT INTO products VALUES("1177","Pin Nail 3/4","3061","standard","C128","","3","4","4","4","110","0","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 03:11:20","2021-07-14 17:13:52");
INSERT INTO products VALUES("1178","Shoe Nail 3/4","3062","standard","C128","","3","11","11","11","100","0","4","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 03:12:26","2021-07-14 17:13:52");
INSERT INTO products VALUES("1179","24 Tar","3063","standard","C128","","3","4","4","4","125","130","53.611","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-14 03:14:47","2021-08-16 03:17:14");
INSERT INTO products VALUES("1180","20 Tar","3064","standard","C128","","3","4","4","4","100","0","2","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 03:20:18","2021-07-14 17:20:57");
INSERT INTO products VALUES("1181","Chak Powder","3065","standard","C128","","3","4","4","4","17.20","0","50","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-14 03:25:04","2021-08-17 02:43:43");
INSERT INTO products VALUES("1182","Jepson Powder","3066","standard","C128","","3","4","4","4","28","0","25","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-14 03:26:17","2021-08-17 02:44:13");
INSERT INTO products VALUES("1183","White Cement","3067","standard","C128","","3","4","4","4","25","0","80","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-14 03:26:52","2021-08-17 02:44:53");
INSERT INTO products VALUES("1184","Red Powder","3068","standard","C128","","3","4","4","4","112","0","25","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 03:28:28","2021-07-15 04:15:49");
INSERT INTO products VALUES("1185","Black Powder","3069","standard","C128","","3","4","4","4","112","0","25","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 03:29:15","2021-07-15 04:15:49");
INSERT INTO products VALUES("1186","Tiles Putti","3070","standard","C128","","3","4","4","4","35","55","110","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 03:31:37","2021-07-15 04:15:49");
INSERT INTO products VALUES("1187","Padlo Powder","3071","standard","C128","","3","4","4","4","25","0","20","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 03:33:06","2021-07-15 04:15:49");
INSERT INTO products VALUES("1188","1 inc Brush(Feather)","3072","standard","C128","","3","1","1","1","20","0","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 13:24:48","2021-07-15 02:18:58");
INSERT INTO products VALUES("1189","1.5 inc Brush(Feather)","3073","standard","C128","","3","1","1","1","27.5","0","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-14 13:25:54","2021-07-28 17:51:45");
INSERT INTO products VALUES("1190","2 inc Brush(Feather)","3074","standard","C128","","3","1","1","1","36","0","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 13:29:33","2021-07-15 02:18:58");
INSERT INTO products VALUES("1191","3 inc Brush(Feather)","3075","standard","C128","","3","1","1","1","63","0","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 13:30:30","2021-07-15 02:18:58");
INSERT INTO products VALUES("1192","Stone 120 no","3076","standard","C128","","3","1","1","1","155","0","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 13:32:25","2021-07-15 02:18:58");
INSERT INTO products VALUES("1193","Stone 60 no","3077","standard","C128","","3","1","1","1","155","0","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 13:33:19","2021-07-15 02:18:58");
INSERT INTO products VALUES("1194","Stone 80 no","3078","standard","C128","","3","1","1","1","155","0","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 13:33:57","2021-07-15 02:18:59");
INSERT INTO products VALUES("1195","Door Rubber","3079","standard","C128","","3","1","1","1","10","0","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 13:35:12","2021-07-15 02:18:59");
INSERT INTO products VALUES("1196","TJ 7 inc Cutting Blade","3080","standard","C128","","3","1","1","1","55","0","15","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 13:36:10","2021-07-15 02:18:59");
INSERT INTO products VALUES("1197","Samura 4 inc Cutting Blade","3081","standard","C128","","3","1","1","1","11","15","100","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 13:46:41","2021-08-02 14:11:30");
INSERT INTO products VALUES("1198","Measuring Tape 100ft","3082","standard","C128","","3","1","1","1","120","0","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 14:07:53","2021-07-15 02:12:07");
INSERT INTO products VALUES("1199","Measuring Tape 50ft","3083","standard","C128","","3","1","1","1","75","0","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 14:12:56","2021-07-15 02:12:07");
INSERT INTO products VALUES("1200","Measuring Tape 15m","3084","standard","C128","","3","1","1","1","195","0","2","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 14:16:19","2021-07-15 02:12:08");
INSERT INTO products VALUES("1201","Measuring Tape 30m","3085","standard","C128","","3","1","1","1","215","0","2","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 14:17:10","2021-07-15 02:12:07");
INSERT INTO products VALUES("1202","Steel Tape Glass 5m","3086","standard","C128","","3","1","1","1","55","0","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-14 14:18:27","2021-07-15 03:36:35");
INSERT INTO products VALUES("1203","Steel Tape Glass 3m","3087","standard","C128","","3","1","1","1","37.5","0","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-14 14:20:29","2021-07-15 03:35:53");
INSERT INTO products VALUES("1204","Pipe Socket 2.5 inc","3088","standard","C128","","3","1","1","1","11","0","72","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-14 14:32:16","2021-08-03 15:25:47");
INSERT INTO products VALUES("1205","Pipe Socket 4 inc","3089","standard","C128","","3","1","1","1","21","0","48","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-14 14:34:12","2021-08-03 15:26:18");
INSERT INTO products VALUES("1206","Glass Lock","3090","standard","C128","","3","1","1","1","30","0","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 14:36:16","2021-07-15 02:31:31");
INSERT INTO products VALUES("1207","Cobra/Korat 16 inc","3091","standard","C128","","3","1","1","1","160","0","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-14 14:39:27","2021-08-03 15:11:29");
INSERT INTO products VALUES("1208","Chani","3092","standard","C128","","3","1","1","1","58","0","13","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 14:42:16","2021-07-15 02:31:31");
INSERT INTO products VALUES("1209","Khunta Parak","3093","standard","C128","","3","1","1","1","53","0","106","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 14:43:34","2021-07-15 02:31:31");
INSERT INTO products VALUES("1210","Kunni 5 inc","3094","standard","C128","","3","1","1","1","32.5","0","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 14:44:35","2021-07-15 02:31:31");
INSERT INTO products VALUES("1211","Kunni 6 inc","3095","standard","C128","","3","1","1","1","36","0","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 14:45:22","2021-07-15 02:31:32");
INSERT INTO products VALUES("1212","Kunni 7 inc","3096","standard","C128","","3","1","1","1","37.5","0","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 14:46:38","2021-07-15 02:31:32");
INSERT INTO products VALUES("1213","Paper 60 no","3097","standard","C128","","3","2","2","2","50","0","30","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 14:48:41","2021-07-15 02:31:32");
INSERT INTO products VALUES("1214","Paper 80 no","3098","standard","C128","","3","2","2","2","50","0","30","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 14:49:20","2021-07-15 02:31:32");
INSERT INTO products VALUES("1215","Paper 120 no","3099","standard","C128","","3","2","2","2","50","0","30","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 14:49:56","2021-07-15 02:31:32");
INSERT INTO products VALUES("1216","Bostic Gum-500ml(Fast)","3100","standard","C128","","3","1","1","1","250","0","2","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 16:15:29","2021-07-15 02:39:55");
INSERT INTO products VALUES("1217","Colour Wash(yellow Green)","3101","standard","C128","","3","1","1","1","45","0","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 16:18:35","2021-07-15 02:39:56");
INSERT INTO products VALUES("1218","Colour Wash(blue)","3102","standard","C128","","3","1","1","1","45","0","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 16:19:25","2021-07-15 02:39:56");
INSERT INTO products VALUES("1219","Colour Wash(red)","3103","standard","C128","","3","1","1","1","45","0","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 16:20:06","2021-07-15 02:39:56");
INSERT INTO products VALUES("1220","Colour Wash(yellow)","3104","standard","C128","","3","1","1","1","45","0","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 16:21:06","2021-07-15 02:39:56");
INSERT INTO products VALUES("1221","Wood Care-950ml","3105","standard","C128","","3","1","1","1","170","0","2","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 16:22:43","2021-07-15 02:39:56");
INSERT INTO products VALUES("1222","Damp Crush","3106","standard","C128","","3","1","1","1","65","0","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 16:26:38","2021-07-15 02:39:57");
INSERT INTO products VALUES("1223","Bolac Camicel","3107","standard","C128","","3","12","12","12","155","170","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 16:29:32","2021-07-15 02:43:06");
INSERT INTO products VALUES("1224","Shala Jaru","3108","standard","C128","","3","1","1","1","20","25","40","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 16:31:19","2021-07-15 02:45:31");
INSERT INTO products VALUES("1225","Fool Jaru","3109","standard","C128","","3","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-14 16:32:58","2021-07-14 16:32:58");
INSERT INTO products VALUES("1226","Fan- 56 inc EB Celling","2472","standard","C128","43","2","1","1","1","1920","2300","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-15 02:57:45","2021-08-09 07:11:02");
INSERT INTO products VALUES("1227","Fan- 56 inc EB Classic","2473","standard","C128","43","2","1","1","1","1510","1800","5","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-15 02:59:32","2021-08-09 07:11:29");
INSERT INTO products VALUES("1228","Fan- Sony 9 inc","2474","standard","C128","43","2","1","1","1","460","650","7","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-15 03:00:53","2021-08-09 07:11:56");
INSERT INTO products VALUES("1229","Fan- Arix Celling","2475","standard","C128","43","2","1","1","1","790","1000","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-15 03:04:41","2021-08-09 07:12:19");
INSERT INTO products VALUES("1230","Fan- Arix 12 inc Table","2476","standard","C128","43","2","1","1","1","1090","1350","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-15 03:05:52","2021-08-09 07:12:47");
INSERT INTO products VALUES("1231","Fan- Sony 10 in Table","2477","standard","C128","43","2","1","1","1","780","980","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-15 03:11:49","2021-08-09 07:13:12");
INSERT INTO products VALUES("1232","TC-32mm","3110","standard","C128","","3","1","1","1","31","0","5","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-15 03:17:38","2021-07-15 10:27:28");
INSERT INTO products VALUES("1233","TC-38mm","3111","standard","C128","","3","1","1","1","38","0","5","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-15 03:18:27","2021-07-15 10:27:28");
INSERT INTO products VALUES("1234","Golden 32 mm","3112","standard","C128","","3","1","1","1","40","0","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-15 03:20:25","2021-07-15 10:27:28");
INSERT INTO products VALUES("1235","Halima Classic 65mm","3113","standard","C128","","3","1","1","1","185","0","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-15 03:21:28","2021-07-15 10:27:28");
INSERT INTO products VALUES("1236","Keeper Top 69mm","3114","standard","C128","","3","1","1","1","245","0","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-15 03:22:20","2021-07-15 10:27:29");
INSERT INTO products VALUES("1237","Welldone 65mm","3115","standard","C128","","3","1","1","1","120","0","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-15 03:23:22","2021-07-15 10:27:29");
INSERT INTO products VALUES("1238","Kohinoor 65mm","3116","standard","C128","","3","1","1","1","155","0","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-15 03:26:08","2021-07-15 10:27:29");
INSERT INTO products VALUES("1239","Kero 55mm","3117","standard","C128","","3","1","1","1","130","0","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-15 03:27:16","2021-07-15 10:27:29");
INSERT INTO products VALUES("1240","Kiko Gold 50mm","3118","standard","C128","","3","1","1","1","140","0","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-15 03:28:37","2021-07-15 10:27:29");
INSERT INTO products VALUES("1241","Kiko Gold 70mm","3119","standard","C128","","3","1","1","1","162","0","1","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-15 03:29:28","2021-07-15 10:27:29");
INSERT INTO products VALUES("1242","Crownex 65mm","3120","standard","C128","","3","1","1","1","175","0","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-15 03:30:21","2021-07-15 10:27:29");
INSERT INTO products VALUES("1243","Padlock 20mm","3121","standard","C128","","3","1","1","1","20.5","0","24","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-15 03:31:28","2021-07-15 10:27:30");
INSERT INTO products VALUES("1244","Padlock 25mm","3122","standard","C128","","3","1","1","1","22","0","24","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-15 03:32:47","2021-07-15 10:27:30");
INSERT INTO products VALUES("1245","Carton Tape 50m","3123","standard","C128","","3","1","1","1","33","0","24","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-15 03:34:21","2021-07-15 10:27:30");
INSERT INTO products VALUES("1246","S S Clam 1 inc","3124","standard","C128","","3","1","1","1","7","0","24","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-15 04:35:33","2021-07-15 04:37:44");
INSERT INTO products VALUES("1247","Latet Cemical 1 Ltr","3125","standard","C128","","3","1","1","1","310","0","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-15 09:02:33","2021-08-02 02:46:56");
INSERT INTO products VALUES("1248","LW+ Camicel 1 Ltr","3126","standard","C128","","3","1","1","1","210","0","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-15 09:03:50","2021-08-02 02:35:19");
INSERT INTO products VALUES("1249","I K Gum 250 ml","3127","standard","C128","","3","1","1","1","335","0","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-15 09:07:44","2021-08-02 02:35:19");
INSERT INTO products VALUES("1250","SH Fevical 1 kg","3128","standard","C128","","3","1","1","1","247","0","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-15 09:10:45","2021-08-02 02:35:19");
INSERT INTO products VALUES("1251","SH Fevical 1/2 kg","3129","standard","C128","","3","1","1","1","133","0","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-15 09:11:49","2021-08-02 02:35:19");
INSERT INTO products VALUES("1252","SH Fevical 250g","3130","standard","C128","","3","1","1","1","70","0","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-15 09:12:52","2021-08-02 02:35:19");
INSERT INTO products VALUES("1253","LW+ Camicel 5 Ltr","3131","standard","C128","","3","1","1","1","900","0","1","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-15 09:13:31","2021-08-02 02:35:20");
INSERT INTO products VALUES("1254","Sped Favicol 5kg","3132","standard","C128","","3","1","1","1","880","1100","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-15 09:14:26","2021-08-02 02:46:56");
INSERT INTO products VALUES("1255","PVC Gum 200ml","3133","standard","C128","","3","1","1","1","116","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-15 09:15:13","2021-08-02 02:35:18");
INSERT INTO products VALUES("1256","PVC Gum 500ml","3134","standard","C128","","3","1","1","1","247","0","0","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-15 09:15:56","2021-08-02 02:35:18");
INSERT INTO products VALUES("1257","Super Glue 25g","3135","standard","C128","","3","1","1","1","46","55","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-15 09:18:22","2021-08-02 02:35:20");
INSERT INTO products VALUES("1258","Super Glue 3g","3136","standard","C128","","3","1","1","1","15","20","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-15 09:19:25","2021-08-02 02:35:20");
INSERT INTO products VALUES("1259","Bostic Gum-100ml(505)","3137","standard","C128","","3","1","1","1","46","0","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-15 09:22:10","2021-08-02 02:35:20");
INSERT INTO products VALUES("1260","Bostic Gum-200ml(505)","3138","standard","C128","","3","1","1","1","80","0","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-15 09:22:47","2021-08-02 02:35:20");
INSERT INTO products VALUES("1261","M-Seal-50","3139","standard","C128","","3","1","1","1","30","50","20","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-15 09:24:58","2021-08-02 02:35:21");
INSERT INTO products VALUES("1262","Retail Goods","3140","standard","C128","","3","1","1","1","0","0","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-15 09:43:59","2021-07-15 10:10:25");
INSERT INTO products VALUES("1263","R/Bolt 8 mm (ss color)","3141","standard","C128","","3","1","1","1","8.5","0","100","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-15 09:46:17","2021-07-15 10:05:02");
INSERT INTO products VALUES("1264","R/Bolt 10 mm (ss color)","3142","standard","C128","","3","1","1","1","11","0","100","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-15 09:46:58","2021-07-15 10:05:03");
INSERT INTO products VALUES("1265","R/Bolt 12 mm (chaina)","3143","standard","C128","","3","1","1","1","13","0","50","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-15 09:59:39","2021-07-15 10:05:03");
INSERT INTO products VALUES("1266","Emergency Gum","3144","standard","C128","","3","1","1","1","445","0","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-15 10:32:48","2021-07-15 10:38:20");
INSERT INTO products VALUES("1267","Solar Dolphin-C17","796","standard","C128","17","1","1","1","1","3300","3800","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 02:09:51","2021-07-16 02:41:51");
INSERT INTO products VALUES("1268","Solar Medium Styling-C14","797","standard","C128","17","1","1","1","1","3400","3900","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 02:11:56","2021-07-16 02:36:23");
INSERT INTO products VALUES("1269","Solar Big Styling-C20","798","standard","C128","17","1","1","1","1","4000","4500","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-16 02:14:14","2021-07-16 02:41:51");
INSERT INTO products VALUES("1270","Solar Dimond Basin","799","standard","C128","17","1","1","1","1","2900","3400","2","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-16 02:19:26","2021-07-16 02:36:23");
INSERT INTO products VALUES("1271","Solar Sharina","800","standard","C128","17","1","1","1","1","3300","3800","2","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-16 02:20:28","2021-07-16 02:36:24");
INSERT INTO products VALUES("1272","Solar Shapla","801","standard","C128","17","1","1","1","1","2800","3300","2","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-16 02:21:41","2021-07-16 02:36:24");
INSERT INTO products VALUES("1273","Solar English Comod Normal","802","standard","C128","17","1","1","1","1","4000","4500","2","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-16 02:26:03","2021-07-16 02:36:24");
INSERT INTO products VALUES("1274","Solar English Comod Marble","803","standard","C128","17","1","1","1","1","4600","5100","1","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-16 02:27:25","2021-07-16 02:36:24");
INSERT INTO products VALUES("1275","Solar 20/16 Pan","804","standard","C128","17","1","1","1","1","550","650","11","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-16 02:28:42","2021-07-16 02:44:59");
INSERT INTO products VALUES("1276","Solar 20/18 Pan","805","standard","C128","17","1","1","1","1","750","850","1","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-16 02:30:47","2021-07-16 02:36:24");
INSERT INTO products VALUES("1277","S S Pipe 3/4","3145","standard","C128","","3","2","2","2","17","20","100","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-16 03:41:39","2021-07-28 10:50:05");
INSERT INTO products VALUES("1278","Compresser BG","806","standard","C128","","1","1","1","1","14000","14500","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 04:11:05","2021-08-12 14:49:42");
INSERT INTO products VALUES("1279","Cabinet Basin 32 inc","807","standard","C128","26","1","1","1","1","25500","27000","1","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-16 04:23:12","2021-07-16 04:26:21");
INSERT INTO products VALUES("1280","4 B D Elbo(A1)","808","standard","C128","7","1","1","1","1","144.43","160","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 04:38:23","2021-07-17 06:40:57");
INSERT INTO products VALUES("1281","4 S D Elbo(A1)","809","standard","C128","7","1","1","1","1","144.43","160","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 04:39:17","2021-07-17 06:41:27");
INSERT INTO products VALUES("1282","1/2 Bib Cock (Suzan)","810","standard","C128","25","1","1","1","1","760","780","7","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 04:55:12","2021-08-12 14:48:46");
INSERT INTO products VALUES("1283","China Bath Mixer 64-C","811","standard","C128","26","1","1","1","1","3800","4400","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 05:00:50","2021-08-12 14:48:14");
INSERT INTO products VALUES("1284","China Bath Mixer 1072","812","standard","C128","26","1","1","1","1","1600","2700","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 05:01:40","2021-07-27 10:52:47");
INSERT INTO products VALUES("1285","China Basin Mixer 6122","813","standard","C128","26","1","1","1","1","2800","3300","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 05:02:39","2021-08-12 14:47:49");
INSERT INTO products VALUES("1286","1/2 Clam (AL)","851","standard","C128","","1","1","1","1","3.5","6","24","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 13:28:34","2021-07-18 03:35:14");
INSERT INTO products VALUES("1287","3/4 Clam(AL)","852","standard","C128","","1","1","1","1","4.5","8","48","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 13:29:34","2021-07-18 03:35:14");
INSERT INTO products VALUES("1288","1 Clam(AL)","853","standard","C128","","1","1","1","1","5","10","48","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 13:30:37","2021-07-18 03:35:14");
INSERT INTO products VALUES("1289","1.5 Clam(AL)","854","standard","C128","","1","1","1","1","6.25","12","24","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 13:31:53","2021-07-28 17:07:15");
INSERT INTO products VALUES("1290","2 Clam(AL)","855","standard","C128","","1","1","1","1","7","15","24","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 13:32:55","2021-07-18 03:35:14");
INSERT INTO products VALUES("1291","3 Clam(AL)","856","standard","C128","","1","1","1","1","10","20","24","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 13:34:01","2021-07-18 03:35:14");
INSERT INTO products VALUES("1292","4 Clam(AL)","857","standard","C128","","1","1","1","1","11","25","60","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 13:34:56","2021-07-18 03:35:14");
INSERT INTO products VALUES("1293","6 Clam(AL)","858","standard","C128","","1","1","1","1","20","35","60","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 13:36:18","2021-07-18 12:40:58");
INSERT INTO products VALUES("1294","1/2 S S Clam","859","standard","C128","","1","1","1","1","3.5","6","24","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 13:37:28","2021-07-18 03:35:15");
INSERT INTO products VALUES("1295","3/4 S S Clam","860","standard","C128","","1","1","1","1","4","8","168","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 13:39:29","2021-07-18 12:40:57");
INSERT INTO products VALUES("1296","1 S S Clam","861","standard","C128","","1","1","1","1","5","12","48","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 13:40:28","2021-07-18 03:35:15");
INSERT INTO products VALUES("1297","1.5 S S Clam","862","standard","C128","","1","1","1","1","7","12","24","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 13:41:20","2021-07-28 17:06:23");
INSERT INTO products VALUES("1298","2 S S Clam","863","standard","C128","","1","1","1","1","8","15","24","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 13:42:07","2021-07-18 03:35:15");
INSERT INTO products VALUES("1299","4 S S Clam","864","standard","C128","","1","1","1","1","14","25","60","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 13:43:02","2021-07-18 03:35:15");
INSERT INTO products VALUES("1300","5 SS Net(H)","865","standard","C128","","1","1","1","1","32","60","95","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 13:44:04","2021-07-22 05:05:05");
INSERT INTO products VALUES("1301","SS Soap Case-D(H)","866","standard","C128","","1","1","1","1","125","170","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 13:45:29","2021-07-18 03:35:16");
INSERT INTO products VALUES("1302","SS Soap Case-D(M)","867","standard","C128","","1","1","1","1","95","130","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 13:46:57","2021-07-18 03:54:25");
INSERT INTO products VALUES("1303","SS Soap Case-D(L)","868","standard","C128","","1","1","1","1","75","100","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 13:48:47","2021-07-18 03:54:25");
INSERT INTO products VALUES("1304","SS Single Soap Case(L)","869","standard","C128","","1","1","1","1","40","65","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 13:51:52","2021-07-18 03:54:26");
INSERT INTO products VALUES("1305","SS Single Soap Case(M)","870","standard","C128","","1","1","1","1","62","85","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 13:52:39","2021-07-18 03:54:26");
INSERT INTO products VALUES("1306","SS Single Soap Case-R(L)","871","standard","C128","","1","1","1","1","38","70","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 13:53:40","2021-07-18 03:54:26");
INSERT INTO products VALUES("1307","SS Single Soap Case-R(H)","872","standard","C128","","1","1","1","1","70","100","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 13:54:24","2021-07-18 03:54:26");
INSERT INTO products VALUES("1308","1.5 Tank Fitting (RFL)","873","standard","C128","1","1","1","1","1","90","130","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 13:55:49","2021-07-28 17:05:57");
INSERT INTO products VALUES("1309","1 Tank Fitting (RFL)","874","standard","C128","1","1","1","1","1","50","80","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 13:56:37","2021-07-17 11:33:17");
INSERT INTO products VALUES("1310","3/4 Tank Fitting (RFL)","875","standard","C128","1","1","1","1","1","38","70","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 13:58:24","2021-07-17 11:33:43");
INSERT INTO products VALUES("1311","Comod offsite","876","standard","C128","","1","1","1","1","90","150","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 14:05:25","2021-07-18 03:54:27");
INSERT INTO products VALUES("1312","Raya T Shower","877","standard","C128","26","1","1","1","1","210","270","11","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 14:07:09","2021-07-26 10:58:17");
INSERT INTO products VALUES("1313","3/4 Jubilee Clam","878","standard","C128","","1","1","1","1","3.5","10","100","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 14:09:52","2021-07-18 03:54:27");
INSERT INTO products VALUES("1314","1 Jubilee Clam","879","standard","C128","","1","1","1","1","7.5","10","200","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 14:10:55","2021-07-18 03:54:27");
INSERT INTO products VALUES("1315","Join Nozel","882","standard","C128","","1","1","1","1","17","40","25","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 14:20:50","2021-07-18 04:36:06");
INSERT INTO products VALUES("1316","Push Weast","883","standard","C128","","1","1","1","1","165","250","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 14:22:13","2021-07-18 04:04:03");
INSERT INTO products VALUES("1317","SS Box Net","884","standard","C128","","1","1","1","1","165","270","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 14:23:01","2021-07-18 04:04:03");
INSERT INTO products VALUES("1318","SS Push Net","885","standard","C128","","1","1","1","1","235","350","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 14:23:51","2021-07-18 04:04:04");
INSERT INTO products VALUES("1319","1.25 Basin Weast","886","standard","C128","","1","1","1","1","115","220","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 14:25:09","2021-07-28 17:05:21");
INSERT INTO products VALUES("1320","1 SUB Clam","887","standard","C128","","1","1","1","1","75","150","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 14:26:32","2021-07-18 04:04:04");
INSERT INTO products VALUES("1321","1.5 SUB Clam","888","standard","C128","","1","1","1","1","95","200","3","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 14:27:16","2021-07-28 17:04:55");
INSERT INTO products VALUES("1322","3/4 Ball Valve Italy","891","standard","C128","","1","1","1","1","140","180","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 14:32:11","2021-08-12 14:35:53");
INSERT INTO products VALUES("1323","1.5 Ball Valve Handle","892","standard","C128","","1","1","1","1","740","820","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 14:32:59","2021-07-28 17:04:31");
INSERT INTO products VALUES("1324","4 SS Net","893","standard","C128","","1","1","1","1","20","40","11","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 14:52:20","2021-07-22 05:12:20");
INSERT INTO products VALUES("1325","1.5*1 PVC Socket","894","standard","C128","9","1","1","1","1","65","90","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 14:53:52","2021-07-28 17:03:50");
INSERT INTO products VALUES("1326","Teflon Tape","895","standard","C128","","1","1","1","1","14","20","500","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-16 14:55:14","2021-07-18 11:54:43");
INSERT INTO products VALUES("1327","21 Sink Braket","896","standard","C128","","1","1","1","1","95","170","3","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 14:56:19","2021-07-18 04:04:05");
INSERT INTO products VALUES("1328","22 Sink Braket","897","standard","C128","","1","1","1","1","95","180","3","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 14:56:58","2021-07-18 04:04:05");
INSERT INTO products VALUES("1329","10 Braket","898","standard","C128","","1","1","1","1","63","120","3","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 14:58:50","2021-07-18 04:10:19");
INSERT INTO products VALUES("1330","12 Braket","899","standard","C128","","1","1","1","1","70","120","3","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 14:59:28","2021-07-18 04:10:19");
INSERT INTO products VALUES("1331","8 Braket","900","standard","C128","","1","1","1","1","53","120","3","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 15:00:04","2021-07-18 04:10:19");
INSERT INTO products VALUES("1332","1/2 ERA Plug(1 NO)","901","standard","C128","9","1","1","1","1","5","8","100","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 15:01:47","2021-07-18 04:10:19");
INSERT INTO products VALUES("1333","1 ERA Plug","902","standard","C128","9","1","1","1","1","13.5","25","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 15:05:29","2021-07-18 04:10:20");
INSERT INTO products VALUES("1334","3/4 ERA Plug","903","standard","C128","9","1","1","1","1","8","20","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 15:06:09","2021-07-18 04:10:20");
INSERT INTO products VALUES("1335","1.5 ERA Plug","904","standard","C128","9","1","1","1","1","24","50","15","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-16 15:06:51","2021-07-28 17:03:17");
INSERT INTO products VALUES("1336","1/2 Nozol (Inner)","880","standard","C128","","1","1","1","1","20","50","25","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 06:51:04","2021-07-18 03:54:27");
INSERT INTO products VALUES("1337","1/2 Nozol (out)","881","standard","C128","","1","1","1","1","23","50","25","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-17 06:52:03","2021-07-18 03:54:28");
INSERT INTO products VALUES("1338","1/2 ERA Plug(Green)","889","standard","C128","","1","1","1","1",".85","5","200","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-17 12:20:18","2021-07-18 04:10:20");
INSERT INTO products VALUES("1339","1/2 ERA Plug(2 NO)","890","standard","C128","9","1","1","1","1","3","8","100","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-17 12:21:13","2021-07-18 04:10:20");
INSERT INTO products VALUES("1340","1/2 Sink Bib Cock(IM)","905","standard","C128","33","1","1","1","1","435","550","4","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 13:02:57","2021-07-18 04:10:21");
INSERT INTO products VALUES("1341","3/4 Conceal Stop Cock M(IM)","906","standard","C128","33","1","1","1","1","600","750","4","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-17 13:23:41","2021-07-18 04:21:03");
INSERT INTO products VALUES("1342","SS Frame Glass","907","standard","C128","","1","1","1","1","550","750","2","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-17 13:42:45","2021-07-18 04:27:52");
INSERT INTO products VALUES("1343","Lata Glass","908","standard","C128","","1","1","1","1","250","350","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-17 13:43:34","2021-07-18 04:27:52");
INSERT INTO products VALUES("1344","Corner Flower Glass","909","standard","C128","","1","1","1","1","280","350","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-17 13:48:40","2021-07-18 04:27:52");
INSERT INTO products VALUES("1345","Bangla China Glass","910","standard","C128","","1","1","1","1","290","350","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-17 13:49:43","2021-07-18 04:27:53");
INSERT INTO products VALUES("1346","Nupur Glass","911","standard","C128","","1","1","1","1","390","450","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-17 13:50:57","2021-07-18 04:27:53");
INSERT INTO products VALUES("1347","Kamari Big","912","standard","C128","","1","1","1","1","200","350","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-17 13:52:50","2021-07-18 04:27:53");
INSERT INTO products VALUES("1348","Kamari Small","913","standard","C128","","1","1","1","1","115","250","18","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-17 13:53:43","2021-07-18 10:08:06");
INSERT INTO products VALUES("1349","Bremex T Shower","914","standard","C128","26","1","1","1","1","390","550","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-17 13:55:12","2021-07-18 04:27:53");
INSERT INTO products VALUES("1350","Basin Nut","915","standard","C128","","1","14","14","14","20","40","20","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-17 13:56:18","2021-07-18 04:27:53");
INSERT INTO products VALUES("1351","Comod Nut","916","standard","C128","","1","14","14","14","28","50","20","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-17 13:57:09","2021-07-18 04:27:53");
INSERT INTO products VALUES("1352","Frame Glass Small","917","standard","C128","","1","1","1","1","290","400","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-17 13:58:16","2021-07-18 04:27:54");
INSERT INTO products VALUES("1353","Miner Towel Rail","918","standard","C128","15","1","1","1","1","220","300","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 14:03:39","2021-08-13 05:31:39");
INSERT INTO products VALUES("1354","Box Towel Rail","919","standard","C128","15","1","1","1","1","220","300","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 14:04:23","2021-08-13 05:31:18");
INSERT INTO products VALUES("1355","Ball Towel Rail","920","standard","C128","15","1","1","1","1","185","250","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 14:05:35","2021-08-13 05:30:08");
INSERT INTO products VALUES("1356","Ramzad Towel Rail","921","standard","C128","15","1","1","1","1","160","250","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 14:07:05","2021-08-13 05:29:33");
INSERT INTO products VALUES("1357","Heavy Towel Rail","922","standard","C128","15","1","1","1","1","300","400","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 14:08:36","2021-08-13 05:29:08");
INSERT INTO products VALUES("1358","6 Celling Shower","923","standard","C128","","1","1","1","1","185","450","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-17 14:10:51","2021-07-18 04:33:43");
INSERT INTO products VALUES("1359","8 Celling Shower","924","standard","C128","","1","1","1","1","320","550","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-17 14:11:49","2021-07-18 04:33:43");
INSERT INTO products VALUES("1360","SS Shower Pipe","925","standard","C128","","1","1","1","1","115","150","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-17 14:12:36","2021-07-18 04:33:43");
INSERT INTO products VALUES("1361","Glass Clip","926","standard","C128","15","1","10","10","10","5.50","15","50","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 14:13:45","2021-08-12 15:35:40");
INSERT INTO products VALUES("1362","Royal Plug","927","standard","C128","15","1","10","10","10","5","10","100","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 14:15:45","2021-08-12 15:35:21");
INSERT INTO products VALUES("1363","1.25 Magic Pipe","928","standard","C128","1","1","1","1","1","24","40","55","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 14:17:03","2021-08-12 15:34:38");
INSERT INTO products VALUES("1364","1.5 Magic Pipe","929","standard","C128","1","1","1","1","1","26","45","40","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 14:18:21","2021-08-12 15:34:58");
INSERT INTO products VALUES("1365","Korean Putti","3146","standard","C128","","3","10","10","10","12.5","20","100","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 14:19:24","2021-07-19 12:30:59");
INSERT INTO products VALUES("1366","SS Shower (Neem)","931","standard","C128","15","1","1","1","1","340","450","7","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 14:22:04","2021-08-12 15:33:36");
INSERT INTO products VALUES("1367","SS VIP Shower (Neem)","932","standard","C128","15","1","1","1","1","360","450","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 14:23:32","2021-08-12 15:33:08");
INSERT INTO products VALUES("1368","Ring Towel Rail(H)","933","standard","C128","26","1","1","1","1","190","250","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 14:25:14","2021-08-12 15:32:36");
INSERT INTO products VALUES("1369","Ring Towel Rail(M)","934","standard","C128","26","1","1","1","1","130","250","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 14:27:11","2021-08-12 15:32:14");
INSERT INTO products VALUES("1370","Ring Towel Rail(Color)","935","standard","C128","26","1","1","1","1","210","300","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 14:28:03","2021-08-12 15:31:57");
INSERT INTO products VALUES("1371","1.25 SUB Clam","936","standard","C128","35","1","14","14","14","85","150","3","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 14:32:59","2021-08-12 15:31:20");
INSERT INTO products VALUES("1372","1/2 GI A Niple","937","standard","C128","35","1","1","1","1","19","25","48","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 14:40:32","2021-08-12 15:30:51");
INSERT INTO products VALUES("1373","1/2 SS A Niple","938","standard","C128","35","1","1","1","1","16","25","42","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 14:42:02","2021-08-12 15:30:31");
INSERT INTO products VALUES("1374","4 Sink Weast","939","standard","C128","","1","1","1","1","190","320","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 14:43:16","2021-07-27 11:34:09");
INSERT INTO products VALUES("1375","3/4 6 inc P Nipple","940","standard","C128","35","1","1","1","1","22","35","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 15:21:17","2021-08-12 15:30:04");
INSERT INTO products VALUES("1376","1*3/4 PVC Tee","941","standard","C128","9","1","1","1","1","32","55","30","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 15:32:05","2021-07-18 12:40:56");
INSERT INTO products VALUES("1377","1*3/4 PVC Elbo","942","standard","C128","9","1","1","1","1","33","55","30","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-17 15:34:38","2021-07-18 12:40:57");
INSERT INTO products VALUES("1378","1*3/4 PVC Socket","943","standard","C128","9","1","1","1","1","25","40","20","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-17 15:37:47","2021-07-18 09:34:44");
INSERT INTO products VALUES("1379","3/4*1/2 B Elbo","944","standard","C128","9","1","1","1","1","45","60","40","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-17 15:39:29","2021-07-18 12:40:57");
INSERT INTO products VALUES("1380","3/4*1/2 B Tee","945","standard","C128","9","1","1","1","1","48","65","40","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-17 15:40:28","2021-07-18 12:40:57");
INSERT INTO products VALUES("1381","3/4*1/2 B Socket","946","standard","C128","9","1","1","1","1","45","60","20","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-17 15:42:45","2021-07-18 09:34:44");
INSERT INTO products VALUES("1382","1.5*1 PVC Tee","947","standard","C128","9","1","1","1","1","105","130","21","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 15:48:10","2021-07-28 16:59:54");
INSERT INTO products VALUES("1383","1.5*3/4 PVC Tee","948","standard","C128","9","1","1","1","1","105","130","21","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 15:49:14","2021-07-28 16:59:30");
INSERT INTO products VALUES("1384","Rep","949","standard","C128","26","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 15:51:09","2021-08-12 15:28:21");
INSERT INTO products VALUES("1385","Re","0","standard","C128","26","1","1","1","1","0","0","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 15:52:35","2021-08-12 15:27:33");
INSERT INTO products VALUES("1386","1 Ball Cock with Ball","951","standard","C128","15","1","1","1","1","350","450","3","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 15:55:51","2021-08-12 15:25:27");
INSERT INTO products VALUES("1387","3/4 Ball Cock with Ball","952","standard","C128","15","1","1","1","1","250","350","3","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 15:56:42","2021-08-12 15:24:36");
INSERT INTO products VALUES("1388","3/4*1/2 PVC Bush","953","standard","C128","9","1","1","1","1","7.5","20","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-17 16:02:20","2021-07-18 10:20:49");
INSERT INTO products VALUES("1389","1*3/4 PVC Bush","954","standard","C128","9","1","1","1","1","14","30","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-17 16:03:14","2021-07-18 10:20:49");
INSERT INTO products VALUES("1390","1*1/2 PVC Bush","955","standard","C128","9","1","1","1","1","14","30","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-17 16:04:22","2021-07-18 10:20:49");
INSERT INTO products VALUES("1391","1.5*1 PVC Bush","956","standard","C128","9","1","1","1","1","43","60","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 16:05:05","2021-07-28 16:54:30");
INSERT INTO products VALUES("1392","1.5*3/4 PVC Bush","957","standard","C128","9","1","1","1","1","43","60","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 16:05:47","2021-07-28 16:53:53");
INSERT INTO products VALUES("1393","2*1.5 PVC Bush","967","standard","C128","9","1","1","1","1","50","80","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 16:06:42","2021-07-28 17:50:47");
INSERT INTO products VALUES("1394","2*1 PVC Bush","968","standard","C128","9","1","1","1","1","45","80","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-17 16:07:39","2021-07-18 10:20:49");
INSERT INTO products VALUES("1395","4 plug","969","standard","C128","","1","1","1","1","70","110","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-17 16:15:49","2021-07-18 10:29:25");
INSERT INTO products VALUES("1396","6*4 Plain Tee(N/M)","970","standard","C128","6","1","1","1","1","290","320","4","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 16:16:33","2021-08-12 14:31:58");
INSERT INTO products VALUES("1397","1 GI Socket Heavy","971","standard","C128","35","1","1","1","1","70","90","33","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 16:18:55","2021-08-12 15:22:46");
INSERT INTO products VALUES("1398","3/4 GI Socket Heavy","972","standard","C128","35","1","1","1","1","35","55","20","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 16:19:36","2021-08-12 15:22:14");
INSERT INTO products VALUES("1399","4*18 GI P Nipple","973","standard","C128","35","1","1","1","1","360","550","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-17 16:24:31","2021-08-12 15:21:57");
INSERT INTO products VALUES("1400","1/2 Bib Cock-H (IS)","974","standard","C128","18","1","1","1","1","630","750","8","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-17 16:28:11","2021-07-18 10:36:18");
INSERT INTO products VALUES("1401","6 UPVC Socket","975","standard","C128","","1","1","1","1","150","180","5","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-18 01:57:04","2021-07-18 11:42:07");
INSERT INTO products VALUES("1402","4 UPVC Socket","976","standard","C128","","1","1","1","1","55","80","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-18 01:58:15","2021-07-18 11:42:06");
INSERT INTO products VALUES("1403","4*3 GI Socket","977","standard","C128","35","1","1","1","1","310","450","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-18 01:59:17","2021-08-12 15:21:28");
INSERT INTO products VALUES("1404","3*2 GI Socket","978","standard","C128","35","1","1","1","1","210","350","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-18 02:00:26","2021-08-12 15:21:03");
INSERT INTO products VALUES("1405","4mm U Clam","979","standard","C128","15","1","1","1","1","23","40","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-18 02:04:19","2021-08-12 15:20:43");
INSERT INTO products VALUES("1406","5mm U Clam","980","standard","C128","15","1","1","1","1","30","45","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-18 02:05:24","2021-08-12 15:20:19");
INSERT INTO products VALUES("1407","1 Ball Valve Hendle","981","standard","C128","","1","1","1","1","300","350","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-18 02:07:36","2021-07-18 10:45:21");
INSERT INTO products VALUES("1408","3/4 Ball Valve Hendle","982","standard","C128","","1","1","1","1","200","250","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-18 02:08:23","2021-07-18 10:45:21");
INSERT INTO products VALUES("1409","1/2 Ball Valve Hendle","983","standard","C128","","1","1","1","1","140","180","13","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-18 02:09:34","2021-07-19 04:26:24");
INSERT INTO products VALUES("1410","1.5*3/4 PVC Socket","984","standard","C128","","1","1","1","1","70","90","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-18 02:17:40","2021-07-28 16:53:12");
INSERT INTO products VALUES("1411","1.5 UPVC Tee","985","standard","C128","","1","1","1","1","25","30","21","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-18 02:19:59","2021-07-28 16:52:47");
INSERT INTO products VALUES("1412","4 Kawan","986","standard","C128","","1","1","1","1","28","50","22","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-18 02:21:19","2021-07-18 14:17:02");
INSERT INTO products VALUES("1413","6*4 UPVC Bush","987","standard","C128","","1","1","1","1","90","130","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-18 02:23:18","2021-07-18 11:54:43");
INSERT INTO products VALUES("1414","3/4 PPR Conceal Stok Cock","988","standard","C128","9","1","1","1","1","510","580","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-18 02:27:27","2021-07-18 11:54:43");
INSERT INTO products VALUES("1415","3/4 PPR ML Socket(ERA)","989","standard","C128","9","1","1","1","1","115","135","83","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-18 02:30:20","2021-07-20 03:56:27");
INSERT INTO products VALUES("1416","Band Towel Rail","990","standard","C128","15","1","1","1","1","235","400","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-18 02:31:47","2021-08-12 15:18:40");
INSERT INTO products VALUES("1417","1.5 PPR Band","992","standard","C128","9","1","1","1","1","40","70","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-18 02:37:38","2021-07-28 16:51:55");
INSERT INTO products VALUES("1418","1.5 PPR FM Socket","991","standard","C128","9","1","1","1","1","400","550","14","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-18 02:39:11","2021-07-28 16:52:19");
INSERT INTO products VALUES("1419","1.5*3/4 PPR Tee(ERA)","993","standard","C128","9","1","1","1","1","62","90","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-18 02:41:45","2021-07-28 16:51:15");
INSERT INTO products VALUES("1420","1.5 PPR ML Socket","994","standard","C128","9","1","1","1","1","400","550","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-18 02:44:03","2021-07-28 16:50:47");
INSERT INTO products VALUES("1421","1.5 PPR Lg Band","995","standard","C128","9","1","1","1","1","75","120","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-18 02:45:19","2021-07-28 16:50:12");
INSERT INTO products VALUES("1422","4*2 GI Socket","996","standard","C128","35","1","1","1","1","310","450","4","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-18 02:48:33","2021-08-12 15:18:13");
INSERT INTO products VALUES("1423","1.5 Jubilee Clam","997","standard","C128","15","1","1","1","1","9","15","50","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-18 02:50:03","2021-08-12 15:17:49");
INSERT INTO products VALUES("1424","1.5 UPVC Pipe","998","standard","C128","","1","2","2","2","19","25","100","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-18 02:53:14","2021-07-28 16:49:08");
INSERT INTO products VALUES("1425","2 UPVC Pipe","999","standard","C128","","1","2","2","2","26","30","50","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-18 02:54:30","2021-07-18 12:40:57");
INSERT INTO products VALUES("1426","6 S S Clam","1000","standard","C128","","1","1","1","1","15","35","30","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-18 02:59:11","2021-07-18 12:40:58");
INSERT INTO products VALUES("1427","4 PVC Net","1001","standard","C128","","1","1","1","1","6.25","15","36","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-18 03:01:08","2021-07-18 12:40:58");
INSERT INTO products VALUES("1428","48 Compresser Belt","1002","standard","C128","","1","1","1","1","92","125","4","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-18 03:07:25","2021-07-19 12:41:32");
INSERT INTO products VALUES("1429","47 Compresser Belt","1003","standard","C128","","1","1","1","1","89","125","4","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-18 03:08:07","2021-07-19 12:41:11");
INSERT INTO products VALUES("1430","49 Compresser Belt","1004","standard","C128","","1","1","1","1","93","125","4","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-18 03:08:46","2021-07-19 12:41:54");
INSERT INTO products VALUES("1431","50 Compresser Belt","1005","standard","C128","","1","1","1","1","95","125","4","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-18 03:09:24","2021-07-19 12:42:14");
INSERT INTO products VALUES("1432","3/4 PPR Pipe(2)","1006","standard","C128","9","1","2","2","2","23","30","264","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-18 12:39:11","2021-07-19 12:44:03");
INSERT INTO products VALUES("1433","6 UPVC LG Saifun","1007","standard","C128","6","1","1","1","1","270","0","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-18 14:15:58","2021-07-18 14:17:02");
INSERT INTO products VALUES("1434","6*4 P Tee (A1)","1008","standard","C128","7","1","1","1","1","320","0","9","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-18 14:36:25","2021-07-18 14:52:19");
INSERT INTO products VALUES("1435","SS Towel Rail D M (H)","958","standard","C128","15","1","1","1","1","210","320","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-19 12:26:23","2021-08-12 15:24:05");
INSERT INTO products VALUES("1436","RFL Bib Cock(N)","959","standard","C128","1","1","1","1","1","21","30","50","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-19 12:32:56","2021-07-19 12:34:15");
INSERT INTO products VALUES("1437","Compresser Pipe White","960","standard","C128","15","1","2","2","2","4.5","7","500","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-19 12:46:22","2021-08-12 15:23:39");
INSERT INTO products VALUES("1438","Compresser Pipe Malaysia","961","standard","C128","15","1","2","2","2","18","25","100","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-19 12:47:36","2021-08-12 15:23:16");
INSERT INTO products VALUES("1439","1/2 Angle Stop Cock (Suzan)","962","standard","C128","25","1","1","1","1","502","560","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-19 13:19:57","2021-08-12 14:34:53");
INSERT INTO products VALUES("1440","2 in 1 Bib Cock (Suzan)","963","standard","C128","25","1","1","1","1","1360","1430","3","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-19 13:21:49","2021-08-12 14:34:30");
INSERT INTO products VALUES("1441","Basin Mixer(Suzan)","964","standard","C128","25","1","1","1","1","2508","2750","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-19 13:24:54","2021-08-12 14:34:00");
INSERT INTO products VALUES("1442","1/2 Moving Pillar Cock (Suzan)","965","standard","C128","25","1","1","1","1","1360","0","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-19 13:26:24","2021-08-12 14:33:36");
INSERT INTO products VALUES("1443","1 Hose Pipe-Bk(RFL)","930","standard","C128","1","1","2","2","2","8.30","12","300","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-19 14:27:32","2021-08-12 14:35:22");
INSERT INTO products VALUES("1444","3/4 Hose Pipe-Bk(RFL)","966","standard","C128","1","1","2","2","2","6.80","9","300","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-19 14:28:43","2021-08-12 14:32:24");
INSERT INTO products VALUES("1445","RFL-SMP-4116A","841","standard","C128","1","1","1","1","1","9650","10300","2","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-19 15:11:49","2021-07-19 15:33:55");
INSERT INTO products VALUES("1446","RFL-SMP-227(1Hp)","842","standard","C128","1","1","1","1","1","10500","10900","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-19 15:13:56","2021-08-12 14:40:11");
INSERT INTO products VALUES("1447","RFL-SMP-233(1.5Hp)","843","standard","C128","1","1","1","1","1","11700","12100","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-19 15:15:34","2021-08-12 14:39:42");
INSERT INTO products VALUES("1448","RFL-WP-100Xl(1 Hp)","844","standard","C128","1","1","1","1","1","5100","5600","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-19 15:18:21","2021-08-12 14:39:14");
INSERT INTO products VALUES("1449","RFL-Typhoon-1 Hp","845","standard","C128","1","1","1","1","1","10010","10800","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-19 15:45:01","2021-08-12 14:38:50");
INSERT INTO products VALUES("1450","RFL Xpart 3/21 (1 Hp)","846","standard","C128","1","1","1","1","1","10010","10800","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-19 15:49:24","2021-08-12 14:38:25");
INSERT INTO products VALUES("1451","RFL Xpart 3/12 (1 Hp)","847","standard","C128","1","1","1","1","1","8645","9200","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-19 15:51:25","2021-08-12 14:38:02");
INSERT INTO products VALUES("1452","RFL WP 10m (1 Hp)","848","standard","C128","1","1","1","1","1","4900","5300","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-19 15:53:35","2021-08-12 14:37:37");
INSERT INTO products VALUES("1453","3/4 PPR Elbo (RFL)","1009","standard","C128","1","1","1","1","1","11","0","96","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 03:24:08","2021-07-20 04:53:11");
INSERT INTO products VALUES("1454","3/4 PPR Tee (RFL)","1010","standard","C128","1","1","1","1","1","15","0","48","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 03:25:03","2021-07-20 04:53:11");
INSERT INTO products VALUES("1455","3/4 PPR Off Band (RFL)","1011","standard","C128","1","1","1","1","1","42","0","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 03:26:59","2021-07-20 04:53:11");
INSERT INTO products VALUES("1456","1.5*1 PPR Socket(RFL)","1012","standard","C128","1","1","1","1","1","33","0","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-20 03:29:08","2021-07-28 17:49:23");
INSERT INTO products VALUES("1457","1*3/4 PPR Tee(RFL)","1013","standard","C128","1","1","1","1","1","29","0","24","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 03:30:48","2021-07-20 04:53:11");
INSERT INTO products VALUES("1458","1*3/4 PPR Socket(RFL)","1014","standard","C128","1","1","1","1","1","17","0","24","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 03:31:42","2021-07-20 04:53:12");
INSERT INTO products VALUES("1459","1*3/4 PPR Elbo(RFL)","1015","standard","C128","1","1","1","1","1","18","0","24","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 03:32:55","2021-07-20 04:53:12");
INSERT INTO products VALUES("1460","1.5*1 PPR Tee(RFL)","1016","standard","C128","1","1","1","1","1","69","0","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-20 03:33:57","2021-07-28 17:48:59");
INSERT INTO products VALUES("1461","1.5*3/4 PPR Tee(RFL)","1017","standard","C128","1","1","1","1","1","56","0","12","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-20 03:47:32","2021-07-28 17:48:33");
INSERT INTO products VALUES("1462","3/4*1/2 FM Elbo (RFL)","1018","standard","C128","1","1","1","1","1","68","0","24","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 03:49:23","2021-07-20 04:53:12");
INSERT INTO products VALUES("1463","3/4*1/2 FM Tee (RFL)","1019","standard","C128","1","1","1","1","1","68","0","24","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 03:52:50","2021-07-20 04:53:12");
INSERT INTO products VALUES("1464","3/4*1/2 FM Socket (RFL)","1020","standard","C128","1","1","1","1","1","65","0","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 03:54:01","2021-07-20 04:53:13");
INSERT INTO products VALUES("1465","3/4 PPR ML Socket(RFL)","1021","standard","C128","1","1","1","1","1","75","0","24","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 03:55:41","2021-07-20 04:53:13");
INSERT INTO products VALUES("1466","3/4 PPR Socket (RFL)","1022","standard","C128","1","1","1","1","1","8","0","48","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 03:58:17","2021-07-20 04:53:13");
INSERT INTO products VALUES("1467","Box Net(Apex)","849","standard","C128","5","1","1","1","1","112","130","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 05:14:03","2021-07-20 05:41:27");
INSERT INTO products VALUES("1468","24 Connection Pipe (RFL)","1051","standard","C128","1","1","1","1","1","40","70","20","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 06:24:53","2021-07-20 08:32:50");
INSERT INTO products VALUES("1469","28 Connection Pipe (RFL)","1052","standard","C128","1","1","1","1","1","45","80","20","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 06:25:40","2021-07-20 08:32:51");
INSERT INTO products VALUES("1470","36 Connection Pipe (RFL)","1053","standard","C128","1","1","1","1","1","54","90","16","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 06:26:22","2021-07-20 08:32:51");
INSERT INTO products VALUES("1471","48 Connection Pipe (RFL)","1054","standard","C128","1","1","1","1","1","67","100","14","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 06:26:59","2021-07-20 08:32:51");
INSERT INTO products VALUES("1472","1/2 R Head Bib Cock(RFL","1055","standard","C128","1","1","1","1","1","57","65","30","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 06:29:34","2021-07-20 08:32:51");
INSERT INTO products VALUES("1473","1/2 T Head Bib Cock(RFL","1056","standard","C128","1","1","1","1","1","45","55","40","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 06:30:19","2021-07-20 08:32:51");
INSERT INTO products VALUES("1474","1/2 Sink M Pillar Cock(RFL)","1057","standard","C128","1","1","1","1","1","175","195","16","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 06:33:03","2021-07-26 13:55:37");
INSERT INTO products VALUES("1475","1/2 Basin M Pillar Cock(RFL)","1058","standard","C128","1","1","1","1","1","175","195","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 06:34:07","2021-07-20 08:32:51");
INSERT INTO products VALUES("1476","1/2 3 H Angel Stop Cock(RFL)","1059","standard","C128","1","1","1","1","1","66","80","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-20 06:35:49","2021-07-20 08:32:51");
INSERT INTO products VALUES("1477","1/2 R H Angel Stop Cock(RFL)","1060","standard","C128","1","1","1","1","1","73","100","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 06:38:03","2021-07-20 08:32:51");
INSERT INTO products VALUES("1478","6 Box Net(RFL)","1061","standard","C128","1","1","1","1","1","80","100","10","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 06:40:28","2021-07-20 08:46:48");
INSERT INTO products VALUES("1479","24 Towel Rail(RFL)","1062","standard","C128","1","1","1","1","1","143","170","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 06:41:37","2021-07-20 08:32:52");
INSERT INTO products VALUES("1480","24 Basin Self(RFL)","1063","standard","C128","1","1","1","1","1","199","240","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 06:42:50","2021-07-20 08:32:52");
INSERT INTO products VALUES("1481","SP Soap Case(RFL)","1064","standard","C128","1","1","1","1","1","35","45","24","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 06:44:37","2021-07-20 08:32:52");
INSERT INTO products VALUES("1482","DP Soap Case(RFL)","1065","standard","C128","1","1","1","1","1","38","60","18","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 06:45:32","2021-07-20 08:32:52");
INSERT INTO products VALUES("1483","Corner Self(RFL)","1066","standard","C128","1","1","1","1","1","519","650","2","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 06:49:08","2021-07-20 08:32:52");
INSERT INTO products VALUES("1484","PUM Toilet Push(RFL)","1067","standard","C128","1","1","1","1","1","202","260","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 06:50:20","2021-07-20 08:32:52");
INSERT INTO products VALUES("1485","DE Toilet Push(RFL)","1068","standard","C128","1","1","1","1","1","258","290","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 06:51:16","2021-07-20 08:32:53");
INSERT INTO products VALUES("1486","Mike Shower(RFL)","1069","standard","C128","1","1","1","1","1","127","170","15","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 06:54:36","2021-07-20 08:32:53");
INSERT INTO products VALUES("1487","Band Shower(RFL)","1070","standard","C128","1","1","1","1","1","143","180","15","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 06:55:51","2021-07-20 08:32:53");
INSERT INTO products VALUES("1488","DLX Shower(RFL)","1071","standard","C128","1","1","1","1","1","259","330","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 06:57:21","2021-07-20 08:32:53");
INSERT INTO products VALUES("1489","1/2 Sink Bib Cock-Long (RFL)","1072","standard","C128","1","1","1","1","1","138","170","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 06:59:04","2021-07-20 08:32:53");
INSERT INTO products VALUES("1490","2 in 1 Bib Cock (RFL)","1073","standard","C128","1","1","1","1","1","223","280","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 07:00:45","2021-07-20 08:32:53");
INSERT INTO products VALUES("1491","PUM Plash Tank(RFL)","1074","standard","C128","1","1","1","1","1","878","930","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 07:02:13","2021-07-26 10:23:30");
INSERT INTO products VALUES("1492","DLX Shower Color(RFL)","1075","standard","C128","1","1","1","1","1","351","450","4","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-20 07:04:41","2021-07-20 08:32:53");
INSERT INTO products VALUES("1493","6 UPVC 4.6 (Akij)","850","standard","C128","34","1","2","2","2","135","138","140","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-20 08:40:22","2021-08-12 14:37:05");
INSERT INTO products VALUES("1494","China Pillar Cock- B-15","814","standard","C128","26","1","1","1","1","550","750","4","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-20 08:54:54","2021-07-27 10:50:14");
INSERT INTO products VALUES("1495","China Pillar Cock- Liver","815","standard","C128","26","1","1","1","1","400","650","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-20 08:55:54","2021-07-27 10:50:45");
INSERT INTO products VALUES("1496","China Pillar Cock- Ven","816","standard","C128","26","1","1","1","1","350","600","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-20 08:57:18","2021-07-27 10:51:14");
INSERT INTO products VALUES("1497","China Basin Weast","817","standard","C128","26","1","1","1","1","180","280","4","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-20 08:58:26","2021-08-12 14:47:30");
INSERT INTO products VALUES("1498","China T/Shower PVC","818","standard","C128","26","1","1","1","1","200","350","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-20 08:59:35","2021-07-27 11:35:19");
INSERT INTO products VALUES("1499","China Soap Case","819","standard","C128","26","1","1","1","1","200","250","4","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-20 09:02:30","2021-08-12 14:47:03");
INSERT INTO products VALUES("1500","China T/Shower Jakon","820","standard","C128","26","1","1","1","1","350","500","4","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-20 09:05:39","2021-07-27 11:36:39");
INSERT INTO products VALUES("1501","China T/Shower SS","821","standard","C128","26","1","1","1","1","450","600","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-20 09:06:46","2021-07-27 11:35:44");
INSERT INTO products VALUES("1502","China Basin Mixer 7181","822","standard","C128","26","1","1","1","1","1200","1800","1","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-20 09:07:44","2021-08-12 14:46:43");
INSERT INTO products VALUES("1503","Sink-T K Span 20*16 China","823","standard","C128","26","1","1","1","1","1100","1300","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-20 09:17:18","2021-08-12 14:46:18");
INSERT INTO products VALUES("1504","Sink-T K Span 18*36 China","824","standard","C128","26","1","1","1","1","2000","2200","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-20 09:18:51","2021-08-12 14:45:59");
INSERT INTO products VALUES("1505","Sink-T K Span 18*30 China","825","standard","C128","26","1","1","1","1","1750","2000","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-20 09:19:44","2021-08-12 14:45:27");
INSERT INTO products VALUES("1506","1/2*10 P Nipple","1101","standard","C128","35","1","1","1","1","35","70","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-21 13:17:33","2021-07-21 14:13:01");
INSERT INTO products VALUES("1507","1/2*4 P Nipple","1102","standard","C128","35","1","1","1","1","16","30","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-21 13:18:31","2021-07-21 14:13:01");
INSERT INTO products VALUES("1508","1/2*3 P Nipple","1103","standard","C128","35","1","1","1","1","14","25","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-21 13:19:45","2021-07-21 14:13:01");
INSERT INTO products VALUES("1509","1/2*5 P Nipple","1104","standard","C128","35","1","1","1","1","19","30","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-21 13:20:57","2021-07-21 14:13:01");
INSERT INTO products VALUES("1510","2*6 P Nipple","1105","standard","C128","35","1","1","1","1","73","120","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-21 13:22:47","2021-07-21 14:13:01");
INSERT INTO products VALUES("1511","2*11 P Nipple","1106","standard","C128","35","1","1","1","1","124","140","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-21 13:23:41","2021-07-21 14:13:01");
INSERT INTO products VALUES("1512","1.5*6 P Nipple","1107","standard","C128","35","1","1","1","1","63","110","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-21 13:24:58","2021-07-28 17:47:04");
INSERT INTO products VALUES("1513","1.5*12 P Nipple","1108","standard","C128","35","1","1","1","1","115","170","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-21 13:26:52","2021-07-28 17:46:43");
INSERT INTO products VALUES("1514","1.5*18 P Nipple","1109","standard","C128","35","1","1","1","1","172","220","3","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-21 13:27:49","2021-07-28 17:46:13");
INSERT INTO products VALUES("1515","4*11 P Nipple","1110","standard","C128","35","1","1","1","1","321","480","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-21 13:32:05","2021-07-21 14:13:02");
INSERT INTO products VALUES("1516","3*10 P Nipple","1111","standard","C128","35","1","1","1","1","210","350","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-21 13:33:49","2021-07-21 14:13:02");
INSERT INTO products VALUES("1517","1*12 P Nipple","1112","standard","C128","35","1","1","1","1","68","110","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-21 13:34:52","2021-07-21 14:13:02");
INSERT INTO products VALUES("1518","1*6 P Nipple","1113","standard","C128","35","1","1","1","1","35","60","7","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-21 13:35:59","2021-07-22 04:32:14");
INSERT INTO products VALUES("1519","1*4 P Nipple","1114","standard","C128","35","1","1","1","1","25","40","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-21 13:39:22","2021-07-21 14:13:02");
INSERT INTO products VALUES("1520","3/4*12 P Nipple","1115","standard","C128","35","1","1","1","1","42","70","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-21 13:40:53","2021-07-21 14:13:02");
INSERT INTO products VALUES("1521","3/4*6 P Nipple","1116","standard","C128","35","1","1","1","1","22","50","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-21 13:42:02","2021-07-21 14:13:03");
INSERT INTO products VALUES("1522","3/4*5 P Nipple","1117","standard","C128","35","1","1","1","1","20","40","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-21 13:44:25","2021-07-21 14:13:03");
INSERT INTO products VALUES("1523","1/2*12 P Nipple","1118","standard","C128","35","1","1","1","1","38","80","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-21 13:46:16","2021-07-21 14:13:03");
INSERT INTO products VALUES("1524","1/2*6 P Nipple","1119","standard","C128","35","1","1","1","1","20","35","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-21 13:47:20","2021-07-21 14:13:03");
INSERT INTO products VALUES("1525","1/2*8 P Nipple","1120","standard","C128","35","1","1","1","1","28","50","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-21 13:48:32","2021-07-21 14:13:03");
INSERT INTO products VALUES("1526","1/2 Long Thread","1121","standard","C128","35","1","1","1","1","28","40","6","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-21 13:50:14","2021-07-21 14:13:03");
INSERT INTO products VALUES("1527","3/4 Long Thread","1122","standard","C128","35","1","1","1","1","30","80","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-21 13:51:56","2021-07-21 14:13:03");
INSERT INTO products VALUES("1528","1 Long Thread","1123","standard","C128","35","1","1","1","1","45","110","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-21 13:52:48","2021-07-21 14:13:03");
INSERT INTO products VALUES("1529","Bizli 1.0 re Green(Yard)","2411*","standard","C128","22","2","7","7","7","15","16","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-22 03:36:49","2021-08-01 14:46:52");
INSERT INTO products VALUES("1530","Bizli 1.3 rm Red(Yard)","2412*","standard","C128","22","2","7","7","7","19.41","21","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-22 03:37:53","2021-08-01 14:47:14");
INSERT INTO products VALUES("1531","Bizli 1.3 rm Black(Yard)","2413*","standard","C128","22","2","7","7","7","19.41","21","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-22 03:39:30","2021-08-01 14:47:40");
INSERT INTO products VALUES("1532","Bizli 1.3 rm Yellow(Yard)","2414*","standard","C128","22","2","7","7","7","19.41","21","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-22 03:43:08","2021-08-01 14:48:01");
INSERT INTO products VALUES("1533","Bizli 1.5 re Green(Yard)","2415*","standard","C128","22","2","7","7","7","21.50","24","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-22 03:44:28","2021-08-01 14:48:19");
INSERT INTO products VALUES("1534","Bizli 2.0 rm Red(Yard)","2416*","standard","C128","22","2","7","7","7","29.45","32","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-22 03:47:40","2021-08-01 14:49:02");
INSERT INTO products VALUES("1535","Bizli 2.0 rm Black(Yard)","2417*","standard","C128","22","2","7","7","7","29.45","32","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-22 03:48:42","2021-08-01 14:49:34");
INSERT INTO products VALUES("1536","Bizli 2.0 rm Yellow(Yard)","2418*","standard","C128","22","2","7","7","7","29.45","32","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-22 03:49:39","2021-08-01 14:49:53");
INSERT INTO products VALUES("1537","Bizli 3.0 rm Red(Yard)","2419*","standard","C128","22","2","7","7","7","46","47","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-22 03:52:20","2021-08-05 02:39:24");
INSERT INTO products VALUES("1538","Bizli 3.0 rm Black(Yard)","2420*","standard","C128","22","2","7","7","7","46","47","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-22 03:53:38","2021-08-01 14:50:32");
INSERT INTO products VALUES("1539","Spray Paint-Silver","3147","standard","C128","","3","1","1","1","81","130","8","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-22 04:04:18","2021-07-22 04:06:10");
INSERT INTO products VALUES("1540","4*12 P Nipple","1124","standard","C128","35","1","1","1","1","370","0","2","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-22 04:59:56","2021-07-22 05:00:35");
INSERT INTO products VALUES("1541","1/2 Moving Pillar Cock (Sattar)","831","standard","C128","36","1","1","1","1","950","0","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-22 05:27:05","2021-07-22 05:33:59");
INSERT INTO products VALUES("1542","1/2 Moving Sink Cock (Sattar)","832","standard","C128","36","1","1","1","1","923","0","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-22 05:28:57","2021-07-22 05:33:59");
INSERT INTO products VALUES("1543","3/4 Conceal Stop Cock (Sattar)","833","standard","C128","36","1","1","1","1","819","0","4","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-22 05:32:39","2021-07-22 05:34:00");
INSERT INTO products VALUES("1544","Bizli 1.5 rm Red","2411","standard","C128","22","2","7","7","7","22.25","24","300","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-22 05:42:18","2021-08-05 02:35:54");
INSERT INTO products VALUES("1545","Bizli 1.5 rm Red(Yard)","2463*","standard","C128","22","2","7","7","7","22.50","24","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-22 05:44:08","2021-08-01 14:54:58");
INSERT INTO products VALUES("1546","Bizli 1.5 rm Black","2412","standard","C128","22","2","7","7","7","22.25","24","300","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-22 05:45:52","2021-08-05 02:35:54");
INSERT INTO products VALUES("1547","Bizli 1.5 rm Black(Yard)","2465*","standard","C128","22","2","7","7","7","22.50","24","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-22 05:46:45","2021-08-01 14:55:16");
INSERT INTO products VALUES("1548","Bizli 1.5 rm Yellow","2413","standard","C128","22","2","7","7","7","22.25","24","200","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-22 05:47:53","2021-08-05 02:35:53");
INSERT INTO products VALUES("1549","Bizli 1.5 rm Yellow(Yard)","2467*","standard","C128","22","2","7","7","7","22.50","24","0","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-22 05:49:16","2021-08-01 14:55:38");
INSERT INTO products VALUES("1550","Bizli 2.5 rm Red","2414","standard","C128","22","2","7","7","7","35.49","38","200","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-22 05:51:13","2021-08-05 02:35:55");
INSERT INTO products VALUES("1551","Bizli 2.5 rm Black","2415","standard","C128","22","2","7","7","7","35.49","38","200","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-22 05:52:23","2021-08-05 02:35:55");
INSERT INTO products VALUES("1552","GFC Dish Cable(A)","2317","standard","C128","10","2","7","7","7","9.50","13","160","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-25 14:15:23","2021-07-25 14:18:34");
INSERT INTO products VALUES("1553","1.5 Thread Pipe(JD)","826","standard","C128","37","1","2","2","2","50","52","110","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-26 10:28:09","2021-08-12 14:44:58");
INSERT INTO products VALUES("1554","1 Thread Pipe(JD)","827","standard","C128","37","1","2","2","2","28","31","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-26 10:29:59","2021-08-12 14:44:37");
INSERT INTO products VALUES("1555","3/4 Thread Pipe(JD)","828","standard","C128","37","1","2","2","2","19.2","22","10","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-26 10:31:34","2021-08-12 14:44:14");
INSERT INTO products VALUES("1556","1/2 SS Connection Pipe(H)","829","standard","C128","26","1","1","1","1","150","190","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-26 10:38:33","2021-08-12 14:43:24");
INSERT INTO products VALUES("1557","1/2 SS Connection Pipe(M)","830","standard","C128","26","1","1","1","1","90","140","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-26 10:44:21","2021-08-12 14:43:01");
INSERT INTO products VALUES("1558","6*4 P Tee (M)","834","standard","C128","3","1","1","1","1","283","320","3","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-26 10:45:55","2021-08-12 14:42:13");
INSERT INTO products VALUES("1559","4 UPVC 2.7 (JD)","835","standard","C128","37","1","2","2","2","51","53","80","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-26 10:51:42","2021-07-26 10:54:53");
INSERT INTO products VALUES("1560","4 Plain Elbow","836","standard","C128","37","1","1","1","1","98","100","5","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-26 10:53:38","2021-08-12 14:41:47");
INSERT INTO products VALUES("1561","3/4 Conceal Stop Cock (Satata)","837","standard","C128","38","1","1","1","1","700","800","2","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-26 11:06:14","2021-08-12 14:41:02");
INSERT INTO products VALUES("1562","6 Lite Tower Bolt","3148","standard","C128","26","3","1","1","1","46","55","30","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-26 11:19:55","2021-07-26 11:34:20");
INSERT INTO products VALUES("1563","8 Lite Tower Bolt","3149","standard","C128","26","3","1","1","1","55","65","30","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-26 11:21:07","2021-07-26 11:34:20");
INSERT INTO products VALUES("1564","Pata Haze Bolt 6 inc","3150","standard","C128","26","3","1","1","1","50","70","6","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-26 11:22:25","2021-08-03 15:13:01");
INSERT INTO products VALUES("1565","Drawer Lock (Camel)","3151","standard","C128","26","3","1","1","1","31","45","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-26 11:24:25","2021-07-26 11:34:21");
INSERT INTO products VALUES("1566","Beam Huge 8 no","3152","standard","C128","26","3","1","1","1","2","2.5","144","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-26 11:27:00","2021-07-26 11:34:21");
INSERT INTO products VALUES("1567","Beam Huge 10 no","3153","standard","C128","26","3","1","1","1","2.5","3","144","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-26 11:27:38","2021-07-26 11:34:21");
INSERT INTO products VALUES("1568","Multi Plug-3H (Metro)","2391","standard","C128","39","2","1","1","1","320","390","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-26 11:54:08","2021-07-26 12:04:33");
INSERT INTO products VALUES("1569","Multi Plug-4H (Metro)","2392","standard","C128","39","2","1","1","1","335","450","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-26 11:54:57","2021-07-26 12:04:34");
INSERT INTO products VALUES("1570","2 in 1 Holder(Metro)","2393","standard","C128","39","2","1","1","1","36.5","50","60","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-26 11:56:39","2021-07-26 12:04:34");
INSERT INTO products VALUES("1571","2 in 1 Holder Golden(Metro)","2394","standard","C128","39","2","1","1","1","65","80","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-26 11:58:05","2021-07-26 12:04:34");
INSERT INTO products VALUES("1572","2 in 1 Holder Silver(Metro)","2395","standard","C128","39","2","1","1","1","65","80","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-26 11:58:57","2021-07-26 12:04:34");
INSERT INTO products VALUES("1573","Celling Rose (Metro)","2396","standard","C128","39","2","1","1","1","36.5","50","24","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-26 12:01:01","2021-07-26 12:04:34");
INSERT INTO products VALUES("1574","Luxury Holder(22)","2481","standard","C128","40","2","1","1","1","33.75","45","24","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-26 12:15:26","2021-07-26 12:31:16");
INSERT INTO products VALUES("1575","Luxury Holder(27)","2482","standard","C128","40","2","1","1","1","33.75","45","24","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-26 12:16:26","2021-07-26 12:31:16");
INSERT INTO products VALUES("1576","Luxury Celling Rose","2483","standard","C128","40","2","1","1","1","37","45","24","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-26 12:20:09","2021-07-26 12:31:16");
INSERT INTO products VALUES("1577","Luxury Tab 16w(LED)","2484","standard","C128","40","2","1","1","1","385","450","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-26 12:23:53","2021-07-26 12:31:16");
INSERT INTO products VALUES("1578","Luxury Cap 16w(LED)","2485","standard","C128","40","2","1","1","1","385","450","3","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-26 12:24:44","2021-07-26 12:31:16");
INSERT INTO products VALUES("1579","Luxury L-2 Box","2486","standard","C128","40","2","1","1","1","45","70","12","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-26 12:26:48","2021-07-26 12:31:16");
INSERT INTO products VALUES("1580","4 upvc 3.0 (JD)","838","standard","C128","37","1","2","2","2","66","68","60","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-26 13:49:44","2021-08-12 14:40:40");
INSERT INTO products VALUES("1581","1/2 Spring Pipe(N/M)","2226","standard","C128","6","2","2","2","2","2","4","100","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-26 14:13:51","2021-08-09 07:07:15");
INSERT INTO products VALUES("1582","3/4 Spring Pipe(N/M)","2227","standard","C128","6","2","2","2","2","3","5","120","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-26 14:14:57","2021-08-08 13:25:08");
INSERT INTO products VALUES("1583","Enamel-Pound(M/S)","4015","standard","C128","27","4","5","5","5","145","0","4","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-26 14:25:54","2021-07-26 14:34:14");
INSERT INTO products VALUES("1584","Salt Sealer-Galon(M/S)","4016","standard","C128","27","4","3","3","3","1150","0","1","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-07-26 14:30:39","2021-07-26 14:34:15");
INSERT INTO products VALUES("1585","Mona Switch Regulator","2397","standard","C128","41","2","1","1","1","105","180","15","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-29 10:26:28","2021-08-08 15:08:20");
INSERT INTO products VALUES("1586","Mona Regulator","2398","standard","C128","41","2","1","1","1","100","150","15","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-29 10:27:16","2021-08-08 15:19:11");
INSERT INTO products VALUES("1587","Mona PNO Regulator","2399","standard","C128","41","2","1","1","1","35","50","50","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-29 10:28:08","2021-08-08 14:36:47");
INSERT INTO products VALUES("1588","Line Star Switch Regulator","2400","standard","C128","41","2","1","1","1","85","120","15","","","","","","","1","zummXD2dvAtI.png","","","0","0","","","","","1","2021-07-29 10:29:30","2021-08-08 14:37:15");
INSERT INTO products VALUES("1589","3/36 BRB (Twin-2)","2491","standard","C128","23","2","7","7","7","33.5","53","80","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-08-02 13:55:13","2021-08-05 02:23:57");
INSERT INTO products VALUES("1590","Red Oxid-A/C(Galen)","4017","standard","C128","27","4","1","1","1","680","0","1","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","1","2021-08-02 13:59:09","2021-08-02 14:02:34");



CREATE TABLE `purchase_product_return` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO purchase_product_return VALUES("1","1","1122","","7","1","130","0","0","0","910","2021-07-26 11:38:33","2021-07-26 11:38:33");



CREATE TABLE `purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `paid_amount` double NOT NULL,
  `status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=331 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO purchases VALUES("8","pr-20210701-124404","1","1","1","1","40","0","0","240","0","0","","","240","240","1","2","","","2021-06-01 12:01:00","2021-07-14 10:28:37");
INSERT INTO purchases VALUES("9","pr-20210701-124519","1","1","1","1","100","0","0","430","0","0","","","430","430","1","2","","","2021-06-01 12:01:00","2021-07-14 10:29:06");
INSERT INTO purchases VALUES("10","pr-20210701-124711","1","1","1","1","20","0","0","1000","0","0","","","1000","1000","1","2","","","2021-06-01 12:01:00","2021-07-14 10:29:29");
INSERT INTO purchases VALUES("11","pr-20210701-124835","1","1","1","1","20","0","0","700","0","0","","","700","700","1","2","","","2021-06-01 12:01:00","2021-07-14 10:29:57");
INSERT INTO purchases VALUES("12","pr-20210701-124931","1","1","1","1","20","0","0","840","0","0","","","840","840","1","2","","","2021-06-01 12:01:00","2021-07-14 10:30:17");
INSERT INTO purchases VALUES("13","pr-20210701-014836","1","1","1","1","20","0","0","360","0","0","","","360","360","1","2","","","2021-06-01 12:01:00","2021-07-14 10:30:39");
INSERT INTO purchases VALUES("14","pr-20210701-014930","1","1","1","1","20","0","0","2400","0","0","","","2400","2400","1","2","","","2021-06-01 12:01:00","2021-07-14 10:30:59");
INSERT INTO purchases VALUES("15","pr-20210701-015016","1","1","1","1","10","0","0","900","0","0","","","900","900","1","2","","","2021-06-01 12:01:00","2021-07-14 10:31:24");
INSERT INTO purchases VALUES("16","pr-20210701-015105","1","1","1","1","20","0","0","240","0","0","","","240","240","1","2","","","2021-06-01 12:01:00","2021-07-14 10:31:43");
INSERT INTO purchases VALUES("17","pr-20210701-015157","1","1","1","1","10","0","0","250","0","0","","","250","250","1","2","","","2021-06-01 12:01:00","2021-07-14 10:32:06");
INSERT INTO purchases VALUES("18","pr-20210701-015231","1","1","1","1","10","0","0","420","0","0","","","420","420","1","2","","","2021-06-01 12:01:00","2021-07-14 10:32:34");
INSERT INTO purchases VALUES("19","pr-20210701-015307","1","1","1","1","10","0","0","520","0","0","","","520","520","1","2","","","2021-06-01 12:01:00","2021-07-14 10:32:58");
INSERT INTO purchases VALUES("20","pr-20210701-015359","1","1","1","1","12","0","0","252","0","0","","","252","252","1","2","","","2021-06-01 12:01:00","2021-07-14 10:33:19");
INSERT INTO purchases VALUES("21","pr-20210701-015438","1","1","1","1","12","0","0","264","0","0","4","0","260","260","1","2","","","2021-06-01 12:01:00","2021-07-14 10:34:33");
INSERT INTO purchases VALUES("22","pr-20210701-015510","1","1","1","1","12","0","0","384","0","0","","","384","384","1","2","","","2021-06-01 12:01:00","2021-07-14 10:35:04");
INSERT INTO purchases VALUES("23","pr-20210701-015718","1","1","1","1","12","0","0","396","0","0","","","396","396","1","2","","","2021-06-01 12:01:00","2021-07-14 10:35:31");
INSERT INTO purchases VALUES("24","pr-20210701-020527","1","1","1","1","12","0","0","84","0","0","0","0","84","84","1","2","","","2021-06-01 12:01:00","2021-07-14 10:36:15");
INSERT INTO purchases VALUES("25","pr-20210701-020602","1","1","1","1","12","0","0","120","0","0","","","120","120","1","2","","","2021-06-01 12:01:00","2021-07-14 10:36:49");
INSERT INTO purchases VALUES("26","pr-20210701-020652","1","1","1","1","12","0","0","168","0","0","8","0","160","160","1","2","","","2021-06-01 12:01:00","2021-07-14 10:37:45");
INSERT INTO purchases VALUES("27","pr-20210701-020807","1","1","1","1","12","0","0","192","0","0","","","192","192","1","2","","","2021-06-01 12:01:00","2021-07-14 10:38:32");
INSERT INTO purchases VALUES("29","pr-20210701-020924","1","1","1","1","12","0","0","228","0","0","","","228","228","1","2","","","2021-06-01 12:01:00","2021-07-14 10:42:35");
INSERT INTO purchases VALUES("30","pr-20210701-021000","1","1","1","1","12","0","0","252","0","0","","","252","252","1","2","","","2021-06-01 12:01:00","2021-07-14 10:42:59");
INSERT INTO purchases VALUES("31","pr-20210701-021101","1","1","1","1","12","0","0","276","0","0","11","0","265","265","1","2","","","2021-06-01 12:01:00","2021-07-14 10:44:32");
INSERT INTO purchases VALUES("32","pr-20210701-021154","1","1","1","1","12","0","0","456","0","0","6","0","450","450","1","2","","","2021-06-01 12:01:00","2021-07-14 10:45:41");
INSERT INTO purchases VALUES("33","pr-20210701-021315","1","1","1","1","100","0","0","2100","0","0","","","2100","2100","1","2","","","2021-06-01 12:01:00","2021-07-14 10:46:07");
INSERT INTO purchases VALUES("34","pr-20210701-021628","1","1","1","1","100","0","0","3100","0","0","","","3100","3100","1","2","","","2021-06-01 12:01:00","2021-07-14 10:46:27");
INSERT INTO purchases VALUES("35","pr-20210701-021727","1","1","1","1","100","0","0","2900","0","0","","","2900","2900","1","2","","","2021-06-01 12:01:00","2021-07-14 10:47:04");
INSERT INTO purchases VALUES("36","pr-20210701-021811","1","1","1","1","100","0","0","3700","0","0","","","3700","3700","1","2","","","2021-06-01 12:01:00","2021-07-14 10:47:40");
INSERT INTO purchases VALUES("37","pr-20210701-021906","1","1","1","1","50","0","0","2900","0","0","","","2900","2900","1","2","","","2021-06-01 12:01:00","2021-07-14 10:48:48");
INSERT INTO purchases VALUES("38","pr-20210701-021943","1","1","1","1","50","0","0","1450","0","0","","","1450","1450","1","2","","","2021-06-01 12:01:00","2021-07-14 10:49:54");
INSERT INTO purchases VALUES("39","pr-20210701-022027","1","1","1","1","50","0","0","2250","0","0","","","2250","2250","1","2","","","2021-06-01 12:01:00","2021-07-14 10:50:27");
INSERT INTO purchases VALUES("40","pr-20210701-022136","1","1","1","1","60","0","0","2700","0","0","50","0","2650","2650","1","2","","","2021-06-01 12:01:00","2021-07-14 10:59:48");
INSERT INTO purchases VALUES("41","pr-20210701-022227","1","1","1","1","24","0","0","552","0","0","12","0","540","540","1","2","","","2021-06-01 12:01:00","2021-07-14 11:01:08");
INSERT INTO purchases VALUES("42","pr-20210701-022321","1","1","1","1","36","0","0","1800","0","0","","","1800","1800","1","2","","","2021-06-01 12:01:00","2021-07-14 11:01:35");
INSERT INTO purchases VALUES("43","pr-20210701-022405","1","1","1","1","36","0","0","1368","0","0","18","0","1350","1350","1","2","","","2021-06-01 12:01:00","2021-07-14 11:02:50");
INSERT INTO purchases VALUES("44","pr-20210701-022525","1","1","1","1","60","0","0","2280","0","0","30","0","2250","2250","1","2","","","2021-06-01 12:01:00","2021-07-14 11:04:05");
INSERT INTO purchases VALUES("45","pr-20210701-022644","1","1","1","1","24","0","0","408","0","0","8","0","400","400","1","2","","","2021-06-01 12:01:00","2021-07-14 11:05:55");
INSERT INTO purchases VALUES("46","pr-20210701-022803","1","1","1","1","12","0","0","552","0","0","0","0","552","552","1","2","","","2021-06-01 12:01:00","2021-07-14 11:07:27");
INSERT INTO purchases VALUES("47","pr-20210701-022843","1","1","1","1","12","0","0","420","0","0","","","420","420","1","2","","","2021-06-01 12:01:00","2021-07-14 11:07:49");
INSERT INTO purchases VALUES("48","pr-20210701-022944","1","1","1","1","72","0","0","720","0","0","","","720","720","1","2","","","2021-06-01 12:01:00","2021-07-14 11:08:32");
INSERT INTO purchases VALUES("49","pr-20210701-023031","1","1","1","1","24","0","0","216","0","0","0","0","216","216","1","2","","","2021-06-01 12:01:00","2021-07-14 11:09:23");
INSERT INTO purchases VALUES("50","pr-20210701-025346","1","1","1","1","20","0","0","280","0","0","","","280","280","1","2","","","2021-06-01 12:01:00","2021-07-14 11:10:24");
INSERT INTO purchases VALUES("51","pr-20210701-025446","1","1","1","1","12","0","0","456","0","0","","","456","456","1","2","","","2021-06-01 12:01:00","2021-07-14 11:11:32");
INSERT INTO purchases VALUES("52","pr-20210701-025833","1","1","1","1","10","0","0","350","0","0","","","350","350","1","2","","","2021-06-01 12:01:00","2021-07-14 11:23:08");
INSERT INTO purchases VALUES("53","pr-20210701-025913","1","1","1","1","5","0","0","475","0","0","","","475","475","1","2","","","2021-06-01 12:01:00","2021-07-14 11:23:40");
INSERT INTO purchases VALUES("54","pr-20210701-025955","1","1","1","1","1","0","0","250","0","0","","","250","250","1","2","","","2021-06-01 12:01:00","2021-07-14 11:24:06");
INSERT INTO purchases VALUES("55","pr-20210701-030024","1","1","1","1","1","0","0","350","0","0","","","350","350","1","2","","","2021-06-01 12:01:00","2021-07-14 11:24:32");
INSERT INTO purchases VALUES("56","pr-20210701-030103","1","1","1","1","10","0","0","1120","0","0","","","1120","1120","1","2","","","2021-06-01 12:01:00","2021-07-14 11:24:54");
INSERT INTO purchases VALUES("57","pr-20210701-030144","1","1","1","1","5","0","0","1050","0","0","","","1050","1050","1","2","","","2021-06-01 12:01:00","2021-07-14 11:39:40");
INSERT INTO purchases VALUES("58","pr-20210701-030220","1","1","1","1","5","0","0","625","0","0","","","625","625","1","2","","","2021-06-01 12:01:00","2021-07-14 11:40:13");
INSERT INTO purchases VALUES("59","pr-20210701-030325","1","1","1","1","10","0","0","400","0","0","","","400","400","1","2","","","2021-06-01 12:01:00","2021-07-14 11:40:43");
INSERT INTO purchases VALUES("60","pr-20210701-030433","1","1","1","1","12","0","0","444","0","0","","","444","444","1","2","","","2021-06-01 12:01:00","2021-07-14 11:41:26");
INSERT INTO purchases VALUES("61","pr-20210701-030506","1","1","1","1","12","0","0","900","0","0","","","900","900","1","2","","","2021-06-01 12:01:00","2021-07-14 11:49:35");
INSERT INTO purchases VALUES("62","pr-20210701-030535","1","1","1","1","10","0","0","970","0","0","","","970","970","1","2","","","2021-06-01 12:01:00","2021-07-14 11:50:03");
INSERT INTO purchases VALUES("63","pr-20210701-030625","1","1","1","1","10","0","0","1230","0","0","","","1230","1230","1","2","","","2021-06-01 12:01:00","2021-07-14 11:50:26");
INSERT INTO purchases VALUES("64","pr-20210701-030709","1","1","1","1","12","0","0","396","0","0","","","396","396","1","2","","","2021-06-01 12:01:00","2021-07-14 11:50:55");
INSERT INTO purchases VALUES("65","pr-20210701-030741","1","1","1","1","12","0","0","852","0","0","","","852","852","1","2","","","2021-06-01 12:01:00","2021-07-14 11:56:24");
INSERT INTO purchases VALUES("66","pr-20210701-030812","1","1","1","1","10","0","0","880","0","0","","","880","880","1","2","","","2021-06-01 12:01:00","2021-07-14 11:56:55");
INSERT INTO purchases VALUES("67","pr-20210701-030850","1","1","1","1","10","0","0","1120","0","0","","","1120","1120","1","2","","","2021-06-01 12:01:00","2021-07-14 11:57:21");
INSERT INTO purchases VALUES("68","pr-20210701-030944","1","1","1","1","2","0","0","1900","0","0","","","1900","1900","1","2","","","2021-06-01 12:01:00","2021-07-14 11:57:45");
INSERT INTO purchases VALUES("69","pr-20210701-031022","1","1","1","1","2","0","0","2100","0","0","","","2100","2100","1","2","","","2021-06-01 12:01:00","2021-07-14 11:58:10");
INSERT INTO purchases VALUES("70","pr-20210701-031056","1","1","1","1","1","0","0","1950","0","0","","","1950","1950","1","2","","","2021-06-01 12:01:00","2021-07-14 11:58:32");
INSERT INTO purchases VALUES("71","pr-20210701-031207","1","1","1","1","120","0","0","2760","0","0","","","2760","2760","1","2","","","2021-06-01 12:01:00","2021-07-14 11:58:57");
INSERT INTO purchases VALUES("72","pr-20210701-031319","1","1","1","1","36","0","0","900","0","0","","","900","900","1","2","","","2021-06-01 12:01:00","2021-07-14 11:59:21");
INSERT INTO purchases VALUES("73","pr-20210701-031422","1","1","1","1","3","0","0","540","0","0","","","540","540","1","2","","","2021-06-01 12:01:00","2021-07-14 11:59:42");
INSERT INTO purchases VALUES("74","pr-20210701-031453","1","1","1","1","3","0","0","630","0","0","","","630","630","1","2","","","2021-06-01 12:01:00","2021-07-14 12:00:05");
INSERT INTO purchases VALUES("75","pr-20210701-031543","1","1","1","1","6","0","0","2580","0","0","","","2580","2580","1","2","","","2021-06-01 12:01:00","2021-07-14 12:00:29");
INSERT INTO purchases VALUES("76","pr-20210701-031621","1","1","1","1","3","0","0","990","0","0","","","990","990","1","2","","","2021-06-01 12:01:00","2021-07-14 12:00:56");
INSERT INTO purchases VALUES("77","pr-20210701-031655","1","1","1","1","3","0","0","1290","0","0","","","1290","1290","1","2","","","2021-06-01 12:01:00","2021-07-14 12:01:22");
INSERT INTO purchases VALUES("78","pr-20210701-031741","1","1","1","1","2","0","0","1100","0","0","","","1100","1100","1","2","","","2021-06-01 12:01:00","2021-07-14 12:01:43");
INSERT INTO purchases VALUES("79","pr-20210701-031840","1","1","1","1","72","0","0","936","0","0","","","936","936","1","2","","","2021-06-01 12:01:00","2021-07-14 12:02:21");
INSERT INTO purchases VALUES("80","pr-20210701-031928","1","1","1","1","60","0","0","780","0","0","","","780","780","1","2","","","2021-06-01 12:01:00","2021-07-14 12:02:42");
INSERT INTO purchases VALUES("81","pr-20210701-032019","1","1","1","1","36","0","0","468","0","0","","","468","468","1","2","","","2021-06-01 12:01:00","2021-07-14 12:03:04");
INSERT INTO purchases VALUES("82","pr-20210701-032053","1","1","1","1","24","0","0","336","0","0","","","336","336","1","2","","","2021-06-01 12:01:00","2021-07-14 12:12:51");
INSERT INTO purchases VALUES("83","pr-20210701-032122","1","1","1","1","24","0","0","360","0","0","","","360","360","1","2","","","2021-06-01 12:01:00","2021-07-14 12:13:19");
INSERT INTO purchases VALUES("84","pr-20210701-032213","1","1","1","1","20","0","0","1100","0","0","","","1100","1100","1","2","","","2021-06-01 12:01:00","2021-07-14 12:13:42");
INSERT INTO purchases VALUES("85","pr-20210701-032307","1","1","1","1","60","0","0","720","0","0","","","720","720","1","2","","","2021-06-01 12:01:00","2021-07-14 12:14:08");
INSERT INTO purchases VALUES("86","pr-20210701-041340","1","1","1","1","60","0","0","720","0","0","","","720","720","1","2","","","2021-06-01 12:01:00","2021-07-14 12:04:14");
INSERT INTO purchases VALUES("87","pr-20210701-041425","1","1","1","1","6","0","0","2040","0","0","","","2040","2040","1","2","","","2021-06-01 12:01:00","2021-07-14 12:04:34");
INSERT INTO purchases VALUES("88","pr-20210701-041456","1","1","1","1","6","0","0","2100","0","0","","","2100","2100","1","2","","","2021-06-01 12:01:00","2021-07-14 12:14:31");
INSERT INTO purchases VALUES("89","pr-20210701-041608","1","1","1","1","6","0","0","2160","0","0","","","2160","2160","1","2","","","2021-06-01 12:01:00","2021-07-14 12:14:54");
INSERT INTO purchases VALUES("90","pr-20210701-041731","1","1","1","1","36","0","0","2160","0","0","","","2160","2160","1","2","","","2021-06-01 12:01:00","2021-07-14 12:16:54");
INSERT INTO purchases VALUES("91","pr-20210701-042107","1","1","1","1","24","0","0","1440","0","0","","","1440","1440","1","2","","","2021-06-01 12:01:00","2021-07-14 12:17:18");
INSERT INTO purchases VALUES("92","pr-20210701-042159","1","1","1","1","36","0","0","648","0","0","","","648","648","1","2","","","2021-06-01 12:01:00","2021-07-14 12:17:42");
INSERT INTO purchases VALUES("93","pr-20210701-042246","1","1","1","1","12","0","0","156","0","0","","","156","156","1","2","","","2021-06-01 12:01:00","2021-07-14 12:18:10");
INSERT INTO purchases VALUES("94","pr-20210701-042406","1","1","1","1","48","0","0","3360","0","0","","","3360","3360","1","2","","","2021-06-01 12:01:00","2021-07-14 12:18:33");
INSERT INTO purchases VALUES("95","pr-20210701-042454","1","1","1","1","18","0","0","2520","0","0","","","2520","2520","1","2","","","2021-06-01 12:01:00","2021-07-14 12:18:59");
INSERT INTO purchases VALUES("96","pr-20210701-042532","1","1","1","1","24","0","0","336","0","0","","","336","336","1","2","","","2021-06-01 12:01:00","2021-07-14 12:19:20");
INSERT INTO purchases VALUES("97","pr-20210701-042634","1","1","1","1","12","0","0","324","0","0","","","324","324","1","2","","","2021-06-01 12:01:00","2021-07-14 12:19:51");
INSERT INTO purchases VALUES("98","pr-20210701-042707","1","1","1","1","12","0","0","720","0","0","","","720","720","1","2","","","2021-06-01 12:01:00","2021-07-14 12:20:19");
INSERT INTO purchases VALUES("99","pr-20210701-042750","1","1","1","1","2","0","0","240","0","0","","","240","240","1","2","","","2021-06-01 12:01:00","2021-07-14 12:20:40");
INSERT INTO purchases VALUES("100","pr-20210701-042959","1","1","1","1","200","0","0","1200","0","0","","","1200","1200","1","2","","","2021-06-01 12:01:00","2021-07-14 12:21:03");
INSERT INTO purchases VALUES("101","pr-20210701-043212","1","1","1","1","160","0","0","1440","0","0","","","1440","1440","1","2","","","2021-06-01 12:01:00","2021-07-14 12:21:43");
INSERT INTO purchases VALUES("102","pr-20210701-043246","1","1","1","1","20","0","0","1200","0","0","","","1200","1200","1","2","","","2021-06-01 12:01:00","2021-07-14 12:24:25");
INSERT INTO purchases VALUES("103","pr-20210701-043325","1","1","1","1","20","0","0","640","0","0","","","640","640","1","2","","","2021-06-01 12:01:00","2021-07-14 12:24:47");
INSERT INTO purchases VALUES("104","pr-20210701-043356","1","1","1","1","10","0","0","240","0","0","","","240","240","1","2","","","2021-06-01 12:01:00","2021-07-14 12:25:10");
INSERT INTO purchases VALUES("105","pr-20210701-043426","1","1","1","1","10","0","0","240","0","0","","","240","240","1","2","","","2021-06-01 12:01:00","2021-07-14 12:25:34");
INSERT INTO purchases VALUES("106","pr-20210701-043528","1","1","1","1","48","0","0","4560","0","0","","","4560","4560","1","2","","","2021-06-01 12:01:00","2021-07-14 12:26:23");
INSERT INTO purchases VALUES("107","pr-20210701-043609","1","1","1","1","18","0","0","3420","0","0","","","3420","3420","1","2","","","2021-06-01 12:01:00","2021-07-14 12:26:51");
INSERT INTO purchases VALUES("108","pr-20210701-043655","1","1","1","1","40","0","0","1600","0","0","","","1600","1600","1","2","","","2021-06-01 12:01:00","2021-07-14 12:27:17");
INSERT INTO purchases VALUES("109","pr-20210701-043732","1","1","1","1","6","0","0","3900","0","0","","","3900","3900","1","2","","","2021-06-01 12:01:00","2021-07-14 12:27:40");
INSERT INTO purchases VALUES("112","pr-20210702-052923","1","1","1","1","12","0","0","216","0","0","0","0","216","216","1","2","","","2021-06-01 12:01:00","2021-07-14 12:28:00");
INSERT INTO purchases VALUES("114","pr-20210705-121856","1","1","1","1","20","0","0","760","0","0","0","0","760","760","1","2","","","2021-06-01 12:01:00","2021-07-14 12:28:22");
INSERT INTO purchases VALUES("115","pr-20210705-122457","1","1","1","1","24","0","0","288","0","0","","","288","288","1","2","","","2021-06-01 12:01:00","2021-07-14 12:03:51");
INSERT INTO purchases VALUES("116","pr-20210705-123306","1","1","1","1","12","0","0","456","0","0","","","456","456","1","2","","","2021-06-01 12:01:00","2021-07-14 12:03:31");
INSERT INTO purchases VALUES("117","pr-20210705-123411","1","1","1","1","25","0","0","225","0","0","","","225","225","1","2","","","2021-06-01 12:01:00","2021-07-14 11:39:13");
INSERT INTO purchases VALUES("118","pr-20210705-032850","1","1","1","29","827","0","0","40904","0","0","124","0","40780","40780","1","2","","","2021-06-17 12:01:00","2021-08-10 02:24:10");
INSERT INTO purchases VALUES("119","pr-20210706-013931","1","1","3","4","18","0","0","28620","0","0","","","28620","24500","1","1","","","2021-06-03 12:03:00","2021-07-28 12:05:17");
INSERT INTO purchases VALUES("120","pr-20210706-014300","1","1","3","1","2","0","0","2920","0","0","","","2920","0","1","1","","","2021-06-04 12:04:00","2021-07-06 13:43:00");
INSERT INTO purchases VALUES("121","pr-20210706-014814","1","1","3","2","4","0","0","3540","0","0","","40","3580","3580","1","2","","","2021-06-17 12:01:00","2021-07-12 10:13:47");
INSERT INTO purchases VALUES("122","pr-20210706-015541","1","1","3","1","5","0","0","100","0","0","","","100","100","1","2","","","2021-06-17 12:01:00","2021-07-12 10:14:16");
INSERT INTO purchases VALUES("123","pr-20210706-015828","1","1","3","3","40","0","0","3400","0","0","","","3400","0","1","1","","","2021-06-04 12:04:00","2021-07-06 13:58:28");
INSERT INTO purchases VALUES("124","pr-20210706-015943","1","1","3","1","5","0","0","7250","0","0","","","7250","7250","1","2","","","2021-06-17 12:01:00","2021-07-12 10:15:04");
INSERT INTO purchases VALUES("125","pr-20210706-020229","1","1","3","2","4","0","0","1700","0","0","","40","1740","1740","1","2","","","2021-06-17 12:01:00","2021-07-12 10:15:38");
INSERT INTO purchases VALUES("126","pr-20210706-020613","1","1","3","5","7","0","0","17100","0","0","","50","17150","17150","1","2","","","2021-06-17 12:01:00","2021-07-12 10:16:29");
INSERT INTO purchases VALUES("127","pr-20210706-020801","1","1","3","1","2","0","0","4960","0","0","","30","4990","4990","1","2","","","2021-06-17 12:01:00","2021-07-12 10:17:27");
INSERT INTO purchases VALUES("133","pr-20210707-025323","1","1","3","1","2","0","0","7200","0","0","","","7200","7200","1","2","","","2021-06-28 12:06:00","2021-07-12 10:16:55");
INSERT INTO purchases VALUES("134","pr-20210708-123936","1","1","23","37","6342","0","0","20438","0","0","218","0","20220","20220","1","2","","","2021-06-01 12:06:00","2021-08-01 09:38:51");
INSERT INTO purchases VALUES("135","pr-20210708-124148","1","1","","1","20","0","0","880","0","0","","","880","880","1","2","","","2021-06-01 12:06:00","2021-07-12 15:19:31");
INSERT INTO purchases VALUES("136","pr-20210708-125328","1","1","22","9","123","0","0","21913","0","0","1095","","20818","18818","1","1","","","2021-05-03 12:05:00","2021-07-28 11:56:03");
INSERT INTO purchases VALUES("137","pr-20210708-015132","1","1","22","5","78","0","0","11052","0","0","1105","","9947","4000","1","1","","","2021-06-21 12:06:00","2021-07-12 12:42:36");
INSERT INTO purchases VALUES("138","pr-20210708-021634","1","1","24","7","120","0","0","3294","0","0","","","3294","3294","1","2","","","2021-05-27 12:05:00","2021-07-28 12:49:14");
INSERT INTO purchases VALUES("139","pr-20210708-022003","1","1","24","3","12","0","0","2685","0","0","","","2685","2500","1","1","","","2021-05-27 12:05:00","2021-07-28 12:46:37");
INSERT INTO purchases VALUES("140","pr-20210708-022419","1","1","24","5","24","0","0","11190","0","0","","","11190","11190","1","2","","","2021-05-27 12:05:00","2021-07-28 12:48:43");
INSERT INTO purchases VALUES("144","pr-20210708-030234","1","1","24","10","89","0","0","21520","0","0","","","21520","21520","1","2","","","2021-05-27 12:05:00","2021-07-28 12:50:26");
INSERT INTO purchases VALUES("145","pr-20210708-030744","1","1","24","1","20","0","0","10400","0","0","","","10400","0","1","1","","","2021-06-07 12:06:00","2021-07-08 15:07:44");
INSERT INTO purchases VALUES("146","pr-20210708-034413","1","1","21","17","137","0","0","29407","0","0","","","29407","22000","1","1","","","2021-06-03 12:06:00","2021-07-28 11:57:08");
INSERT INTO purchases VALUES("147","pr-20210709-123241","1","1","24","3","15","0","0","6807","0","0","","","6807","0","1","1","","","2021-06-21 12:06:00","2021-07-09 12:32:41");
INSERT INTO purchases VALUES("148","pr-20210709-030652","1","1","25","9","86","0","0","19324","0","0","8","","19316","16500","1","1","","","2021-06-07 12:06:00","2021-07-28 13:01:16");
INSERT INTO purchases VALUES("149","pr-20210709-034523","1","1","25","3","42","0","0","11910","0","0","","","11910","0","1","1","","","2021-06-17 12:06:00","2021-07-09 15:45:23");
INSERT INTO purchases VALUES("150","pr-20210710-121435","1","1","26","20","374","0","0","26347","0","0","","","26347","21000","1","1","","","2021-06-03 12:06:00","2021-07-28 11:58:06");
INSERT INTO purchases VALUES("151","pr-20210710-011010","1","1","27","3","70","0","0","3290","0","0","","","3290","3290","1","2","","","2021-06-05 12:06:00","2021-07-12 12:28:21");
INSERT INTO purchases VALUES("152","pr-20210710-011250","1","1","27","1","20","0","0","1560","0","0","","","1560","1560","1","2","","","2021-06-17 12:06:00","2021-07-12 12:27:37");
INSERT INTO purchases VALUES("153","pr-20210712-111121","1","1","23","2","20","0","0","640","0","0","","","640","640","1","2","","","2021-06-01 12:06:00","2021-07-12 11:15:53");
INSERT INTO purchases VALUES("154","pr-20210712-023741","1","1","19","15","150","0","0","30110","0","0","17","","30093","30000","1","1","","","2021-06-14 12:06:00","2021-07-12 14:55:38");
INSERT INTO purchases VALUES("155","pr-20210712-024445","1","1","19","11","106","0","0","29528","0","0","16","","29512","0","1","1","","","2021-06-14 12:06:00","2021-07-12 14:44:45");
INSERT INTO purchases VALUES("156","pr-20210712-025049","1","1","19","12","12","0","0","16895","0","0","","","16895","0","1","1","","","2021-06-14 12:06:00","2021-07-12 14:50:49");
INSERT INTO purchases VALUES("157","pr-20210712-025322","1","1","19","2","20","0","0","3600","0","0","4","","3596","0","1","1","","","2021-06-17 12:06:00","2021-07-12 14:53:22");
INSERT INTO purchases VALUES("158","pr-20210712-025834","1","1","19","1","10","0","0","1860","0","0","","","1860","560","1","1","","","2021-06-21 12:06:00","2021-07-12 15:01:05");
INSERT INTO purchases VALUES("159","pr-20210712-031219","1","1","18","14","173","0","0","27110","0","0","","","27110","13000","1","1","","","2021-06-22 12:06:00","2021-07-28 12:18:24");
INSERT INTO purchases VALUES("160","pr-20210712-031545","1","1","","1","50","0","0","1850","0","0","","","1850","1850","1","2","","","2021-06-26 12:06:00","2021-07-13 10:33:29");
INSERT INTO purchases VALUES("162","pr-20210712-040918","1","1","28","20","90","0","0","7057","0","0","","","7057","7057","1","2","","","2021-06-10 12:06:00","2021-07-12 16:10:50");
INSERT INTO purchases VALUES("163","pr-20210712-052845","1","1","29","6","900","0","0","21356","0","0","0","0","21356","21356","1","2","","","2021-06-03 12:06:00","2021-08-05 02:32:35");
INSERT INTO purchases VALUES("164","pr-20210712-053418","1","1","29","9","2100","0","0","50873","0","0","73","0","50800","50800","1","2","","","2021-06-09 12:06:00","2021-08-05 02:28:42");
INSERT INTO purchases VALUES("165","pr-20210713-042052","1","1","20","1","100","0","0","9840","0","0","0","0","9840","9840","1","2","","","2021-06-08 12:06:00","2021-08-05 02:41:55");
INSERT INTO purchases VALUES("166","pr-20210713-042502","1","1","20","7","1400","0","0","36254","0","0","254","0","36000","36000","1","2","","","2021-06-09 12:06:00","2021-08-05 02:44:18");
INSERT INTO purchases VALUES("167","pr-20210713-094017","1","1","16","8","1605","0","0","40195","0","0","0","0","40195","30000","1","1","","","2021-06-03 12:06:00","2021-08-05 02:50:59");
INSERT INTO purchases VALUES("168","pr-20210713-095518","1","1","16","2","200","0","0","4167","0","0","0","0","4167","4167","1","2","","","2021-06-26 12:06:00","2021-08-05 02:53:30");
INSERT INTO purchases VALUES("169","pr-20210713-101049","1","1","16","1","15","0","0","1425","0","0","","","1425","1425","1","2","","","2021-06-26 12:06:00","2021-07-13 10:11:29");
INSERT INTO purchases VALUES("170","pr-20210713-101741","1","1","16","1","30","0","0","1650","0","0","","","1650","1650","1","2","","","2021-06-20 12:06:00","2021-07-13 10:18:28");
INSERT INTO purchases VALUES("171","pr-20210713-102337","1","1","16","1","32","0","0","2560","0","0","60","","2500","2500","1","2","","","2021-06-21 12:06:00","2021-07-13 10:24:12");
INSERT INTO purchases VALUES("172","pr-20210713-102850","1","1","","2","70","0","0","4500","0","0","","80","4580","4580","1","2","","","2021-06-19 12:06:00","2021-07-13 10:31:00");
INSERT INTO purchases VALUES("173","pr-20210713-110129","1","1","30","5","264","0","0","11042.4","0","0","","","11042.4","11042.4","1","2","","","2021-06-02 12:06:00","2021-07-28 14:01:02");
INSERT INTO purchases VALUES("174","pr-20210713-110643","1","1","30","7","84","0","0","3936","0","0","","","3936","3936","1","2","","","2021-06-02 12:06:00","2021-07-28 14:01:47");
INSERT INTO purchases VALUES("175","pr-20210713-110953","1","1","30","2","149","0","0","3832","0","0","","","3832","3832","1","2","","","2021-06-02 12:06:00","2021-07-28 14:02:18");
INSERT INTO purchases VALUES("176","pr-20210713-111148","1","1","30","3","36","0","0","3324","0","0","","","3324","3324","1","2","","","2021-06-02 12:06:00","2021-07-28 14:02:58");
INSERT INTO purchases VALUES("177","pr-20210713-121015","1","1","30","11","134","0","0","61850","0","0","20102","","41748","21488","1","1","","","2021-06-02 12:06:00","2021-07-28 14:10:39");
INSERT INTO purchases VALUES("178","pr-20210713-121646","1","1","30","12","90","0","0","13818","0","0","","","13818","13818","1","2","","","2021-06-02 12:06:00","2021-07-28 14:07:12");
INSERT INTO purchases VALUES("179","pr-20210713-121808","1","1","30","2","48","0","0","1560","0","0","","","1560","1560","1","2","","","2021-06-02 12:06:00","2021-07-28 14:03:48");
INSERT INTO purchases VALUES("180","pr-20210714-044337","1","1","6","14","261","0","0","10436","0","0","36","","10400","10400","1","2","","","2021-06-03 12:06:00","2021-07-26 11:42:56");
INSERT INTO purchases VALUES("181","pr-20210714-045021","1","1","6","3","151","0","0","3866","0","0","","","3866","3866","1","2","","","2021-06-05 12:06:00","2021-07-14 16:51:00");
INSERT INTO purchases VALUES("182","pr-20210714-045617","1","1","6","9","78","0","0","3982","0","0","22","","3960","3960","1","2","","","2021-06-07 12:06:00","2021-07-14 16:56:45");
INSERT INTO purchases VALUES("183","pr-20210714-050754","1","1","5","21","141","0","0","4183","0","0","33","","4150","4150","1","2","","","2021-06-09 12:06:00","2021-07-14 17:08:48");
INSERT INTO purchases VALUES("184","pr-20210714-051351","1","1","5","11","84","0","0","5595","0","0","45","","5550","5550","1","2","","","2021-06-09 12:06:00","2021-07-14 17:14:15");
INSERT INTO purchases VALUES("185","pr-20210714-051813","1","1","3","1","3.611","0","0","454.99","0","0","","","454.99","454.99","1","2","","","2021-06-09 12:06:00","2021-07-14 17:18:44");
INSERT INTO purchases VALUES("186","pr-20210714-052057","1","1","3","2","27","0","0","3000","0","0","","","3000","3000","1","2","","","2021-06-11 12:06:00","2021-07-14 17:21:45");
INSERT INTO purchases VALUES("187","pr-20210715-021207","1","1","5","6","40","0","0","3100","0","0","10","","3090","3090","1","2","","","2021-06-13 12:06:00","2021-07-15 02:27:59");
INSERT INTO purchases VALUES("188","pr-20210715-021858","1","1","5","11","193","0","0","6743","0","0","133","","6610","6610","1","2","","","2021-06-14 12:06:00","2021-07-15 02:28:32");
INSERT INTO purchases VALUES("189","pr-20210715-022716","1","1","5","13","379","0","0","10045","0","0","145","0","9900","9900","1","2","","","2021-06-17 12:06:00","2021-07-15 02:32:06");
INSERT INTO purchases VALUES("190","pr-20210715-023955","1","1","32","8","100","0","0","4980","0","0","","","4980","3500","1","1","","","2021-06-17 12:06:00","2021-07-28 11:54:29");
INSERT INTO purchases VALUES("191","pr-20210715-024306","1","1","4","1","10","0","0","1550","0","0","","","1550","1550","1","2","","","2021-06-20 12:06:00","2021-07-15 02:43:39");
INSERT INTO purchases VALUES("192","pr-20210715-024531","1","1","","1","40","0","0","800","0","0","","","800","800","1","2","","","2021-06-24 12:06:00","2021-07-15 02:45:51");
INSERT INTO purchases VALUES("193","pr-20210715-024755","1","1","3","1","25","0","0","2800","0","0","","","2800","2800","1","2","","","2021-06-29 12:06:00","2021-07-15 02:48:14");
INSERT INTO purchases VALUES("194","pr-20210715-041050","1","1","31","3","115","0","0","2560","0","0","","","2560","2560","1","2","","","2021-06-13 12:06:00","2021-07-15 04:11:16");
INSERT INTO purchases VALUES("195","pr-20210715-041549","1","1","31","5","170","0","0","9200","0","0","","","9200","9200","1","2","","","2021-06-14 12:06:00","2021-07-15 04:32:23");
INSERT INTO purchases VALUES("196","pr-20210715-043744","1","1","28","2","48","0","0","576","0","0","","","576","576","1","2","","","2021-06-23 12:06:00","2021-07-15 05:03:44");
INSERT INTO purchases VALUES("197","pr-20210715-094008","1","1","33","15","99","0","0","11097","0","0","0","0","11097","10000","1","1","","","2021-06-10 12:06:00","2021-08-02 02:35:21");
INSERT INTO purchases VALUES("198","pr-20210715-100502","1","1","8","3","250","0","0","2600","0","0","","","2600","2600","1","2","","","2021-06-01 12:06:00","2021-07-15 10:11:11");
INSERT INTO purchases VALUES("199","pr-20210715-100832","1","1","8","1","1","0","0","15800","0","0","","","15800","15800","1","2","","Screw, Roofing & Others","2021-06-01 12:06:00","2021-07-15 10:11:29");
INSERT INTO purchases VALUES("200","pr-20210715-101025","1","1","","1","5","0","0","475","0","0","","","475","475","1","2","","Rub/Binder","2021-06-01 12:06:00","2021-07-15 10:13:55");
INSERT INTO purchases VALUES("201","pr-20210715-102727","1","1","7","19","166","0","0","22029","0","0","10","","22019","22019","1","2","","","2021-06-03 12:06:00","2021-08-12 13:19:15");
INSERT INTO purchases VALUES("202","pr-20210715-103819","1","1","7","3","16","0","0","12130","0","0","","","12130","12130","1","2","","","2021-06-04 12:06:00","2021-08-12 13:19:52");
INSERT INTO purchases VALUES("203","pr-20210716-023623","1","1","2","10","14","0","0","42600","0","0","","","42600","39500","1","1","","","2021-05-25 12:05:00","2021-08-01 15:05:50");
INSERT INTO purchases VALUES("204","pr-20210716-024151","1","1","2","2","3","0","0","11500","0","0","","","11500","8500","1","1","","","2021-06-21 12:06:00","2021-07-16 02:43:04");
INSERT INTO purchases VALUES("205","pr-20210716-024458","1","1","2","1","10","0","0","5600","0","0","","","5600","3000","1","1","","","2021-06-24 12:06:00","2021-07-16 02:45:27");
INSERT INTO purchases VALUES("206","pr-20210716-031339","1","1","15","9","47","0","0","78344","0","0","5","","78339","49386","1","1","","Form Mahabub Plaza","2021-05-28 12:05:00","2021-07-28 12:14:39");
INSERT INTO purchases VALUES("207","pr-20210716-034227","1","1","52","1","100","0","0","1700","0","0","0","0","1700","0","1","1","","","2021-06-26 12:06:00","2021-07-28 10:50:05");
INSERT INTO purchases VALUES("208","pr-20210716-040312","1","1","","2","420","0","0","62280","0","0","","1550","63830","63830","1","2","","Collect From Depo by Perves","2021-06-18 12:06:00","2021-07-16 04:04:19");
INSERT INTO purchases VALUES("209","pr-20210716-040651","1","1","","1","17","0","0","5950","0","0","50","","5900","5900","1","2","","","2021-06-03 12:06:00","2021-07-16 04:07:49");
INSERT INTO purchases VALUES("210","pr-20210716-041428","1","1","34","1","1","0","0","14200","0","0","","20","14220","14220","1","2","","","2021-06-15 12:06:00","2021-07-16 04:14:55");
INSERT INTO purchases VALUES("211","pr-20210716-041805","1","1","34","1","1","0","0","14000","0","0","","","14000","14000","1","2","","","2021-06-09 12:06:00","2021-07-16 04:18:34");
INSERT INTO purchases VALUES("212","pr-20210716-042621","1","1","35","1","1","0","0","25500","0","0","","100","25600","25600","1","2","","","2021-06-27 12:06:00","2021-07-16 04:26:47");
INSERT INTO purchases VALUES("213","pr-20210716-045026","1","1","14","9","164","0","0","15833.76","0","0","33","","15800.76","15800.76","1","2","","","2021-06-23 12:06:00","2021-07-16 04:51:14");
INSERT INTO purchases VALUES("214","pr-20210716-045743","1","1","36","1","7","0","0","5320","0","0","","","5320","5320","1","2","","","2021-06-28 12:06:00","2021-07-16 04:58:13");
INSERT INTO purchases VALUES("215","pr-20210716-050344","1","1","11","3","3","0","0","8200","0","0","","","8200","8100","1","1","","","2021-06-28 12:06:00","2021-07-16 05:04:22");
INSERT INTO purchases VALUES("216","pr-20210718-033514","1","1","9","16","536","0","0","6094","0","0","28","","6066","0","1","1","","","2021-06-01 12:06:00","2021-07-18 03:35:14");
INSERT INTO purchases VALUES("217","pr-20210718-035425","1","1","9","16","482","0","0","13077","0","0","","","13077","5055","1","1","","","2021-06-01 12:06:00","2021-07-18 04:42:53");
INSERT INTO purchases VALUES("218","pr-20210718-040403","1","1","9","16","328","0","0","14450","0","0","","","14450","0","1","1","","","2021-06-01 12:06:00","2021-07-18 04:04:03");
INSERT INTO purchases VALUES("219","pr-20210718-041019","1","1","9","12","479","0","0","4690","0","0","","","4690","0","1","1","","","2021-06-01 12:06:00","2021-07-18 04:10:19");
INSERT INTO purchases VALUES("220","pr-20210718-042102","1","1","9","14","90","0","0","35215","0","0","270","","34945","34945","1","2","","","2021-06-01 12:06:00","2021-07-18 04:41:23");
INSERT INTO purchases VALUES("221","pr-20210718-042752","1","1","9","15","153","0","0","23320","0","0","","","23320","18000","1","1","","","2021-06-01 12:06:00","2021-07-18 04:39:32");
INSERT INTO purchases VALUES("222","pr-20210718-043342","1","1","9","15","402","0","0","17715","0","0","5","","17710","0","1","1","","","2021-06-01 12:06:00","2021-07-18 04:33:42");
INSERT INTO purchases VALUES("223","pr-20210718-043605","1","1","9","6","32","0","0","3805","0","0","","","3805","0","1","1","","","2021-06-01 12:06:00","2021-07-18 04:36:05");
INSERT INTO purchases VALUES("224","pr-20210718-073039","1","1","9","4","86","0","0","2690","0","0","","","2690","2690","1","2","","","2021-06-03 12:06:00","2021-07-18 10:51:01");
INSERT INTO purchases VALUES("225","pr-20210718-075325","1","1","9","16","332","0","0","7945","0","0","","","7945","7945","1","2","","","2021-06-05 12:06:00","2021-07-18 10:51:49");
INSERT INTO purchases VALUES("226","pr-20210718-091829","1","1","9","16","226","0","0","5225","0","0","","","5225","5225","1","2","","","2021-06-05 12:06:00","2021-07-18 10:52:31");
INSERT INTO purchases VALUES("227","pr-20210718-093444","1","1","9","16","245","0","0","9780","0","0","","","9780","9780","1","2","","","2021-06-05 12:06:00","2021-07-18 10:53:10");
INSERT INTO purchases VALUES("228","pr-20210718-094428","1","1","9","5","22","0","0","3965","0","0","","100","4065","4065","1","2","","","2021-06-05 12:06:00","2021-07-18 10:53:42");
INSERT INTO purchases VALUES("229","pr-20210718-100430","1","1","9","10","269","0","0","20300","0","0","0","200","20500","20500","1","2","","","2021-06-09 12:06:00","2021-07-18 10:47:36");
INSERT INTO purchases VALUES("230","pr-20210718-102049","1","1","9","14","112","0","0","6678","0","0","","","6678","6678","1","2","","","2021-06-10 12:06:00","2021-07-18 10:48:10");
INSERT INTO purchases VALUES("231","pr-20210718-102924","1","1","9","8","106","0","0","7400","0","0","","100","7500","7500","1","2","","","2021-06-10 12:06:00","2021-07-18 10:48:47");
INSERT INTO purchases VALUES("232","pr-20210718-103433","1","1","9","4","15","0","0","1995","0","0","","60","2055","2055","1","2","","","2021-06-12 12:06:00","2021-07-18 10:49:23");
INSERT INTO purchases VALUES("233","pr-20210718-103618","1","1","9","1","8","0","0","5040","0","0","","","5040","5040","1","2","","","2021-06-15 12:06:00","2021-07-18 10:49:50");
INSERT INTO purchases VALUES("234","pr-20210718-104521","1","1","9","4","33","0","0","7420","0","0","","","7420","7420","1","2","","Bill No-157","2021-06-12 12:06:00","2021-07-18 10:46:35");
INSERT INTO purchases VALUES("235","pr-20210718-114206","1","1","9","11","71","0","0","4203","0","0","","60","4263","0","1","1","","","2021-06-16 12:06:00","2021-07-18 11:42:06");
INSERT INTO purchases VALUES("236","pr-20210718-115443","1","1","9","12","534","0","0","25460","0","0","","60","25520","20000","1","1","","Bill No-301","2020-06-29 12:06:00","2021-08-09 01:52:54");
INSERT INTO purchases VALUES("237","pr-20210718-115753","1","1","9","5","16","0","0","3967","0","0","","","3967","0","1","1","","Bill No-303","2021-06-29 12:06:00","2021-07-18 11:57:53");
INSERT INTO purchases VALUES("238","pr-20210718-120649","1","1","9","11","180","0","0","8414","0","0","0","60","8474","0","1","1","","","2021-06-30 12:06:00","2021-07-18 12:11:31");
INSERT INTO purchases VALUES("239","pr-20210718-123447","1","1","9","23","1134","0","0","27192","0","0","0","100","27292","0","1","1","","","2021-06-26 12:06:00","2021-07-18 12:40:59");
INSERT INTO purchases VALUES("240","pr-20210718-015826","1","1","35","2","51","0","0","6840","0","0","","","6840","6840","1","2","","","2021-06-05 12:06:00","2021-07-18 13:59:45");
INSERT INTO purchases VALUES("241","pr-20210718-020227","1","1","35","2","6","0","0","1400","0","0","","","1400","1400","1","2","","","2021-06-10 12:06:00","2021-07-18 14:02:57");
INSERT INTO purchases VALUES("242","pr-20210718-021241","1","1","35","5","261","0","0","23440","0","0","0","0","23440","23440","1","2","","","2021-06-19 12:06:00","2021-07-18 14:17:55");
INSERT INTO purchases VALUES("243","pr-20210718-022059","1","1","36","2","23","0","0","2180","0","0","","","2180","2180","1","2","","","2021-06-24 12:06:00","2021-07-18 14:21:27");
INSERT INTO purchases VALUES("244","pr-20210718-023426","1","1","37","3","28","0","0","3900","0","0","0","0","3900","3900","1","2","","","2021-06-20 12:06:00","2021-07-18 14:42:38");
INSERT INTO purchases VALUES("245","pr-20210718-024126","1","1","37","1","10","0","0","1380","0","0","","","1380","1380","1","2","","","2021-06-24 12:06:00","2021-07-18 14:42:08");
INSERT INTO purchases VALUES("246","pr-20210718-025033","1","1","37","4","31","0","0","6474","0","0","1313","","5161","5161","1","2","","","2021-06-27 12:06:00","2021-07-18 14:50:59");
INSERT INTO purchases VALUES("247","pr-20210718-025219","1","1","37","1","4","0","0","1280","0","0","","","1280","1280","1","2","","","2021-06-28 12:06:00","2021-07-18 14:52:56");
INSERT INTO purchases VALUES("248","pr-20210718-025829","1","1","37","2","10","0","0","500","0","0","","","500","500","1","2","","","2021-06-29 12:06:00","2021-07-18 14:59:02");
INSERT INTO purchases VALUES("249","pr-20210718-030209","1","1","10","2","7","0","0","450","0","0","","","450","0","1","1","","","2021-06-28 12:06:00","2021-07-18 15:02:09");
INSERT INTO purchases VALUES("250","pr-20210719-040457","1","1","37","1","2","0","0","130","0","0","","","130","130","1","2","","","2021-06-15 12:06:00","2021-07-19 04:05:18");
INSERT INTO purchases VALUES("251","pr-20210719-042119","1","1","34","2","47","0","0","4010","0","0","75","","3935","3935","1","2","","","2021-06-26 12:06:00","2021-07-19 04:21:57");
INSERT INTO purchases VALUES("252","pr-20210719-042623","1","1","35","3","30","0","0","2150","0","0","","","2150","2150","1","2","","","2021-06-10 12:06:00","2021-07-19 04:27:19");
INSERT INTO purchases VALUES("253","pr-20210719-123415","1","1","","2","62","0","0","3570","0","0","","","3570","3570","1","2","","","2021-06-10 12:06:00","2021-07-19 12:36:32");
INSERT INTO purchases VALUES("254","pr-20210719-125238","1","1","34","6","636","0","0","6375","0","0","5","","6370","6370","1","2","","","2021-06-09 12:06:00","2021-07-19 12:53:09");
INSERT INTO purchases VALUES("255","pr-20210719-012836","1","1","37","4","12","0","0","12320","0","0","","","12320","12320","1","2","","","2021-06-28 12:06:00","2021-07-19 13:28:59");
INSERT INTO purchases VALUES("256","pr-20210719-014837","1","1","13","8","21","0","0","31064","0","0","14","0","31050","31050","1","2","","","2021-06-09 12:06:00","2021-07-19 13:51:11");
INSERT INTO purchases VALUES("257","pr-20210719-023643","1","1","38","1","300","0","0","2040","0","0","","","2040","2040","1","2","","","2021-06-07 12:06:00","2021-07-19 14:37:13");
INSERT INTO purchases VALUES("258","pr-20210719-024026","1","1","38","3","1100","0","0","11240","0","0","40","0","11200","11200","1","2","","","2021-06-12 12:06:00","2021-07-19 14:44:12");
INSERT INTO purchases VALUES("259","pr-20210719-024617","1","1","38","1","1000","0","0","12400","0","0","","","12400","6500","1","1","","","2021-06-22 12:06:00","2021-07-29 12:06:17");
INSERT INTO purchases VALUES("260","pr-20210719-030256","1","1","39","2","2","0","0","10050","0","0","","","10050","5550","1","1","","","2021-06-25 12:06:00","2021-07-19 15:05:09");
INSERT INTO purchases VALUES("261","pr-20210719-032503","1","1","40","2","2","0","0","15600","0","0","","","15600","13500","1","1","","","2021-06-12 12:06:00","2021-07-19 15:26:26");
INSERT INTO purchases VALUES("262","pr-20210719-032808","1","1","40","1","1","0","0","11700","0","0","","","11700","11700","1","2","","","2021-06-13 12:06:00","2021-07-19 15:28:42");
INSERT INTO purchases VALUES("263","pr-20210719-033355","1","1","40","1","2","0","0","19300","0","0","","","19300","19300","1","2","","","2021-05-29 12:05:00","2021-07-19 15:34:37");
INSERT INTO purchases VALUES("264","pr-20210719-035734","1","1","41","4","4","0","0","33565","0","0","0","0","33565","10650","1","1","","","2021-06-22 12:06:00","2021-07-19 15:59:58");
INSERT INTO purchases VALUES("265","pr-20210720-043835","1","1","42","4","990","0","0","28080","0","0","30","0","28050","28050","1","2","","","2021-06-09 12:06:00","2021-07-20 04:43:28");
INSERT INTO purchases VALUES("266","pr-20210720-045311","1","1","42","15","596","0","0","15240","0","0","","","15240","9500","1","1","","","2021-06-22 12:06:00","2021-08-01 15:02:57");
INSERT INTO purchases VALUES("267","pr-20210720-052919","1","1","12","2","3","0","0","12900","0","0","","","12900","12900","1","2","","","2021-05-25 12:05:00","2021-07-20 05:29:40");
INSERT INTO purchases VALUES("268","pr-20210720-053329","1","1","12","2","2","0","0","9675","0","0","","","9675","9675","1","2","","","2021-06-26 12:06:00","2021-07-20 05:34:47");
INSERT INTO purchases VALUES("269","pr-20210720-054127","1","1","43","3","20","0","0","4688","0","0","","","4688","4688","1","2","","","2021-06-05 12:06:00","2021-07-20 05:41:51");
INSERT INTO purchases VALUES("270","pr-20210720-060723","1","1","44","22","1533","0","0","104712","0","0","12","","104700","104700","1","2","","","2021-06-03 12:06:00","2021-07-20 06:08:14");
INSERT INTO purchases VALUES("271","pr-20210720-061102","1","1","43","2","8","0","0","4272","0","0","","","4272","4272","1","2","","","2021-06-04 12:06:00","2021-07-20 06:11:21");
INSERT INTO purchases VALUES("272","pr-20210720-083250","1","1","45","27","305","0","0","31435","0","0","105","","31330","30200","1","1","","","2021-06-03 12:06:00","2021-07-20 08:36:47");
INSERT INTO purchases VALUES("273","pr-20210720-084648","1","1","46","3","145","0","0","19400","0","0","","","19400","19400","1","2","","","2021-06-27 12:06:00","2021-07-20 08:47:12");
INSERT INTO purchases VALUES("274","pr-20210720-092556","1","1","11","13","47","0","0","21780","0","0","","","21780","21780","1","2","","chaque","2021-06-03 12:06:00","2021-07-20 09:46:00");
INSERT INTO purchases VALUES("275","pr-20210720-095633","1","1","7","5","1514","0","0","26560","0","0","","","26560","15851","1","1","","","2021-06-04 12:06:00","2021-08-12 13:20:20");
INSERT INTO purchases VALUES("276","pr-20210721-021300","1","1","47","23","126","0","0","6930","0","0","30","","6900","6900","1","2","","","2021-06-01 12:06:00","2021-07-21 14:13:31");
INSERT INTO purchases VALUES("277","pr-20210722-032912","1","1","3","1","3","0","0","2340","0","0","","60","2400","2400","1","2","","","2021-07-18 12:07:00","2021-07-22 03:29:55");
INSERT INTO purchases VALUES("278","pr-20210722-035500","1","1","29","1","38","0","0","1748","0","0","0","0","1748","1748","1","2","","","2021-07-18 12:07:00","2021-08-05 02:39:24");
INSERT INTO purchases VALUES("279","pr-20210722-040610","1","1","","2","30","0","0","2100","0","0","","","2100","2100","1","2","","","2021-07-17 12:07:00","2021-07-22 04:07:27");
INSERT INTO purchases VALUES("280","pr-20210722-043213","1","1","","10","16","0","0","500","0","0","","","500","500","1","2","","","2021-07-17 12:07:00","2021-07-22 04:32:43");
INSERT INTO purchases VALUES("281","pr-20210722-043532","1","1","34","1","30","0","0","1050","0","0","","","1050","1050","1","2","","","2021-07-13 12:07:00","2021-07-22 04:35:52");
INSERT INTO purchases VALUES("282","pr-20210722-043811","1","1","44","1","6","0","0","5760","0","0","","140","5900","5900","1","2","","","2021-07-14 12:07:00","2021-07-22 04:38:36");
INSERT INTO purchases VALUES("283","pr-20210722-044150","1","1","36","1","5","0","0","1750","0","0","","","1750","1750","1","2","","","2021-07-14 12:07:00","2021-07-22 04:42:20");
INSERT INTO purchases VALUES("284","pr-20210722-050035","1","1","34","1","2","0","0","740","0","0","","","740","740","1","2","","","2021-07-06 12:07:00","2021-07-22 05:01:21");
INSERT INTO purchases VALUES("285","pr-20210722-050245","1","1","","1","4","0","0","1400","0","0","","","1400","1400","1","2","","","2021-07-10 12:07:00","2021-07-22 05:03:15");
INSERT INTO purchases VALUES("286","pr-20210722-050505","1","1","","1","25","0","0","875","0","0","","20","895","895","1","2","","","2021-07-10 12:07:00","2021-07-22 05:05:25");
INSERT INTO purchases VALUES("287","pr-20210722-051220","1","1","36","2","7","0","0","500","0","0","","40","540","540","1","2","","","2021-07-06 12:07:00","2021-07-22 05:13:08");
INSERT INTO purchases VALUES("288","pr-20210722-053359","1","1","48","3","10","0","0","8895","0","0","","","8895","0","1","1","","","2021-07-13 12:07:00","2021-07-22 05:33:59");
INSERT INTO purchases VALUES("289","pr-20210722-055801","1","1","29","10","2300","0","0","62029","0","0","0","0","62029","16000","1","1","","","2021-07-07 12:07:00","2021-08-05 02:35:55");
INSERT INTO purchases VALUES("290","pr-20210722-061541","1","1","42","2","220","0","0","37160","0","0","","","37160","37160","1","2","","","2021-07-06 12:07:00","2021-07-22 06:17:15");
INSERT INTO purchases VALUES("291","pr-20210725-020627","1","1","1","6","820","0","0","22440","0","0","40","0","22400","22400","1","2","","","2021-07-17 12:07:00","2021-07-28 10:21:18");
INSERT INTO purchases VALUES("292","pr-20210725-023045","1","1","49","4","74","0","0","4130","0","0","4","0","4126","4126","1","2","","","2021-07-16 12:07:00","2021-07-25 14:53:19");
INSERT INTO purchases VALUES("293","pr-20210725-025935","1","1","49","1","40","0","0","5000","0","0","","","5000","5000","1","2","","","2021-07-18 12:07:00","2021-07-25 15:00:09");
INSERT INTO purchases VALUES("294","pr-20210726-095207","1","1","34","3","34","0","0","1490","0","0","","40","1530","1530","1","2","","","2021-07-12 12:07:00","2021-07-26 09:52:36");
INSERT INTO purchases VALUES("295","pr-20210726-100031","1","1","35","3","166","0","0","10020","0","0","","120","10140","10140","1","2","","","2021-07-12 12:07:00","2021-07-26 10:02:12");
INSERT INTO purchases VALUES("296","pr-20210726-100359","1","1","35","1","100","0","0","5500","0","0","","120","5620","5620","1","2","","","2021-07-12 12:07:00","2021-07-26 10:04:24");
INSERT INTO purchases VALUES("297","pr-20210726-100705","1","1","46","1","10","0","0","850","0","0","","50","900","900","1","2","","","2021-07-08 12:07:00","2021-07-26 10:07:38");
INSERT INTO purchases VALUES("298","pr-20210726-101239","1","1","46","1","15","0","0","975","0","0","","90","1065","1065","1","2","","","2021-07-11 12:07:00","2021-07-26 10:13:25");
INSERT INTO purchases VALUES("299","pr-20210726-102135","1","1","45","1","7","0","0","1260","0","0","","","1260","1260","1","2","","","2021-07-12 12:07:00","2021-07-26 10:22:09");
INSERT INTO purchases VALUES("300","pr-20210726-102330","1","1","45","1","2","0","0","1800","0","0","","","1800","1800","1","2","","","2021-07-13 12:07:00","2021-07-26 10:23:53");
INSERT INTO purchases VALUES("301","pr-20210726-103519","1","1","49","3","120","0","0","5472","0","0","","60","5532","5532","1","2","","","2021-07-12 12:07:00","2021-07-26 10:35:36");
INSERT INTO purchases VALUES("302","pr-20210726-103955","1","1","49","2","9","0","0","825","0","0","","","825","825","1","2","","","2021-07-14 12:07:00","2021-07-26 10:40:12");
INSERT INTO purchases VALUES("303","pr-20210726-104839","1","1","49","3","213","0","0","28369","0","0","9","270","28630","28630","1","2","","","2021-07-14 12:07:00","2021-07-26 10:48:53");
INSERT INTO purchases VALUES("304","pr-20210726-105453","1","1","49","2","85","0","0","4570","0","0","","60","4630","4630","1","2","","","2021-07-14 12:07:00","2021-07-26 10:55:25");
INSERT INTO purchases VALUES("305","pr-20210726-105817","1","1","34","3","21","0","0","2715","0","0","15","","2700","2700","1","2","","","2021-07-15 12:07:00","2021-07-26 10:58:36");
INSERT INTO purchases VALUES("306","pr-20210726-110349","1","1","12","4","12","0","0","16350","0","0","","","16350","5000","1","1","","","2021-07-07 12:07:00","2021-07-26 11:04:46");
INSERT INTO purchases VALUES("307","pr-20210726-110806","1","1","","1","2","0","0","1400","0","0","","","1400","1400","1","2","","","2021-07-15 12:07:00","2021-07-26 11:08:27");
INSERT INTO purchases VALUES("308","pr-20210726-113420","1","1","6","6","366","0","0","4350","0","0","","","4350","4350","1","2","","","2021-07-13 12:07:00","2021-07-26 11:35:10");
INSERT INTO purchases VALUES("309","pr-20210726-120433","1","1","50","6","114","0","0","6591","0","0","","","6591","6591","1","2","","","2021-07-12 12:07:00","2021-07-26 12:05:54");
INSERT INTO purchases VALUES("310","pr-20210726-123115","1","1","51","6","90","0","0","5358","0","0","8","","5350","2500","1","1","","","2021-07-13 12:07:00","2021-07-28 12:33:37");
INSERT INTO purchases VALUES("311","pr-20210726-015228","1","1","49","2","70","0","0","4460","0","0","","","4460","4460","1","2","","","2021-07-23 12:07:00","2021-07-26 13:56:53");
INSERT INTO purchases VALUES("312","pr-20210726-015537","1","1","49","1","3","0","0","525","0","0","","20","545","545","1","2","","","2021-07-24 12:07:00","2021-07-26 13:56:13");
INSERT INTO purchases VALUES("313","pr-20210726-021635","1","1","","2","40","0","0","2055","0","0","","","2055","2055","1","2","","","2021-07-25 12:07:00","2021-07-26 14:17:04");
INSERT INTO purchases VALUES("314","pr-20210726-023414","1","1","","6","9","0","0","6760","0","0","","","6760","6760","1","2","","","2021-07-25 12:07:00","2021-07-26 14:34:41");
INSERT INTO purchases VALUES("315","pr-20210728-121230","1","1","15","1","1","0","0","863","0","0","","","863","0","1","1","","","2021-06-20 12:06:00","2021-07-28 12:12:30");
INSERT INTO purchases VALUES("316","pr-20210728-025953","1","1","53","2","2","0","0","10665","0","0","","","10665","10665","1","2","","","2021-05-26 12:05:00","2021-07-28 15:00:52");
INSERT INTO purchases VALUES("317","pr-20210728-030225","1","1","53","2","3","0","0","14220","0","0","","","14220","10450","1","1","","","2021-06-24 12:06:00","2021-07-28 15:07:43");
INSERT INTO purchases VALUES("318","pr-20210728-030600","1","1","53","1","2","0","0","14220","0","0","","","14220","5000","1","1","","","2021-07-19 12:07:00","2021-08-01 15:04:23");
INSERT INTO purchases VALUES("319","pr-20210729-103124","1","1","54","4","95","0","0","6100","0","0","","","6100","3000","1","1","","","2021-05-27 12:05:00","2021-07-29 10:32:19");
INSERT INTO purchases VALUES("320","pr-20210729-105122","1","1","35","10","382","0","0","17123","0","0","23","0","17100","17100","1","2","","","2021-07-27 12:07:00","2021-07-29 12:01:09");
INSERT INTO purchases VALUES("321","pr-20210729-113845","1","1","36","2","3","0","0","660","0","0","","","660","660","1","2","","","2021-07-27 12:07:00","2021-07-29 11:39:06");
INSERT INTO purchases VALUES("322","pr-20210729-114030","1","1","34","1","30","0","0","900","0","0","","","900","900","1","2","","","2021-07-27 12:07:00","2021-07-29 11:40:49");
INSERT INTO purchases VALUES("323","pr-20210729-114259","1","1","3","1","1","0","0","1450","0","0","","40","1490","1490","1","2","","","2021-07-28 12:07:00","2021-07-29 11:43:18");
INSERT INTO purchases VALUES("324","pr-20210802-021623","1","1","","1","1","0","0","330","0","0","","","330","330","1","2","","","2021-07-31 12:07:00","2021-08-02 02:16:52");
INSERT INTO purchases VALUES("325","pr-20210802-024656","1","1","33","4","39","0","0","8640","0","0","","","8640","4000","1","1","","","2021-07-28 12:07:00","2021-08-02 02:47:25");
INSERT INTO purchases VALUES("326","pr-20210802-014414","1","1","1","19","456","0","0","23832","0","0","132","0","23700","0","1","1","","","2021-07-31 12:07:00","2021-08-05 02:23:58");
INSERT INTO purchases VALUES("327","pr-20210802-020234","1","1","3","2","2","0","0","980","0","0","","40","1020","1020","1","2","","","2021-07-31 12:07:00","2021-08-02 14:02:52");
INSERT INTO purchases VALUES("328","pr-20210802-021130","1","1","6","3","110","0","0","1725","0","0","15","","1710","1710","1","2","","","2021-07-27 12:07:00","2021-08-02 14:14:10");
INSERT INTO purchases VALUES("329","pr-20210817-031714","1","1","7","17","2232","0","0","122360","0","0","","","122360","0","1","1","","","2021-06-08 12:06:00","2021-08-17 03:17:14");
INSERT INTO purchases VALUES("330","pr-20210817-033742","1","1","7","16","4023","0","0","110715","0","0","","","110715","0","1","1","","","2021-06-08 12:06:00","2021-08-17 03:37:42");



CREATE TABLE `quotations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `quotation_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `return_purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci,
  `staff_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO return_purchases VALUES("1","prr-20210726-113832","6","1","1","8","1","7","0","0","910","0","0","910","","","","2021-07-26 11:38:32","2021-07-26 11:38:32");



CREATE TABLE `returns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci,
  `staff_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO role_has_permissions VALUES("4","1");
INSERT INTO role_has_permissions VALUES("5","1");
INSERT INTO role_has_permissions VALUES("6","1");
INSERT INTO role_has_permissions VALUES("7","1");
INSERT INTO role_has_permissions VALUES("8","1");
INSERT INTO role_has_permissions VALUES("9","1");
INSERT INTO role_has_permissions VALUES("10","1");
INSERT INTO role_has_permissions VALUES("11","1");
INSERT INTO role_has_permissions VALUES("12","1");
INSERT INTO role_has_permissions VALUES("13","1");
INSERT INTO role_has_permissions VALUES("14","1");
INSERT INTO role_has_permissions VALUES("15","1");
INSERT INTO role_has_permissions VALUES("16","1");
INSERT INTO role_has_permissions VALUES("17","1");
INSERT INTO role_has_permissions VALUES("18","1");
INSERT INTO role_has_permissions VALUES("19","1");
INSERT INTO role_has_permissions VALUES("20","1");
INSERT INTO role_has_permissions VALUES("21","1");
INSERT INTO role_has_permissions VALUES("22","1");
INSERT INTO role_has_permissions VALUES("23","1");
INSERT INTO role_has_permissions VALUES("24","1");
INSERT INTO role_has_permissions VALUES("25","1");
INSERT INTO role_has_permissions VALUES("26","1");
INSERT INTO role_has_permissions VALUES("27","1");
INSERT INTO role_has_permissions VALUES("28","1");
INSERT INTO role_has_permissions VALUES("29","1");
INSERT INTO role_has_permissions VALUES("30","1");
INSERT INTO role_has_permissions VALUES("31","1");
INSERT INTO role_has_permissions VALUES("32","1");
INSERT INTO role_has_permissions VALUES("33","1");
INSERT INTO role_has_permissions VALUES("34","1");
INSERT INTO role_has_permissions VALUES("35","1");
INSERT INTO role_has_permissions VALUES("36","1");
INSERT INTO role_has_permissions VALUES("37","1");
INSERT INTO role_has_permissions VALUES("38","1");
INSERT INTO role_has_permissions VALUES("39","1");
INSERT INTO role_has_permissions VALUES("40","1");
INSERT INTO role_has_permissions VALUES("41","1");
INSERT INTO role_has_permissions VALUES("42","1");
INSERT INTO role_has_permissions VALUES("43","1");
INSERT INTO role_has_permissions VALUES("44","1");
INSERT INTO role_has_permissions VALUES("45","1");
INSERT INTO role_has_permissions VALUES("46","1");
INSERT INTO role_has_permissions VALUES("47","1");
INSERT INTO role_has_permissions VALUES("48","1");
INSERT INTO role_has_permissions VALUES("49","1");
INSERT INTO role_has_permissions VALUES("50","1");
INSERT INTO role_has_permissions VALUES("51","1");
INSERT INTO role_has_permissions VALUES("52","1");
INSERT INTO role_has_permissions VALUES("53","1");
INSERT INTO role_has_permissions VALUES("54","1");
INSERT INTO role_has_permissions VALUES("55","1");
INSERT INTO role_has_permissions VALUES("56","1");
INSERT INTO role_has_permissions VALUES("57","1");
INSERT INTO role_has_permissions VALUES("58","1");
INSERT INTO role_has_permissions VALUES("59","1");
INSERT INTO role_has_permissions VALUES("60","1");
INSERT INTO role_has_permissions VALUES("61","1");
INSERT INTO role_has_permissions VALUES("62","1");
INSERT INTO role_has_permissions VALUES("63","1");
INSERT INTO role_has_permissions VALUES("64","1");
INSERT INTO role_has_permissions VALUES("65","1");
INSERT INTO role_has_permissions VALUES("66","1");
INSERT INTO role_has_permissions VALUES("67","1");
INSERT INTO role_has_permissions VALUES("68","1");
INSERT INTO role_has_permissions VALUES("69","1");
INSERT INTO role_has_permissions VALUES("70","1");
INSERT INTO role_has_permissions VALUES("71","1");
INSERT INTO role_has_permissions VALUES("72","1");
INSERT INTO role_has_permissions VALUES("73","1");
INSERT INTO role_has_permissions VALUES("74","1");
INSERT INTO role_has_permissions VALUES("75","1");
INSERT INTO role_has_permissions VALUES("76","1");
INSERT INTO role_has_permissions VALUES("77","1");
INSERT INTO role_has_permissions VALUES("78","1");
INSERT INTO role_has_permissions VALUES("79","1");
INSERT INTO role_has_permissions VALUES("80","1");
INSERT INTO role_has_permissions VALUES("81","1");
INSERT INTO role_has_permissions VALUES("82","1");
INSERT INTO role_has_permissions VALUES("83","1");
INSERT INTO role_has_permissions VALUES("84","1");
INSERT INTO role_has_permissions VALUES("85","1");
INSERT INTO role_has_permissions VALUES("86","1");
INSERT INTO role_has_permissions VALUES("87","1");
INSERT INTO role_has_permissions VALUES("88","1");
INSERT INTO role_has_permissions VALUES("89","1");
INSERT INTO role_has_permissions VALUES("90","1");
INSERT INTO role_has_permissions VALUES("91","1");
INSERT INTO role_has_permissions VALUES("92","1");
INSERT INTO role_has_permissions VALUES("93","1");
INSERT INTO role_has_permissions VALUES("94","1");
INSERT INTO role_has_permissions VALUES("95","1");
INSERT INTO role_has_permissions VALUES("96","1");
INSERT INTO role_has_permissions VALUES("97","1");
INSERT INTO role_has_permissions VALUES("98","1");
INSERT INTO role_has_permissions VALUES("99","1");
INSERT INTO role_has_permissions VALUES("100","1");
INSERT INTO role_has_permissions VALUES("101","1");
INSERT INTO role_has_permissions VALUES("102","1");
INSERT INTO role_has_permissions VALUES("103","1");
INSERT INTO role_has_permissions VALUES("104","1");
INSERT INTO role_has_permissions VALUES("4","2");
INSERT INTO role_has_permissions VALUES("5","2");
INSERT INTO role_has_permissions VALUES("6","2");
INSERT INTO role_has_permissions VALUES("7","2");
INSERT INTO role_has_permissions VALUES("8","2");
INSERT INTO role_has_permissions VALUES("9","2");
INSERT INTO role_has_permissions VALUES("10","2");
INSERT INTO role_has_permissions VALUES("11","2");
INSERT INTO role_has_permissions VALUES("12","2");
INSERT INTO role_has_permissions VALUES("13","2");
INSERT INTO role_has_permissions VALUES("14","2");
INSERT INTO role_has_permissions VALUES("15","2");
INSERT INTO role_has_permissions VALUES("16","2");
INSERT INTO role_has_permissions VALUES("17","2");
INSERT INTO role_has_permissions VALUES("18","2");
INSERT INTO role_has_permissions VALUES("19","2");
INSERT INTO role_has_permissions VALUES("20","2");
INSERT INTO role_has_permissions VALUES("21","2");
INSERT INTO role_has_permissions VALUES("22","2");
INSERT INTO role_has_permissions VALUES("23","2");
INSERT INTO role_has_permissions VALUES("24","2");
INSERT INTO role_has_permissions VALUES("25","2");
INSERT INTO role_has_permissions VALUES("26","2");
INSERT INTO role_has_permissions VALUES("27","2");
INSERT INTO role_has_permissions VALUES("28","2");
INSERT INTO role_has_permissions VALUES("29","2");
INSERT INTO role_has_permissions VALUES("30","2");
INSERT INTO role_has_permissions VALUES("31","2");
INSERT INTO role_has_permissions VALUES("32","2");
INSERT INTO role_has_permissions VALUES("33","2");
INSERT INTO role_has_permissions VALUES("34","2");
INSERT INTO role_has_permissions VALUES("35","2");
INSERT INTO role_has_permissions VALUES("36","2");
INSERT INTO role_has_permissions VALUES("37","2");
INSERT INTO role_has_permissions VALUES("38","2");
INSERT INTO role_has_permissions VALUES("39","2");
INSERT INTO role_has_permissions VALUES("40","2");
INSERT INTO role_has_permissions VALUES("41","2");
INSERT INTO role_has_permissions VALUES("42","2");
INSERT INTO role_has_permissions VALUES("43","2");
INSERT INTO role_has_permissions VALUES("44","2");
INSERT INTO role_has_permissions VALUES("45","2");
INSERT INTO role_has_permissions VALUES("46","2");
INSERT INTO role_has_permissions VALUES("47","2");
INSERT INTO role_has_permissions VALUES("48","2");
INSERT INTO role_has_permissions VALUES("49","2");
INSERT INTO role_has_permissions VALUES("50","2");
INSERT INTO role_has_permissions VALUES("51","2");
INSERT INTO role_has_permissions VALUES("52","2");
INSERT INTO role_has_permissions VALUES("53","2");
INSERT INTO role_has_permissions VALUES("54","2");
INSERT INTO role_has_permissions VALUES("55","2");
INSERT INTO role_has_permissions VALUES("56","2");
INSERT INTO role_has_permissions VALUES("57","2");
INSERT INTO role_has_permissions VALUES("58","2");
INSERT INTO role_has_permissions VALUES("59","2");
INSERT INTO role_has_permissions VALUES("60","2");
INSERT INTO role_has_permissions VALUES("61","2");
INSERT INTO role_has_permissions VALUES("62","2");
INSERT INTO role_has_permissions VALUES("63","2");
INSERT INTO role_has_permissions VALUES("64","2");
INSERT INTO role_has_permissions VALUES("65","2");
INSERT INTO role_has_permissions VALUES("66","2");
INSERT INTO role_has_permissions VALUES("67","2");
INSERT INTO role_has_permissions VALUES("68","2");
INSERT INTO role_has_permissions VALUES("69","2");
INSERT INTO role_has_permissions VALUES("70","2");
INSERT INTO role_has_permissions VALUES("71","2");
INSERT INTO role_has_permissions VALUES("72","2");
INSERT INTO role_has_permissions VALUES("73","2");
INSERT INTO role_has_permissions VALUES("74","2");
INSERT INTO role_has_permissions VALUES("75","2");
INSERT INTO role_has_permissions VALUES("76","2");
INSERT INTO role_has_permissions VALUES("77","2");
INSERT INTO role_has_permissions VALUES("78","2");
INSERT INTO role_has_permissions VALUES("79","2");
INSERT INTO role_has_permissions VALUES("80","2");
INSERT INTO role_has_permissions VALUES("81","2");
INSERT INTO role_has_permissions VALUES("82","2");
INSERT INTO role_has_permissions VALUES("83","2");
INSERT INTO role_has_permissions VALUES("84","2");
INSERT INTO role_has_permissions VALUES("85","2");
INSERT INTO role_has_permissions VALUES("86","2");
INSERT INTO role_has_permissions VALUES("87","2");
INSERT INTO role_has_permissions VALUES("88","2");
INSERT INTO role_has_permissions VALUES("89","2");
INSERT INTO role_has_permissions VALUES("90","2");
INSERT INTO role_has_permissions VALUES("91","2");
INSERT INTO role_has_permissions VALUES("92","2");
INSERT INTO role_has_permissions VALUES("93","2");
INSERT INTO role_has_permissions VALUES("94","2");
INSERT INTO role_has_permissions VALUES("95","2");
INSERT INTO role_has_permissions VALUES("96","2");
INSERT INTO role_has_permissions VALUES("97","2");
INSERT INTO role_has_permissions VALUES("98","2");
INSERT INTO role_has_permissions VALUES("99","2");
INSERT INTO role_has_permissions VALUES("100","2");
INSERT INTO role_has_permissions VALUES("101","2");
INSERT INTO role_has_permissions VALUES("102","2");
INSERT INTO role_has_permissions VALUES("103","2");
INSERT INTO role_has_permissions VALUES("104","2");
INSERT INTO role_has_permissions VALUES("4","4");
INSERT INTO role_has_permissions VALUES("6","4");
INSERT INTO role_has_permissions VALUES("7","4");
INSERT INTO role_has_permissions VALUES("8","4");
INSERT INTO role_has_permissions VALUES("9","4");
INSERT INTO role_has_permissions VALUES("12","4");
INSERT INTO role_has_permissions VALUES("13","4");
INSERT INTO role_has_permissions VALUES("20","4");
INSERT INTO role_has_permissions VALUES("21","4");
INSERT INTO role_has_permissions VALUES("22","4");
INSERT INTO role_has_permissions VALUES("24","4");
INSERT INTO role_has_permissions VALUES("25","4");
INSERT INTO role_has_permissions VALUES("28","4");
INSERT INTO role_has_permissions VALUES("29","4");
INSERT INTO role_has_permissions VALUES("55","4");
INSERT INTO role_has_permissions VALUES("56","4");
INSERT INTO role_has_permissions VALUES("57","4");
INSERT INTO role_has_permissions VALUES("63","4");
INSERT INTO role_has_permissions VALUES("64","4");
INSERT INTO role_has_permissions VALUES("6","7");
INSERT INTO role_has_permissions VALUES("7","7");
INSERT INTO role_has_permissions VALUES("8","7");
INSERT INTO role_has_permissions VALUES("9","7");
INSERT INTO role_has_permissions VALUES("12","7");
INSERT INTO role_has_permissions VALUES("13","7");
INSERT INTO role_has_permissions VALUES("16","7");
INSERT INTO role_has_permissions VALUES("17","7");
INSERT INTO role_has_permissions VALUES("20","7");
INSERT INTO role_has_permissions VALUES("21","7");
INSERT INTO role_has_permissions VALUES("24","7");
INSERT INTO role_has_permissions VALUES("25","7");
INSERT INTO role_has_permissions VALUES("28","7");
INSERT INTO role_has_permissions VALUES("29","7");
INSERT INTO role_has_permissions VALUES("32","7");
INSERT INTO role_has_permissions VALUES("33","7");
INSERT INTO role_has_permissions VALUES("36","7");
INSERT INTO role_has_permissions VALUES("37","7");
INSERT INTO role_has_permissions VALUES("38","7");
INSERT INTO role_has_permissions VALUES("39","7");
INSERT INTO role_has_permissions VALUES("40","7");
INSERT INTO role_has_permissions VALUES("45","7");
INSERT INTO role_has_permissions VALUES("46","7");
INSERT INTO role_has_permissions VALUES("47","7");
INSERT INTO role_has_permissions VALUES("48","7");
INSERT INTO role_has_permissions VALUES("49","7");
INSERT INTO role_has_permissions VALUES("50","7");
INSERT INTO role_has_permissions VALUES("51","7");
INSERT INTO role_has_permissions VALUES("52","7");
INSERT INTO role_has_permissions VALUES("53","7");
INSERT INTO role_has_permissions VALUES("55","7");
INSERT INTO role_has_permissions VALUES("56","7");
INSERT INTO role_has_permissions VALUES("61","7");
INSERT INTO role_has_permissions VALUES("62","7");
INSERT INTO role_has_permissions VALUES("63","7");
INSERT INTO role_has_permissions VALUES("64","7");
INSERT INTO role_has_permissions VALUES("67","7");
INSERT INTO role_has_permissions VALUES("68","7");
INSERT INTO role_has_permissions VALUES("69","7");
INSERT INTO role_has_permissions VALUES("70","7");
INSERT INTO role_has_permissions VALUES("71","7");
INSERT INTO role_has_permissions VALUES("72","7");
INSERT INTO role_has_permissions VALUES("73","7");
INSERT INTO role_has_permissions VALUES("74","7");
INSERT INTO role_has_permissions VALUES("77","7");
INSERT INTO role_has_permissions VALUES("78","7");
INSERT INTO role_has_permissions VALUES("79","7");
INSERT INTO role_has_permissions VALUES("82","7");
INSERT INTO role_has_permissions VALUES("84","7");
INSERT INTO role_has_permissions VALUES("85","7");
INSERT INTO role_has_permissions VALUES("86","7");
INSERT INTO role_has_permissions VALUES("87","7");
INSERT INTO role_has_permissions VALUES("88","7");
INSERT INTO role_has_permissions VALUES("89","7");
INSERT INTO role_has_permissions VALUES("90","7");
INSERT INTO role_has_permissions VALUES("91","7");
INSERT INTO role_has_permissions VALUES("92","7");
INSERT INTO role_has_permissions VALUES("93","7");
INSERT INTO role_has_permissions VALUES("94","7");
INSERT INTO role_has_permissions VALUES("97","7");
INSERT INTO role_has_permissions VALUES("98","7");
INSERT INTO role_has_permissions VALUES("99","7");
INSERT INTO role_has_permissions VALUES("101","7");
INSERT INTO role_has_permissions VALUES("102","7");
INSERT INTO role_has_permissions VALUES("103","7");



CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO roles VALUES("1","Admin","admin can access all data...","web","1","2018-06-02 05:46:44","2018-06-03 05:13:05");
INSERT INTO roles VALUES("2","Owner","Owner of shop...","web","1","2018-10-22 08:38:13","2018-10-22 08:38:13");
INSERT INTO roles VALUES("4","staff","staff has specific acess...","web","0","2018-06-02 06:05:27","2021-06-10 04:15:22");
INSERT INTO roles VALUES("5","Customer","","web","1","2020-11-05 12:43:16","2020-11-15 06:24:15");
INSERT INTO roles VALUES("6","test","as","web","0","2021-04-20 08:45:11","2021-06-10 04:15:02");
INSERT INTO roles VALUES("7","General User","General users test the website","web","1","2021-08-22 05:09:55","2021-08-22 05:09:55");



CREATE TABLE `sales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT '1',
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `grand_total` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `coupon_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `sale_status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `sale_note` text COLLATE utf8mb4_unicode_ci,
  `staff_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `stock_counts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `is_adjusted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO stock_counts VALUES("1","scr-20210730-031201","1","","","1","full","20210730-031201.csv","","","0","2021-07-30 15:12:01","2021-07-30 15:12:01");
INSERT INTO stock_counts VALUES("2","scr-20210801-094909","1","2","","1","partial","20210801-094909.csv","","","0","2021-08-01 09:49:09","2021-08-01 09:49:09");
INSERT INTO stock_counts VALUES("3","scr-20210802-030711","1","2","","1","partial","20210802-030711.csv","","","0","2021-08-02 03:07:11","2021-08-02 03:07:11");
INSERT INTO stock_counts VALUES("4","scr-20210805-101300","1","3","","1","partial","20210805-101300.csv","","","0","2021-08-05 10:13:00","2021-08-05 10:13:00");
INSERT INTO stock_counts VALUES("5","scr-20210805-114527","1","4","","1","partial","20210805-114527.csv","","","0","2021-08-05 11:45:27","2021-08-05 11:45:27");



CREATE TABLE `suppliers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO suppliers VALUES("1","Faiz Electric","","Faiz Electric","","faizandsons71@gmail.com","01616224469","Riazuddin Road","Chattogram","","","","1","2021-06-21 11:23:49","2021-08-07 04:52:54");
INSERT INTO suppliers VALUES("2","Moymonsingah Sanitary","","Moymonsingah Sanitary","","harun@gmail.com","01814858462","Munshir Mosjid","Hathazari","","","","1","2021-06-21 11:27:55","2021-08-07 04:53:46");
INSERT INTO suppliers VALUES("3","Solaiman Hardware","","Solaiman Hardware","","solaiman@gmail.com","01819530117","Hathazari","Chattogram","","","","1","2021-07-03 15:41:25","2021-08-07 04:54:40");
INSERT INTO suppliers VALUES("4","Nahar Enterprise","","Nahar Enterprise","","iqbal@gmail.com","01814815359","Hathazari","Chattogram","","","","1","2021-07-03 15:43:55","2021-08-07 04:55:23");
INSERT INTO suppliers VALUES("5","shibbir","","Shibbir Enterprise","","shibbir@yahoo.com","01889863311","Royel Tower, Jubilee Road","Chattogram","","","","1","2021-07-03 15:46:53","2021-07-03 15:46:53");
INSERT INTO suppliers VALUES("6","Bismillah Trading","","Bismillah Trading","","bismillah@gmail.com","01718274730","S A Shoping Complex, Bus Stand, Hathazari","Chattogram","","","","1","2021-07-03 15:50:03","2021-08-07 04:56:10");
INSERT INTO suppliers VALUES("7","Abdullah Al Hasan","","Impression AGAP Ltd","","impression@gmail.com","01711506537","Hasna Tower, Agrabad","Chattogram","","","","1","2021-07-03 15:53:23","2021-08-07 04:49:14");
INSERT INTO suppliers VALUES("8","Chittagong Tools Center","","Chittagong Tools Center","","chittagong@gmail.com","01819032484","Haji Tower, Jubilee Road","Chattogram","","","","1","2021-07-03 15:56:57","2021-07-03 15:56:57");
INSERT INTO suppliers VALUES("9","Al Mostafa Sanitary","","Al Mostafa Sanitary","","mostafa@gmail.com","01778785723","Faisal Mansion, Batali Road, Enayetbazar","Chattogram","","","","1","2021-07-04 13:17:24","2021-08-07 04:51:45");
INSERT INTO suppliers VALUES("10","Md Munna","","M R Traders","","munna@gmail.com","01830120595","M S Bhaban, Medical Gate, Hathazari","Chattogram","","","","1","2021-07-04 13:21:12","2021-07-04 13:21:12");
INSERT INTO suppliers VALUES("11","Chowdhury Enterprise","","Chowdhury Enterprise","","chowdhury@gmail.com","01715810012","Kutir(1st Floor), Love Lane","Chattogram","","","","1","2021-07-04 13:24:19","2021-07-04 13:24:19");
INSERT INTO suppliers VALUES("12","Madina Polimer","","Madina Polimer","","info.polymer@madina.co","01","Madina Squair","Dhaka","","","","1","2021-07-04 13:28:18","2021-07-04 13:28:18");
INSERT INTO suppliers VALUES("13","RFL SINK","","RFL","","sdkfhj@kdjfkd","01937456826","Badda","Dhaka","","","","1","2021-07-04 13:29:36","2021-07-19 13:39:01");
INSERT INTO suppliers VALUES("14","Anwar Group of Industries","","Anwar Group of Industries","","dkfjkdfj@dkjgkjd","01990408217","fjksaff","dkfkf","","","","1","2021-07-04 13:31:43","2021-07-04 13:31:43");
INSERT INTO suppliers VALUES("15","Rosa","","Akij Ceramics Ltd","","sfjkljf@kdfkf","017","fjkls;","hjkl","","","","1","2021-07-04 13:40:50","2021-07-04 13:40:50");
INSERT INTO suppliers VALUES("16","Meghna Cable","","Meghna Cable","","ghjk2jk2@ghj","018","dfgh","fghjk","","","","1","2021-07-04 13:43:32","2021-07-04 13:43:32");
INSERT INTO suppliers VALUES("17","S S Corporation","","S S Corporation","","dfghj@fghj","018","Oxizen","Chattogram","","","","1","2021-07-04 13:44:57","2021-07-04 13:44:57");
INSERT INTO suppliers VALUES("18","MEP Group","","MEP Group","","fghj@ghjk","017","dfghjk","gjkl","","","","1","2021-07-04 13:46:10","2021-07-04 13:46:10");
INSERT INTO suppliers VALUES("19","M/s R A Traders","","M/s R A Traders","","fg@jk","01622376787","Tamanna Building, Oxizen","Chattogram","","","","1","2021-07-04 13:48:14","2021-07-04 13:48:14");
INSERT INTO suppliers VALUES("20","BBS Cables","","BBS Cables","","wqefghj@hjkhjj","017","Kalatal, Hathazari","Chattogram","","","","1","2021-07-04 13:53:12","2021-07-04 13:53:12");
INSERT INTO suppliers VALUES("21","Walton Light","","Islam Traders","","qwer@fghj","01629511521","1 No Rail Gate, C U, Hathazari","Chattogram","","","","1","2021-07-04 13:56:01","2021-07-10 07:05:36");
INSERT INTO suppliers VALUES("22","Orlee Bulb","","M/s Shown & Brothers","","zxcvbnm@cvbn","01850885097","Shahi Bhaban, 11 Mile, Hathazari","Chattogram","","","","1","2021-07-04 13:58:28","2021-07-07 15:56:48");
INSERT INTO suppliers VALUES("23","Jahan Electric","","Jahan Electric","","fghj@fghjk","01819320057","Kader Tower, Jubilee Road","Chattogram","","","","1","2021-07-07 15:53:46","2021-07-07 15:53:46");
INSERT INTO suppliers VALUES("24","Super Star Light","","Super Star","","hjkl@ghjkl","017","jghjkl;jk","fghjkl","","","","1","2021-07-08 14:05:11","2021-07-08 14:05:11");
INSERT INTO suppliers VALUES("25","Super Star Switch Gold","","S/Star Switch Gold","","asdf@ghjk","01300790900","none","none","","","","1","2021-07-09 14:32:15","2021-07-10 06:57:27");
INSERT INTO suppliers VALUES("26","Walton Switch","","Walton Switch","","dfghjk@wertyu","01678863407","1 No Rail Gate, C U, Hathazari","Chattogram","","","","1","2021-07-10 07:08:36","2021-07-10 07:08:36");
INSERT INTO suppliers VALUES("27","KITTY","","Kitty","","qwerj@nju","0181","none","none","","","","1","2021-07-10 12:37:16","2021-07-10 12:37:16");
INSERT INTO suppliers VALUES("28","SPI","","SPI","","asdfghj@dfgh","23456","none","none","","","","1","2021-07-12 16:01:38","2021-07-12 16:01:38");
INSERT INTO suppliers VALUES("29","Bizli Cables","","Bizli Cables","","xcv@zxcvbnm","017","Hathazari","Chattogram","","","","1","2021-07-12 16:48:42","2021-07-12 16:48:42");
INSERT INTO suppliers VALUES("30","Super Star Switch","","Super Star Switch","","uioo@hjkkkkkk","0192","none","none","","","","1","2021-07-13 10:53:09","2021-07-13 10:53:09");
INSERT INTO suppliers VALUES("31","Md Aziz","","Md Aziz","","asdfgf@qwer","01714472611","none","none","","","","1","2021-07-14 17:24:35","2021-07-15 02:34:36");
INSERT INTO suppliers VALUES("32","Fast Corp.","","Fast Corp.","","qwertykl@qwert","12345","none","none","","","","1","2021-07-15 02:35:53","2021-07-15 02:35:53");
INSERT INTO suppliers VALUES("33","DEW Enterprise","","DEW Enterprise","","bnm@zxcvbdfgh","01817716502","Borodigir Par","Chattogram","","","","1","2021-07-15 09:33:04","2021-07-15 09:33:04");
INSERT INTO suppliers VALUES("34","Abu Amir","","Abu Amir","","uiop@nmvvybjn","01671328239","Hathazari","Chattogram","","","","1","2021-07-16 04:13:18","2021-07-16 04:13:18");
INSERT INTO suppliers VALUES("35","Manju Traders","","Manju Traders","","asdfghj@qwertyu","01843150801","Hathazari","Chattogram","","","","1","2021-07-16 04:25:19","2021-07-16 04:25:19");
INSERT INTO suppliers VALUES("36","Madina Hardware","","Madina Hardware","","tyuio@tyuio","01919671514","Hathazari","Chattogram","","","","1","2021-07-16 04:56:53","2021-07-16 04:56:53");
INSERT INTO suppliers VALUES("37","M K Traders","","M K Traders","","fghjkl@asdfghjk","01815648265","Hathazari","Chattogram","","","","1","2021-07-18 14:26:24","2021-07-18 14:26:24");
INSERT INTO suppliers VALUES("38","RFL Coil Pipe","","RFL -SLV","","ERTTYYY@FFGGHHHH","01313069608","Badda","Dhaka","","","","1","2021-07-19 14:35:25","2021-07-19 14:35:25");
INSERT INTO suppliers VALUES("39","RFL Tank","","RFL-Support","","bnmm@asdff","23456","Badda","Dhaka","","","","1","2021-07-19 14:58:11","2021-07-19 14:58:11");
INSERT INTO suppliers VALUES("40","RFL Pump","","RFL-SMP","","ghjjj@ghjjj","456","none","none","","","","1","2021-07-19 15:23:44","2021-07-19 15:23:44");
INSERT INTO suppliers VALUES("41","RFL Xpart","","RFL Xpart","","asdfgg@ghj","01937456826","Badda","Dhaka","","","","1","2021-07-19 15:55:02","2021-07-19 15:55:02");
INSERT INTO suppliers VALUES("42","RFL Pipe & Fitting","","RFL P/F","","sdfgh@fghjk","123","Badda","Dhaka","","","","1","2021-07-20 04:34:32","2021-07-20 04:34:32");
INSERT INTO suppliers VALUES("43","APEX","","APEX","","qwerrtt@vbnmmm","23489","none","none","","","","1","2021-07-20 05:37:04","2021-07-20 05:37:04");
INSERT INTO suppliers VALUES("44","Amin Traders","","Amin Traders","","jsheofn@wklfnklwkl","2345678","none","none","","","","1","2021-07-20 05:38:27","2021-07-20 05:38:27");
INSERT INTO suppliers VALUES("45","RFL Shine","","RFL Shine","","rfl@shin","rdgyiuopio","none","none","","","","1","2021-07-20 08:13:32","2021-07-20 08:13:32");
INSERT INTO suppliers VALUES("46","Mahabub B&D","","Mahabub Plaza","","wertyj@qwertyu","01979500005","Hathazari","Chattogram","","","","1","2021-07-20 08:44:07","2021-08-07 04:50:15");
INSERT INTO suppliers VALUES("47","Shah Amanat","","Shah Amanat","","asdfgfg@dfghjkkk","01914752630","Enayet Bazar","Chattogram","","","","1","2021-07-21 14:02:11","2021-07-21 14:02:11");
INSERT INTO suppliers VALUES("48","Sattar Sanitary","","Sattar","","yrioeh@heionvklme","24555","none","none","","","","1","2021-07-22 05:16:38","2021-07-22 05:16:38");
INSERT INTO suppliers VALUES("49","Rafia Enterprise","","Rafia","","xcvbnm@asdfgh","123456","Hathazari","Chattogram","","","","1","2021-07-25 14:21:09","2021-07-25 14:21:09");
INSERT INTO suppliers VALUES("50","Metro Elec","","P & P Pvt Ltd","","cvbnm@jkkllll","01926292822","Purana Paltan","Dhaka","","","","1","2021-07-25 14:23:32","2021-07-25 14:23:32");
INSERT INTO suppliers VALUES("51","Luxury Elec","","Luxury","","wertyui@rtyuihjk","56789","none","none","","","","1","2021-07-26 12:29:09","2021-07-26 12:29:09");
INSERT INTO suppliers VALUES("52","Mr Badsha","","Anwara Hhai","","qwertyu@dfghj","01822005599","Hathazari","Chattogram","","","","1","2021-07-28 10:47:10","2021-07-28 10:47:10");
INSERT INTO suppliers VALUES("53","Gazi Tank","","Gazi Tank","","qwertyuio@fghjk","123456","none","none","","","","1","2021-07-28 14:28:43","2021-07-28 14:28:43");
INSERT INTO suppliers VALUES("54","Mona Regulator","","Mona","","qwertyuioghj@sdfghjk","01932318230","none","none","","","","1","2021-07-28 15:23:01","2021-07-28 15:23:01");



CREATE TABLE `taxes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `transfers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `from_warehouse_id` int(11) NOT NULL,
  `to_warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `units` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unit_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_unit` int(11) DEFAULT NULL,
  `operator` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operation_value` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO units VALUES("1","pcs","Pieces","","*","1","1","2021-06-13 11:35:25","2021-06-13 11:35:25");
INSERT INTO units VALUES("2","ft","Feet","","*","1","1","2021-06-13 11:42:35","2021-06-13 11:42:35");
INSERT INTO units VALUES("3","gl","Galon","","*","1","1","2021-06-13 11:44:53","2021-06-13 11:44:53");
INSERT INTO units VALUES("4","kg","Kilogram","","*","1","1","2021-06-13 12:31:07","2021-06-13 12:31:07");
INSERT INTO units VALUES("5","pnd","Pound","","*","1","1","2021-06-13 12:32:56","2021-06-13 12:32:56");
INSERT INTO units VALUES("6","dm","Dram","","*","1","1","2021-06-13 12:33:28","2021-06-13 12:33:28");
INSERT INTO units VALUES("7","yd","Yard","","*","1","1","2021-06-15 13:38:18","2021-06-15 13:38:18");
INSERT INTO units VALUES("8","dz","Dozon","","*","1","1","2021-06-15 13:46:52","2021-06-15 13:46:52");
INSERT INTO units VALUES("9","pg","Page","","*","1","1","2021-06-15 14:51:51","2021-06-15 14:51:51");
INSERT INTO units VALUES("10","pkt","Packet","","*","1","1","2021-06-15 14:52:25","2021-06-15 14:52:25");
INSERT INTO units VALUES("11","bx","Box","","*","1","1","2021-06-15 14:53:36","2021-06-15 14:53:36");
INSERT INTO units VALUES("12","Ltr","Liter","","*","1","1","2021-07-03 14:32:01","2021-07-03 14:32:01");
INSERT INTO units VALUES("13","cl","Coil","","*","1","1","2021-07-10 16:23:11","2021-07-10 16:23:11");
INSERT INTO units VALUES("14","pr","Pair","","*","1","1","2021-07-14 02:38:11","2021-07-14 02:38:11");



CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO users VALUES("1","Admin","admin","$2y$10$DWAHTfjcvwCpOCXaJg11MOhsqns03uvlwiSUOQwkHL2YYrtrXPcL6","eCpwM0zdQWlP5sQzl9GtGzfUzcK8uBBHbPYJMnxarCUJSrSDRH29ItONbYP5","01323-940257","M/s Tawakkul Enterprise","1","","","1","1","2018-06-02 09:24:15","2021-06-14 02:22:17");
INSERT INTO users VALUES("3","dhiman da","dhiman@gmail.com","$2y$10$Fef6vu5E67nm11hX7V5a2u1ThNCQ6n9DRCvRF9TD7stk.Pmt2R6O.","5ehQM6JIfiQfROgTbB5let0Z93vjLHS7rd9QD5RPNgOxli3xdo7fykU7vtTt","212","lioncoders","1","","","0","1","2018-06-14 04:00:31","2020-11-05 13:06:51");
INSERT INTO users VALUES("6","test","test@gmail.com","$2y$10$TDAeHcVqHyCmurki0wjLZeIl1SngKX3WLOhyTiCoZG3souQfqv.LS","KpW1gYYlOFacumklO2IcRfSsbC3KcWUZzOI37gqoqM388Xie6KdhaOHIFEYm","1234","212312","4","","","0","1","2018-06-23 09:05:33","2018-06-23 09:13:45");
INSERT INTO users VALUES("8","test","test@yahoo.com","$2y$10$hlMigidZV0j2/IPkgE/xsOSb8WM2IRlsMv.1hg1NM7kfyd6bGX3hC","","31231","","4","","","0","1","2018-06-25 04:35:49","2018-07-02 07:07:39");
INSERT INTO users VALUES("9","staff","anda@gmail.com","$2y$10$kxDbnynB6mB1e1w3pmtbSOlSxy/WwbLPY5TJpMi0Opao5ezfuQjQm","DIDsmdI5kMZfkk2n4OkOpuH8yYHs3O0aPp9xUO0zuY4TwPvylsW5H6ovgE0K","3123","","4","5","1","0","1","2018-07-02 07:08:08","2021-06-10 04:26:33");
INSERT INTO users VALUES("10","abul","abul@alpha.com","$2y$10$5zgB2OOMyNBNVAd.QOQIju5a9fhNnTqPx5H6s4oFlXhNiF6kXEsPq","x7HlttI5bM0vSKViqATaowHFJkLS3PHwfvl7iJdFl5Z1SsyUgWCVbLSgAoi0","1234","anda","1","","","0","1","2018-09-08 05:44:48","2021-06-10 04:26:41");
INSERT INTO users VALUES("11","teststaff","a@a.com","$2y$10$5KNBIIhZzvvZEQEhkHaZGu.Q8bbQNfqYvYgL5N55B8Pb4P5P/b/Li","DkHDEcCA0QLfsKPkUK0ckL0CPM6dPiJytNa0k952gyTbeAyMthW3vi7IRitp","111","aa","4","5","1","0","1","2018-10-22 08:47:56","2018-10-23 08:10:56");
INSERT INTO users VALUES("12","john","john@gmail.com","$2y$10$P/pN2J/uyTYNzQy2kRqWwuSv7P2f6GE/ykBwtHdda7yci3XsfOKWe","O0f1WJBVjT5eKYl3Js5l1ixMMtoU6kqrH7hbHDx9I1UCcD9CmiSmCBzHbQZg","10001","","4","2","2","0","1","2018-12-30 06:48:37","2019-03-06 10:59:49");
INSERT INTO users VALUES("13","jjj","test@test.com","$2y$10$/Qx3gHWYWUhlF1aPfzXaCeZA7fRzfSEyCIOnk/dcC4ejO8PsoaalG","","1213","","1","","","0","1","2019-01-03 06:08:31","2019-03-03 10:02:29");
INSERT INTO users VALUES("19","shakalaka","shakalaka@gmail.com","$2y$10$ketLWT0Ib/JXpo00eJlxoeSw.7leS8V1CUGInfbyOWT4F5.Xuo7S2","","1212","Digital image","5","","","0","1","2020-11-09 06:07:16","2021-06-10 04:26:48");
INSERT INTO users VALUES("21","modon","modon@gmail.com","$2y$10$7VpoeGMkP8QCvL5zLwFW..6MYJ5MRumDLDoX.TTQtClS561rpFHY.","","2222","modon company","5","","","0","1","2020-11-13 13:12:08","2021-06-10 04:26:56");
INSERT INTO users VALUES("22","dhiman","dhiman@gmail.com","$2y$10$3mPygsC6wwnDtw/Sg85IpuExtUhgaHx52Lwp7Rz0.FNfuFdfKVpRq","","+8801111111101","lioncoders","5","","","0","1","2020-11-15 12:14:58","2021-06-10 04:27:05");
INSERT INTO users VALUES("23","Abudllah Al Taslim","tawakkulenterprise2021@gmail.com","$2y$10$7JTtLlBkn0CjMwU7h09Ovu3XK3ixtD.la5Vo2QwPiw9jm0ElcNejq","","01323-940257","M/s Tawakkul Enterprise","2","","","1","0","2021-06-10 04:29:23","2021-06-10 04:29:23");
INSERT INTO users VALUES("24","testuser","testuser@xitinventory.com","$2y$10$6EFJf.HMdskwB4BTgtIJM.ftSE92t/FUVK8Iul7CqgJRqzuuVcsHC","","Your phone number","Your Company Name","7","1","1","1","0","2021-08-22 05:18:50","2021-08-22 07:25:53");



CREATE TABLE `variants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `warehouses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO warehouses VALUES("1","M/s Tawakkul Enterprise","01323-940257","tawakkulenterprise2021@gmail.com","Underground, J M Tower, Medical Gate, Hathazari, Chattogram.","1","2021-06-10 04:13:23","2021-06-10 04:13:23");

