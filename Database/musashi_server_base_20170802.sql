/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : musashi

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2017-08-02 13:53:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for csv_export_so2
-- ----------------------------
DROP TABLE IF EXISTS `csv_export_so2`;
CREATE TABLE `csv_export_so2` (
  `so_number` varchar(255) default NULL,
  `item` varchar(255) default NULL,
  `item_code` varchar(255) default NULL,
  `item_name` varchar(255) default NULL,
  `customer_item_code` varchar(255) default NULL,
  `customer_po_no` varchar(255) default NULL,
  `order_qty` varchar(255) default NULL,
  `shipped_qty` varchar(255) default NULL,
  `delivery_date` varchar(255) default NULL,
  `delivery_time` varchar(255) default NULL,
  `cust_code` varchar(255) default NULL,
  `cust_name` varchar(255) default NULL,
  `ship_to_code` varchar(255) default NULL,
  `status` char(1) default NULL,
  `plant` varchar(255) default NULL,
  `back_order_flag` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `customer_name` varchar(255) NOT NULL,
  `path_img_company` varchar(255) default NULL,
  `path_img_country` varchar(255) default NULL,
  `etl_dttm` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for excel_bonus
-- ----------------------------
DROP TABLE IF EXISTS `excel_bonus`;
CREATE TABLE `excel_bonus` (
  `year` int(11) default NULL,
  `month_no` int(11) default NULL,
  `product_name` varchar(255) default NULL,
  `value` decimal(15,2) default NULL,
  `etl_dttm` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for excel_detail_dp_cost
-- ----------------------------
DROP TABLE IF EXISTS `excel_detail_dp_cost`;
CREATE TABLE `excel_detail_dp_cost` (
  `pstng_date` datetime default NULL,
  `doc_date` datetime default NULL,
  `do` tinytext,
  `documentno` tinytext,
  `vendor` tinytext,
  `name 1` tinytext,
  `reference` tinytext,
  `account` tinytext,
  `long_text` tinytext,
  `tx` tinytext,
  `material` tinytext,
  `material_Description` tinytext,
  `quantity` double default NULL,
  `net_price` double default NULL,
  `per` double default NULL,
  `amount` double default NULL,
  `crcy` tinytext,
  `amount_in_lc` double default NULL,
  `profit_ctr` tinytext,
  `name` tinytext,
  `fa` tinytext,
  `name_1` tinytext,
  `sloc` tinytext,
  `purch.doc.` tinytext,
  `item` tinytext,
  `user_name` tinytext,
  `cost_ctr` tinytext,
  `description` tinytext,
  `customer` tinytext,
  `text` tinytext,
  `etl_dttm` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for excel_detail_mc_cost
-- ----------------------------
DROP TABLE IF EXISTS `excel_detail_mc_cost`;
CREATE TABLE `excel_detail_mc_cost` (
  `pstng_date` datetime default NULL,
  `doc_date` datetime default NULL,
  `do` tinytext,
  `documentno` tinytext,
  `vendor` tinytext,
  `name 1` tinytext,
  `reference` tinytext,
  `account` tinytext,
  `long_text` tinytext,
  `tx` tinytext,
  `material` tinytext,
  `material_description` tinytext,
  `quantity` double default NULL,
  `net_price` double default NULL,
  `per` double default NULL,
  `amount` double default NULL,
  `crcy` tinytext,
  `amount_in_lc` double default NULL,
  `profit_ctr` tinytext,
  `name` tinytext,
  `fa` tinytext,
  `name_1` tinytext,
  `sloc` tinytext,
  `purch.doc.` tinytext,
  `item` tinytext,
  `user_name` tinytext,
  `cost_ctr` tinytext,
  `description` tinytext,
  `customer` tinytext,
  `text` tinytext,
  `etl_dttm` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for excel_detail_op_cost
-- ----------------------------
DROP TABLE IF EXISTS `excel_detail_op_cost`;
CREATE TABLE `excel_detail_op_cost` (
  `pstng_date` datetime default NULL,
  `doc_date` datetime default NULL,
  `do` tinytext,
  `documentno` tinytext,
  `vendor` tinytext,
  `name 1` tinytext,
  `reference` tinytext,
  `account` tinytext,
  `long_text` tinytext,
  `tx` tinytext,
  `material` tinytext,
  `material_description` tinytext,
  `quantity` double default NULL,
  `net_price` double default NULL,
  `per` double default NULL,
  `amount` double default NULL,
  `crcy` tinytext,
  `amount_in_lc` double default NULL,
  `profit_ctr` tinytext,
  `name` tinytext,
  `fa` tinytext,
  `name_1` tinytext,
  `sloc` tinytext,
  `purch.doc.` tinytext,
  `item` tinytext,
  `user_name` tinytext,
  `cost_ctr` tinytext,
  `description` tinytext,
  `customer` tinytext,
  `text` tinytext,
  `etl_dttm` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for excel_master_category
-- ----------------------------
DROP TABLE IF EXISTS `excel_master_category`;
CREATE TABLE `excel_master_category` (
  `material` varchar(100) NOT NULL,
  `material_name` varchar(100) default NULL,
  `pc_type` varchar(100) default NULL,
  `etl_dttm` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`material`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for excel_master_detail_cost
-- ----------------------------
DROP TABLE IF EXISTS `excel_master_detail_cost`;
CREATE TABLE `excel_master_detail_cost` (
  `cost_center` varchar(100) NOT NULL,
  `cost_center_text` varchar(100) default NULL,
  `group` varchar(100) default NULL,
  `etl_dttm` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`cost_center`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for excel_master_product
-- ----------------------------
DROP TABLE IF EXISTS `excel_master_product`;
CREATE TABLE `excel_master_product` (
  `pc_type` varchar(100) NOT NULL,
  `product_name` varchar(100) default NULL,
  `sub_category_name` varchar(100) default NULL,
  `category_name` varchar(100) default NULL,
  `etl_dttm` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`pc_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for excel_monthly_report
-- ----------------------------
DROP TABLE IF EXISTS `excel_monthly_report`;
CREATE TABLE `excel_monthly_report` (
  `year` double default NULL,
  `month_no` double default NULL,
  `material_cost_type` tinytext,
  `value` double default NULL,
  `etl_dttm` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for excel_n_salary
-- ----------------------------
DROP TABLE IF EXISTS `excel_n_salary`;
CREATE TABLE `excel_n_salary` (
  `year` double default NULL,
  `month_no` double default NULL,
  `dept` tinytext,
  `section` tinytext,
  `employee` double default NULL,
  `salary` double default NULL,
  `position` double default NULL,
  `cola` tinytext,
  `ot_1,3` double default NULL,
  `ot_1.5` double default NULL,
  `ot_total_h` double default NULL,
  `other` double default NULL,
  `alwance` double default NULL,
  `shift` double default NULL,
  `bonus` double default NULL,
  `medical` double default NULL,
  `stop_h` double default NULL,
  `workday_h` double default NULL,
  `tax` double default NULL,
  `social` double default NULL,
  `providentfund` double default NULL,
  `etl_dttm` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for excel_oursource
-- ----------------------------
DROP TABLE IF EXISTS `excel_oursource`;
CREATE TABLE `excel_oursource` (
  `pstng_date` datetime default NULL,
  `doc_date` datetime default NULL,
  `do` tinytext,
  `documentno` tinytext,
  `vendor` tinytext,
  `name 1` tinytext,
  `reference` tinytext,
  `account` tinytext,
  `long_text` tinytext,
  `tx` tinytext,
  `material` tinytext,
  `material_description` tinytext,
  `quantity` double default NULL,
  `net_price` double default NULL,
  `per` double default NULL,
  `amount` double default NULL,
  `crcy` tinytext,
  `amount_in_lc` double default NULL,
  `profit_ctr` tinytext,
  `name` tinytext,
  `fa` tinytext,
  `name_1` tinytext,
  `sloc` tinytext,
  `purch.doc.` tinytext,
  `item` tinytext,
  `user_name` tinytext,
  `cost_ctr` tinytext,
  `description` tinytext,
  `customer` tinytext,
  `text` tinytext,
  `etl_dttm` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for excel_plan
-- ----------------------------
DROP TABLE IF EXISTS `excel_plan`;
CREATE TABLE `excel_plan` (
  `year` int(11) default NULL,
  `month_no` int(11) default NULL,
  `sub_category_name` varchar(50) default NULL,
  `product_name` varchar(50) default NULL,
  `kpi_name` varchar(50) default NULL,
  `plan_amt` decimal(15,2) default NULL,
  `etl_dttm` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for excel_p_salary
-- ----------------------------
DROP TABLE IF EXISTS `excel_p_salary`;
CREATE TABLE `excel_p_salary` (
  `year` double default NULL,
  `month_no` double default NULL,
  `dept` tinytext,
  `section` tinytext,
  `employee` double default NULL,
  `salary` double default NULL,
  `position` double default NULL,
  `cola` tinytext,
  `ot_1,3` double default NULL,
  `ot_1.5` double default NULL,
  `ot_total_h` double default NULL,
  `other` double default NULL,
  `alwance` double default NULL,
  `shift` double default NULL,
  `bonus` double default NULL,
  `medical` double default NULL,
  `stop_h` double default NULL,
  `workday_h` double default NULL,
  `tax` double default NULL,
  `social` double default NULL,
  `providentfund` double default NULL,
  `etl_dttm` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for excel_sales
-- ----------------------------
DROP TABLE IF EXISTS `excel_sales`;
CREATE TABLE `excel_sales` (
  `sales_organization` tinytext,
  `sales_document type` tinytext,
  `bill_type` tinytext,
  `billing_document` tinytext,
  `item` tinytext,
  `cancelled_bill` tinytext,
  `cancelled_date` tinytext,
  `distribution_channel` tinytext,
  `division` tinytext,
  `billing_date` datetime default NULL,
  `payer` tinytext,
  `sold-to` tinytext,
  `ship-to` tinytext,
  `customer_name` tinytext,
  `material` tinytext,
  `description` tinytext,
  `customer_material` tinytext,
  `po_customer` tinytext,
  `customer_invoice` tinytext,
  `exchange_rate` tinytext,
  `tax_amount` double default NULL,
  `billed_quantity` double default NULL,
  `net_price` double default NULL,
  `net_value` double default NULL,
  `document_currency` tinytext,
  `net_price_thb` double default NULL,
  `net_value_thb` double default NULL,
  `sales_document` tinytext,
  `item_1` tinytext,
  `created_by` tinytext,
  `etl_dttm` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for excel_sales_2w
-- ----------------------------
DROP TABLE IF EXISTS `excel_sales_2w`;
CREATE TABLE `excel_sales_2w` (
  `year` double default NULL,
  `month_no` double default NULL,
  `product` tinytext,
  `value` double default NULL,
  `etl_dttm` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for excel_sales_cost_down
-- ----------------------------
DROP TABLE IF EXISTS `excel_sales_cost_down`;
CREATE TABLE `excel_sales_cost_down` (
  `customer_name` varchar(255) NOT NULL,
  `after_cd` decimal(15,2) NOT NULL,
  `etl_dttm` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`customer_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for excel_semi
-- ----------------------------
DROP TABLE IF EXISTS `excel_semi`;
CREATE TABLE `excel_semi` (
  `pstng_date` datetime default NULL,
  `doc_date` datetime default NULL,
  `do` tinytext,
  `documentno` tinytext,
  `vendor` tinytext,
  `name 1` tinytext,
  `reference` tinytext,
  `account` tinytext,
  `long_text` tinytext,
  `material` tinytext,
  `material_description` tinytext,
  `quantity` double default NULL,
  `net_price` double default NULL,
  `per` double default NULL,
  `amount` double default NULL,
  `crcy` tinytext,
  `amount_in_lc` double default NULL,
  `profit_ctr` tinytext,
  `name` tinytext,
  `fa` tinytext,
  `name_1` tinytext,
  `sloc` tinytext,
  `purch.doc.` tinytext,
  `item` tinytext,
  `user_name` tinytext,
  `cost_ctr` tinytext,
  `description` tinytext,
  `customer` tinytext,
  `text` tinytext,
  `etl_dttm` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for excel_small
-- ----------------------------
DROP TABLE IF EXISTS `excel_small`;
CREATE TABLE `excel_small` (
  `pstng_date` datetime default NULL,
  `doc_date` datetime default NULL,
  `do` tinytext,
  `documentno` tinytext,
  `vendor` tinytext,
  `name 1` tinytext,
  `reference` tinytext,
  `account` tinytext,
  `long_text` tinytext,
  `material` tinytext,
  `material_description` tinytext,
  `quantity` double default NULL,
  `net_price` double default NULL,
  `per` double default NULL,
  `amount` double default NULL,
  `crcy` tinytext,
  `amount_in_lc` double default NULL,
  `profit_ctr` tinytext,
  `name` tinytext,
  `fa` tinytext,
  `name_1` tinytext,
  `sloc` tinytext,
  `purch.doc.` tinytext,
  `item` tinytext,
  `user_name` tinytext,
  `cost_ctr` tinytext,
  `description` tinytext,
  `customer` tinytext,
  `text` tinytext,
  `etl_dttm` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for excel_steel
-- ----------------------------
DROP TABLE IF EXISTS `excel_steel`;
CREATE TABLE `excel_steel` (
  `year` int(11) default NULL,
  `month_no` int(11) default NULL,
  `part_no` tinytext,
  `steel_no` tinytext,
  `size_1` tinytext,
  `size_2` tinytext,
  `sum_of_qty_bar` double default NULL,
  `sum_of_qty_kgs` tinytext,
  `sum_of_amount` double default NULL,
  `etl_dttm` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for excel_wip_fg
-- ----------------------------
DROP TABLE IF EXISTS `excel_wip_fg`;
CREATE TABLE `excel_wip_fg` (
  `year` int(11) default NULL,
  `month_no` int(11) default NULL,
  `part_no` varchar(100) default NULL,
  `diff_qty` decimal(15,2) default NULL,
  `diff_price` decimal(15,2) default NULL,
  `etl_dttm` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fact_delivery_plan
-- ----------------------------
DROP TABLE IF EXISTS `fact_delivery_plan`;
CREATE TABLE `fact_delivery_plan` (
  `plant_code` varchar(10) NOT NULL,
  `cust_code` varchar(20) NOT NULL,
  `item_code` varchar(20) NOT NULL,
  `snapshop_date` date NOT NULL,
  `plan_date` date NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `cust_item_code` varchar(20) NOT NULL,
  `order_qty` int(11) NOT NULL,
  `shipped_qty` int(11) NOT NULL,
  `back_order_qty` int(11) NOT NULL,
  `stock_qty` int(11) NOT NULL,
  `estimate_stock_qty` int(11) NOT NULL,
  `etl_dttm` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`plant_code`,`cust_code`,`item_code`,`snapshop_date`,`plan_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fact_kpi_result
-- ----------------------------
DROP TABLE IF EXISTS `fact_kpi_result`;
CREATE TABLE `fact_kpi_result` (
  `year` int(11) NOT NULL default '0',
  `month_no` int(11) NOT NULL default '0',
  `category_name` varchar(50) NOT NULL,
  `sub_category_name` varchar(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `kpi_name` varchar(100) NOT NULL,
  `month_name` varchar(20) NOT NULL,
  `seq_no` int(11) NOT NULL default '0',
  `actual_amt` decimal(15,2) NOT NULL,
  `plan_amt` decimal(15,2) NOT NULL,
  `etl_dttm` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`year`,`month_no`,`category_name`,`sub_category_name`,`product_name`,`kpi_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fact_process_stock
-- ----------------------------
DROP TABLE IF EXISTS `fact_process_stock`;
CREATE TABLE `fact_process_stock` (
  `plant_code` varchar(10) NOT NULL,
  `parent_item_code` varchar(50) NOT NULL,
  `item_code` varchar(50) NOT NULL,
  `parent_comp_item_code` varchar(50) NOT NULL,
  `comp_item_code` varchar(50) NOT NULL,
  `process_code` varchar(50) NOT NULL,
  `stock_date` date NOT NULL,
  `parent_item_name` varchar(255) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `parent_comp_item_name` varchar(255) NOT NULL,
  `comp_item_name` varchar(255) NOT NULL,
  `process_name` varchar(255) NOT NULL,
  `stock_qty` int(11) NOT NULL,
  `cycle_time_adjust` decimal(18,4) NOT NULL,
  `etl_dttm` datetime NOT NULL,
  PRIMARY KEY  (`plant_code`,`parent_item_code`,`item_code`,`parent_comp_item_code`,`comp_item_code`,`process_code`,`stock_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fact_process_stock_copy
-- ----------------------------
DROP TABLE IF EXISTS `fact_process_stock_copy`;
CREATE TABLE `fact_process_stock_copy` (
  `plant_code` varchar(10) NOT NULL,
  `parent_item_code` varchar(50) NOT NULL,
  `item_code` varchar(50) NOT NULL,
  `parent_comp_item_code` varchar(50) NOT NULL,
  `comp_item_code` varchar(50) NOT NULL,
  `process_code` varchar(50) NOT NULL,
  `stock_date` date NOT NULL,
  `parent_item_name` varchar(255) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `parent_comp_item_name` varchar(255) NOT NULL,
  `comp_item_name` varchar(255) NOT NULL,
  `process_name` varchar(255) NOT NULL,
  `stock_qty` int(11) NOT NULL,
  `cycle_time_adjust` decimal(18,4) NOT NULL,
  `etl_dttm` datetime NOT NULL,
  PRIMARY KEY  (`plant_code`,`parent_item_code`,`item_code`,`parent_comp_item_code`,`comp_item_code`,`process_code`,`stock_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file` (
  `file_id` int(11) default NULL,
  `job_id` int(11) default NULL,
  `file_name` varchar(255) default NULL,
  `path_file_source` varchar(255) default NULL,
  `path_file_source_update` varchar(255) default NULL,
  `path_file_reject` varchar(255) default NULL,
  `etl_dttm` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for job_log
-- ----------------------------
DROP TABLE IF EXISTS `job_log`;
CREATE TABLE `job_log` (
  `job_id` int(11) NOT NULL,
  `job_name` varchar(255) default NULL,
  `start_dttm` datetime default NULL,
  `finish_dttm` datetime default NULL,
  `start_date` date default NULL,
  `end_date` date default NULL,
  `mail_id` int(11) NOT NULL default '0',
  `path_log_file` varchar(255) default NULL,
  `subject_success` varchar(255) default NULL,
  `comment_success` varchar(255) default NULL,
  `subject_error` varchar(255) default NULL,
  `comment_error` varchar(255) default NULL,
  `etl_dttm` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`job_id`,`mail_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for mail
-- ----------------------------
DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail` (
  `mail_id` int(11) NOT NULL,
  `destination_address` varchar(255) default NULL,
  `cc` varchar(255) default NULL,
  `bcc` varchar(255) default NULL,
  `sender_name` varchar(255) default NULL,
  `sender_address` varchar(255) default NULL,
  `smtp_server` varchar(255) default NULL,
  `port` varchar(255) default NULL,
  `authentication_user` varchar(255) default NULL,
  `authentication_password` varchar(255) default NULL,
  PRIMARY KEY  (`mail_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for temp_actual
-- ----------------------------
DROP TABLE IF EXISTS `temp_actual`;
CREATE TABLE `temp_actual` (
  `year` int(11) NOT NULL default '0',
  `month_no` int(11) NOT NULL default '0',
  `category_name` varchar(50) NOT NULL,
  `sub_category_name` varchar(50) NOT NULL,
  `product_name` varchar(50) NOT NULL default '',
  `pc_type` varchar(50) NOT NULL,
  `type_name` varchar(100) NOT NULL default '',
  `month_name` varchar(20) NOT NULL,
  `actual_amt` decimal(15,2) NOT NULL,
  `etl_dttm` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`year`,`month_no`,`category_name`,`sub_category_name`,`product_name`,`pc_type`,`type_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for temp_material_cost_actual
-- ----------------------------
DROP TABLE IF EXISTS `temp_material_cost_actual`;
CREATE TABLE `temp_material_cost_actual` (
  `year` int(11) NOT NULL default '0',
  `month_no` int(11) NOT NULL default '0',
  `material_cost_type` varchar(20) NOT NULL,
  `type_name` varchar(20) NOT NULL default '',
  `pc_type` varchar(100) NOT NULL default '',
  `month_name` varchar(3) NOT NULL,
  `actual_amt` double NOT NULL,
  `etl_dttm` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`year`,`month_no`,`material_cost_type`,`type_name`,`pc_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for temp_process_stock
-- ----------------------------
DROP TABLE IF EXISTS `temp_process_stock`;
CREATE TABLE `temp_process_stock` (
  `plant_code` varchar(8) NOT NULL,
  `item_code` varchar(100) NOT NULL,
  `comp_item_code` varchar(100) NOT NULL,
  `type` decimal(2,0) NOT NULL,
  `process_code` varchar(100) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `comp_item_name` varchar(255) NOT NULL,
  `process_name` varchar(255) NOT NULL,
  `stock_qty` decimal(18,4) NOT NULL,
  `cycle_time_adjust` decimal(18,4) NOT NULL,
  `etl_dttm` datetime NOT NULL,
  PRIMARY KEY  (`plant_code`,`item_code`,`comp_item_code`,`type`,`process_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_item_stock
-- ----------------------------
DROP TABLE IF EXISTS `t_item_stock`;
CREATE TABLE `t_item_stock` (
  `item_cd` varchar(100) default NULL,
  `stock_on_hand_qty` double default NULL,
  `etl_dttm` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Procedure structure for test_mysql_while_loop
-- ----------------------------
DROP PROCEDURE IF EXISTS `test_mysql_while_loop`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `test_mysql_while_loop`()
BEGIN
 DECLARE x  INT;
 DECLARE str  VARCHAR(255);
 
 SET x = 1;
 SET str =  '';
 
 WHILE x  <= 5 DO
 SET  str = CONCAT(str,x,',');
 SET  x = x + 1; 
 END WHILE;
 
 SELECT str;
 END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for test_temp
-- ----------------------------
DROP PROCEDURE IF EXISTS `test_temp`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `test_temp`()
BEGIN
 DECLARE x  INT;
 DECLARE str  VARCHAR(255);
 
 SET x = 1;
 SET str =  '';
 
 WHILE x  <= 5 DO
 SET  str = CONCAT(str,x,',');
 SET  x = x + 1; 
 END WHILE;
 
 SELECT str;
 END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for getHighestParentItemCode
-- ----------------------------
DROP FUNCTION IF EXISTS `getHighestParentItemCode`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getHighestParentItemCode`(compItemCode VARCHAR(50)) RETURNS varchar(50) CHARSET utf8
    DETERMINISTIC
BEGIN
    DECLARE x VARCHAR(50);
    DECLARE y VARCHAR(50);
    SET x = compItemCode;
    sloop:LOOP
  SET y = NULL;
  SELECT item_code INTO y FROM fact_process_stock WHERE item_code != '22102MGZJ000H1 04' and comp_item_code = x;
  IF y IS NULL THEN
   LEAVE sloop;
  END IF;  
  SET x = y;
  ITERATE sloop;
    END LOOP;
    RETURN x;
END
;;
DELIMITER ;
