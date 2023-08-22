/*
 Navicat Premium Data Transfer

 Source Server         : VMmysql
 Source Server Type    : MySQL
 Source Server Version : 80032 (8.0.32)
 Source Host           : 195.148.22.175:3306
 Source Schema         : car_rental

 Target Server Type    : MySQL
 Target Server Version : 80032 (8.0.32)
 File Encoding         : 65001

 Date: 22/04/2023 06:49:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `rent_price` decimal(10, 2) NULL DEFAULT NULL,
  `year` int NULL DEFAULT NULL,
  `model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `engine_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cylinder_count` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `body_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `mfg_year` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `seating_capacity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `horse_power_cc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `maker_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 109 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES (1, 'Toyota Corolla', 45.00, 2019, 'LE', '1ZZ0001', '4', 'Blue', '2018', '5', '1300', 'Toyota');
INSERT INTO `car` VALUES (2, 'Honda Civic', 28.00, 2018, 'EX', '2HC0002', '4', 'Red', '2017', '5', '1600', 'Honda');
INSERT INTO `car` VALUES (3, 'Ford Focus', 55.00, 2020, 'SE', '3FD0003', '4', 'White', '2019', '5', '2000', 'Ford');
INSERT INTO `car` VALUES (4, 'Chevrolet Cruze', 33.00, 2017, 'LT', '4CH0004', '4', 'Black', '2016', '5', '1500', 'Chevrolet');
INSERT INTO `car` VALUES (5, 'Nissan Sentra', 40.00, 2016, 'SV', '5NS0005', '4', 'Gray', '2015', '5', '1800', 'Nissan');
INSERT INTO `car` VALUES (6, 'Volkswagen_Jetta', 60.00, 2018, 'S', '6VW0006', '4', 'Silver', '2017', '5', '1400', 'Volkswagen');
INSERT INTO `car` VALUES (7, 'Hyundai_Elantra', 67.00, 2020, 'SEL', '7HY0007', '4', 'Red', '2019', '5', '2000', 'Hyundai');
INSERT INTO `car` VALUES (8, 'Kia_Forte', 24.00, 2019, 'LXS', '8KF0008', '4', 'Blue', '2018', '5', '1600', 'Kia');
INSERT INTO `car` VALUES (9, 'Mazda_Mazda3', 53.00, 2018, 'Sport', '9MZ0009', '4', 'White', '2017', '5', '2000', 'Mazda');
INSERT INTO `car` VALUES (10, 'Subaru_Impreza', 74.00, 2017, 'Base', '10SU001', '4', 'Green', '2016', '5', '1500', 'Subaru');
INSERT INTO `car` VALUES (11, 'Dodge_Dart', 37.00, 2015, 'SE', '11DG002', '4', 'Black', '2014', '5', '2000', 'Dodge');
INSERT INTO `car` VALUES (12, 'BMW_3Series', 79.00, 2019, '330i', '12BM003', '4', 'Blue', '2018', '5', '2500', 'BMW');
INSERT INTO `car` VALUES (13, 'Mercedes_CClass', 52.00, 2020, 'C300', '13MB004', '4', 'White', '2019', '5', '2000', 'Mercedes');
INSERT INTO `car` VALUES (14, 'Audi_A4', 71.00, 2018, 'Premium', '14AU005', '4', 'Gray', '2017', '5', '2000', 'Audi');
INSERT INTO `car` VALUES (15, 'Lexus_IS', 31.00, 2019, '300', '15LX006', '6', 'Red', '2018', '5', '3000', 'Lexus');
INSERT INTO `car` VALUES (16, 'Cadillac_ATS', 68.00, 2016, 'Luxury', '16CD007', '4', 'Black', '2015', '5', '2000', 'Cadillac');
INSERT INTO `car` VALUES (17, 'Acura_TLX', 22.00, 2018, 'Base', '17AC008', '4', 'Blue', '2017', '5', '2400', 'Acura');
INSERT INTO `car` VALUES (18, 'Infiniti_Q50', 73.00, 2019, '3.0t', '18IN009', '6', 'Silver', '2018', '5', '3000', 'Infiniti');
INSERT INTO `car` VALUES (19, 'Lincoln_MKZ', 48.00, 2017, 'Select', '19LC010', '4', 'White', '2016', '5', '2000', 'Lincoln');
INSERT INTO `car` VALUES (20, 'Buick_Regal', 56.00, 2015, 'Base', '20BK011', '4', 'Red', '2014', '5', '1800', 'Buick');
INSERT INTO `car` VALUES (22, 'Jeep_GrandCherokee', 47.00, 2019, 'Laredo', '22JP013', '6', 'Black', '2018', '5', '3600', 'Jeep');
INSERT INTO `car` VALUES (23, 'Ford_Explorer', 59.00, 2018, 'XLT', '23FD014', '6', 'White', '2017', '7', '2900', 'Ford');
INSERT INTO `car` VALUES (24, 'Chevrolet_Traverse', 32.00, 2019, 'LS', '24CH015', '6', 'Gray', '2018', '8', '2800', 'Chevrolet');
INSERT INTO `car` VALUES (25, 'Honda_Pilot', 46.00, 2020, 'LX', '25HD016', '6', 'Black', '2019', '8', '3500', 'Honda');
INSERT INTO `car` VALUES (26, 'Toyota_Highlander', 66.00, 2017, 'LE', '26TY017', '6', 'Blue', '2016', '8', '2700', 'Toyota');
INSERT INTO `car` VALUES (27, 'Nissan_Pathfinder', 37.00, 2018, 'S', '27NS018', '6', 'Red', '2017', '7', '2400', 'Nissan');
INSERT INTO `car` VALUES (28, 'Mazda_CX9', 50.00, 2016, 'Sport', '28MZ019', '6', 'Silver', '2015', '7', '3200', 'Mazda');
INSERT INTO `car` VALUES (29, 'Subaru Ascent', 29.00, 2019, 'Base', '29SU020', '4', 'Green', '2018', '8', '2600', 'Subaru');
INSERT INTO `car` VALUES (30, 'Dodge_Durango', 54.00, 2017, 'SXT', '30DG021', '6', 'White', '2016', '7', '2900', 'Dodge');
INSERT INTO `car` VALUES (31, 'Volkswagen_Atlas', 72.00, 2018, 'S', '31VW022', '6', 'Black', '2017', '7', '2800', 'Volkswagen');
INSERT INTO `car` VALUES (32, 'Hyundai_SantaFe', 20.00, 2020, 'SE', '32HY023', '4', 'Blue', '2019', '7', '2350', 'Hyundai');
INSERT INTO `car` VALUES (33, 'Kia_Sorento', 61.00, 2016, 'L', '33KI024', '4', 'Red', '2015', '7', '2900', 'Kia');
INSERT INTO `car` VALUES (34, 'Mitsubishi_Outlander', 76.00, 2015, 'ES', '34MI025', '4', 'White', '2014', '7', '2200', 'Mitsubishi');
INSERT INTO `car` VALUES (35, 'Buick_Enclave', 27.00, 2018, 'Preferred', '35BK026', '6', 'Black', '2017', '7', '3100', 'Buick');
INSERT INTO `car` VALUES (36, 'Audi_Q7', 65.00, 2019, 'Premium', '36AU027', '6', 'Gray', '2018', '7', '3000', 'Audi');
INSERT INTO `car` VALUES (37, 'BMW_X5', 39.00, 2020, 'xDrive40i', '37BM028', '6', 'White', '2019', '5', '3400', 'BMW');
INSERT INTO `car` VALUES (38, 'Mercedes_GLE', 48.00, 2017, '350', '38MB029', '6', 'Blue', '2016', '5', '3000', 'Mercedes');
INSERT INTO `car` VALUES (39, 'Lexus_RX', 62.00, 2016, '350', '39LX030', '6', 'Red', '2015', '5', '2700', 'Lexus');
INSERT INTO `car` VALUES (40, 'Acura_MDX', 70.00, 2015, 'Base', '40AC031', '6', 'Black', '2014', '7', '2900', 'Acura');
INSERT INTO `car` VALUES (41, 'Infiniti_QX60', 21.00, 2018, 'Pure', '41IN032', '6', 'Silver', '2017', '7', '2950', 'Infiniti');
INSERT INTO `car` VALUES (42, 'Lincoln_Aviator', 58.00, 2020, 'Standard', '42LC033', '6', 'White', '2019', '7', '4000', 'Lincoln');
INSERT INTO `car` VALUES (43, 'Volvo_XC90', 45.00, 2016, 'T5', '43VO034', '4', 'Gray', '2015', '7', '2500', 'Volvo');
INSERT INTO `car` VALUES (44, 'Cadillac_XT6', 51.00, 2019, 'Luxury', '44CD035', '6', 'Blue', '2018', '7', '3100', 'Cadillac');
INSERT INTO `car` VALUES (45, 'Porsche_Cayenne', 77.00, 2017, 'Base', '45PO036', '6', 'White', '2016', '5', '3000', 'Porsche');
INSERT INTO `car` VALUES (46, 'LandRover_Discovery', 34.00, 2018, 'SE', '46LR037', '6', 'Black', '2017', '7', '3400', 'LandRover');
INSERT INTO `car` VALUES (47, 'Jaguar_FPACE', 67.00, 2019, '25t', '47JA038', '4', 'Blue', '2018', '5', '2500', 'Jaguar');
INSERT INTO `car` VALUES (48, 'Tesla_ModelY', 80.00, 2020, 'LongRange', '48TS039', 'Electric', 'White', '2019', '5', '384', 'Electric');
INSERT INTO `car` VALUES (49, 'Nissan_Leaf', 35.00, 2018, 'SV', '49NS040', 'Electric', 'Red', '2017', '5', '147', 'Electric');
INSERT INTO `car` VALUES (50, 'Chevrolet_Bolt', 43.00, 2019, 'LT', '50CH041', 'Electric', 'Black', '2018', '5', '200', 'Electric');
INSERT INTO `car` VALUES (51, 'BMW_i3', 52.00, 2017, '60Ah', '51BM042', 'Electric', 'Gray', '2016', '4', '170', 'Electric');
INSERT INTO `car` VALUES (52, 'Ford_MustangMachE', 78.00, 2021, 'Select', '52FD043', 'Electric', 'White', '2020', '5', '266', 'Electric');
INSERT INTO `car` VALUES (53, 'Volkswagen_ID4', 30.00, 2021, 'Pro', '53VW044', 'Electric', 'Silver', '2020', '5', '201', 'Electric');
INSERT INTO `car` VALUES (54, 'Kia_NiroEV', 63.00, 2019, 'EX', '54KI045', 'Electric', 'Blue', '2018', '5', '201', 'Electric');
INSERT INTO `car` VALUES (55, 'Hyundai_KonaElectric', 23.00, 2020, 'SEL', '55HY046', 'Electric', 'Green', '2019', '5', '201', 'Electric');
INSERT INTO `car` VALUES (56, 'Audi_eTron', 69.00, 2019, 'Premium', '56AU047', 'Electric', 'Gray', '2018', '5', '355', 'Electric');
INSERT INTO `car` VALUES (57, 'Mercedes_EQC', 36.00, 2020, '400', '57MB048', 'Electric', 'Black', '2019', '5', '402', 'Electric');
INSERT INTO `car` VALUES (58, 'Porsche_Taycan', 74.00, 2020, '4S', '58PO049', 'Electric', 'White', '2019', '4', '522', 'Electric');
INSERT INTO `car` VALUES (59, 'Rivian_R1T', 64.00, 2021, 'LaunchEdition', '59RI050', 'Electric', 'Blue', '2020', '5', '835', 'Electric');
INSERT INTO `car` VALUES (60, 'Tesla_ModelX', 41.00, 2018, '100D', '60TS051', 'Electric', 'Red', '2017', '7', '518', 'Electric');
INSERT INTO `car` VALUES (61, 'Honda_CRV', 75.00, 2017, 'EX', '61HD052', '4', 'Silver', '2016', '5', '1900', 'Honda');
INSERT INTO `car` VALUES (62, 'Toyota_RAV4', 29.00, 2019, 'LE', '62TY053', '4', 'Blue', '2018', '5', '2035', 'Toyota');
INSERT INTO `car` VALUES (63, 'Ford_Escape', 50.00, 2016, 'SE', '63FD054', '4', 'Green', '2015', '5', '1800', 'Ford');
INSERT INTO `car` VALUES (64, 'Jeep_Cherokee', 56.00, 2018, 'Sport', '64JP055', '4', 'Black', '2017', '5', '1840', 'Jeep');
INSERT INTO `car` VALUES (65, 'Chevrolet_Equinox', 42.00, 2020, 'LS', '65CH056', '4', 'White', '2019', '5', '1700', 'Chevrolet');
INSERT INTO `car` VALUES (66, 'Nissan_Rogue', 47.00, 2017, 'S', '66NS057', '4', 'Red', '2016', '5', '1700', 'Nissan');
INSERT INTO `car` VALUES (67, 'Mazda_CX5', 73.00, 2019, 'Sport', '67MZ058', '4', 'Gray', '2018', '5', '1870', 'Mazda');
INSERT INTO `car` VALUES (68, 'Hyundai_Tucson', 20.00, 2018, 'SE', '68HY059', '4', 'Black', '2017', '5', '1640', 'Hyundai');
INSERT INTO `car` VALUES (69, 'Kia_Sportage', 68.00, 2016, 'LX', '69KI060', '4', 'Blue', '2015', '5', '1810', 'Kia');
INSERT INTO `car` VALUES (70, 'Subaru_Forester', 49.00, 2020, 'Base', '70SU061', '4', 'Green', '2019', '5', '1820', 'Subaru');
INSERT INTO `car` VALUES (71, 'Volkswagen_Tiguan', 25.00, 2017, 'S', '71VW062', '4', 'White', '2016', '5', '1840', 'Volkswagen');
INSERT INTO `car` VALUES (72, 'Dodge_Journey', 38.00, 2015, 'SE', '72DG063', '4', 'Red', '2014', '5', '1730', 'Dodge');
INSERT INTO `car` VALUES (73, 'Mitsubishi_OutlanderSport', 53.00, 2018, 'ES', '73MI064', '4', 'Black', '2017', '5', '1480', 'Mitsubishi');
INSERT INTO `car` VALUES (74, 'GMC_Terrain', 76.00, 2019, 'SL', '74GM065', '4', 'Blue', '2018', '5', '1700', 'GMC');
INSERT INTO `car` VALUES (75, 'Buick_Encore', 27.00, 2016, 'Base', '75BK066', '4', 'White', '2015', '5', '1380', 'Buick');
INSERT INTO `car` VALUES (76, 'Acura_RDX', 44.00, 2019, 'Base', '76AC067', '4', 'Silver', '2018', '5', '2720', 'Acura');
INSERT INTO `car` VALUES (77, 'Audi_Q5', 34.00, 2020, 'Premium', '77AU068', '4', 'Gray', '2019', '5', '2480', 'Audi');
INSERT INTO `car` VALUES (78, 'BMW_X3', 58.00, 2018, 'xDrive30i', '78BM069', '4', 'Black', '2017', '5', '2480', 'BMW');
INSERT INTO `car` VALUES (79, 'Mercedes_GLK', 62.00, 2015, '250', '79MB070', '4', 'Red', '2014', '5', '2000', 'Mercedes');
INSERT INTO `car` VALUES (80, 'Lexus_NX', 70.00, 2016, '200t', '80LX071', '4', 'White', '2015', '5', '2350', 'Lexus');
INSERT INTO `car` VALUES (81, 'Infiniti_QX50', 35.00, 2017, 'Base', '81IN072', '6', 'Blue', '2016', '5', '3250', 'Infiniti');
INSERT INTO `car` VALUES (82, 'Cadillac_XT5', 45.00, 2018, 'Luxury', '82CD073', '6', 'Black', '2017', '5', '3100', 'Cadillac');
INSERT INTO `car` VALUES (83, 'Lincoln_MKC', 51.00, 2017, 'Select', '83LC074', '4', 'Green', '2016', '5', '2400', 'Lincoln');
INSERT INTO `car` VALUES (84, 'Volvo_XC60', 39.00, 2019, 'T5', '84VO075', '4', 'Gray', '2018', '5', '2500', 'Volvo');
INSERT INTO `car` VALUES (85, 'LandRover_RangeRoverEvoque', 78.00, 2020, 'S', '85LR076', '4', 'White', '2019', '5', '2460', 'LandRover');
INSERT INTO `car` VALUES (86, 'Jaguar_EPace', 30.00, 2018, 'S', '86JA077', '4', 'Black', '2017', '5', '2460', 'Jaguar');
INSERT INTO `car` VALUES (87, 'Porsche_Macan', 75.00, 2019, 'Base', '87PO078', '4', 'Silver', '2018', '5', '2520', 'Porsche');
INSERT INTO `car` VALUES (88, 'AlfaRomeo_Stelvio', 66.00, 2018, 'Base', '88AR079', '4', 'Red', '2017', '5', '2800', 'AlfaRomeo');
INSERT INTO `car` VALUES (89, 'Maserati_Levante', 54.00, 2017, 'Base', '89MS080', '6', 'Blue', '2016', '5', '3450', 'Maserati');
INSERT INTO `car` VALUES (98, 'establish decide', 56.00, 1994, 'thousand success', '1025808', '4', 'LightSlateGray', '2004', '8', '1432', 'Cox-Martin');
INSERT INTO `car` VALUES (99, 'establish decide', 56.00, 1994, 'thousand success', '1025808', '4', 'LightSlateGray', '2004', '8', '1432', 'Cox-Martin');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `surname` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `address` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `phone` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `registration_date` datetime NULL DEFAULT NULL,
  `car_id` int NULL DEFAULT NULL,
  `email` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `Sin_UNIQUE`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 214 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (186, 'ijlal khan', 'khan', 'finland', '454643', '2019-11-23 00:00:00', 34, 'jjsdf@gmail.com');
INSERT INTO `customer` VALUES (2, 'Jumu', 'Williams', '58451 Charles Mountains Apt. 968New Alejandroville, DE 31241', '103-308-9798x85420', '2021-10-07 00:00:00', 60, 'grahamdanielle@crane.com');
INSERT INTO `customer` VALUES (3, 'Christine', 'Watson', '746 Rich Meadow Apt. 830\nMorganmouth, AR 53054', '001-632-943-0535', '2022-08-16 00:00:00', 8, 'jesus25@gmail.com');
INSERT INTO `customer` VALUES (5, 'Brooke M', 'Downs', '19111 Ruiz Pike Apt. 713\nNorth Matthewmouth, MT 59541', '543-774-4017', '2020-08-05 00:00:00', 9, 'conradtaylor@davis-brown.com');
INSERT INTO `customer` VALUES (6, 'Megan', 'Oneill', '59409 Diana Springs\nWest Mariah, FL 93867', '(807)791-4513', '2020-10-07 00:00:00', 84, 'lisajones@stafford.com');
INSERT INTO `customer` VALUES (7, 'David', 'Browning', '980 Rebecca Turnpike\nAliciaborough, NY 65676', '586-472-5320x276', '2020-01-22 00:00:00', 46, 'mark27@hotmail.com');
INSERT INTO `customer` VALUES (8, 'Patricia', 'Beck', '735 Joshua Ports\nAmybury, MS 46383', '(562)681-8542x54126', '2021-08-01 00:00:00', 7, 'sbrock@mcfarland-perez.net');
INSERT INTO `customer` VALUES (9, 'Ronald', 'Howell', '6086 Evans Viaduct\nNorth Trevorport, LA 58648', '(617)310-0852', '2020-09-02 00:00:00', 6, 'dylanramsey@yahoo.com');
INSERT INTO `customer` VALUES (10, 'Mary', 'Hill', '33509 Tamara Way\nKatherineland, TN 72651', '500.640.4121x506', '2020-02-25 00:00:00', 47, 'brittany57@hotmail.com');
INSERT INTO `customer` VALUES (11, 'Michael', 'Fox', '518 Nguyen Green Apt. 404\nSouth Kristopherfurt, MT 59874', '016-959-8269x2110', '2018-04-20 00:00:00', 63, 'bonniewalker@gmail.com');
INSERT INTO `customer` VALUES (12, 'Megan', 'Mcintyre', '47967 Jorge Green\nNorth Tammyberg, WY 90596', '752.999.8966', '2018-05-25 00:00:00', 71, 'shieldskevin@gmail.com');
INSERT INTO `customer` VALUES (13, 'Henry', 'Scott', '02486 Timothy Crest\nAlexanderhaven, IA 96255', '666-092-7740', '2021-01-18 00:00:00', 41, 'cynthiasmith@oneill.info');
INSERT INTO `customer` VALUES (14, 'Noah', 'Velazquez', '5869 Scott Pine\nWoodton, IA 42285', '+1-478-405-0174x21186', '2019-07-25 00:00:00', 34, 'philipholt@yahoo.com');
INSERT INTO `customer` VALUES (15, 'Michelle', 'Smith', '8084 Jennifer Parkways\nLindseymouth, AR 05503', '545.994.5397x245', '2021-06-11 00:00:00', 34, 'uwalsh@hotmail.com');
INSERT INTO `customer` VALUES (16, 'Darrell', 'King', '2318 Michelle Orchard\nEast Stacymouth, CA 45708', '(715)864-7897x3620', '2022-05-18 00:00:00', 96, 'treeves@rodriguez.org');
INSERT INTO `customer` VALUES (17, 'Charles Edited Again', 'Evans', '465 Kimberly Streets Apt. 224\nNorth Kathryn, WA 82213', '1574083211', '2021-04-14 00:00:00', 53, 'cherylkim@gmail.com');
INSERT INTO `customer` VALUES (18, 'Eric', 'Jones', '01324 Kendra Land\nNew Rebeccaberg, NC 12496', '441-169-6916x43544', '2018-06-12 00:00:00', 87, 'thompsonrodney@hobbs.net');
INSERT INTO `customer` VALUES (19, 'Vincent', 'Smith', '4643 Zachary Road Apt. 763\nPort Gene, SC 84862', '001-959-414-3116x7230', '2019-05-18 00:00:00', 83, 'rosegreene@hotmail.com');
INSERT INTO `customer` VALUES (20, 'Guy', 'Parker', 'USS Doyle\nFPO AE 41884', '001-627-989-0927x571', '2022-11-14 00:00:00', 60, 'stephanie72@allen.net');
INSERT INTO `customer` VALUES (21, 'Jacqueline', 'Romero', '2489 Riley Shoals Apt. 446\nLake Samuel, DC 41137', '(220)303-1630', '2020-07-26 00:00:00', 31, 'ariaslatasha@hotmail.com');
INSERT INTO `customer` VALUES (22, 'David', 'Smith', '1172 Crawford Glen Suite 325\nSullivanland, PA 57047', '116.606.4215', '2022-06-11 00:00:00', 7, 'jeffrey17@gmail.com');
INSERT INTO `customer` VALUES (23, 'Kevin', 'Ware', 'PSC 5184, Box 3762\nAPO AP 19770', '+1-726-116-5166x16065', '2018-03-22 00:00:00', 20, 'vincent23@gmail.com');
INSERT INTO `customer` VALUES (24, 'Ronald', 'Charles', '49008 Bailey Creek\nOliverport, NJ 28693', '+1-012-857-2596x63439', '2022-08-26 00:00:00', 30, 'estradachristopher@yahoo.com');
INSERT INTO `customer` VALUES (25, 'Beverly', 'Rubio', '097 Brittany Turnpike\nCatherinestad, CT 87076', '(019)566-1332x7628', '2020-03-15 00:00:00', 9, 'alisha61@scott.info');
INSERT INTO `customer` VALUES (26, 'Adrian', 'Stafford', '047 Ronald Mountain\nWest Justinburgh, OH 17094', '(734)745-0400x313', '2018-08-29 00:00:00', 86, 'davidhernandez@anthony.com');
INSERT INTO `customer` VALUES (27, 'Amber', 'Alexander', '9879 Johnson Branch\nPort Andrea, OR 65111', '769-951-9853x48947', '2022-12-01 00:00:00', 33, 'sjackson@yahoo.com');
INSERT INTO `customer` VALUES (28, 'Rhonda', 'Johnson', '9406 Scott Cliffs Apt. 589\nPort David, CA 45392', '114.712.9622x8358', '2022-12-09 00:00:00', 19, 'arnoldmallory@miller-dickerson.com');
INSERT INTO `customer` VALUES (29, 'Austin', 'Atkinson', '776 Lisa Hollow Suite 314\nJustinland, ND 52130', '(761)649-8563', '2018-09-18 00:00:00', 99, 'austin27@gmail.com');
INSERT INTO `customer` VALUES (30, 'Amanda', 'Lewis', '32586 Steven Causeway\nKrausehaven, TX 14073', '816-830-6896', '2018-08-24 00:00:00', 55, 'erikhill@yahoo.com');
INSERT INTO `customer` VALUES (31, 'Patricia', 'Washington', '02092 Carolyn Key\nBurnschester, VT 21149', '310-299-5869x9758', '2020-12-23 00:00:00', 63, 'tiffany70@hines.org');
INSERT INTO `customer` VALUES (32, 'Mariah', 'Brown', '235 Carla Ridge Suite 355\nVargasbury, KY 61246', '+1-073-586-6299', '2018-05-18 00:00:00', 84, 'colinfields@yahoo.com');
INSERT INTO `customer` VALUES (33, 'Felicia', 'West', '90249 Judy Junction Suite 705\nBennettfurt, ID 53444', '775-950-9408x61500', '2021-10-18 00:00:00', 9, 'rpacheco@mitchell-tucker.com');
INSERT INTO `customer` VALUES (34, 'Martha', 'Clark', '3946 Peter Lakes Apt. 380\nSouth Chad, DC 10324', '007.165.9609x6110', '2021-08-28 00:00:00', 91, 'matthewmichael@hotmail.com');
INSERT INTO `customer` VALUES (35, 'Erica', 'Robinson', '465 Sims Plains\nCoopershire, AK 53984', '9140533478', '2020-02-10 00:00:00', 61, 'davidcohen@brown-shelton.com');
INSERT INTO `customer` VALUES (36, 'Lynn', 'Deleon', 'Unit 3506 Box 1573\nDPO AA 70680', '9843077643', '2018-10-08 00:00:00', 99, 'dgonzales@hotmail.com');
INSERT INTO `customer` VALUES (37, 'John', 'Hunter', '15716 Gonzales Knoll Apt. 565\nSeanfurt, OR 80361', '001-185-915-4396x05014', '2020-01-17 00:00:00', 61, 'michael97@griffin.com');
INSERT INTO `customer` VALUES (38, 'Virginia', 'Nelson', '085 Bryant Underpass Suite 217\nHarrellbury, KY 08833', '6828525621', '2020-11-29 00:00:00', 21, 'kenneth17@harrison.com');
INSERT INTO `customer` VALUES (39, 'Jorge', 'Glass', '8863 Johnson Pass\nLake Lauren, MI 77723', '+1-611-370-7375x889', '2018-12-22 00:00:00', 14, 'crystal92@hotmail.com');
INSERT INTO `customer` VALUES (40, 'Rachel', 'Thompson', '6486 Morris Field\nReyestown, NV 18844', '856.388.8176x1316', '2022-11-26 00:00:00', 100, 'klozano@brown-jordan.com');
INSERT INTO `customer` VALUES (41, 'Michelle', 'Brown', '15997 Malone Shores Apt. 118\nEast Jessicaberg, VT 96276', '103.420.5126x9924', '2021-10-11 00:00:00', 47, 'gutierrezkimberly@yahoo.com');
INSERT INTO `customer` VALUES (42, 'Andrew', 'Harris', '749 Parker Viaduct Suite 756\nSouth Sandra, WA 84537', '488-893-3362x7380', '2019-08-17 00:00:00', 65, 'brettduncan@hotmail.com');
INSERT INTO `customer` VALUES (43, 'Cassandra', 'Hobbs', '513 Gray Mission Apt. 081\nNorth Cynthia, NC 53772', '(175)955-6428', '2022-02-19 00:00:00', 97, 'xtorres@miller.net');
INSERT INTO `customer` VALUES (44, 'Jackson', 'Griffin', '3392 Matthew Islands\nWest Theresa, GA 55086', '+1-225-296-0547x0985', '2019-06-27 00:00:00', 27, 'cookpatricia@nguyen-lawrence.com');
INSERT INTO `customer` VALUES (45, 'Angela', 'Norman', '2427 Carpenter Neck\nSouth Seth, WI 65333', '625.039.5295x58097', '2020-08-28 00:00:00', 31, 'tiffanyhayes@gmail.com');
INSERT INTO `customer` VALUES (46, 'Daniel', 'Dixon', '669 Harvey Stravenue\nNew Corybury, TX 90972', '644.809.3704', '2020-10-06 00:00:00', 5, 'bmathews@ware-patrick.org');
INSERT INTO `customer` VALUES (47, 'Heather', 'Perez', '7771 Evans Villages\nLemouth, NM 59096', '676-630-4271', '2020-10-03 00:00:00', 27, 'lnguyen@gmail.com');
INSERT INTO `customer` VALUES (48, 'Thomas', 'Thompson', '88431 Marc Coves Apt. 025\nDeborahborough, CO 34430', '7918485653', '2020-12-07 00:00:00', 28, 'lindseycole@gomez.com');
INSERT INTO `customer` VALUES (49, 'Sarah', 'Allen', '5276 Lewis Land\nWest Melissaborough, LA 60535', '+1-932-881-1425x87866', '2021-11-20 00:00:00', 16, 'ejones@thompson.info');
INSERT INTO `customer` VALUES (50, 'George', 'Tucker', '178 Tara Corners\nNew Patricia, ND 69077', '348.483.6346x130', '2019-12-09 00:00:00', 92, 'cholt@yahoo.com');
INSERT INTO `customer` VALUES (51, 'Courtney', 'Robinson', '7534 Amber Ramp\nJoshuafort, IN 35677', '+1-359-158-5402x484', '2020-08-25 00:00:00', 58, 'christine64@yahoo.com');
INSERT INTO `customer` VALUES (52, 'Tina', 'Chaney', 'USCGC Gould\nFPO AE 49658', '+1-234-209-1796x79098', '2019-07-26 00:00:00', 91, 'jeffrey36@yahoo.com');
INSERT INTO `customer` VALUES (53, 'Michael', 'Jones', '26980 Keller Ranch Apt. 526\nSouth Samuel, SD 71336', '279-139-9845', '2020-03-22 00:00:00', 97, 'bferguson@gmail.com');
INSERT INTO `customer` VALUES (54, 'David', 'Nelson', '8481 Lisa Passage\nNew Denise, ND 04933', '001-969-472-8988x72643', '2021-09-03 00:00:00', 91, 'williamsbenjamin@bryan.com');
INSERT INTO `customer` VALUES (55, 'Molly', 'Pierce', '9164 Valerie Pine\nEast Franciscostad, ND 90271', '621.341.2324', '2018-07-24 00:00:00', 31, 'susan83@gmail.com');
INSERT INTO `customer` VALUES (56, 'Tracy', 'Anderson', '48313 Bradley Junction\nPierceside, MT 34118', '633.615.2540x5579', '2022-04-05 00:00:00', 14, 'kmyers@hotmail.com');
INSERT INTO `customer` VALUES (57, 'Justin', 'Cooper', '72093 Yoder Tunnel Suite 663\nGregorystad, FL 61311', '+1-826-650-4881x38556', '2018-05-14 00:00:00', 63, 'turnerdavid@miller-riley.biz');
INSERT INTO `customer` VALUES (58, 'Chad', 'Sherman', '78325 Joseph Circles Suite 728\nLaurieside, MT 27477', '(787)659-8519x69968', '2020-10-04 00:00:00', 63, 'nicolewheeler@gmail.com');
INSERT INTO `customer` VALUES (59, 'John', 'Mccann', '78341 James Via Suite 748\nScottshire, MN 50281', '+1-714-766-4167', '2021-03-08 00:00:00', 17, 'sharonberry@gmail.com');
INSERT INTO `customer` VALUES (60, 'Barry', 'Byrd', '9075 Crystal Plain\nMatthewview, IN 58977', '(728)427-7022x9711', '2018-08-30 00:00:00', 18, 'abigaillyons@hansen.com');
INSERT INTO `customer` VALUES (61, 'Brittany', 'Stephens', '80151 Frost Green\nChasebury, HI 79880', '(683)794-0399x91430', '2023-01-24 00:00:00', 3, 'martinalvarez@yahoo.com');
INSERT INTO `customer` VALUES (62, 'Jesse', 'Scott', '8898 Bryan Radial Apt. 541\nSouth Michele, IL 91017', '0170560100', '2022-10-08 00:00:00', 95, 'hughesadam@gmail.com');
INSERT INTO `customer` VALUES (63, 'Jay', 'Miller', 'Unit 2367 Box 4944\nDPO AA 50320', '189-575-6720x66212', '2022-04-28 00:00:00', 91, 'murraykarla@gmail.com');
INSERT INTO `customer` VALUES (64, 'Christie', 'Howard', '090 Natalie Pass Apt. 560\nWest Tricia, NV 59298', '+1-940-726-6534', '2019-03-29 00:00:00', 82, 'daniel16@gmail.com');
INSERT INTO `customer` VALUES (65, 'Ryan', 'Cox', '6957 Graves Knolls Suite 903\nWest Colleenport, PA 73361', '001-103-943-1238x605', '2019-11-26 00:00:00', 86, 'wilsondiana@freeman-gray.com');
INSERT INTO `customer` VALUES (66, 'Lauren', 'Ryan', '619 Madeline Squares Apt. 521\nSouth Marcoberg, RI 78275', '824-933-3190', '2019-06-18 00:00:00', 57, 'daniel47@gmail.com');
INSERT INTO `customer` VALUES (67, 'Ethan', 'Welch', '2973 Brennan Estate\nNorth Juan, GA 90226', '433.391.5409', '2019-09-17 00:00:00', 12, 'jameshartman@hotmail.com');
INSERT INTO `customer` VALUES (68, 'Kristen', 'Nielsen', '681 Moyer Crescent\nWest Russell, PA 58934', '(845)851-9199x7566', '2018-09-17 00:00:00', 58, 'johnsonashley@smith-chavez.com');
INSERT INTO `customer` VALUES (69, 'Ashley', 'Bush', '086 Jeffrey Well\nJeffreyfort, KY 18298', '089.117.9720', '2019-07-19 00:00:00', 45, 'bob08@hotmail.com');
INSERT INTO `customer` VALUES (70, 'Keith', 'Newton', 'USS Wilson\nFPO AA 62186', '+1-124-884-0280', '2020-12-29 00:00:00', 10, 'cthompson@gmail.com');
INSERT INTO `customer` VALUES (71, 'Kristen', 'Richardson', '30677 Shawn Manors\nLopezmouth, SD 70296', '388-317-5219x394', '2018-06-12 00:00:00', 62, 'brianna35@hotmail.com');
INSERT INTO `customer` VALUES (72, 'Marvin', 'Smith', '1542 Michelle Rapid Apt. 705\nFrenchville, IN 34305', '(051)142-7396', '2018-04-16 00:00:00', 80, 'william34@hotmail.com');
INSERT INTO `customer` VALUES (73, 'Brett', 'Pollard', '870 Cunningham Oval Suite 201\nObrienstad, VA 85221', '(367)241-5602x9821', '2018-11-05 00:00:00', 66, 'anunez@meyer.com');
INSERT INTO `customer` VALUES (74, 'Hunter', 'Duncan', '32726 Theresa Hollow Apt. 946\nBrittneyview, AL 58979', '001-076-901-9545x4925', '2021-02-11 00:00:00', 88, 'richardavila@thomas.info');
INSERT INTO `customer` VALUES (75, 'Tamara', 'Hanson', '3645 Miles Place Suite 569\nNorth Courtneytown, AK 26996', '+1-257-582-8389', '2019-11-07 00:00:00', 78, 'mmonroe@fields.biz');
INSERT INTO `customer` VALUES (76, 'Courtney', 'Lee', '8698 Burton Loop\nWest Lori, AK 82637', '3330510393', '2018-12-06 00:00:00', 74, 'wmurray@pennington.com');
INSERT INTO `customer` VALUES (77, 'David', 'Garner', '05709 Edwards Circle\nSouth Brandyshire, WV 38290', '+1-798-144-2668x6967', '2021-05-14 00:00:00', 57, 'zjohnson@benton-solomon.biz');
INSERT INTO `customer` VALUES (78, 'Anna', 'Simon', '815 Burnett Squares\nWest Marcusmouth, WV 62898', '846.309.5440', '2020-03-27 00:00:00', 2, 'qdaniels@hotmail.com');
INSERT INTO `customer` VALUES (79, 'Ryan', 'Williams', '80926 Mayo Turnpike\nWatsonfurt, WY 11924', '401.942.6231x433', '2021-07-11 00:00:00', 77, 'elyons@hotmail.com');
INSERT INTO `customer` VALUES (80, 'Roberta', 'Dean', '02044 Lang Loop\nFredton, DC 66552', '475-651-1478x876', '2019-02-15 00:00:00', 30, 'tsmith@johnson.info');
INSERT INTO `customer` VALUES (81, 'Susan', 'Gonzalez', '7231 Sean Burg Suite 775\nNorth Katie, SD 29497', '001-593-543-8721x616', '2023-02-19 00:00:00', 34, 'kpatton@hotmail.com');
INSERT INTO `customer` VALUES (82, 'John', 'Smith', '385 Brown Corner\nEast Danielleborough, AR 22764', '(791)853-9824x9570', '2022-05-24 00:00:00', 23, 'nmorgan@johnson.com');
INSERT INTO `customer` VALUES (83, 'Jonathan', 'Horton', '3414 Diaz Plains Apt. 816\nPort Aprilborough, CO 56075', '804-325-7938', '2020-12-07 00:00:00', 44, 'mford@yahoo.com');
INSERT INTO `customer` VALUES (84, 'Sherry', 'Fox', '7813 Anne Club Suite 847\nPettyburgh, WA 15548', '713-479-8881', '2022-08-31 00:00:00', 52, 'phamjohn@yahoo.com');
INSERT INTO `customer` VALUES (85, 'Lawrence', 'Sanders', '289 Holden Fork Suite 158\nLake Erika, OR 82095', '3183951344', '2020-09-18 00:00:00', 22, 'ashleybryant@hotmail.com');
INSERT INTO `customer` VALUES (86, 'Susan', 'Avery', 'Unit 6369 Box 8857\nDPO AE 77876', '455.784.4542x7527', '2019-06-11 00:00:00', 6, 'megangibson@hotmail.com');
INSERT INTO `customer` VALUES (87, 'Angela', 'Sawyer', '87944 Clark Island\nEast Jared, NC 90065', '849.729.7390', '2022-08-21 00:00:00', 92, 'ikelly@smith.info');
INSERT INTO `customer` VALUES (88, 'Patricia', 'Wallace', '86791 Moore Squares\nSouth Michael, AR 71358', '(813)633-5033x8291', '2021-12-20 00:00:00', 34, 'williamsjulie@riley.info');
INSERT INTO `customer` VALUES (89, 'Stephanie', 'Smith', '8158 Morris Stravenue Apt. 182\nEast Matthew, OR 02570', '213.968.7116', '2022-06-07 00:00:00', 7, 'elizabeth78@collins-morris.org');
INSERT INTO `customer` VALUES (90, 'Cynthia', 'Cummings', '8290 Tammy Points Suite 110\nNorth Ericmouth, DE 91759', '001-159-046-0231x0047', '2021-12-17 00:00:00', 47, 'jill88@fowler.com');
INSERT INTO `customer` VALUES (91, 'Jacob', 'Blackburn', '4466 Sullivan Alley Suite 564\nLake Jamesland, AZ 49425', '(740)861-3705', '2022-08-26 00:00:00', 13, 'amy49@gmail.com');
INSERT INTO `customer` VALUES (92, 'John', 'Thompson', '098 Sandra Courts Suite 311\nNorth James, MO 29931', '(028)444-1108x972', '2019-03-15 00:00:00', 62, 'seth30@yahoo.com');
INSERT INTO `customer` VALUES (93, 'Julie', 'Jones', '09251 Cain Circle\nMcbridechester, ID 36768', '001-534-653-7805x2541', '2021-05-11 00:00:00', 59, 'howardterri@acosta-prince.com');
INSERT INTO `customer` VALUES (94, 'Jesus', 'Sanders', '88886 Martin Mount\nMoralesville, NC 61253', '+1-734-520-4631x227', '2022-12-12 00:00:00', 67, 'heatherkidd@mitchell.com');
INSERT INTO `customer` VALUES (95, 'Angela', 'Webb', '19853 Aaron Ranch Suite 430\nBrucetown, MN 27051', '5087488973', '2021-06-09 00:00:00', 77, 'juliasmith@yahoo.com');
INSERT INTO `customer` VALUES (96, 'Stephanie', 'Russo', '330 Rebecca Forest\nPort Joseville, NC 32084', '+1-729-551-7026x8546', '2021-12-31 00:00:00', 79, 'ericafernandez@davis.com');
INSERT INTO `customer` VALUES (97, 'Gregory', 'Williams', '871 Douglas Ramp\nNorth Sharon, MN 96719', '+1-344-900-3548x4581', '2022-07-11 00:00:00', 64, 'dean95@gmail.com');
INSERT INTO `customer` VALUES (98, 'Mary', 'Mckay', '25523 John Union\nBethanybury, VT 39110', '001-934-014-0704', '2019-02-06 00:00:00', 88, 'katherinearmstrong@yahoo.com');
INSERT INTO `customer` VALUES (99, 'Jeffrey', 'Burns', '194 Justin Glen\nWest Kendrastad, PA 01285', '001-153-001-3282x424', '2020-06-29 00:00:00', 46, 'pzamora@yahoo.com');
INSERT INTO `customer` VALUES (100, 'Jason', 'Henry', '581 Baker Turnpike Apt. 926\nWest Amyfort, IL 16616', '432-561-3916x107', '2022-10-04 00:00:00', 83, 'woodsamy@perez-barnes.com');
INSERT INTO `customer` VALUES (101, 'Andres', 'Torres', '6572 Bailey Points Apt. 183\nLake Amandahaven, RI 24730', '114-605-1261x23260', '2018-06-17 00:00:00', 100, 'collinsronald@hotmail.com');
INSERT INTO `customer` VALUES (119, 'string', 'string', 'string', 'string', '2019-11-23 00:00:00', 0, 'string');
INSERT INTO `customer` VALUES (120, 'string', 'string', 'string', 'string', '2019-11-23 00:00:00', 0, 'string');
INSERT INTO `customer` VALUES (121, 'ijlal khan', 'khan', 'finland', '454643', '2019-11-23 00:00:00', 34, 'jjsdf@gmail.com');
INSERT INTO `customer` VALUES (122, 'ijlal khan', 'khan', 'finland', '454643', '2019-11-23 00:00:00', 34, 'jjsdf@gmail.com');
INSERT INTO `customer` VALUES (123, 'ijlal khan', 'khan', 'finland', '454643', '2019-11-23 00:00:00', 34, 'jjsdf@gmail.com');
INSERT INTO `customer` VALUES (124, 'ijlal khan', 'khan', 'finland', '454643', '2019-11-23 00:00:00', 34, 'jjsdf@gmail.com');
INSERT INTO `customer` VALUES (125, 'ijlal khan', 'khan', 'finland', '454643', '2019-11-23 00:00:00', 34, 'jjsdf@gmail.com');
INSERT INTO `customer` VALUES (126, 'ijlal khan', 'khan', 'finland', '454643', '2019-11-23 00:00:00', 34, 'jjsdf@gmail.com');
INSERT INTO `customer` VALUES (127, 'ijlal khan', 'khan', 'finland', '454643', '2019-11-23 00:00:00', 34, 'jjsdf@gmail.com');
INSERT INTO `customer` VALUES (128, 'ijlal khan', 'khan', 'finland', '454643', '2019-11-23 00:00:00', 34, 'jjsdf@gmail.com');
INSERT INTO `customer` VALUES (129, 'ijlal khan', 'khan', 'finland', '454643', '2019-11-23 00:00:00', 34, 'jjsdf@gmail.com');
INSERT INTO `customer` VALUES (130, 'ijlal khan', 'khan', 'finland', '454643', '2019-11-23 00:00:00', 34, 'jjsdf@gmail.com');
INSERT INTO `customer` VALUES (131, 'ijlal khan', 'khan', 'finland', '454643', '2019-11-23 00:00:00', 34, 'jjsdf@gmail.com');
INSERT INTO `customer` VALUES (132, 'ijlal khan', 'khan', 'finland', '454643', '2019-11-23 00:00:00', 34, 'jjsdf@gmail.com');
INSERT INTO `customer` VALUES (133, 'ijlal khan', 'khan', 'finland', '454643', '2019-11-23 00:00:00', 34, 'jjsdf@gmail.com');
INSERT INTO `customer` VALUES (152, 'ramisha', 'khan', 'england', '454643', '2019-11-23 00:00:00', 34, 'jjsdf@gmail.com');
INSERT INTO `customer` VALUES (153, 'ramisha', 'khan', 'england', '454643', '2019-11-23 00:00:00', 34, 'jjsdf@gmail.com');
INSERT INTO `customer` VALUES (154, 'ijlal khan', 'khan', 'finland', '454643', '2019-11-23 00:00:00', 34, 'jjsdf@gmail.com');
INSERT INTO `customer` VALUES (155, 'ijlal khan', 'khan', 'finland', '454643', '2019-11-23 00:00:00', 34, 'jjsdf@gmail.com');
INSERT INTO `customer` VALUES (156, 'ijlal khan', 'khan', 'finland', '454643', '2019-11-23 00:00:00', 34, 'jjsdf@gmail.com');
INSERT INTO `customer` VALUES (157, 'ramisha edited', 'khan', 'england', '454643', '2019-11-23 00:00:00', 34, 'jjsdf@gmail.com');
INSERT INTO `customer` VALUES (190, 'ijlal khan', 'khan', 'finland', '454643', '2019-11-23 00:00:00', 34, 'jjsdf@gmail.com');

-- ----------------------------
-- Table structure for rental
-- ----------------------------
DROP TABLE IF EXISTS `rental`;
CREATE TABLE `rental`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `car_id` int NOT NULL,
  `customer_id` int NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `from_date` datetime NULL DEFAULT NULL,
  `to_date` datetime NULL DEFAULT NULL,
  `available_from` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `car_id`(`car_id`) USING BTREE,
  INDEX `customer_id`(`customer_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 296 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of rental
-- ----------------------------
INSERT INTO `rental` VALUES (1, 75, 16, 'returned', '2022-04-25 00:00:00', '2023-01-12 00:00:00', '2023-01-12 00:00:00');
INSERT INTO `rental` VALUES (2, 86, 43, 'rented', '2022-12-27 00:00:00', '2024-03-06 00:00:00', '2024-03-06 00:00:00');
INSERT INTO `rental` VALUES (3, 16, 27, 'rented', '2022-12-22 00:00:00', '2023-03-31 00:00:00', '2023-03-31 00:00:00');
INSERT INTO `rental` VALUES (4, 67, 53, 'rented', '2022-05-09 00:00:00', '2023-12-10 00:00:00', '2023-12-10 00:00:00');
INSERT INTO `rental` VALUES (5, 51, 29, 'returned', '2022-04-21 00:00:00', '2023-07-02 00:00:00', '2023-07-02 00:00:00');
INSERT INTO `rental` VALUES (6, 67, 19, 'rented', '2023-02-25 00:00:00', '2023-04-30 00:00:00', '2023-04-30 00:00:00');
INSERT INTO `rental` VALUES (7, 19, 53, 'returned', '2022-10-26 00:00:00', '2023-10-19 00:00:00', '2023-10-19 00:00:00');
INSERT INTO `rental` VALUES (8, 43, 11, 'rented', '2023-02-02 00:00:00', '2023-12-10 00:00:00', '2023-12-10 00:00:00');
INSERT INTO `rental` VALUES (9, 18, 96, 'rented', '2023-01-27 00:00:00', '2023-06-29 00:00:00', '2023-06-29 00:00:00');
INSERT INTO `rental` VALUES (10, 15, 83, 'returned', '2022-07-15 00:00:00', '2024-03-03 00:00:00', '2024-03-03 00:00:00');
INSERT INTO `rental` VALUES (11, 27, 42, 'rented', '2022-11-27 00:00:00', '2023-12-14 00:00:00', '2023-12-14 00:00:00');
INSERT INTO `rental` VALUES (12, 100, 36, 'rented', '2022-07-09 00:00:00', '2022-12-18 00:00:00', '2022-12-18 00:00:00');
INSERT INTO `rental` VALUES (13, 64, 54, 'rented', '2022-05-19 00:00:00', '2024-01-13 00:00:00', '2024-01-13 00:00:00');
INSERT INTO `rental` VALUES (14, 65, 56, 'rented', '2022-12-01 00:00:00', '2024-03-17 00:00:00', '2024-03-17 00:00:00');
INSERT INTO `rental` VALUES (15, 98, 20, 'rented', '2022-10-20 00:00:00', '2023-03-24 00:00:00', '2023-03-24 00:00:00');
INSERT INTO `rental` VALUES (16, 39, 47, 'rented', '2022-06-10 00:00:00', '2023-09-15 00:00:00', '2023-09-15 00:00:00');
INSERT INTO `rental` VALUES (17, 21, 95, 'rented', '2022-11-01 00:00:00', '2023-05-07 00:00:00', '2023-05-07 00:00:00');
INSERT INTO `rental` VALUES (18, 96, 51, 'rented', '2022-05-14 00:00:00', '2022-09-03 00:00:00', '2022-09-03 00:00:00');
INSERT INTO `rental` VALUES (19, 91, 18, 'returned', '2022-11-27 00:00:00', '2023-07-05 00:00:00', '2023-07-05 00:00:00');
INSERT INTO `rental` VALUES (20, 56, 47, 'rented', '2023-02-17 00:00:00', '2023-07-07 00:00:00', '2023-07-07 00:00:00');
INSERT INTO `rental` VALUES (21, 67, 3, 'rented', '2023-01-28 00:00:00', '2023-06-28 00:00:00', '2023-06-28 00:00:00');
INSERT INTO `rental` VALUES (22, 67, 34, 'returned', '2022-09-21 00:00:00', '2023-09-05 00:00:00', '2023-09-05 00:00:00');
INSERT INTO `rental` VALUES (23, 81, 14, 'returned', '2022-12-19 00:00:00', '2024-01-12 00:00:00', '2024-01-12 00:00:00');
INSERT INTO `rental` VALUES (24, 18, 71, 'rented', '2022-11-28 00:00:00', '2023-04-28 00:00:00', '2023-04-28 00:00:00');
INSERT INTO `rental` VALUES (25, 1, 98, 'returned', '2022-06-13 00:00:00', '2023-04-21 00:00:00', '2023-04-21 00:00:00');
INSERT INTO `rental` VALUES (26, 79, 38, 'returned', '2023-02-07 00:00:00', '2024-01-12 00:00:00', '2024-01-12 00:00:00');
INSERT INTO `rental` VALUES (27, 16, 20, 'returned', '2022-12-04 00:00:00', '2023-07-03 00:00:00', '2023-07-03 00:00:00');
INSERT INTO `rental` VALUES (28, 74, 18, 'rented', '2022-08-15 00:00:00', '2022-09-28 00:00:00', '2022-09-28 00:00:00');
INSERT INTO `rental` VALUES (29, 25, 23, 'returned', '2022-04-10 00:00:00', '2023-05-28 00:00:00', '2023-05-28 00:00:00');
INSERT INTO `rental` VALUES (30, 28, 91, 'returned', '2022-10-07 00:00:00', '2023-09-22 00:00:00', '2023-09-22 00:00:00');
INSERT INTO `rental` VALUES (31, 2, 79, 'returned', '2022-12-02 00:00:00', '2022-12-10 00:00:00', '2022-12-10 00:00:00');
INSERT INTO `rental` VALUES (32, 72, 53, 'returned', '2023-02-04 00:00:00', '2023-04-09 00:00:00', '2023-04-09 00:00:00');
INSERT INTO `rental` VALUES (33, 77, 96, 'rented', '2022-12-26 00:00:00', '2023-05-15 00:00:00', '2023-05-15 00:00:00');
INSERT INTO `rental` VALUES (34, 8, 57, 'rented', '2022-08-20 00:00:00', '2023-06-07 00:00:00', '2023-06-07 00:00:00');
INSERT INTO `rental` VALUES (35, 87, 89, 'rented', '2022-12-09 00:00:00', '2024-01-08 00:00:00', '2024-01-08 00:00:00');
INSERT INTO `rental` VALUES (36, 80, 92, 'returned', '2022-03-25 00:00:00', '2023-09-20 00:00:00', '2023-09-20 00:00:00');
INSERT INTO `rental` VALUES (37, 4, 23, 'returned', '2022-09-11 00:00:00', '2023-09-18 00:00:00', '2023-09-18 00:00:00');
INSERT INTO `rental` VALUES (38, 60, 36, 'rented', '2022-05-01 00:00:00', '2023-09-27 00:00:00', '2023-09-27 00:00:00');
INSERT INTO `rental` VALUES (39, 35, 65, 'returned', '2022-12-16 00:00:00', '2023-01-14 00:00:00', '2023-01-14 00:00:00');
INSERT INTO `rental` VALUES (40, 2, 87, 'rented', '2022-10-08 00:00:00', '2023-05-12 00:00:00', '2023-05-12 00:00:00');
INSERT INTO `rental` VALUES (41, 99, 40, 'rented', '2022-05-24 00:00:00', '2024-01-27 00:00:00', '2024-01-27 00:00:00');
INSERT INTO `rental` VALUES (42, 23, 68, 'rented', '2022-12-24 00:00:00', '2022-12-30 00:00:00', '2022-12-30 00:00:00');
INSERT INTO `rental` VALUES (43, 40, 60, 'rented', '2022-09-16 00:00:00', '2023-11-20 00:00:00', '2023-11-20 00:00:00');
INSERT INTO `rental` VALUES (44, 3, 39, 'rented', '2023-03-10 00:00:00', '2023-09-21 00:00:00', '2023-09-21 00:00:00');
INSERT INTO `rental` VALUES (45, 60, 73, 'rented', '2022-06-17 00:00:00', '2022-08-17 00:00:00', '2022-08-17 00:00:00');
INSERT INTO `rental` VALUES (46, 39, 65, 'rented', '2022-07-07 00:00:00', '2022-10-21 00:00:00', '2022-10-21 00:00:00');
INSERT INTO `rental` VALUES (47, 49, 8, 'returned', '2022-04-08 00:00:00', '2022-11-14 00:00:00', '2022-11-14 00:00:00');
INSERT INTO `rental` VALUES (48, 65, 13, 'returned', '2022-12-14 00:00:00', '2023-10-31 00:00:00', '2023-10-31 00:00:00');
INSERT INTO `rental` VALUES (49, 8, 20, 'rented', '2022-03-26 00:00:00', '2023-02-11 00:00:00', '2023-02-11 00:00:00');
INSERT INTO `rental` VALUES (50, 99, 48, 'rented', '2023-02-26 00:00:00', '2023-04-28 00:00:00', '2023-04-28 00:00:00');
INSERT INTO `rental` VALUES (51, 73, 43, 'rented', '2022-06-13 00:00:00', '2023-01-18 00:00:00', '2023-01-18 00:00:00');
INSERT INTO `rental` VALUES (52, 100, 46, 'returned', '2022-12-17 00:00:00', '2024-01-13 00:00:00', '2024-01-13 00:00:00');
INSERT INTO `rental` VALUES (53, 60, 89, 'returned', '2022-12-24 00:00:00', '2023-11-21 00:00:00', '2023-11-21 00:00:00');
INSERT INTO `rental` VALUES (54, 76, 90, 'returned', '2022-08-11 00:00:00', '2023-07-16 00:00:00', '2023-07-16 00:00:00');
INSERT INTO `rental` VALUES (55, 37, 23, 'returned', '2022-12-17 00:00:00', '2023-06-26 00:00:00', '2023-06-26 00:00:00');
INSERT INTO `rental` VALUES (56, 18, 75, 'rented', '2022-05-25 00:00:00', '2022-07-14 00:00:00', '2022-07-14 00:00:00');
INSERT INTO `rental` VALUES (57, 47, 59, 'returned', '2022-11-11 00:00:00', '2023-07-07 00:00:00', '2023-07-07 00:00:00');
INSERT INTO `rental` VALUES (58, 4, 86, 'returned', '2022-11-03 00:00:00', '2023-03-23 00:00:00', '2023-03-23 00:00:00');
INSERT INTO `rental` VALUES (59, 92, 15, 'returned', '2022-11-15 00:00:00', '2023-09-15 00:00:00', '2023-09-15 00:00:00');
INSERT INTO `rental` VALUES (60, 60, 10, 'returned', '2022-04-19 00:00:00', '2022-10-15 00:00:00', '2022-10-15 00:00:00');
INSERT INTO `rental` VALUES (61, 57, 16, 'rented', '2022-11-12 00:00:00', '2023-12-04 00:00:00', '2023-12-04 00:00:00');
INSERT INTO `rental` VALUES (62, 96, 64, 'returned', '2022-07-16 00:00:00', '2023-10-16 00:00:00', '2023-10-16 00:00:00');
INSERT INTO `rental` VALUES (63, 57, 10, 'returned', '2022-08-16 00:00:00', '2024-01-13 00:00:00', '2024-01-13 00:00:00');
INSERT INTO `rental` VALUES (64, 57, 67, 'returned', '2023-02-24 00:00:00', '2023-10-10 00:00:00', '2023-10-10 00:00:00');
INSERT INTO `rental` VALUES (65, 41, 57, 'rented', '2022-03-26 00:00:00', '2023-07-30 00:00:00', '2023-07-30 00:00:00');
INSERT INTO `rental` VALUES (66, 1, 25, 'rented', '2022-05-16 00:00:00', '2024-03-02 00:00:00', '2024-03-02 00:00:00');
INSERT INTO `rental` VALUES (67, 36, 68, 'returned', '2022-06-13 00:00:00', '2022-11-30 00:00:00', '2022-11-30 00:00:00');
INSERT INTO `rental` VALUES (68, 13, 18, 'rented', '2022-09-18 00:00:00', '2023-10-20 00:00:00', '2023-10-20 00:00:00');
INSERT INTO `rental` VALUES (69, 22, 72, 'returned', '2023-02-08 00:00:00', '2023-12-06 00:00:00', '2023-12-06 00:00:00');
INSERT INTO `rental` VALUES (70, 43, 63, 'rented', '2023-02-20 00:00:00', '2023-12-22 00:00:00', '2023-12-22 00:00:00');
INSERT INTO `rental` VALUES (71, 66, 96, 'rented', '2022-03-21 00:00:00', '2023-04-19 00:00:00', '2023-04-19 00:00:00');
INSERT INTO `rental` VALUES (72, 7, 30, 'returned', '2022-11-14 00:00:00', '2023-01-17 00:00:00', '2023-01-17 00:00:00');
INSERT INTO `rental` VALUES (73, 98, 25, 'returned', '2022-08-29 00:00:00', '2024-02-17 00:00:00', '2024-02-17 00:00:00');
INSERT INTO `rental` VALUES (74, 82, 43, 'rented', '2022-12-08 00:00:00', '2023-09-06 00:00:00', '2023-09-06 00:00:00');
INSERT INTO `rental` VALUES (75, 91, 28, 'returned', '2023-03-12 00:00:00', '2023-12-06 00:00:00', '2023-12-06 00:00:00');
INSERT INTO `rental` VALUES (76, 39, 69, 'rented', '2022-06-13 00:00:00', '2023-12-19 00:00:00', '2023-12-19 00:00:00');
INSERT INTO `rental` VALUES (77, 68, 54, 'returned', '2022-11-28 00:00:00', '2023-01-01 00:00:00', '2023-01-01 00:00:00');
INSERT INTO `rental` VALUES (78, 34, 86, 'returned', '2022-04-17 00:00:00', '2024-03-08 00:00:00', '2024-03-08 00:00:00');
INSERT INTO `rental` VALUES (79, 77, 49, 'returned', '2022-06-05 00:00:00', '2023-09-04 00:00:00', '2023-09-04 00:00:00');
INSERT INTO `rental` VALUES (80, 99, 36, 'returned', '2022-11-16 00:00:00', '2023-04-27 00:00:00', '2023-04-27 00:00:00');
INSERT INTO `rental` VALUES (81, 70, 13, 'returned', '2023-01-18 00:00:00', '2023-02-16 00:00:00', '2023-02-16 00:00:00');
INSERT INTO `rental` VALUES (82, 17, 86, 'returned', '2022-12-24 00:00:00', '2023-02-26 00:00:00', '2023-02-26 00:00:00');
INSERT INTO `rental` VALUES (83, 48, 81, 'rented', '2022-09-14 00:00:00', '2023-03-26 00:00:00', '2023-03-26 00:00:00');
INSERT INTO `rental` VALUES (84, 31, 44, 'returned', '2022-09-25 00:00:00', '2023-03-22 00:00:00', '2023-03-22 00:00:00');
INSERT INTO `rental` VALUES (85, 53, 73, 'returned', '2022-10-25 00:00:00', '2023-05-08 00:00:00', '2023-05-08 00:00:00');
INSERT INTO `rental` VALUES (86, 94, 30, 'returned', '2022-06-09 00:00:00', '2023-10-17 00:00:00', '2023-10-17 00:00:00');
INSERT INTO `rental` VALUES (87, 80, 4, 'returned', '2023-02-20 00:00:00', '2023-10-22 00:00:00', '2023-10-22 00:00:00');
INSERT INTO `rental` VALUES (88, 14, 13, 'returned', '2022-12-31 00:00:00', '2023-02-18 00:00:00', '2023-02-18 00:00:00');
INSERT INTO `rental` VALUES (89, 95, 96, 'rented', '2022-04-17 00:00:00', '2022-04-29 00:00:00', '2022-04-29 00:00:00');
INSERT INTO `rental` VALUES (90, 36, 96, 'returned', '2022-07-05 00:00:00', '2022-11-26 00:00:00', '2022-11-26 00:00:00');
INSERT INTO `rental` VALUES (91, 13, 22, 'rented', '2022-08-29 00:00:00', '2023-09-20 00:00:00', '2023-09-20 00:00:00');
INSERT INTO `rental` VALUES (92, 63, 32, 'returned', '2023-02-23 00:00:00', '2024-03-01 00:00:00', '2024-03-01 00:00:00');
INSERT INTO `rental` VALUES (93, 17, 20, 'returned', '2022-06-27 00:00:00', '2022-12-09 00:00:00', '2022-12-09 00:00:00');
INSERT INTO `rental` VALUES (94, 16, 78, 'returned', '2022-09-24 00:00:00', '2024-03-18 00:00:00', '2024-03-18 00:00:00');
INSERT INTO `rental` VALUES (95, 91, 84, 'returned', '2022-06-05 00:00:00', '2024-03-03 00:00:00', '2024-03-03 00:00:00');
INSERT INTO `rental` VALUES (96, 26, 7, 'returned', '2022-03-29 00:00:00', '2022-06-10 00:00:00', '2022-06-10 00:00:00');
INSERT INTO `rental` VALUES (97, 66, 19, 'rented', '2022-04-16 00:00:00', '2022-05-17 00:00:00', '2022-05-17 00:00:00');
INSERT INTO `rental` VALUES (98, 84, 9, 'rented', '2022-07-14 00:00:00', '2023-09-20 00:00:00', '2023-09-20 00:00:00');
INSERT INTO `rental` VALUES (99, 66, 30, 'returned', '2022-08-20 00:00:00', '2023-10-30 00:00:00', '2023-10-30 00:00:00');
INSERT INTO `rental` VALUES (100, 54, 36, 'returned', '2022-05-09 00:00:00', '2023-02-15 00:00:00', '2023-02-15 00:00:00');
INSERT INTO `rental` VALUES (101, 32, 35, 'returned', '2023-03-12 00:00:00', '2024-02-22 00:00:00', '2024-02-22 00:00:00');
INSERT INTO `rental` VALUES (102, 64, 84, 'returned', '2022-08-25 00:00:00', '2023-06-26 00:00:00', '2023-06-26 00:00:00');
INSERT INTO `rental` VALUES (103, 83, 65, 'returned', '2022-07-18 00:00:00', '2023-12-11 00:00:00', '2023-12-11 00:00:00');
INSERT INTO `rental` VALUES (104, 82, 93, 'returned', '2022-11-03 00:00:00', '2023-06-20 00:00:00', '2023-06-20 00:00:00');
INSERT INTO `rental` VALUES (105, 100, 28, 'returned', '2022-11-07 00:00:00', '2023-08-19 00:00:00', '2023-08-19 00:00:00');
INSERT INTO `rental` VALUES (106, 22, 42, 'rented', '2022-06-30 00:00:00', '2022-10-18 00:00:00', '2022-10-18 00:00:00');
INSERT INTO `rental` VALUES (107, 65, 62, 'returned', '2022-12-16 00:00:00', '2023-10-31 00:00:00', '2023-10-31 00:00:00');
INSERT INTO `rental` VALUES (108, 33, 94, 'returned', '2022-08-26 00:00:00', '2023-03-21 00:00:00', '2023-03-21 00:00:00');
INSERT INTO `rental` VALUES (109, 92, 3, 'returned', '2022-09-17 00:00:00', '2023-12-19 00:00:00', '2023-12-19 00:00:00');
INSERT INTO `rental` VALUES (110, 76, 47, 'returned', '2022-04-18 00:00:00', '2023-05-25 00:00:00', '2023-05-25 00:00:00');
INSERT INTO `rental` VALUES (111, 6, 15, 'rented', '2022-11-17 00:00:00', '2023-07-03 00:00:00', '2023-07-03 00:00:00');
INSERT INTO `rental` VALUES (112, 100, 57, 'returned', '2022-04-14 00:00:00', '2024-01-30 00:00:00', '2024-01-30 00:00:00');
INSERT INTO `rental` VALUES (113, 42, 46, 'rented', '2023-02-06 00:00:00', '2023-08-01 00:00:00', '2023-08-01 00:00:00');
INSERT INTO `rental` VALUES (114, 38, 73, 'rented', '2022-05-17 00:00:00', '2024-01-09 00:00:00', '2024-01-09 00:00:00');
INSERT INTO `rental` VALUES (115, 82, 18, 'returned', '2022-06-24 00:00:00', '2023-07-03 00:00:00', '2023-07-03 00:00:00');
INSERT INTO `rental` VALUES (116, 35, 84, 'returned', '2022-10-04 00:00:00', '2023-12-07 00:00:00', '2023-12-07 00:00:00');
INSERT INTO `rental` VALUES (117, 75, 78, 'returned', '2022-12-10 00:00:00', '2024-02-07 00:00:00', '2024-02-07 00:00:00');
INSERT INTO `rental` VALUES (118, 21, 77, 'returned', '2022-04-12 00:00:00', '2023-06-26 00:00:00', '2023-06-26 00:00:00');
INSERT INTO `rental` VALUES (119, 36, 70, 'returned', '2022-03-24 00:00:00', '2022-09-08 00:00:00', '2022-09-08 00:00:00');
INSERT INTO `rental` VALUES (120, 85, 74, 'returned', '2022-10-31 00:00:00', '2023-05-26 00:00:00', '2023-05-26 00:00:00');
INSERT INTO `rental` VALUES (121, 52, 57, 'rented', '2022-12-11 00:00:00', '2023-02-16 00:00:00', '2023-02-16 00:00:00');
INSERT INTO `rental` VALUES (123, 8, 74, 'rented', '2022-09-14 00:00:00', '2023-01-22 00:00:00', '2023-01-22 00:00:00');
INSERT INTO `rental` VALUES (124, 22, 76, 'rented', '2022-09-17 00:00:00', '2023-12-08 00:00:00', '2023-12-08 00:00:00');
INSERT INTO `rental` VALUES (126, 15, 37, 'returned', '2022-10-01 00:00:00', '2023-11-11 00:00:00', '2023-11-11 00:00:00');
INSERT INTO `rental` VALUES (128, 75, 8, 'rented', '2022-11-11 00:00:00', '2023-11-05 00:00:00', '2023-11-05 00:00:00');
INSERT INTO `rental` VALUES (129, 53, 95, 'returned', '2022-08-04 00:00:00', '2024-02-26 00:00:00', '2024-02-26 00:00:00');
INSERT INTO `rental` VALUES (130, 75, 69, 'returned', '2022-07-31 00:00:00', '2024-02-04 00:00:00', '2024-02-04 00:00:00');
INSERT INTO `rental` VALUES (133, 66, 45, 'rented', '2022-08-16 00:00:00', '2024-03-09 00:00:00', '2024-03-09 00:00:00');
INSERT INTO `rental` VALUES (134, 53, 70, 'returned', '2022-09-03 00:00:00', '2022-10-14 00:00:00', '2022-10-14 00:00:00');
INSERT INTO `rental` VALUES (136, 54, 41, 'returned', '2022-12-05 00:00:00', '2022-12-06 00:00:00', '2022-12-06 00:00:00');
INSERT INTO `rental` VALUES (137, 40, 44, 'returned', '2022-08-26 00:00:00', '2024-03-11 00:00:00', '2024-03-11 00:00:00');
INSERT INTO `rental` VALUES (139, 5, 48, 'rented', '2022-03-19 00:00:00', '2023-12-24 00:00:00', '2023-12-24 00:00:00');
INSERT INTO `rental` VALUES (140, 9, 12, 'rented', '2022-06-05 00:00:00', '2023-07-03 00:00:00', '2023-07-03 00:00:00');
INSERT INTO `rental` VALUES (143, 96, 4, 'rented', '2022-04-28 00:00:00', '2023-02-11 00:00:00', '2023-02-11 00:00:00');
INSERT INTO `rental` VALUES (145, 2, 13, 'returned', '2023-02-16 00:00:00', '2023-11-08 00:00:00', '2023-11-08 00:00:00');
INSERT INTO `rental` VALUES (146, 31, 80, 'returned', '2023-02-05 00:00:00', '2023-07-07 00:00:00', '2023-07-07 00:00:00');
INSERT INTO `rental` VALUES (149, 17, 39, 'returned', '2022-12-25 00:00:00', '2023-03-31 00:00:00', '2023-03-31 00:00:00');
INSERT INTO `rental` VALUES (150, 86, 16, 'rented', '2023-02-23 00:00:00', '2023-11-08 00:00:00', '2023-11-08 00:00:00');
INSERT INTO `rental` VALUES (151, 26, 68, 'returned', '2023-01-16 00:00:00', '2023-07-06 00:00:00', '2023-07-06 00:00:00');
INSERT INTO `rental` VALUES (154, 64, 96, 'returned', '2022-08-07 00:00:00', '2023-07-29 00:00:00', '2023-07-29 00:00:00');
INSERT INTO `rental` VALUES (155, 66, 100, 'rented', '2022-11-22 00:00:00', '2022-12-29 00:00:00', '2022-12-29 00:00:00');
INSERT INTO `rental` VALUES (156, 7, 74, 'rented', '2022-04-20 00:00:00', '2023-04-12 00:00:00', '2023-04-12 00:00:00');
INSERT INTO `rental` VALUES (157, 41, 46, 'rented', '2022-04-05 00:00:00', '2022-10-19 00:00:00', '2022-10-19 00:00:00');
INSERT INTO `rental` VALUES (159, 65, 91, 'rented', '2022-08-16 00:00:00', '2023-10-30 00:00:00', '2023-10-30 00:00:00');
INSERT INTO `rental` VALUES (160, 80, 81, 'returned', '2022-04-03 00:00:00', '2023-01-14 00:00:00', '2023-01-14 00:00:00');
INSERT INTO `rental` VALUES (161, 64, 51, 'returned', '2022-08-19 00:00:00', '2023-04-08 00:00:00', '2023-04-08 00:00:00');
INSERT INTO `rental` VALUES (162, 65, 89, 'rented', '2022-08-26 00:00:00', '2022-12-05 00:00:00', '2022-12-05 00:00:00');
INSERT INTO `rental` VALUES (163, 87, 38, 'rented', '2022-11-20 00:00:00', '2023-05-27 00:00:00', '2023-05-27 00:00:00');
INSERT INTO `rental` VALUES (164, 85, 31, 'rented', '2023-03-09 00:00:00', '2023-03-16 00:00:00', '2023-03-16 00:00:00');
INSERT INTO `rental` VALUES (165, 85, 40, 'returned', '2022-07-06 00:00:00', '2023-08-15 00:00:00', '2023-08-15 00:00:00');
INSERT INTO `rental` VALUES (167, 24, 45, 'returned', '2022-07-24 00:00:00', '2023-06-14 00:00:00', '2023-06-14 00:00:00');
INSERT INTO `rental` VALUES (168, 22, 87, 'rented', '2023-02-06 00:00:00', '2023-11-18 00:00:00', '2023-11-18 00:00:00');
INSERT INTO `rental` VALUES (169, 12, 14, 'rented', '2023-01-07 00:00:00', '2024-01-13 00:00:00', '2024-01-13 00:00:00');
INSERT INTO `rental` VALUES (170, 93, 57, 'returned', '2022-04-12 00:00:00', '2023-06-29 00:00:00', '2023-06-29 00:00:00');
INSERT INTO `rental` VALUES (172, 52, 95, 'returned', '2022-06-25 00:00:00', '2023-02-25 00:00:00', '2023-02-25 00:00:00');
INSERT INTO `rental` VALUES (173, 57, 23, 'returned', '2022-04-30 00:00:00', '2023-11-29 00:00:00', '2023-11-29 00:00:00');
INSERT INTO `rental` VALUES (174, 41, 62, 'rented', '2022-10-07 00:00:00', '2023-09-09 00:00:00', '2023-09-09 00:00:00');
INSERT INTO `rental` VALUES (175, 73, 88, 'rented', '2022-12-17 00:00:00', '2024-01-28 00:00:00', '2024-01-28 00:00:00');
INSERT INTO `rental` VALUES (176, 56, 16, 'rented', '2022-10-01 00:00:00', '2024-02-25 00:00:00', '2024-02-25 00:00:00');
INSERT INTO `rental` VALUES (178, 100, 79, 'rented', '2022-09-20 00:00:00', '2023-09-08 00:00:00', '2023-09-08 00:00:00');
INSERT INTO `rental` VALUES (179, 64, 20, 'rented', '2022-05-27 00:00:00', '2023-06-02 00:00:00', '2023-06-02 00:00:00');
INSERT INTO `rental` VALUES (180, 10, 39, 'rented', '2022-12-14 00:00:00', '2023-01-22 00:00:00', '2023-01-22 00:00:00');
INSERT INTO `rental` VALUES (181, 72, 1, 'returned', '2022-09-23 00:00:00', '2023-11-08 00:00:00', '2023-11-08 00:00:00');
INSERT INTO `rental` VALUES (182, 14, 91, 'rented', '2022-07-06 00:00:00', '2022-12-18 00:00:00', '2022-12-18 00:00:00');
INSERT INTO `rental` VALUES (183, 50, 30, 'returned', '2023-03-07 00:00:00', '2023-05-22 00:00:00', '2023-05-22 00:00:00');
INSERT INTO `rental` VALUES (185, 23, 84, 'rented', '2022-12-04 00:00:00', '2024-02-18 00:00:00', '2024-02-18 00:00:00');
INSERT INTO `rental` VALUES (186, 11, 31, 'rented', '2022-09-30 00:00:00', '2022-10-03 00:00:00', '2022-10-03 00:00:00');
INSERT INTO `rental` VALUES (187, 63, 20, 'returned', '2023-02-24 00:00:00', '2024-02-10 00:00:00', '2024-02-10 00:00:00');
INSERT INTO `rental` VALUES (191, 38, 55, 'returned', '2022-07-16 00:00:00', '2022-08-05 00:00:00', '2022-08-05 00:00:00');
INSERT INTO `rental` VALUES (192, 42, 68, 'rented', '2022-09-30 00:00:00', '2022-10-07 00:00:00', '2022-10-07 00:00:00');
INSERT INTO `rental` VALUES (193, 69, 76, 'rented', '2022-04-28 00:00:00', '2022-10-01 00:00:00', '2022-10-01 00:00:00');
INSERT INTO `rental` VALUES (194, 20, 86, 'rented', '2022-05-17 00:00:00', '2023-09-07 00:00:00', '2023-09-07 00:00:00');
INSERT INTO `rental` VALUES (195, 61, 34, 'returned', '2022-09-05 00:00:00', '2023-06-01 00:00:00', '2023-06-01 00:00:00');
INSERT INTO `rental` VALUES (196, 4, 28, 'rented', '2022-11-20 00:00:00', '2023-02-08 00:00:00', '2023-02-08 00:00:00');
INSERT INTO `rental` VALUES (198, 62, 41, 'rented', '2022-08-28 00:00:00', '2023-08-22 00:00:00', '2023-08-22 00:00:00');
INSERT INTO `rental` VALUES (199, 4, 97, 'rented', '2022-12-09 00:00:00', '2022-12-29 00:00:00', '2022-12-29 00:00:00');
INSERT INTO `rental` VALUES (218, 196, 43, 'rented', '2022-12-27 00:00:00', '2024-03-06 00:00:00', '2024-03-06 00:00:00');
INSERT INTO `rental` VALUES (219, 196, 43, 'rented', '2022-12-27 00:00:00', '2024-03-06 00:00:00', '2024-03-06 00:00:00');
INSERT INTO `rental` VALUES (220, 196, 43, 'rented', '2022-12-27 00:00:00', '2024-03-06 00:00:00', '2024-03-06 00:00:00');
INSERT INTO `rental` VALUES (221, 196, 43, 'rented', '2022-12-27 00:00:00', '2024-03-06 00:00:00', '2024-03-06 00:00:00');
INSERT INTO `rental` VALUES (222, 196, 43, 'rented', '2022-12-27 00:00:00', '2024-03-06 00:00:00', '2024-03-06 00:00:00');
INSERT INTO `rental` VALUES (223, 196, 43, 'rented', '2022-12-27 00:00:00', '2024-03-06 00:00:00', '2024-03-06 00:00:00');
INSERT INTO `rental` VALUES (224, 196, 43, 'rented', '2022-12-27 00:00:00', '2024-03-06 00:00:00', '2024-03-06 00:00:00');
INSERT INTO `rental` VALUES (225, 196, 43, 'rented', '2022-12-27 00:00:00', '2024-03-06 00:00:00', '2024-03-06 00:00:00');
INSERT INTO `rental` VALUES (226, 196, 43, 'rented', '2022-12-27 00:00:00', '2024-03-06 00:00:00', '2024-03-06 00:00:00');
INSERT INTO `rental` VALUES (227, 196, 43, 'rented', '2022-12-27 00:00:00', '2024-03-06 00:00:00', '2024-03-06 00:00:00');
INSERT INTO `rental` VALUES (228, 196, 43, 'rented', '2022-12-27 00:00:00', '2024-03-06 00:00:00', '2024-03-06 00:00:00');

SET FOREIGN_KEY_CHECKS = 1;
