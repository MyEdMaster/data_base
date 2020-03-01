
CREATE SCHEMA `math_database` ;


CREATE TABLE `math_database`.`problem` (
  `ID` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(45) NOT NULL,
  `parameter_number` INT NOT NULL,
  `start_format` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`));


CREATE TABLE `math_database`.`step_info` (
  `ID` INT NOT NULL,
  `problem_ID` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `feed_back` VARCHAR(45) NOT NULL,
  `step_number` INT NOT NULL,
  `type` INT NOT NULL,
  `finish` INT NOT NULL,
  `format` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`));


CREATE TABLE `math_database`.`second_level_parameter` (
  `ID` INT NOT NULL,
  `problem_ID` INT NOT NULL,
  `format` CHAR(45) NOT NULL,
  PRIMARY KEY (`ID`));

ALTER TABLE `math_database`.`problem` 
CHANGE COLUMN `description` `description` VARCHAR(1000) NOT NULL ,
CHANGE COLUMN `start_format` `start_format` VARCHAR(300) NOT NULL ;
ALTER TABLE `math_database`.`step_info` 
CHANGE COLUMN `feed_back` `feed_back` VARCHAR(1000) NOT NULL ,
CHANGE COLUMN `format` `format` VARCHAR(300) NOT NULL ;


  
ALTER TABLE math_database.problem CHANGE ID ID int AUTO_INCREMENT;
ALTER TABLE math_database.second_level_parameter CHANGE ID ID int AUTO_INCREMENT;
ALTER TABLE math_database.step_info CHANGE ID ID int AUTO_INCREMENT;

INSERT INTO `math_database`.`problem` (`ID`, `name`, `description`, `parameter_number`, `start_format`) VALUES ('1', 'complex number addition', 'complex number addition problem', '4', '(,$1,+,$2,i,),+,(,$3,+,$4,i,)');
INSERT INTO `math_database`.`problem` (`ID`, `name`, `description`, `parameter_number`, `start_format`) VALUES ('2', 'complex number subtraction', 'complex number subtraction', '4', '(,$1,+,$2,i,),-,(,$3,+,$4,i,)');
INSERT INTO `math_database`.`problem` (`ID`, `name`, `description`, `parameter_number`, `start_format`) VALUES ('3', 'complex number multiplication', 'complex number multiplication', '4', '(,$1,+,$2,i,),*,(,$3,+,$4,i,)');
INSERT INTO `math_database`.`problem` (`ID`, `name`, `description`, `parameter_number`, `start_format`) VALUES ('4', 'complex number division', 'complex number division', '4', '(,$1,+,$2,i,),/,(,$3,+,$4,i,)');
INSERT INTO `math_database`.`problem` (`ID`, `name`, `description`, `parameter_number`, `start_format`) VALUES ('5', 'Multiplying Binomials Using FOIL', 'Multiplying Binomials Using FOIL', '4', '(,$1,x ,+,$2,),*,(,$3,x,+ ,$4,)');
INSERT INTO `math_database`.`problem` (`ID`, `name`, `description`, `parameter_number`, `start_format`) VALUES ('6', 'Multiplying Binomials Using FOIL', 'Multiplying Binomials Using FOIL', '4', '(,$1,x,+,$2,y,),(,$3,x,+,$4,)');
INSERT INTO `math_database`.`problem` (`ID`, `name`, `description`, `parameter_number`, `start_format`) VALUES ('7', 'Multiplying Binomials Using FOIL', 'Multiplying Binomials Using FOIL', '4', '(,$1,x,y,+,$2,),(,$3,x,y,+,$4,)');
INSERT INTO `math_database`.`problem` (`ID`, `name`, `description`, `parameter_number`, `start_format`) VALUES ('8', 'Multiplying Binomials Using FOIL', 'Multiplying Binomials Using FOIL', '4', '(,$1,x,^,2,+,$2,),(,$3,x,^,2,+,$4,)');
INSERT INTO `math_database`.`problem` (`ID`, `name`, `description`, `parameter_number`, `start_format`) VALUES ('9', 'Multiplying Binomials Using FOIL', 'Multiplying Binomials Using FOIL', '4', '(,$1,x,^,2,y,^,2,+,$2,x,y,^,2,),(,$3,x,+,$4,)');



INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('1', '1', '#1,$1,+,$3');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('2', '1', '#2,$2,+,$4');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('3', '2', '#1,$1,-,$3');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('4', '2', '#2,$2,-,$4');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('5', '3', '#1,$1,*,$3');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('6', '3', '#2,$1,*,$4');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('7', '3', '#3,$2,*,$3');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('8', '3', '#4,$2,*,$4');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('9', '3', '#5,#2,+,#3');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('10', '3', '#6,#1,-,#4');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('11', '4', '#1,$1,*,$3');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('12', '4', '#2,$1,*,$4');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('13', '4', '#3,#2,*,-1');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('14', '4', '#4,$2,*,$3');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('15', '4', '#5,$2,*,$4');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('16', '4', '#6,#5,*,-1');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('17', '4', '#7,$3,*,$3');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('18', '4', '#8,$3,*,$4');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('19', '4', '#9,#8,*,-1');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('20', '4', '#10,#9,*,-1');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('21', '4', '#11,#1,+,#5');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('22', '4', '#12, #4,+,#2');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('23', '4', '#13,#7,+,#9');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('24', '4', '#14,#4,-,#2');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('25', '4', '#15,#7,-,#9');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('26', '4', '#16,$3,+,$4');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('27', '4', '#17,#16,*,#16');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('28', '5', '#1$1*$3');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('29', '5', '#2$1*$4');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('30', '5', '#3$2*$3');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('31', '5', '#4$4*$2');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('32', '5', '#5#2+#3');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('33', '6', '#1$1*$3');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('34', '6', '#2$1*$4');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('35', '6', '#3$2*$3');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('36', '6', '#4$4*$2');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('37', '6', '#5#2+#3');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('38', '7', '#1$1*$3');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('39', '7', '#2$1*$4');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('40', '7', '#3$2*$3');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('41', '7', '#4$4*$2');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('42', '7', '#5#2+#3');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('43', '8', '#1$1*$3');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('44', '8', '#2$1*$4');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('45', '8', '#3$2*$3');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('46', '8', '#4$4*$2');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('47', '8', '#5#2+#3');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('48', '9', '#1$1*$3');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('49', '9', '#2$1*$4');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('50', '9', '#3$2*$3');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('51', '9', '#4$4*$2');
INSERT INTO `math_database`.`second_level_parameter` (`ID`, `problem_ID`, `format`) VALUES ('52', '9', '#5#2+#3');






INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('1', '1', 'right1_1', 'right1_1', '1', '1', '1', '(,$1,+,$2,i,),/,(,$3,+,$4,i,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('2', '1', 'right2_1', 'right2_1', '2', '1', '1', '(,$1,+,$3,),+,(,$2,i,+,$4,i,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('3', '1', 'right2_2', 'right2_2', '2', '1', '1', '(,$1,+,$3,),+,(,$2,+,$4,),i');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('4', '1', 'right3_1', 'right3_1', '3', '1', '2', '#1,+,#2,i');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('5', '2', 'right1_1', 'right1_1', '1', '1', '1', '(,$1,+,$2,i,),-,(,$3,+,$4,i,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('6', '2', 'right2_1', 'right2_1', '2', '1', '1', '(,$1,-,$3,),+,(,$2,i,-,$4,i,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('7', '2', 'right2_2', 'right2_2', '2', '1', '1', '(,$1,-,$3,),+,(,$2,-,$4,),i');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('8', '2', 'right3_1', 'right3_1', '3', '1', '2', '#1,+,#2,i');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('9', '3', 'right step 1', 'right step 1', '1', '1', '1', '(,$1,+,$2,i,),*,(,$3,+,$4,i,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('10', '3', 'right step 1', 'right step 1', '1', '1', '1', '(,$2,i,+,$1,),*,(,$4,i,+,$3,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('11', '3', 'right step 1', 'right step 1', '1', '1', '1', '(,$3,+,$4,i,),*,(,$1,+,$2,i,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('12', '3', 'right step 1', 'right step 1', '1', '1', '2', '(,$4,i,+,$3,),*,(,$2,i,+,$1,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('13', '3', 'right step 1', 'right step 1', '1', '1', '1', '(,$1,+,$2,i,),(,$3,+,$4,i,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('14', '3', 'error 1', 'error 1', '1', '2', '1', '(,$2,i,+,$4,i,),*,(,$1,+,$3,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('15', '3', 'right step 2', 'right step 2', '2', '1', '1', '(,#1,+,#2,i,+,#3,i,+,#4,i,^,2,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('16', '3', 'right step 2', 'right step 2', '2', '1', '1', '(,#1,+,#3,i,+,#2,i,+,#4,i,^,2,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('17', '3', 'error 1', 'error 1', '2', '2', '1', '(,#1,+,#4,i,^,2,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('18', '3', 'error 2', 'error 2', '2', '2', '1', '(,#1,-,#2,i,-,#3,i,+,#4,i,^,2,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('19', '3', 'right step 3', 'right step 3', '3', '1', '1', '(,#1,+,#5,i,-,#4,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('20', '3', 'error 1', 'error 1', '3', '2', '1', '(,#1,+,#5,i,+,#4,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('21', '3', 'error 2', 'error 2', '3', '2', '1', '(,#1,+,i,#5,+,#4,i,^,2,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('22', '3', 'right step 4', 'right step 4', '4', '1', '2', '(,#6,+,i,#5,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('23', '4', 'right step_1', 'right step_1', '1', '1', '1', '(,$1,+,$2,i,),/,(,$3,+,$4,i,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('24', '4', 'error 1', 'error 1', '1', '2', '1', '(,$3,+,$4,i,),/,(,$1,+,$2,i,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('25', '4', 'error 2', 'error 2', '1', '2', '1', '(,$2,i,+,$4,i,),/,(,$1,+,$3,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('26', '4', 'error 3', 'error 3', '1', '2', '1', '$1,+,$2,i,/,$3,+,$4,i');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('27', '4', 'error 4', 'error 4', '1', '2', '1', '$1,$2,i,/,$8,i');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('28', '4', 'right step_2', 'right step_2', '2', '1', '1', '(,(,$2,i,+,$1,),(,-,$4,i,+,$3,),),/,(,(,$4,i,+,$3,),(,-,$4,i,+,$3,),)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('29', '4', 'right step_2', 'right step_2', '2', '1', '1', '(,(,$1,+,$2,i,),(,$3,+, -,$4,i,),),/,(,(,$3,+,$4,i,),(,$3,+, -,$4,i,),)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('30', '4', 'error 1', 'error 1', '2', '2', '1', '(,(,$1,+,$2,i,),(,$3,+,$4,i,),),/,(,(,$3,+,$4,i,),(,$3,+,$4,i,),)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('31', '4', 'error 2', 'error 2', '2', '2', '1', '(,$1,/,$3,),+,(,$2,i,/,$4,i,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('32', '4', 'error 3', 'error 3', '2', '2', '1', '(,$1,+,$2,i,),(,$3,-,$4,i,),/,(,$3,+,$4,i,),(,$3,-,$4,i,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('33', '4', 'right step_3', 'right step_3', '3', '1', '1', '(,$1,-,$2,i,+,$4,i,-,$5,i,^,2,),/,(,$7,-,$8,i,+,$8,i,-,$9,i,^,2,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('34', '4', 'error 1', 'error 1', '3', '2', '1', '(,$1,+,$2,i,+,$4,i,+,$5,i,^,2,),/,(,$7,+,$8,i,+,$8,i,+,$9,i,^,2,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('35', '4', 'error 2', 'error 2', '3', '2', '1', '$1,-,$2,i,+,$4,i,-,$5,i,^,2,/,$7,-,$8,i,+,$8,i,-,$9,i,^,2');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('36', '4', 'right step_4', 'right step_4', '4', '1', '1', '(,$1,+,i,$14,+,$5,),/,(,$7,+,$9,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('37', '4', 'error 1', 'error 1', '4', '2', '1', '(,$1,+,i,$12,-,$5,),/,(,$7,-,$9,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('38', '4', 'right step_5', 'right step_5', '5', '1', '2', '(,$11,+,i,$12,),/,(,$13,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('39', '4', 'right step_5', 'right step_5', '5', '1', '2', '(,$11,+,i,$14,),$13');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('40', '4', 'error 1', 'error 1', '5', '2', '1', '$11,+,i,(,$12,),/,$13');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('41', '4', 'error 2', 'error 2', '5', '2', '1', '(,$11,+,i,$12,),/,(,$1,7,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('42', '5', 'right step_1', 'right step_1', '1', '1', '1', '(,$1,x,+,$2,),(,$3,x,+,$4,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('43', '5', 'right step_1', 'right step_1', '1', '1', '1', '(,$1,x,+,$2,),*,(,$3,x,+,$4,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('44', '5', 'right step_2', 'right step_2', '2', '1', '1', '$1,x,^,2,+,$2,x,+,$3,x,+,$4');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('45', '5', 'right step_2', 'right step_2', '2', '1', '1', '$1,x,^,2,+,$3,x,+,$2,x,+,$4');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('46', '5', 'right step_3', 'right step_3', '3', '1', '2', '$1,x,^,2,+,$5,x,+,$4');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('47', '6', 'right step_1', 'right step_1', '1', '1', '1', '(,$1,x,+,$2,y,),(,$3,x,+,$4,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('48', '6', 'right step_1', 'right step_1', '1', '1', '1', '(,$1,x,+,$2,y,*,(,$3,x,+,$4,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('49', '6', 'right step_2', 'right step_2', '2', '1', '1', '$1,x,^,2,+,$2,x,+,$3,x,y,+,$4,y');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('50', '6', 'right step_2', 'right step_2', '2', '1', '2', '$1,x,^,2,+,$3,x,y,+,$2,x,+,$4,y');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('51', '7', 'right step_1', 'right step_1', '1', '1', '1', '(,$1,x,y,+,$2,),(,$3,x,y,+,$4,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('52', '7', 'right step_1', 'right step_1', '1', '1', '1', '(,$1,x,y,+,$2,),*,(,$3,x,y,+,$4,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('53', '7', 'right step_2', 'right step_2', '2', '1', '1', '$1,x,^,2,y,^,2,+,$2,x,y,+,$3,x,y,+,$4');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('54', '7', 'right step_2', 'right step_2', '2', '1', '1', '$1,x,^,2,y,^,2,+,$3,x,y,+,$2,x,y,+,$4');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('55', '7', 'right step_3', 'right step_3', '3', '1', '2', '$1,x,^,2,y,^,2,+,$5,x,y,+,$4');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('56', '8', 'right step_1', 'right step_1', '1', '1', '1', '(,$1,x,^,2,+,$2,),(,$3,x,^,2,+,$4,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('57', '8', 'right step_1', 'right step_1', '1', '1', '1', '(,$1,x,^,2,+,$2,),*,(,$3,x,^,2,+,$4,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('58', '8', 'right step_2', 'right step_2', '2', '1', '1', '$1,x,^,4,+,$2,x,^,2,+,$3,x,^,2,+,$4');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('59', '8', 'right step_2', 'right step_2', '2', '1', '1', '$1,x,^,4,+,$3,x,^,2,+,$2,x,^,2,+,$4');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('60', '8', 'right step_3', 'right step_3', '3', '1', '2', '$1,x,^,4,+,$5,x,^,2,+,$4');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('61', '9', 'right step_1', 'right step_1', '1', '1', '1', '(,$1,x,^,2,y,^,2,+,$2,x,y,^,2,),(,$3,x,+,$4,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('62', '9', 'right step_1', 'right step_1', '1', '1', '1', '(,$1,x,^,2,y,^,2,+,$2,x,y,^,2,),*,(,$3,x,+,$4,)');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('63', '9', 'right step_2', 'right step_2', '2', '1', '1', '$1,x,^,3,y,^,2,+,$2,x,^,2,y,^,2,+,$3,x,^,2,y,^,2,+,$4,x,y,^,2');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('64', '9', 'right step_2', 'right step_2', '2', '1', '1', '$1,x,^,3,y,^,2,+,$3,x,^,2,y,^,2,+,$2,x,^,2,y,^,2,+,$4,x,y,^,2');
INSERT INTO `math_database`.`step_info` (`ID`, `problem_ID`, `name`, `feed_back`, `step_number`, `type`, `finish`, `format`) VALUES ('65', '9', 'right step_3', 'right step_3', '3', '1', '2', '$1,x,^,3,y,^,2,+,$5,x,^,2,y,^,2,+,$4,x,y,^,2');
