CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `dob` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `enrollmentDate` date NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `marital_status` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `username` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`)
);


INSERT INTO `user` VALUES (2,'2015-08-04','address','contact','email','2015-08-04','firstname','lastname','single','middlename','admin','male','admin');

