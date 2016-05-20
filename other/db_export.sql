-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 20, 2016 at 04:22 PM
-- Server version: 5.5.49-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `couchcms`
--

-- --------------------------------------------------------

--
-- Table structure for table `couch_attachments`
--

CREATE TABLE IF NOT EXISTS `couch_attachments` (
  `attach_id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `file_real_name` varchar(255) NOT NULL,
  `file_disk_name` varchar(255) NOT NULL,
  `file_extension` varchar(255) NOT NULL,
  `file_size` int(20) unsigned NOT NULL DEFAULT '0',
  `file_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_orphan` tinyint(1) unsigned DEFAULT '1',
  `hit_count` int(10) unsigned DEFAULT '0',
  `creation_ip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`attach_id`),
  KEY `couch_attachments_Index01` (`is_orphan`),
  KEY `couch_attachments_Index02` (`file_time`),
  KEY `couch_attachments_Index03` (`is_orphan`,`file_time`),
  KEY `couch_attachments_Index04` (`creation_ip`,`file_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `couch_comments`
--

CREATE TABLE IF NOT EXISTS `couch_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tpl_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` tinytext,
  `email` varchar(128) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `ip_addr` varchar(100) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `data` text,
  `approved` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `couch_comments_Index01` (`date`),
  KEY `couch_comments_Index02` (`page_id`,`approved`,`date`),
  KEY `couch_comments_Index03` (`tpl_id`,`approved`,`date`),
  KEY `couch_comments_Index04` (`approved`,`date`),
  KEY `couch_comments_Index05` (`tpl_id`,`page_id`,`approved`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `couch_data_numeric`
--

CREATE TABLE IF NOT EXISTS `couch_data_numeric` (
  `page_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `value` decimal(65,2) DEFAULT '0.00',
  PRIMARY KEY (`page_id`,`field_id`),
  KEY `couch_data_numeric_Index01` (`value`),
  KEY `couch_data_numeric_Index02` (`field_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `couch_data_text`
--

CREATE TABLE IF NOT EXISTS `couch_data_text` (
  `page_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `value` longtext,
  `search_value` text,
  PRIMARY KEY (`page_id`,`field_id`),
  KEY `couch_data_text_Index01` (`search_value`(255)),
  KEY `couch_data_text_Index02` (`field_id`,`search_value`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `couch_data_text`
--

INSERT INTO `couch_data_text` (`page_id`, `field_id`, `value`, `search_value`) VALUES
(1, 2, 'C', 'C'),
(1, 3, 'C++', 'C++'),
(1, 4, 'C++ STL', 'C++ STL'),
(1, 5, 'JavaSE', 'JavaSE'),
(1, 6, 'JavaEE', 'JavaEE'),
(1, 7, 'JavaFX', 'JavaFX'),
(1, 8, 'Spring', 'Spring'),
(1, 9, 'Hibernate', 'Hibernate'),
(1, 10, 'SQL', 'SQL'),
(1, 11, 'Agile Methodologies', 'Agile Methodologies'),
(1, 12, 'Design Patterns', 'Design Patterns'),
(1, 13, 'Javascript', 'Javascript'),
(1, 14, 'JQuery', 'JQuery'),
(1, 15, 'Visual Studio', 'Visual Studio'),
(1, 16, 'IntelliJ', 'IntelliJ'),
(1, 17, 'Eclipse', 'Eclipse'),
(1, 18, 'Netbeans', 'Netbeans'),
(1, 19, 'Many many more...', 'Many many more...'),
(1, 20, '', ''),
(1, 21, '', ''),
(1, 51, '', ''),
(1, 65, 'Freelance Full stack Developer Based in Warrington, United Kingdom. (Degree - Computer Science B.Sc from University of Manchester)', 'Freelance Full stack Developer Based in Warrington, United Kingdom. (Degree - Computer Science B.Sc from University of Manchester)'),
(1, 66, 'I was one of the top of my class in all of the programming courses (Java, C, C++, C with OpenGL). With 10 years experience in these languages, I consider my self very useful to YOU', 'I was one of the top of my class in all of the programming courses (Java, C, C++, C with OpenGL). With 10 years experience in these languages, I consider my self very useful to YOU'),
(1, 103, 'C', 'C'),
(1, 104, 'C++', 'C++'),
(1, 105, 'C++ STL', 'C++ STL'),
(1, 106, 'Java', 'Java'),
(1, 107, 'JavaFX', 'JavaFX'),
(1, 108, 'Hibernate', 'Hibernate'),
(1, 109, 'Log4J', 'Log4J'),
(1, 112, 'Maven', 'Maven'),
(1, 113, 'Javascript', 'Javascript'),
(1, 114, 'XML', 'XML'),
(1, 115, 'Agile Methodologies', 'Agile Methodologies'),
(1, 116, 'Eclipse', 'Eclipse'),
(1, 117, 'IntelliJ', 'IntelliJ'),
(1, 118, 'Visual Studio', 'Visual Studio'),
(1, 119, 'Netbeans', 'Netbeans'),
(1, 120, 'Many many more...', 'Many many more...'),
(1, 188, 'a:7:{i:0;a:2:{s:13:"listing_image";s:36:"OnNsaWRlc2hvdy9kZXZmYWN0b3J5LnBuZw==";s:19:"listing_image_title";s:16:"RGV2RmFjdG9yeQ==";}i:1;a:2:{s:13:"listing_image";s:40:"OnNsaWRlc2hvdy9wdXJjaGFzaW5nbmV0LnBuZw==";s:19:"listing_image_title";s:20:"UHVyY2hhc2luZ05ldA==";}i:2;a:2:{s:13:"listing_image";s:28:"OnNsaWRlc2hvdy9nZW5zeW0ucG5n";s:19:"listing_image_title";s:8:"R2Vuc3lt";}i:3;a:2:{s:13:"listing_image";s:32:"OnNsaWRlc2hvdy92ZXJzYXRhLnBuZw==";s:19:"listing_image_title";s:12:"VmVyc2F0YQ==";}i:4;a:2:{s:13:"listing_image";s:32:"OnNsaWRlc2hvdy9zY3NvbGdycC5wbmc=";s:19:"listing_image_title";s:24:"U0MgU29sdXRpb25zIEdyb3Vw";}i:5;a:2:{s:13:"listing_image";s:28:"OnNsaWRlc2hvdy90aGFsZXMucG5n";s:19:"listing_image_title";s:8:"VGhhbGVz";}i:6;a:2:{s:13:"listing_image";s:36:"OnNsaWRlc2hvdy9kaWdpYXJjc3lzLnBuZw==";s:19:"listing_image_title";s:28:"RGlnaXRhbCBBcmMgU3lzdGVtcw==";}}', ''),
(2, 25, '', ''),
(2, 26, '', ''),
(2, 27, '', ''),
(2, 28, '', ''),
(2, 29, '', ''),
(3, 2, '', ''),
(3, 3, ':jamie.jpg', 'jamie.jpg'),
(3, 4, '', ''),
(3, 5, '', ''),
(3, 6, 'Freelance Fullstack Developer Based in United Kingdom.<br />', 'Freelance Fullstack Developer Based in United Kingdom.'),
(3, 7, '', ''),
(3, 8, '', ''),
(3, 9, '', ''),
(3, 10, '', ''),
(3, 11, '', ''),
(3, 12, '', ''),
(3, 13, '', ''),
(3, 14, '', ''),
(3, 15, '', ''),
(3, 16, '', ''),
(3, 17, '', ''),
(3, 18, '', ''),
(3, 19, '', ''),
(3, 20, '', ''),
(3, 21, '', ''),
(3, 22, '', ''),
(3, 23, '', ''),
(3, 24, '', ''),
(3, 75, '', ''),
(3, 76, 'Get to know me and the skills that I possess.', 'Get to know me and the skills that I possess.'),
(3, 98, 'Freelance Fullstack Developer Based in United Kingdom.', 'Freelance Fullstack Developer Based in United Kingdom.'),
(3, 99, '', ''),
(3, 100, '', ''),
(3, 101, '', ''),
(3, 102, '', ''),
(4, 23, '', ''),
(4, 24, '', ''),
(4, 25, ':jamie.jpg', 'jamie.jpg'),
(4, 26, '', ''),
(4, 27, '', ''),
(4, 28, '', ''),
(4, 29, '', ''),
(4, 83, '', ''),
(4, 84, '', ''),
(4, 85, '', ''),
(4, 86, '', ''),
(4, 87, '', ''),
(4, 88, '', ''),
(4, 89, '', ''),
(4, 90, '', ''),
(4, 91, '', ''),
(4, 92, '', ''),
(4, 93, '', ''),
(4, 94, '', ''),
(4, 95, '', ''),
(4, 96, '', ''),
(4, 138, 'C / C++', 'C / C++'),
(4, 139, '100', '100'),
(4, 140, '10 years', '10 years'),
(4, 141, 'Java', 'Java'),
(4, 142, '90', '90'),
(4, 143, '9 years', '9 years'),
(4, 144, 'SQL', 'SQL'),
(4, 145, '70', '70'),
(4, 146, '7 years', '7 years'),
(4, 147, 'Ant / Maven / GIT', 'Ant / Maven / GIT'),
(4, 148, '50', '50'),
(4, 149, '5 years', '5 years'),
(4, 150, 'Many others', 'Many others'),
(4, 151, '100', '100'),
(4, 152, 'Please ask me about any skill', 'Please ask me about any skill'),
(5, 36, 'Paaras Kumar', 'Paaras Kumar'),
(5, 37, 'VP, Solution Innovation &amp; Delivery, Versata (gTeam FZ LLC)', 'VP, Solution Innovation &amp; Delivery, Versata (gTeam FZ LLC)'),
(5, 38, '<p>&quot;<span style="font-family: Arial, sans-serif; line-height: 17px;">Jamie is highly enthusiastic in his work and has a great ambition to perform at a high level. . Excellent employee, has no problem to work hard when necessary. Skilled in programming and seems really enjoying the task where coding is required. quite enjoyed working with him&quot;</span></p>\r\n', '&quot;Jamie is highly enthusiastic in his work and has a great ambition to perform at a high level. . Excellent employee, has no problem to work hard when necessary. Skilled in programming and seems really enjoying the task where coding is required. quite enjoyed working with him&quot;'),
(5, 39, ':ghost_person_60x60_v1.png', 'ghost_person_60x60_v1.png'),
(5, 40, 'Paul Hall', 'Paul Hall'),
(5, 41, 'Senior Software Engineer, Thales UK Ltd', 'Senior Software Engineer, Thales UK Ltd'),
(5, 42, '<p><span style="font-family: Arial, sans-serif; line-height: 17px;">&quot;I&nbsp;worked with Jamie on the Watchkeeper UAV project where we were both developing C++ using Visual Studio. &nbsp;He was a quick learner, but really didn&#39;t need to be, since he already had great knowledge of C++ and general software engineering principles from an obviously keen interest developed over years, beyond what he learned at university and outside work.&nbsp;He brought a dynamic and enthusiastic approach to the role and was a pleasure to work with.&nbsp;I would recommend him as a software engineer&quot;</span></p>\r\n', '&quot;I worked with Jamie on the Watchkeeper UAV project where we were both developing C++ using Visual Studio.  He was a quick learner, but really didn&#039;t need to be, since he already had great knowledge of C++ and general software engineering principles from an obviously keen interest developed over years, beyond what he learned at university and outside work. He brought a dynamic and enthusiastic approach to the role and was a pleasure to work with. I would recommend him as a software engineer&quot;'),
(5, 43, '', ''),
(5, 44, '', ''),
(5, 45, '', ''),
(5, 46, '<p>&quot;Nec ut novum maiestatis, ei atqui sapientem reformidans est, eu his sumo dicunt. Posse elaboraret pro et. Te vis mollis pertinacia argumentum, tation laoreet id est. Ex liber iuvaret vix. Ut vis diam sapientem.&quot;</p>\r\n', '&quot;Nec ut novum maiestatis, ei atqui sapientem reformidans est, eu his sumo dicunt. Posse elaboraret pro et. Te vis mollis pertinacia argumentum, tation laoreet id est. Ex liber iuvaret vix. Ut vis diam sapientem.&quot;'),
(5, 47, '', ''),
(5, 48, '', ''),
(5, 49, '', ''),
(5, 50, '<p>&quot;Nec ut novum maiestatis, ei atqui sapientem reformidans est, eu his sumo dicunt. Posse elaboraret pro et. Te vis mollis pertinacia argumentum, tation laoreet id est. Ex liber iuvaret vix. Ut vis diam sapientem.&quot;</p>\r\n', '&quot;Nec ut novum maiestatis, ei atqui sapientem reformidans est, eu his sumo dicunt. Posse elaboraret pro et. Te vis mollis pertinacia argumentum, tation laoreet id est. Ex liber iuvaret vix. Ut vis diam sapientem.&quot;'),
(6, 37, 'Client Testimonials', 'Client Testimonials'),
(6, 38, 'What my clients have to say about me', 'What my clients have to say about me'),
(6, 39, ':paaras.jpg', 'paaras.jpg'),
(6, 40, 'Paaras Kumar', 'Paaras Kumar'),
(6, 41, 'VP, Gensym, Solution Innovation and; Delivery, Versata', 'VP, Gensym, Solution Innovation and; Delivery, Versata'),
(6, 42, '<p class="descxxxription" dir="ltr" id="control_gen_44" style="margin: 10px 0px 7px; padding: 0px; border: 0px; font-family: Arial, sans-serif; vertical-align: baseline; font-stretch: inherit; line-height: 17px;">&quot;Jamie is highly enthusiastic in his work and has a great ambition to perform at a high level. . Excellent employee, has no problem to work hard when necessary. Skilled in programming and seems really enjoying the task where coding is required. quite enjoyed working with him&quot;</p>\r\n\r\n<p><span class="endorsement-date" style="margin: 0px; padding: 0px; border: 0px; font-size: 12px; font-family: Arial, sans-serif; vertical-align: baseline; font-stretch: inherit; line-height: 14px; color: rgb(102, 105, 106);">December 5, 2012, Paaras was Jamie&#39;s client and (indirectly as the client was Versata) but also his development team manager&nbsp;</span></p>\r\n', '&quot;Jamie is highly enthusiastic in his work and has a great ambition to perform at a high level. . Excellent employee, has no problem to work hard when necessary. Skilled in programming and seems really enjoying the task where coding is required. quite enjoyed working with him&quot; December 5, 2012, Paaras was Jamie&#039;s client and (indirectly as the client was Versata) but also his development team manager '),
(6, 43, ':ghost_big.gif', 'ghost_big.gif'),
(6, 44, 'Paul Hall', 'Paul Hall'),
(6, 45, 'Owner, Protographics', 'Owner, Protographics'),
(6, 46, '<h6 dir="ltr" style="margin: 0px; padding: 0px; border: 0px; font-weight: inherit; font-size: 13px; font-family: Arial, sans-serif; vertical-align: baseline; font-stretch: inherit; line-height: 17px;">&quot;Jamie brought a dynamic and enthusiastic approach to the role and was a pleasure to work with. I would recommend him as a software engineer.&quot;</h6>\r\n\r\n<p><span class="endorsement-date" style="margin: 0px; padding: 0px; border: 0px; font-size: 12px; font-family: Arial, sans-serif; vertical-align: baseline; font-stretch: inherit; line-height: 14px; color: rgb(102, 105, 106);">November 1, 2012, Paul managed Jamie at Thales UK Ltd</span></p>\r\n', '&quot;Jamie brought a dynamic and enthusiastic approach to the role and was a pleasure to work with. I would recommend him as a software engineer.&quot; November 1, 2012, Paul managed Jamie at Thales UK Ltd'),
(6, 47, ':ghost_big.gif', 'ghost_big.gif'),
(6, 48, 'Saji Chacko', 'Saji Chacko'),
(6, 49, 'CEO, SC Solutions Group', 'CEO, SC Solutions Group'),
(6, 50, '<h6 dir="ltr" style="font-weight: inherit; line-height: 17px; margin: 0px; padding: 0px; border: 0px; font-size: 13px; font-family: Arial, sans-serif; vertical-align: baseline; font-stretch: inherit;">&quot;Jamie was a phenomenal resource in getting this project in the right direction. It was a complex project to begin with but he came in and simplified the requirements. He is very honest and has an incredible skillset! Through him I was able to find additional freelancers to support core requirements. He is a pleasure to work with and he&#39;s a first-priority consideration for future jobs!&quot;</h6>\r\n\r\n<p style="line-height: 20.8px;"><span class="endorsement-date" style="margin: 0px; padding: 0px; border: 0px; font-size: 12px; font-family: Arial, sans-serif; vertical-align: baseline; font-stretch: inherit; line-height: 14px; color: rgb(102, 105, 106);">November 15, 2015, Saji&nbsp;</span><span style="color: rgb(102, 105, 106); font-family: Arial, sans-serif; font-size: 12px; line-height: 14px;">was Jamie&#39;s client from upWork</span></p>\r\n', '&quot;Jamie was a phenomenal resource in getting this project in the right direction. It was a complex project to begin with but he came in and simplified the requirements. He is very honest and has an incredible skillset! Through him I was able to find additional freelancers to support core requirements. He is a pleasure to work with and he&#039;s a first-priority consideration for future jobs!&quot; November 15, 2015, Saji was Jamie&#039;s client from upWork'),
(6, 51, ':noah.jpg', 'noah.jpg'),
(6, 52, 'Noah Ternullo', 'Noah Ternullo'),
(6, 53, 'CEO, Digital Arc Systems', 'CEO, Digital Arc Systems'),
(6, 54, '<h6 dir="ltr" style="font-weight: inherit; line-height: 17px; margin: 0px; padding: 0px; border: 0px; font-size: 13px; font-family: Arial, sans-serif; vertical-align: baseline; font-stretch: inherit;">&quot;Jamie was a phenomenal resource in getting this project in the right direction. It was a complex project to begin with but he came in and simplified the requirements. He is very honest and has an incredible skillset! Through him I was able to find additional freelancers to support core requirements. He is a pleasure to work with and he&#39;s a first-priority consideration for future jobs!&quot;</h6>\r\n\r\n<p style="line-height: 20.8px;"><span class="endorsement-date" style="margin: 0px; padding: 0px; border: 0px; font-size: 12px; font-family: Arial, sans-serif; vertical-align: baseline; font-stretch: inherit; line-height: 14px; color: rgb(102, 105, 106);">October 26, 2015, Noah&nbsp;</span><span style="color: rgb(102, 105, 106); font-family: Arial, sans-serif; font-size: 12px; line-height: 14px;">was Jamie&#39;s client from upWork</span></p>\r\n', '&quot;Jamie was a phenomenal resource in getting this project in the right direction. It was a complex project to begin with but he came in and simplified the requirements. He is very honest and has an incredible skillset! Through him I was able to find additional freelancers to support core requirements. He is a pleasure to work with and he&#039;s a first-priority consideration for future jobs!&quot; October 26, 2015, Noah was Jamie&#039;s client from upWork'),
(8, 55, 'Services', 'Services'),
(8, 56, 'The services that I can provide you with.', 'The services that I can provide you with.'),
(8, 57, 'Software Requirements', 'Software Requirements'),
(8, 58, 'Helping you go from needs of your users to software requirements', 'Helping you go from needs of your users to software requirements'),
(8, 59, 'Software developers need concise requirements and many times all a client knows is what is required by their users. There is a knowledge gap here and this would be where I would come in. you can provide me with whatever info you have and turn them in detailed, useful requirements that can then be taken by a development team or by myself to turn your user&#039;s needs into actual software.', 'Software developers need concise requirements and many times all a client knows is what is required by their users. There is a knowledge gap here and this would be where I would come in. you can provide me with whatever info you have and turn them in detailed, useful requirements that can then be taken by a development team or by myself to turn your user&#039;s needs into actual software.'),
(8, 60, 'Software Development', 'Software Development'),
(8, 61, 'Helping you realise any software requirements into actual software.', 'Helping you realise any software requirements into actual software.'),
(8, 62, 'You may already have concise requirements for a piece of software and with these, I can create the software you require. These requirments could be a complete application from the ground up or simply adding a module to an existing codebase. Both are services I would happiy provide-<br />Additionally, sometimes you just need to remove bugs from your application and I can certainly help you to do this.', 'You may already have concise requirements for a piece of software and with these, I can create the software you require. These requirments could be a complete application from the ground up or simply adding a module to an existing codebase. Both are services I would happiy provide-Additionally, sometimes you just need to remove bugs from your application and I can certainly help you to do this.'),
(8, 63, 'Software Quality Assurance', 'Software Quality Assurance'),
(8, 64, 'Complete testing of your software.', 'Complete testing of your software.'),
(8, 65, 'Software is never bug free, especially when that software is being continually upgraded and having modifications made. I can help with the testing of the software whether it be via writing unit test code to automate your testing process. Unit testing is something that many projects simply deem not necessary until it is too late and the effort to add it would be very costly. Keep ahead and ensure you add it from the start of your project<br /> I am all too happy to help you with the manual part of the testing process. There are some areas of software where unit testing is either not worth the effort or not possible. For these areas, a series of tests woyuld be created and after every new build, these tests are run manually. ', 'Software is never bug free, especially when that software is being continually upgraded and having modifications made. I can help with the testing of the software whether it be via writing unit test code to automate your testing process. Unit testing is something that many projects simply deem not necessary until it is too late and the effort to add it would be very costly. Keep ahead and ensure you add it from the start of your project I am all too happy to help you with the manual part of the testing process. There are some areas of software where unit testing is either not worth the effort or not possible. For these areas, a series of tests woyuld be created and after every new build, these tests are run manually.'),
(8, 66, 'Project Management', 'Project Management'),
(8, 67, 'Ensuring that the project runs smoothly, on budget and in time.', 'Ensuring that the project runs smoothly, on budget and in time.'),
(8, 68, 'Project management is the discipline of initiating, planning, executing, controlling, and closing the work of a team to achieve specific goals and meet specific success criteria.<br />This is where I come in, I can take a project from start to end and also manage the team creating the software. This is a task that over the years spent in the software devvelopment world, have seen too many mistakes made in the project management only to see the project fail. Good project management will always result in a successful project.', 'Project management is the discipline of initiating, planning, executing, controlling, and closing the work of a team to achieve specific goals and meet specific success criteria.This is where I come in, I can take a project from start to end and also manage the team creating the software. This is a task that over the years spent in the software devvelopment world, have seen too many mistakes made in the project management only to see the project fail. Good project management will always result in a successful project.'),
(9, 69, 'J.Reid&#039;s Blog', 'J.Reid&#039;s Blog'),
(9, 70, 'Jamie Reid', 'Jamie Reid'),
(9, 71, 'J.Reid', 'J.Reid'),
(9, 72, 'Jamie Reid - Senior Software Developer', 'Jamie Reid - Senior Software Developer'),
(9, 73, 'Senior C++ and Java Software Developer', 'Senior C++ and Java Software Developer'),
(9, 74, 'info@jamie-reid.com', 'info@jamie-reid.com'),
(9, 75, 'jamie.reid@gmx.com', 'jamie.reid@gmx.com'),
(9, 76, 'JamieReid87', 'JamieReid87'),
(9, 77, 'Jamie Reid is a Senior C, C++ and Java Software Developer with bases in UK and Spain. Hire an experienced freelance Senior Software Developer for all your development project needs.', 'Jamie Reid is a Senior C, C++ and Java Software Developer with bases in UK and Spain. Hire an experienced freelance Senior Software Developer for all your development project needs.'),
(9, 78, 'Software Development in Java and/or C++', 'Software Development in Java and/or C++'),
(9, 79, 'Software Development in Java and/or C++', 'Software Development in Java and/or C++'),
(9, 80, 'Check out a small selection of client testimonials from aññ around the globe of Jammie Reid, an experienced and freelance developer senior software.', 'Check out a small selection of client testimonials from aññ around the globe of Jammie Reid, an experienced and freelance developer senior software.'),
(9, 81, 'Read Jamie Reid&#039;s software development blog and stay updated with latest development news and techniques. Topics will be general programming, Java, C++, IDEs and many.', 'Read Jamie Reid&#039;s software development blog and stay updated with latest development news and techniques. Topics will be general programming, Java, C++, IDEs and many.'),
(9, 82, 'Software Development in Java and/or C++', 'Software Development in Java and/or C++'),
(9, 83, 'Hire a professional, friendly and passionate freelance Senior Java, C and C++ Software developer.', 'Hire a professional, friendly and passionate freelance Senior Java, C and C++ Software developer.'),
(9, 84, 'Senior Java Developer Spain, Java Software Developer Spain, Senior C++ Developer Spain, Senior Java Developer UK, Java Software Developer UK, Senior C++ Developer UK.', 'Senior Java Developer Spain, Java Software Developer Spain, Senior C++ Developer Spain, Senior Java Developer UK, Java Software Developer UK, Senior C++ Developer UK.'),
(9, 85, 'Senior Java Developer Spain, Java Software Developer Spain, Senior C++ Developer Spain, Senior Java Developer UK, Java Software Developer UK, Senior C++ Developer UK.', 'Senior Java Developer Spain, Java Software Developer Spain, Senior C++ Developer Spain, Senior Java Developer UK, Java Software Developer UK, Senior C++ Developer UK.'),
(9, 86, 'Senior Java Developer Spain, Java Software Developer Spain, Senior C++ Developer Spain, Senior Java Developer UK, Java Software Developer UK, Senior C++ Developer UK.', 'Senior Java Developer Spain, Java Software Developer Spain, Senior C++ Developer Spain, Senior Java Developer UK, Java Software Developer UK, Senior C++ Developer UK.'),
(9, 87, 'Client testimonials, Senior Java Developer Spain, Java Software Developer Spain, Senior C++ Developer Spain, Senior Java Developer UK, Java Software Developer UK, Senior C++ Developer UK.', 'Client testimonials, Senior Java Developer Spain, Java Software Developer Spain, Senior C++ Developer Spain, Senior Java Developer UK, Java Software Developer UK, Senior C++ Developer UK.'),
(9, 88, 'Senior Java Developer Spain, Java Software Developer Spain, Senior C++ Developer Spain, Senior Java Developer UK, Java Software Developer UK, Senior C++ Developer UK.', 'Senior Java Developer Spain, Java Software Developer Spain, Senior C++ Developer Spain, Senior Java Developer UK, Java Software Developer UK, Senior C++ Developer UK.'),
(9, 89, 'Senior Java Developer Spain, Java Software Developer Spain, Senior C++ Developer Spain, Senior Java Developer UK, Java Software Developer UK, Senior C++ Developer UK.', 'Senior Java Developer Spain, Java Software Developer Spain, Senior C++ Developer Spain, Senior Java Developer UK, Java Software Developer UK, Senior C++ Developer UK.'),
(9, 90, 'Senior Java Developer Spain, Java Software Developer Spain, Senior C++ Developer Spain, Senior Java Developer UK, Java Software Developer UK, Senior C++ Developer UK.', 'Senior Java Developer Spain, Java Software Developer Spain, Senior C++ Developer Spain, Senior Java Developer UK, Java Software Developer UK, Senior C++ Developer UK.'),
(9, 91, '10', '10'),
(9, 92, 'ALL RIGHTS RESERVED | Jamie Reid Development 2015', 'ALL RIGHTS RESERVED | Jamie Reid Development 2015'),
(9, 93, '1', '1'),
(9, 94, 'Home', 'Home'),
(9, 95, 'index.php', 'index.php'),
(9, 96, 'About Me', 'About Me'),
(9, 97, 'about.php', 'about.php'),
(9, 98, 'My Services', 'My Services'),
(9, 99, 'services.php', 'services.php'),
(9, 100, 'Testimonials', 'Testimonials'),
(9, 101, 'testimonial.php', 'testimonial.php'),
(9, 102, 'Blog', 'Blog'),
(9, 103, 'blog.php', 'blog.php'),
(9, 104, 'Contact', 'Contact'),
(9, 105, 'contact.php', 'contact.php'),
(9, 106, 'https://www.facebook.com/JReidSoftware', 'https://www.facebook.com/JReidSoftware'),
(9, 107, 'https://plus.google.com/106661162484836004685', 'https://plus.google.com/106661162484836004685'),
(9, 108, 'https://www.upwork.com/fl/jamiereid?_redirected=', 'https://www.upwork.com/fl/jamiereid?_redirected='),
(9, 109, 'https://www.linkedin.com/in/reidjamie', 'https://www.linkedin.com/in/reidjamie'),
(9, 184, 'Categories', 'Categories'),
(9, 185, 'Latest Posts', 'Latest Posts'),
(9, 186, 'Archives', 'Archives'),
(9, 187, 'https://github.com/jareid', 'https://github.com/jareid'),
(10, 97, '', ''),
(10, 125, '404 - Page Not Found', '404 - Page Not Found'),
(10, 126, 'The page you are looking for can not be found. ', 'The page you are looking for can not be found.'),
(10, 127, 'Please try the return link below or use the links provided in the navigation bars at the top and bottom	', 'Please try the return link below or use the links provided in the navigation bars at the top and bottom'),
(10, 128, 'Go Back', 'Go Back'),
(10, 136, 'javascript:goBack()', 'javascript:goBack()'),
(10, 137, ':error404.png', 'error404.png'),
(11, 129, '500 - Server Error', '500 - Server Error'),
(11, 130, 'Oh my good gawd! What have you done! You crashed the server you crazy fool!', 'Oh my good gawd! What have you done! You crashed the server you crazy fool!'),
(11, 131, 'Please try the return link below or use the links provided in the navigation bars at the top and bottom	', 'Please try the return link below or use the links provided in the navigation bars at the top and bottom'),
(11, 132, 'Go Back', 'Go Back'),
(11, 134, 'javascript:goBack()', 'javascript:goBack()'),
(11, 135, '', ''),
(12, 112, 'Contact Me', 'Contact Me'),
(12, 113, 'Use the form below to get in touch', 'Use the form below to get in touch'),
(12, 114, 'Simply ask me anything or provide me requirements about a project for me to provide a quote.', 'Simply ask me anything or provide me requirements about a project for me to provide a quote.'),
(12, 115, 'Enter your name.', 'Enter your name.'),
(12, 116, 'Enter your email', 'Enter your email'),
(12, 117, 'Enter the subject', 'Enter the subject'),
(12, 118, 'Enter your message or requirements', 'Enter your message or requirements'),
(12, 119, 'Send Email', 'Send Email'),
(12, 123, 'Jamie Reid', 'Jamie Reid'),
(12, 124, 'J. Reid', 'J. Reid'),
(12, 125, 'Jamie Reid - Senior Software Developer', 'Jamie Reid - Senior Software Developer'),
(12, 126, 'Senior Java and C++ Software Developer', 'Senior Java and C++ Software Developer'),
(12, 127, 'mail@jamie-reid.com', 'mail@jamie-reid.com'),
(12, 128, 'jamie.reid@gmx.com', 'jamie.reid@gmx.com'),
(12, 129, 'JamieReid87', 'JamieReid87'),
(12, 130, '-Software Development Java C++', '-Software Development Java C++'),
(12, 131, 'Software Development Java C++', 'Software Development Java C++'),
(12, 132, 'Software Development Java C++', 'Software Development Java C++'),
(12, 134, 'Software Development Java C++', 'Software Development Java C++'),
(12, 135, 'Software Development Java C++', 'Software Development Java C++'),
(12, 136, 'Software Development Java C++', 'Software Development Java C++'),
(12, 137, 'Software Development Java C++', 'Software Development Java C++'),
(12, 138, 'Software Development Java C++', 'Software Development Java C++'),
(12, 139, 'Software Development Java C++', 'Software Development Java C++'),
(12, 140, 'Software Development Java C++', 'Software Development Java C++'),
(12, 141, 'Software Development Java C++', 'Software Development Java C++'),
(12, 142, 'Software Development Java C++', 'Software Development Java C++'),
(12, 143, 'Software Development Java C++', 'Software Development Java C++'),
(12, 144, '10', '10'),
(12, 145, '1', '1'),
(12, 146, 'Home', 'Home'),
(12, 147, 'index.php', 'index.php'),
(12, 148, 'About Me', 'About Me'),
(12, 149, 'about.php', 'about.php'),
(12, 150, 'Services', 'Services'),
(12, 151, 'services.php', 'services.php'),
(12, 152, 'Testimonials', 'Testimonials'),
(12, 153, 'testimonial.php', 'testimonial.php'),
(12, 154, 'Blog', 'Blog'),
(12, 155, 'blog.php', 'blog.php'),
(12, 156, 'Contact Me', 'Contact Me'),
(12, 157, 'contact.php', 'contact.php'),
(12, 158, 'https://www.facebook.com/JReidSoftware', 'https://www.facebook.com/JReidSoftware'),
(12, 159, 'https://plus.google.com/106661162484836004685', 'https://plus.google.com/106661162484836004685'),
(12, 160, 'https://www.upwork.com/fl/jamiereid?_redirected=', 'https://www.upwork.com/fl/jamiereid?_redirected='),
(12, 161, 'http://es.linkedin.com/in/reidjamie', 'http://es.linkedin.com/in/reidjamie'),
(12, 164, 'ALL RIGHTS RESERVED | Jamie Reid Development 2015', 'ALL RIGHTS RESERVED | Jamie Reid Development 2015'),
(12, 165, 'J.Reid&#039;s General Programming Blog With a Focus on Java', 'J.Reid&#039;s General Programming Blog With a Focus on Java'),
(13, 120, '<p>Today is the day that I will begin to write articles for my blog (and hopefully some poeple will read them too)</p>\r\n\r\n<p style="line-height: 20.8px;">Topics in my blog:</p>\r\n\r\n<ul style="line-height: 20.8px;">\r\n	<li><span style="line-height: 1.6em;">There are some good techniques that are commonly ignored in programming.</span></li>\r\n	<li><span style="line-height: 1.6em;">New developments in the programming world</span></li>\r\n	<li><span style="line-height: 1.6em;">Code samples and tutorials.</span></li>\r\n	<li><span style="line-height: 1.6em;">Many other topics....</span></li>\r\n</ul>\r\n\r\n<p>I hope to hear back from anyone reading with suggestions.</p>\r\n', 'Today is the day that I will begin to write articles for my blog (and hopefully some poeple will read them too) Topics in my blog: There are some good techniques that are commonly ignored in programming. New developments in the programming world Code samples and tutorials. Many other topics.... I hope to hear back from anyone reading with suggestions.'),
(13, 121, 'The blog is born.', 'The blog is born.'),
(13, 122, '', ''),
(13, 123, '', ''),
(13, 124, '', ''),
(13, 162, ':error404.png', 'error404.png'),
(13, 163, 'https://www.youtube.com/embed/vqcAoZqg9d0', 'https://www.youtube.com/embed/vqcAoZqg9d0'),
(13, 164, '', ''),
(13, 165, '', ''),
(13, 166, '', ''),
(13, 167, '', ''),
(13, 168, '', ''),
(13, 169, '', ''),
(13, 170, '', ''),
(13, 171, '', ''),
(13, 172, '', ''),
(13, 173, '', ''),
(13, 174, '', ''),
(13, 175, '', ''),
(13, 176, '', ''),
(13, 177, '', ''),
(13, 178, '', ''),
(13, 179, '', ''),
(13, 180, '', ''),
(13, 181, '', ''),
(13, 182, 'Freelance Full Stack Developer Based in Warrington, United Kingdom.', 'Freelance Full Stack Developer Based in Warrington, United Kingdom.'),
(13, 183, 'I have a degree in Computer Science B.Sc from University of Manchester, one of the top of my class in all of the programming courses (Java, C, C++, C with OpenGL)', 'I have a degree in Computer Science B.Sc from University of Manchester, one of the top of my class in all of the programming courses (Java, C, C++, C with OpenGL)'),
(14, 112, 'Contact Me', 'Contact Me'),
(14, 113, 'Send me an email so that I can help you with any queries or provide a quote for any of my services.', 'Send me an email so that I can help you with any queries or provide a quote for any of my services.'),
(14, 114, 'Fill in the form below if you have any queries or would like to request a quote for any of my services', 'Fill in the form below if you have any queries or would like to request a quote for any of my services'),
(14, 115, 'Please enter your name', 'Please enter your name'),
(14, 116, 'Please enter your email', 'Please enter your email'),
(14, 117, 'Please enter the reason for contacting me', 'Please enter the reason for contacting me'),
(14, 118, 'Please enter the message for me', 'Please enter the message for me'),
(14, 119, 'Contact Me', 'Contact Me'),
(14, 163, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `couch_fields`
--

CREATE TABLE IF NOT EXISTS `couch_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `k_desc` varchar(255) DEFAULT NULL,
  `k_type` varchar(128) NOT NULL,
  `hidden` int(1) DEFAULT NULL,
  `search_type` varchar(20) DEFAULT 'text',
  `k_order` int(11) DEFAULT NULL,
  `data` longtext,
  `default_data` longtext,
  `required` int(1) DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  `validator` varchar(255) DEFAULT NULL,
  `validator_msg` text,
  `k_separator` varchar(20) DEFAULT NULL,
  `val_separator` varchar(20) DEFAULT NULL,
  `opt_values` text,
  `opt_selected` tinytext,
  `toolbar` varchar(20) DEFAULT NULL,
  `custom_toolbar` text,
  `css` text,
  `custom_styles` text,
  `maxlength` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `k_group` varchar(128) DEFAULT NULL,
  `collapsed` int(1) DEFAULT NULL,
  `assoc_field` varchar(128) DEFAULT NULL,
  `crop` int(1) DEFAULT '0',
  `enforce_max` int(1) DEFAULT '1',
  `quality` int(11) DEFAULT NULL,
  `show_preview` int(1) DEFAULT '0',
  `preview_width` int(11) DEFAULT NULL,
  `preview_height` int(11) DEFAULT NULL,
  `no_xss_check` int(1) DEFAULT '0',
  `rtl` int(1) DEFAULT '0',
  `body_id` tinytext,
  `body_class` tinytext,
  `disable_uploader` int(1) DEFAULT '0',
  `_html` text COMMENT 'Internal',
  `dynamic` text,
  `custom_params` text,
  `searchable` int(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `couch_fields_index01` (`k_group`,`k_order`,`id`),
  KEY `couch_fields_Index02` (`template_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=189 ;

--
-- Dumping data for table `couch_fields`
--

INSERT INTO `couch_fields` (`id`, `template_id`, `name`, `label`, `k_desc`, `k_type`, `hidden`, `search_type`, `k_order`, `data`, `default_data`, `required`, `deleted`, `validator`, `validator_msg`, `k_separator`, `val_separator`, `opt_values`, `opt_selected`, `toolbar`, `custom_toolbar`, `css`, `custom_styles`, `maxlength`, `height`, `width`, `k_group`, `collapsed`, `assoc_field`, `crop`, `enforce_max`, `quality`, `show_preview`, `preview_width`, `preview_height`, `no_xss_check`, `rtl`, `body_id`, `body_class`, `disable_uploader`, `_html`, `dynamic`, `custom_params`, `searchable`) VALUES
(2, 1, 'id1', '', '', 'text', 0, 'text', 1, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'tagCloud', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\ngroup=''tagCloud''\r\norder=''1''\r\nname=''id1''\r\ntype=''text''/>', '', NULL, 1),
(3, 1, 'id2', '', '', 'text', 0, 'text', 2, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'tagCloud', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\ngroup=''tagCloud''\r\norder=''2''\r\nname=''id2''\r\ntype=''text''/>', '', NULL, 1),
(4, 1, 'id3', '', '', 'text', 0, 'text', 3, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'tagCloud', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\ngroup=''tagCloud''\r\norder=''3''\r\nname=''id3''\r\ntype=''text''/>', '', NULL, 1),
(5, 1, 'id4', '', '', 'text', 0, 'text', 4, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'tagCloud', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\ngroup=''tagCloud''\r\norder=''4''\r\nname=''id4''\r\ntype=''text''/>', '', NULL, 1),
(6, 1, 'id5', '', '', 'text', 0, 'text', 5, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'tagCloud', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\ngroup=''tagCloud''\r\norder=''5''\r\nname=''id5''\r\ntype=''text''/>', '', NULL, 1),
(7, 1, 'id6', '', '', 'text', 0, 'text', 6, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'tagCloud', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\ngroup=''tagCloud''\r\norder=''6''\r\nname=''id6''\r\ntype=''text''/>', '', NULL, 1),
(8, 1, 'id7', '', '', 'text', 0, 'text', 6, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'tagCloud', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\ngroup=''tagCloud''\r\norder=''6''\r\nname=''id7''\r\ntype=''text''/>', '', NULL, 1),
(9, 1, 'id8', '', '', 'text', 0, 'text', 6, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'tagCloud', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\ngroup=''tagCloud''\r\norder=''6''\r\nname=''id8''\r\ntype=''text''/>', '', NULL, 1),
(10, 1, 'id9', '', '', 'text', 0, 'text', 6, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'tagCloud', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\ngroup=''tagCloud''\r\norder=''6''\r\nname=''id9''\r\ntype=''text''/>', '', NULL, 1),
(11, 1, 'id10', '', '', 'text', 0, 'text', 6, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'tagCloud', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\ngroup=''tagCloud''\r\norder=''6''\r\nname=''id10''\r\ntype=''text''/>', '', NULL, 1),
(12, 1, 'id11', '', '', 'text', 0, 'text', 6, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'tagCloud', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\ngroup=''tagCloud''\r\norder=''6''\r\nname=''id11''\r\ntype=''text''/>', '', NULL, 1),
(13, 1, 'id12', '', '', 'text', 0, 'text', 6, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'tagCloud', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\ngroup=''tagCloud''\r\norder=''6''\r\nname=''id12''\r\ntype=''text''/>', '', NULL, 1),
(14, 1, 'id13', '', '', 'text', 0, 'text', 6, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'tagCloud', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\ngroup=''tagCloud''\r\norder=''6''\r\nname=''id13''\r\ntype=''text''/>', '', NULL, 1),
(15, 1, 'id14', '', '', 'text', 0, 'text', 6, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'tagCloud', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\ngroup=''tagCloud''\r\norder=''6''\r\nname=''id14''\r\ntype=''text''/>', '', NULL, 1),
(16, 1, 'id15', '', '', 'text', 0, 'text', 6, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'tagCloud', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\ngroup=''tagCloud''\r\norder=''6''\r\nname=''id15''\r\ntype=''text''/>', '', NULL, 1),
(17, 1, 'id16', '', '', 'text', 0, 'text', 6, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'tagCloud', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\ngroup=''tagCloud''\r\norder=''6''\r\nname=''id16''\r\ntype=''text''/>', '', NULL, 1),
(18, 1, 'id17', '', '', 'text', 0, 'text', 6, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'tagCloud', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\ngroup=''tagCloud''\r\norder=''6''\r\nname=''id17''\r\ntype=''text''/>', '', NULL, 1),
(19, 1, 'id18', '', '', 'text', 0, 'text', 18, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'tagCloud', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\ngroup=''tagCloud''\r\norder=''18''\r\nname=''id18''\r\ntype=''text''/>', '', NULL, 1),
(20, 1, 'simpleabout_title', '', '', 'text', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''simpleabout_title''\r\ntype=''text''/>', '', NULL, 1),
(21, 1, 'simpleabout_text', '', '', 'text', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''simpleabout_text''\r\ntype=''text''/>', '', NULL, 1),
(23, 4, 'title', '', '', 'text', 0, 'text', 1, NULL, 'What I can do for you', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'section_2', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\norder=''1''\r\ngroup=''section_2''\r\nname=''title''\r\ntype=''text''/>', '', NULL, 1),
(24, 4, 'title2', '', '', 'text', 0, 'text', 0, NULL, 'Get to know Me and My Software Programming Skills', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''title2''\r\ntype=''text''/>', '', NULL, 1),
(25, 4, 'image_me', '', '', 'image', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 300, 300, '', 0, '', 0, 1, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''image_me''\r\ntype=''image''\r\nheight=''300''\r\nwidth=''300''/>', '', NULL, 1),
(26, 4, 'about1_title', '', '', 'text', 0, 'text', 0, NULL, 'Freelance Backend Developer Based in Warrington, United Kingdom.', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''about1_title''\r\ntype=''text''/>', '', NULL, 1),
(27, 4, 'about1', '', '', 'text', 0, 'text', 0, NULL, 'I have a degree in Computer Science B.Sc from University of Manchester, one of the top of my class in all of the programming courses (Java, C, C++, C with OpenGL)', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''about1''\r\ntype=''text''/>', '', NULL, 1),
(28, 4, 'about2', '', '', 'text', 0, 'text', 0, NULL, 'My core skill set includes the following skills: C, C++, JavaSE, JavaEE, JavaFX, Ant, Maven, SQL (MSSQL, MySQL, Oracle), Bash Shell. I have worked with the following IDEs: Visual Studio, Eclipse, IntelliJ, NetBeans and I am happy to work with any source control system. I am happy to work both Windows or Linux operating systems.', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''about2''\r\ntype=''text''/>', '', NULL, 1),
(29, 4, 'text', '', '', 'text', 0, 'text', 2, NULL, 'Lorem ipsum dolor sit amet, ne iudico dicant pri. Mel menandri mandamus oportere no, ornatus hendrerit est cu. Eu movet facete assentior vis, cu dolores expetendis vix. Cu nam utroque vivendo nominavi, modus posse te ius.Lorem ipsum dolor sit amet, ne iudico dicant pri. Mel menandri mandamus oportere no, ornatus hendrerit est cu. Eu movet facete assentior vis, cu dolores expetendis vix. Cu nam utroque vivendo nominavi, modus posse te ius.', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'section_2', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\norder=''2''\r\ngroup=''section_2''\r\nname=''text''\r\ntype=''text''/>', '', NULL, 1),
(37, 6, 'title1', '', '', 'text', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''title1''\r\ntype=''text''/>', '', NULL, 1),
(38, 6, 'title2', '', '', 'text', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''title2''\r\ntype=''text''/>', '', NULL, 1),
(39, 6, 'testimonial_1_image', '', '', 'image', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 200, 200, '', 0, '', 0, 1, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''testimonial_1_image''\r\nwidth=''200''\r\nheight=''200''\r\ntype=''image''/>', '', NULL, 1),
(40, 6, 'testimonal_1_name', '', '', 'text', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''testimonal_1_name''\r\ntype=''text''/>', '', NULL, 1),
(41, 6, 'testimonal_1_project', '', '', 'text', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''testimonal_1_project''\r\ntype=''text''/>', '', NULL, 1),
(42, 6, 'testimonal_1_quote', '', '', 'richtext', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''testimonal_1_quote''\r\ntype=''richtext''/>', '', NULL, 1),
(43, 6, 'testimonial_2_image', '', '', 'image', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 200, 200, '', 0, '', 0, 1, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''testimonial_2_image''\r\nwidth=''200''\r\nheight=''200''\r\ntype=''image''/>', '', NULL, 1),
(44, 6, 'testimonal_2_name', '', '', 'text', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''testimonal_2_name''\r\ntype=''text''/>', '', NULL, 1),
(45, 6, 'testimonal_2_project', '', '', 'text', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''testimonal_2_project''\r\ntype=''text''/>', '', NULL, 1),
(46, 6, 'testimonal_2_quote', '', '', 'richtext', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''testimonal_2_quote''\r\ntype=''richtext''/>', '', NULL, 1),
(47, 6, 'testimonial_3_image', '', '', 'image', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 200, 200, '', 0, '', 0, 1, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''testimonial_3_image''\r\nwidth=''200''\r\nheight=''200''\r\ntype=''image''/>', '', NULL, 1),
(48, 6, 'testimonal_3_name', '', '', 'text', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''testimonal_3_name''\r\ntype=''text''/>', '', NULL, 1),
(49, 6, 'testimonal_3_project', '', '', 'text', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''testimonal_3_project''\r\ntype=''text''/>', '', NULL, 1),
(50, 6, 'testimonal_3_quote', '', '', 'richtext', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''testimonal_3_quote''\r\ntype=''richtext''/>', '', NULL, 1),
(51, 6, 'testimonial_4_image', '', '', 'image', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 200, 200, '', 0, '', 0, 1, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''testimonial_4_image''\r\nwidth=''200''\r\nheight=''200''\r\ntype=''image''/>', '', NULL, 1),
(52, 6, 'testimonal_4_name', '', '', 'text', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''testimonal_4_name''\r\ntype=''text''/>', '', NULL, 1),
(53, 6, 'testimonal_4_project', '', '', 'text', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''testimonal_4_project''\r\ntype=''text''/>', '', NULL, 1),
(54, 6, 'testimonal_4_quote', '', '', 'richtext', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''testimonal_4_quote''\r\ntype=''richtext''/>', '', NULL, 1),
(55, 8, 'whyhire_title1', '', '', 'text', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''whyhire_title1''\r\ntype=''text''/>', '', NULL, 1),
(56, 8, 'whyhire_title2', '', '', 'text', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''whyhire_title2''\r\ntype=''text''/>', '', NULL, 1),
(57, 8, 'whyhire_1_title', '', '', 'text', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''whyhire_1_title''\r\ntype=''text''/>', '', NULL, 1),
(58, 8, 'whyhire_1_title2', '', '', 'text', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''whyhire_1_title2''\r\ntype=''text''/>', '', NULL, 1),
(59, 8, 'whyhire_1_text', '', '', 'text', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''whyhire_1_text''\r\ntype=''text''/>', '', NULL, 1),
(60, 8, 'whyhire_2_title', '', '', 'text', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''whyhire_2_title''\r\ntype=''text''/>', '', NULL, 1),
(61, 8, 'whyhire_2_title2', '', '', 'text', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''whyhire_2_title2''\r\ntype=''text''/>', '', NULL, 1),
(62, 8, 'whyhire_2_text', '', '', 'text', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''whyhire_2_text''\r\ntype=''text''/>', '', NULL, 1),
(63, 8, 'whyhire_3_title', '', '', 'text', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''whyhire_3_title''\r\ntype=''text''/>', '', NULL, 1),
(64, 8, 'whyhire_3_title2', '', '', 'text', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''whyhire_3_title2''\r\ntype=''text''/>', '', NULL, 1),
(65, 8, 'whyhire_3_text', '', '', 'text', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''whyhire_3_text''\r\ntype=''text''/>', '', NULL, 1),
(66, 8, 'whyhire_4_title', '', '', 'text', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''whyhire_4_title''\r\ntype=''text''/>', '', NULL, 1),
(67, 8, 'whyhire_4_title2', '', '', 'text', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''whyhire_4_title2''\r\ntype=''text''/>', '', NULL, 1),
(68, 8, 'whyhire_4_text', '', '', 'text', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''whyhire_4_text''\r\ntype=''text''/>', '', NULL, 1),
(69, 9, 'blogname', 'Blog Name', '', 'text', 0, 'text', 1, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'blog', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''blogname''\r\nlabel=''Blog Name''\r\ntype=''text''\r\ngroup=''blog''\r\norder=''1''/>', '', NULL, 1),
(70, 9, 'fullname', 'Full Name', '', 'text', 0, 'text', 1, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'group_data', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''fullname''\r\nlabel=''Full Name''\r\ntype=''text''\r\ngroup=''group_data''\r\norder=''1''/>', '', NULL, 1),
(71, 9, 'shortname', 'Short Name', '', 'text', 0, 'text', 2, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'group_data', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''shortname''\r\nlabel=''Short Name''\r\ntype=''text''\r\ngroup=''group_data''\r\norder=''2''/>', '', NULL, 1),
(72, 9, 'namejob', 'Name And Job', '', 'text', 0, 'text', 2, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'group_data', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''namejob''\r\nlabel=''Name And Job''\r\ntype=''text''\r\ngroup=''group_data''\r\norder=''2''/>', '', NULL, 1),
(73, 9, 'jobtitle', 'Job Title', '', 'text', 0, 'text', 3, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'group_data', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''jobtitle''\r\nlabel=''Job Title''\r\ntype=''text''\r\ngroup=''group_data''\r\norder=''3''/>', '', NULL, 1),
(74, 9, 'email_one', 'eMail One', '', 'text', 0, 'text', 4, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'group_data', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''email_one''\r\nlabel=''eMail One''\r\ntype=''text''\r\ngroup=''group_data''\r\norder=''4''/>', '', NULL, 1),
(75, 9, 'email_two', 'eMail Two', '', 'text', 0, 'text', 5, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'group_data', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''email_two''\r\nlabel=''eMail Two''\r\ntype=''text''\r\ngroup=''group_data''\r\norder=''5''/>', '', NULL, 1),
(76, 9, 'skype', 'Skype', '', 'text', 0, 'text', 6, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'group_data', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''skype''\r\nlabel=''Skype''\r\ntype=''text''\r\ngroup=''group_data''\r\norder=''6''/>', '', NULL, 1),
(77, 9, 'meta_description_home', 'Index Meta Description', 'Used by search engines', 'textarea', 0, 'text', 1, NULL, '', 1, 0, '', '', '', '', '', '', '', '', '', '', 0, 75, 0, 'group_seo', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''meta_description_home''\r\nlabel=''Index Meta Description''\r\ntype=''textarea''\r\ngroup=''group_seo''\r\norder=''1''\r\ndesc=''Used by search engines''\r\nrequired=''1''\r\nheight=''75''/>', '', NULL, 1),
(78, 9, 'meta_description_about', 'About Me Meta Description', 'Used by search engines', 'textarea', 0, 'text', 2, NULL, '', 1, 0, '', '', '', '', '', '', '', '', '', '', 0, 75, 0, 'group_seo', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''meta_description_about''\r\nlabel=''About Me Meta Description''\r\ntype=''textarea''\r\ngroup=''group_seo''\r\norder=''2''\r\ndesc=''Used by search engines''\r\nrequired=''1''\r\nheight=''75''/>', '', NULL, 1),
(79, 9, 'meta_description_services', 'Services Meta Description', 'Used by search engines', 'textarea', 0, 'text', 3, NULL, '', 1, 0, '', '', '', '', '', '', '', '', '', '', 0, 75, 0, 'group_seo', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''meta_description_services''\r\nlabel=''Services Meta Description''\r\ntype=''textarea''\r\ngroup=''group_seo''\r\norder=''3''\r\ndesc=''Used by search engines''\r\nrequired=''1''\r\nheight=''75''/>', '', NULL, 1),
(80, 9, 'meta_description_testimonials', 'Testimonials Meta Description', 'Used by search engines', 'textarea', 0, 'text', 4, NULL, '', 1, 0, '', '', '', '', '', '', '', '', '', '', 0, 75, 0, 'group_seo', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''meta_description_testimonials''\r\nlabel=''Testimonials Meta Description''\r\ntype=''textarea''\r\ngroup=''group_seo''\r\norder=''4''\r\ndesc=''Used by search engines''\r\nrequired=''1''\r\nheight=''75''/>', '', NULL, 1),
(81, 9, 'meta_description_blog', 'Blog Meta Description', 'Used by search engines', 'textarea', 0, 'text', 5, NULL, '', 1, 0, '', '', '', '', '', '', '', '', '', '', 0, 75, 0, 'group_seo', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''meta_description_blog''\r\nlabel=''Blog Meta Description''\r\ntype=''textarea''\r\ngroup=''group_seo''\r\norder=''5''\r\ndesc=''Used by search engines''\r\nrequired=''1''\r\nheight=''75''/>', '', NULL, 1),
(82, 9, 'meta_description_contact', 'Contact Me Meta Description', 'Used by search engines', 'textarea', 0, 'text', 6, NULL, '', 1, 0, '', '', '', '', '', '', '', '', '', '', 0, 75, 0, 'group_seo', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''meta_description_contact''\r\nlabel=''Contact Me Meta Description''\r\ntype=''textarea''\r\ngroup=''group_seo''\r\norder=''6''\r\ndesc=''Used by search engines''\r\nrequired=''1''\r\nheight=''75''/>', '', NULL, 1),
(83, 9, 'meta_description_404', 'Contact Me Meta Description', 'Used by search engines', 'textarea', 0, 'text', 7, NULL, '', 1, 0, '', '', '', '', '', '', '', '', '', '', 0, 75, 0, 'group_seo', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''meta_description_404''\r\nlabel=''Contact Me Meta Description''\r\ntype=''textarea''\r\ngroup=''group_seo''\r\norder=''7''\r\ndesc=''Used by search engines''\r\nrequired=''1''\r\nheight=''75''/>', '', NULL, 1),
(84, 9, 'keywords_home', 'Index Keywords', 'Used by search engines', 'textarea', 0, 'text', 1, NULL, '', 1, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'group_seo', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''keywords_home''\r\nlabel=''Index Keywords''\r\ntype=''textarea''\r\ngroup=''group_seo''\r\norder=''1''\r\ndesc=''Used by search engines''\r\nrequired=''1''/>', '', NULL, 1),
(85, 9, 'keywords_about', 'About Me Keywords', 'Used by search engines', 'textarea', 0, 'text', 2, NULL, '', 1, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'group_seo', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''keywords_about''\r\nlabel=''About Me Keywords''\r\ntype=''textarea''\r\ngroup=''group_seo''\r\norder=''2''\r\ndesc=''Used by search engines''\r\nrequired=''1''/>', '', NULL, 1),
(86, 9, 'keywords_services', 'Services Keywords', 'Used by search engines', 'textarea', 0, 'text', 3, NULL, '', 1, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'group_seo', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''keywords_services''\r\nlabel=''Services Keywords''\r\ntype=''textarea''\r\ngroup=''group_seo''\r\norder=''3''\r\ndesc=''Used by search engines''\r\nrequired=''1''/>', '', NULL, 1),
(87, 9, 'keywords_testimonials', 'Testimonials Keywords', 'Used by search engines', 'textarea', 0, 'text', 4, NULL, '', 1, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'group_seo', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''keywords_testimonials''\r\nlabel=''Testimonials Keywords''\r\ntype=''textarea''\r\ngroup=''group_seo''\r\norder=''4''\r\ndesc=''Used by search engines''\r\nrequired=''1''/>', '', NULL, 1),
(88, 9, 'keywords_blog', 'Blog Keywords', 'Used by search engines', 'textarea', 0, 'text', 5, NULL, '', 1, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'group_seo', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''keywords_blog''\r\nlabel=''Blog Keywords''\r\ntype=''textarea''\r\ngroup=''group_seo''\r\norder=''5''\r\ndesc=''Used by search engines''\r\nrequired=''1''/>', '', NULL, 1),
(89, 9, 'keywords_contact', 'Contact Me Keywords', 'Used by search engines', 'textarea', 0, 'text', 6, NULL, '', 1, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'group_seo', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''keywords_contact''\r\nlabel=''Contact Me Keywords''\r\ntype=''textarea''\r\ngroup=''group_seo''\r\norder=''6''\r\ndesc=''Used by search engines''\r\nrequired=''1''/>', '', NULL, 1),
(90, 9, 'keywords_404', 'Contact Me Keywords', 'Used by search engines', 'textarea', 0, 'text', 7, NULL, '', 1, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'group_seo', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''keywords_404''\r\nlabel=''Contact Me Keywords''\r\ntype=''textarea''\r\ngroup=''group_seo''\r\norder=''7''\r\ndesc=''Used by search engines''\r\nrequired=''1''/>', '', NULL, 1),
(91, 9, 'maxyears', 'Maximum Year', '', 'text', 0, 'text', 1, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'group_misc', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''maxyears''\r\nlabel=''Maximum Year''\r\ntype=''text''\r\ngroup=''group_misc''\r\norder=''1''/>', '', NULL, 1),
(92, 9, 'copyright', 'Copyright Notice', '', 'text', 0, 'text', 2, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'group_misc', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''copyright''\r\nlabel=''Copyright Notice''\r\ntype=''text''\r\ngroup=''group_misc''\r\norder=''2''/>', '', NULL, 1),
(93, 9, 'cache_css', 'CSS Cache Buster', 'Force browsers to request updated files', 'text', 0, 'text', 3, NULL, '', 0, 0, 'alpha_num', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'group_misc', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''cache_css''\r\nlabel=''CSS Cache Buster''\r\ntype=''text''\r\ngroup=''group_misc''\r\norder=''3''\r\ndesc=''Force browsers to request updated files''\r\nvalidator=''alpha_num''/>', '', NULL, 1),
(94, 9, 'home_name', 'Home Name', '', 'text', 0, 'text', 1, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'group_pages', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''home_name''\r\nlabel=''Home Name''\r\ntype=''text''\r\ngroup=''group_pages''\r\norder=''1''/>', '', NULL, 1),
(95, 9, 'home_link', 'Home Link', '', 'text', 0, 'text', 2, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'group_pages', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''home_link''\r\nlabel=''Home Link''\r\ntype=''text''\r\ngroup=''group_pages''\r\norder=''2''/>', '', NULL, 1),
(96, 9, 'about_name', 'About Name', '', 'text', 0, 'text', 3, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'group_pages', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''about_name''\r\nlabel=''About Name''\r\ntype=''text''\r\ngroup=''group_pages''\r\norder=''3''/>', '', NULL, 1),
(97, 9, 'about_link', 'About Link', '', 'text', 0, 'text', 4, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'group_pages', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''about_link''\r\nlabel=''About Link''\r\ntype=''text''\r\ngroup=''group_pages''\r\norder=''4''/>', '', NULL, 1),
(98, 9, 'services_name', 'Services Name', '', 'text', 0, 'text', 5, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'group_pages', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''services_name''\r\nlabel=''Services Name''\r\ntype=''text''\r\ngroup=''group_pages''\r\norder=''5''/>', '', NULL, 1),
(99, 9, 'services_link', 'Services Link', '', 'text', 0, 'text', 6, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'group_pages', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''services_link''\r\nlabel=''Services Link''\r\ntype=''text''\r\ngroup=''group_pages''\r\norder=''6''/>', '', NULL, 1),
(100, 9, 'testimonials_name', 'Testimonials Link', '', 'text', 0, 'text', 7, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'group_pages', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''testimonials_name''\r\nlabel=''Testimonials Link''\r\ntype=''text''\r\ngroup=''group_pages''\r\norder=''7''/>', '', NULL, 1),
(101, 9, 'testimonials_link', 'Testimonials Name', '', 'text', 0, 'text', 8, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'group_pages', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''testimonials_link''\r\nlabel=''Testimonials Name''\r\ntype=''text''\r\ngroup=''group_pages''\r\norder=''8''/>', '', NULL, 1),
(102, 9, 'blog_name', 'Blog Name', '', 'text', 0, 'text', 9, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'group_pages', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''blog_name''\r\nlabel=''Blog Name''\r\ntype=''text''\r\ngroup=''group_pages''\r\norder=''9''/>', '', NULL, 1),
(103, 9, 'blog_link', 'Blog Link', '', 'text', 0, 'text', 10, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'group_pages', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''blog_link''\r\nlabel=''Blog Link''\r\ntype=''text''\r\ngroup=''group_pages''\r\norder=''10''/>', '', NULL, 1),
(104, 9, 'contact_name', 'Contact Name', '', 'text', 0, 'text', 11, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'group_pages', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''contact_name''\r\nlabel=''Contact Name''\r\ntype=''text''\r\ngroup=''group_pages''\r\norder=''11''/>', '', NULL, 1),
(105, 9, 'contact_link', 'Contact Link', '', 'text', 0, 'text', 12, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'group_pages', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''contact_link''\r\nlabel=''Contact Link''\r\ntype=''text''\r\ngroup=''group_pages''\r\norder=''12''/>', '', NULL, 1),
(106, 9, 'link_fbook', 'Facebook Link', '', 'text', 0, 'text', 1, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'group_links', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''link_fbook''\r\nlabel=''Facebook Link''\r\ntype=''text''\r\ngroup=''group_links''\r\norder=''1''/>', '', NULL, 1),
(107, 9, 'link_gplus', 'Google+ Link', '', 'text', 0, 'text', 2, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'group_links', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''link_gplus''\r\nlabel=''Google+ Link''\r\ntype=''text''\r\ngroup=''group_links''\r\norder=''2''/>', '', NULL, 1),
(108, 9, 'link_upwork', 'upWork Link', '', 'text', 0, 'text', 3, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'group_links', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''link_upwork''\r\nlabel=''upWork Link''\r\ntype=''text''\r\ngroup=''group_links''\r\norder=''3''/>', '', NULL, 1),
(109, 9, 'link_lnkdin', 'LinkedIn Link', '', 'text', 0, 'text', 4, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'group_links', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''link_lnkdin''\r\nlabel=''LinkedIn Link''\r\ntype=''text''\r\ngroup=''group_links''\r\norder=''4''/>', '', NULL, 1),
(112, 12, 'short_title', '', '', 'text', 0, 'text', 1, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'form', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''short_title''\r\ngroup=''form''\r\norder=''1''\r\ntype=''text''/>', '', NULL, 1),
(113, 12, 'long_title', '', '', 'text', 0, 'text', 2, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'form', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''long_title''\r\ngroup=''form''\r\norder=''2''\r\ntype=''text''/>', '', NULL, 1),
(114, 12, 'instructions', '', '', 'text', 0, 'text', 3, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'form', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''instructions''\r\ngroup=''form''\r\norder=''3''\r\ntype=''text''/>', '', NULL, 1),
(115, 12, 'name', '', '', 'text', 0, 'text', 1, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'placeholders', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''name''\r\ngroup=''placeholders''\r\norder=''1''\r\ntype=''text''/>', '', NULL, 1),
(116, 12, 'email', '', '', 'text', 0, 'text', 2, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'placeholders', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''email''\r\ngroup=''placeholders''\r\norder=''2''\r\ntype=''text''/>', '', NULL, 1),
(117, 12, 'subject', '', '', 'text', 0, 'text', 3, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'placeholders', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''subject''\r\ngroup=''placeholders''\r\norder=''3''\r\ntype=''text''/>', '', NULL, 1),
(118, 12, 'message', '', '', 'text', 0, 'text', 4, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'placeholders', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''message''\r\ngroup=''placeholders''\r\norder=''4''\r\ntype=''text''/>', '', NULL, 1),
(119, 12, 'button_value', '', '', 'text', 0, 'text', 4, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'form', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''button_value''\r\ngroup=''form''\r\norder=''4''\r\ntype=''text''/>', '', NULL, 1),
(120, 13, 'blog_content', 'Content', '', 'richtext', 0, 'text', 1, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''blog_content''\r\nlabel=''Content''\r\ntype=''richtext''\r\norder=''1''/>', '', NULL, 1),
(121, 13, 'blog_summary', 'Summary', 'Used by blog listing and search engines', 'textarea', 0, 'text', 2, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 125, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''blog_summary''\r\nlabel=''Summary''\r\ndesc=''Used by blog listing and search engines''\r\ntype=''textarea''\r\nheight=''125''\r\norder=''2''/>', '', NULL, 1),
(122, 13, 'blog_picture', 'Picture', '', 'image', 0, 'text', 3, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 800, '', 0, '', 0, 1, 100, 1, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''blog_picture''\r\nlabel=''Picture''\r\nwidth=''800''\r\nquality=''100''\r\nshow_preview=''1''\r\norder=''3''\r\ntype=''image''/>', '', NULL, 1),
(123, 13, 'blog_picture_caption', 'Picture Caption', '', 'text', 0, 'text', 4, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''blog_picture_caption''\r\nlabel=''Picture Caption''\r\norder=''4''\r\ntype=''text''/>', '', NULL, 1),
(124, 13, 'blog_picture_thumbnail', 'Picture Thumbnail', '', 'thumbnail', 0, 'text', 5, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 150, 280, '', 0, 'blog_picture', 1, 0, 100, 1, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''blog_picture_thumbnail''\r\nlabel=''Picture Thumbnail''\r\nwidth=''280''\r\nheight=''150''\r\ncrop=''1''\r\nquality=''100''\r\nshow_preview=''1''\r\nassoc_field=''blog_picture''\r\norder=''5''\r\ntype=''thumbnail''/>', '', NULL, 1),
(125, 10, 'title', '', '', 'text', 0, 'text', 1, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''title''\r\ntype=''text''\r\norder=''1''/>', '', NULL, 1),
(126, 10, 'part1', '', '', 'text', 0, 'text', 2, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''part1''\r\ntype=''text''\r\norder=''2''/>', '', NULL, 1),
(127, 10, 'part2', '', '', 'text', 0, 'text', 3, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''part2''\r\ntype=''text''\r\norder=''3''/>', '', NULL, 1),
(128, 10, 'linkname', '', '', 'text', 0, 'text', 4, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''linkname''\r\ntype=''text''\r\norder=''4''/>', '', NULL, 1),
(129, 11, 'title', '', '', 'text', 0, 'text', 1, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''title''\r\ntype=''text''\r\norder=''1''/>', '', NULL, 1),
(130, 11, 'part1', '', '', 'text', 0, 'text', 2, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''part1''\r\ntype=''text''\r\norder=''2''/>', '', NULL, 1),
(131, 11, 'part2', '', '', 'text', 0, 'text', 3, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''part2''\r\ntype=''text''\r\norder=''3''/>', '', NULL, 1),
(132, 11, 'linkname', '', '', 'text', 0, 'text', 4, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''linkname''\r\ntype=''text''\r\norder=''4''/>', '', NULL, 1),
(134, 11, 'link', '', '', 'text', 0, 'text', 5, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''link''\r\ntype=''text''\r\norder=''5''/>', '', NULL, 1),
(135, 11, 'image', '', '', 'image', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 365, 280, '', 0, '', 0, 1, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''image''\r\ntype=''image''\r\nheight=''365''\r\nwidth=''280''/>', '', NULL, 1),
(136, 10, 'link', '', '', 'text', 0, 'text', 5, NULL, '', 0, 1, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''link''\r\ntype=''text''\r\norder=''5''/>', '', NULL, 1),
(137, 10, 'image', '', '', 'image', 0, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 365, 280, '', 0, '', 0, 1, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''image''\r\ntype=''image''\r\nheight=''365''\r\nwidth=''280''/>', '', NULL, 1),
(138, 4, 'name1', '', '', 'text', 0, 'text', 1, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'skills_one', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\norder=''1''\r\ngroup=''skills_one''\r\nname=''name1''\r\ntype=''text''/>', '', NULL, 1),
(139, 4, 'percent1', '', '', 'text', 0, 'text', 3, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'skills_one', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\norder=''3''\r\ngroup=''skills_one''\r\nname=''percent1''\r\ntype=''text''/>', '', NULL, 1),
(140, 4, 'years1', '', '', 'text', 0, 'text', 2, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'skills_one', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\norder=''2''\r\ngroup=''skills_one''\r\nname=''years1''\r\ntype=''text''/>', '', NULL, 1),
(141, 4, 'name2', '', '', 'text', 0, 'text', 1, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'skills_one', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\norder=''1''\r\ngroup=''skills_one''\r\nname=''name2''\r\ntype=''text''/>', '', NULL, 1),
(142, 4, 'percent2', '', '', 'text', 0, 'text', 3, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'skills_one', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\norder=''3''\r\ngroup=''skills_one''\r\nname=''percent2''\r\ntype=''text''/>', '', NULL, 1),
(143, 4, 'years2', '', '', 'text', 0, 'text', 2, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'skills_one', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\norder=''2''\r\ngroup=''skills_one''\r\nname=''years2''\r\ntype=''text''/>', '', NULL, 1),
(144, 4, 'name3', '', '', 'text', 0, 'text', 1, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'skills_one', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\norder=''1''\r\ngroup=''skills_one''\r\nname=''name3''\r\ntype=''text''/>', '', NULL, 1),
(145, 4, 'percent3', '', '', 'text', 0, 'text', 3, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'skills_one', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\norder=''3''\r\ngroup=''skills_one''\r\nname=''percent3''\r\ntype=''text''/>', '', NULL, 1),
(146, 4, 'years3', '', '', 'text', 0, 'text', 3, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'skills_one', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\norder=''3''\r\ngroup=''skills_one''\r\nname=''years3''\r\ntype=''text''/>', '', NULL, 1),
(147, 4, 'name4', '', '', 'text', 0, 'text', 1, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'skills_one', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\norder=''1''\r\ngroup=''skills_one''\r\nname=''name4''\r\ntype=''text''/>', '', NULL, 1),
(148, 4, 'percent4', '', '', 'text', 0, 'text', 3, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'skills_one', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\norder=''3''\r\ngroup=''skills_one''\r\nname=''percent4''\r\ntype=''text''/>', '', NULL, 1),
(149, 4, 'years4', '', '', 'text', 0, 'text', 4, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'skills_one', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\norder=''4''\r\ngroup=''skills_one''\r\nname=''years4''\r\ntype=''text''/>', '', NULL, 1),
(150, 4, 'name5', '', '', 'text', 0, 'text', 1, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'skills_one', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\norder=''1''\r\ngroup=''skills_one''\r\nname=''name5''\r\ntype=''text''/>', '', NULL, 1),
(151, 4, 'percent5', '', '', 'text', 0, 'text', 3, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'skills_one', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\norder=''3''\r\ngroup=''skills_one''\r\nname=''percent5''\r\ntype=''text''/>', '', NULL, 1),
(152, 4, 'years5', '', '', 'text', 0, 'text', 5, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'skills_one', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\norder=''5''\r\ngroup=''skills_one''\r\nname=''years5''\r\ntype=''text''/>', '', NULL, 1),
(184, 9, 'blog_categories', 'Blog Name', '', 'text', 0, 'text', 2, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'blog', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''blog_categories''\r\nlabel=''Blog Name''\r\ntype=''text''\r\ngroup=''blog''\r\norder=''2''/>', '', NULL, 1),
(185, 9, 'blog_latest', 'Blog Name', '', 'text', 0, 'text', 3, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'blog', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''blog_latest''\r\nlabel=''Blog Name''\r\ntype=''text''\r\ngroup=''blog''\r\norder=''3''/>', '', NULL, 1),
(186, 9, 'blog_arhives', 'Blog Name', '', 'text', 0, 'text', 4, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'blog', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''blog_arhives''\r\nlabel=''Blog Name''\r\ntype=''text''\r\ngroup=''blog''\r\norder=''4''/>', '', NULL, 1),
(187, 9, 'link_github', 'GitHub Link', '', 'text', 0, 'text', 5, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 'group_links', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''link_github''\r\nlabel=''GitHub Link''\r\ntype=''text''\r\ngroup=''group_links''\r\norder=''5''/>', '', NULL, 1);
INSERT INTO `couch_fields` (`id`, `template_id`, `name`, `label`, `k_desc`, `k_type`, `hidden`, `search_type`, `k_order`, `data`, `default_data`, `required`, `deleted`, `validator`, `validator_msg`, `k_separator`, `val_separator`, `opt_values`, `opt_selected`, `toolbar`, `custom_toolbar`, `css`, `custom_styles`, `maxlength`, `height`, `width`, `k_group`, `collapsed`, `assoc_field`, `crop`, `enforce_max`, `quality`, `show_preview`, `preview_width`, `preview_height`, `no_xss_check`, `rtl`, `body_id`, `body_class`, `disable_uploader`, `_html`, `dynamic`, `custom_params`, `searchable`) VALUES
(188, 1, 'listing_pictures', '', '', '__repeatable', 1, 'text', 0, NULL, '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', 0, '', 0, 0, 80, 0, 0, 0, 0, 0, '', '', 0, '<cms:editable\r\nname=''listing_pictures''\r\ntype=''__repeatable''\r\nhidden=''1''\r\nschema=''a:2:{i:0;a:41:{s:4:"name";s:20:"bGlzdGluZ19pbWFnZQ==";s:5:"label";s:0:"";s:6:"hidden";s:4:"MA==";s:11:"search_type";s:8:"dGV4dA==";s:10:"searchable";s:4:"MQ==";s:8:"required";s:4:"MA==";s:9:"validator";s:0:"";s:13:"validator_msg";s:0:"";s:13:"val_separator";s:0:"";s:10:"opt_values";s:0:"";s:12:"opt_selected";s:0:"";s:7:"toolbar";s:0:"";s:14:"custom_toolbar";s:0:"";s:3:"css";s:0:"";s:13:"custom_styles";s:0:"";s:9:"maxlength";s:4:"MA==";s:6:"height";s:4:"MA==";s:5:"width";s:4:"MA==";s:9:"collapsed";s:4:"MA==";s:11:"assoc_field";s:0:"";s:4:"crop";s:4:"MA==";s:11:"enforce_max";s:4:"MQ==";s:7:"quality";s:4:"ODA=";s:12:"show_preview";s:4:"MA==";s:13:"preview_width";s:4:"MA==";s:14:"preview_height";s:4:"MA==";s:12:"no_xss_check";s:4:"MA==";s:3:"rtl";s:4:"MA==";s:7:"body_id";s:0:"";s:10:"body_class";s:0:"";s:16:"disable_uploader";s:4:"MA==";s:7:"dynamic";s:0:"";s:9:"col_width";s:4:"MA==";s:11:"input_width";s:4:"MA==";s:6:"k_desc";s:0:"";s:6:"k_type";s:8:"aW1hZ2U=";s:7:"k_order";s:4:"MA==";s:11:"k_separator";s:0:"";s:7:"k_group";s:0:"";s:5:"_html";s:68:"PGNtczplZGl0YWJsZQ0KbmFtZT0nbGlzdGluZ19pbWFnZScNCnR5cGU9J2ltYWdlJy8+";s:13:"custom_params";s:0:"";}i:1;a:41:{s:4:"name";s:28:"bGlzdGluZ19pbWFnZV90aXRsZQ==";s:5:"label";s:0:"";s:6:"hidden";s:4:"MA==";s:11:"search_type";s:8:"dGV4dA==";s:10:"searchable";s:4:"MQ==";s:8:"required";s:4:"MA==";s:9:"validator";s:0:"";s:13:"validator_msg";s:0:"";s:13:"val_separator";s:0:"";s:10:"opt_values";s:0:"";s:12:"opt_selected";s:0:"";s:7:"toolbar";s:0:"";s:14:"custom_toolbar";s:0:"";s:3:"css";s:0:"";s:13:"custom_styles";s:0:"";s:9:"maxlength";s:4:"MA==";s:6:"height";s:4:"MA==";s:5:"width";s:4:"MA==";s:9:"collapsed";s:4:"MA==";s:11:"assoc_field";s:0:"";s:4:"crop";s:4:"MA==";s:11:"enforce_max";s:4:"MA==";s:7:"quality";s:4:"ODA=";s:12:"show_preview";s:4:"MA==";s:13:"preview_width";s:4:"MA==";s:14:"preview_height";s:4:"MA==";s:12:"no_xss_check";s:4:"MA==";s:3:"rtl";s:4:"MA==";s:7:"body_id";s:0:"";s:10:"body_class";s:0:"";s:16:"disable_uploader";s:4:"MA==";s:7:"dynamic";s:0:"";s:9:"col_width";s:4:"MA==";s:11:"input_width";s:4:"MA==";s:6:"k_desc";s:0:"";s:6:"k_type";s:8:"dGV4dA==";s:7:"k_order";s:4:"MA==";s:11:"k_separator";s:0:"";s:7:"k_group";s:0:"";s:5:"_html";s:76:"PGNtczplZGl0YWJsZQ0KbmFtZT0nbGlzdGluZ19pbWFnZV90aXRsZScNCnR5cGU9J3RleHQnLz4=";s:13:"custom_params";s:0:"";}}''/>', '', 'a:3:{s:6:"schema";s:3112:"YToyOntpOjA7YTo0MTp7czo0OiJuYW1lIjtzOjIwOiJiR2x6ZEdsdVoxOXBiV0ZuWlE9PSI7czo1OiJsYWJlbCI7czowOiIiO3M6NjoiaGlkZGVuIjtzOjQ6Ik1BPT0iO3M6MTE6InNlYXJjaF90eXBlIjtzOjg6ImRHVjRkQT09IjtzOjEwOiJzZWFyY2hhYmxlIjtzOjQ6Ik1RPT0iO3M6ODoicmVxdWlyZWQiO3M6NDoiTUE9PSI7czo5OiJ2YWxpZGF0b3IiO3M6MDoiIjtzOjEzOiJ2YWxpZGF0b3JfbXNnIjtzOjA6IiI7czoxMzoidmFsX3NlcGFyYXRvciI7czowOiIiO3M6MTA6Im9wdF92YWx1ZXMiO3M6MDoiIjtzOjEyOiJvcHRfc2VsZWN0ZWQiO3M6MDoiIjtzOjc6InRvb2xiYXIiO3M6MDoiIjtzOjE0OiJjdXN0b21fdG9vbGJhciI7czowOiIiO3M6MzoiY3NzIjtzOjA6IiI7czoxMzoiY3VzdG9tX3N0eWxlcyI7czowOiIiO3M6OToibWF4bGVuZ3RoIjtzOjQ6Ik1BPT0iO3M6NjoiaGVpZ2h0IjtzOjQ6Ik1BPT0iO3M6NToid2lkdGgiO3M6NDoiTUE9PSI7czo5OiJjb2xsYXBzZWQiO3M6NDoiTUE9PSI7czoxMToiYXNzb2NfZmllbGQiO3M6MDoiIjtzOjQ6ImNyb3AiO3M6NDoiTUE9PSI7czoxMToiZW5mb3JjZV9tYXgiO3M6NDoiTVE9PSI7czo3OiJxdWFsaXR5IjtzOjQ6Ik9EQT0iO3M6MTI6InNob3dfcHJldmlldyI7czo0OiJNQT09IjtzOjEzOiJwcmV2aWV3X3dpZHRoIjtzOjQ6Ik1BPT0iO3M6MTQ6InByZXZpZXdfaGVpZ2h0IjtzOjQ6Ik1BPT0iO3M6MTI6Im5vX3hzc19jaGVjayI7czo0OiJNQT09IjtzOjM6InJ0bCI7czo0OiJNQT09IjtzOjc6ImJvZHlfaWQiO3M6MDoiIjtzOjEwOiJib2R5X2NsYXNzIjtzOjA6IiI7czoxNjoiZGlzYWJsZV91cGxvYWRlciI7czo0OiJNQT09IjtzOjc6ImR5bmFtaWMiO3M6MDoiIjtzOjk6ImNvbF93aWR0aCI7czo0OiJNQT09IjtzOjExOiJpbnB1dF93aWR0aCI7czo0OiJNQT09IjtzOjY6ImtfZGVzYyI7czowOiIiO3M6Njoia190eXBlIjtzOjg6ImFXMWhaMlU9IjtzOjc6Imtfb3JkZXIiO3M6NDoiTUE9PSI7czoxMToia19zZXBhcmF0b3IiO3M6MDoiIjtzOjc6ImtfZ3JvdXAiO3M6MDoiIjtzOjU6Il9odG1sIjtzOjY4OiJQR050Y3pwbFpHbDBZV0pzWlEwS2JtRnRaVDBuYkdsemRHbHVaMTlwYldGblpTY05DblI1Y0dVOUoybHRZV2RsSnk4KyI7czoxMzoiY3VzdG9tX3BhcmFtcyI7czowOiIiO31pOjE7YTo0MTp7czo0OiJuYW1lIjtzOjI4OiJiR2x6ZEdsdVoxOXBiV0ZuWlY5MGFYUnNaUT09IjtzOjU6ImxhYmVsIjtzOjA6IiI7czo2OiJoaWRkZW4iO3M6NDoiTUE9PSI7czoxMToic2VhcmNoX3R5cGUiO3M6ODoiZEdWNGRBPT0iO3M6MTA6InNlYXJjaGFibGUiO3M6NDoiTVE9PSI7czo4OiJyZXF1aXJlZCI7czo0OiJNQT09IjtzOjk6InZhbGlkYXRvciI7czowOiIiO3M6MTM6InZhbGlkYXRvcl9tc2ciO3M6MDoiIjtzOjEzOiJ2YWxfc2VwYXJhdG9yIjtzOjA6IiI7czoxMDoib3B0X3ZhbHVlcyI7czowOiIiO3M6MTI6Im9wdF9zZWxlY3RlZCI7czowOiIiO3M6NzoidG9vbGJhciI7czowOiIiO3M6MTQ6ImN1c3RvbV90b29sYmFyIjtzOjA6IiI7czozOiJjc3MiO3M6MDoiIjtzOjEzOiJjdXN0b21fc3R5bGVzIjtzOjA6IiI7czo5OiJtYXhsZW5ndGgiO3M6NDoiTUE9PSI7czo2OiJoZWlnaHQiO3M6NDoiTUE9PSI7czo1OiJ3aWR0aCI7czo0OiJNQT09IjtzOjk6ImNvbGxhcHNlZCI7czo0OiJNQT09IjtzOjExOiJhc3NvY19maWVsZCI7czowOiIiO3M6NDoiY3JvcCI7czo0OiJNQT09IjtzOjExOiJlbmZvcmNlX21heCI7czo0OiJNQT09IjtzOjc6InF1YWxpdHkiO3M6NDoiT0RBPSI7czoxMjoic2hvd19wcmV2aWV3IjtzOjQ6Ik1BPT0iO3M6MTM6InByZXZpZXdfd2lkdGgiO3M6NDoiTUE9PSI7czoxNDoicHJldmlld19oZWlnaHQiO3M6NDoiTUE9PSI7czoxMjoibm9feHNzX2NoZWNrIjtzOjQ6Ik1BPT0iO3M6MzoicnRsIjtzOjQ6Ik1BPT0iO3M6NzoiYm9keV9pZCI7czowOiIiO3M6MTA6ImJvZHlfY2xhc3MiO3M6MDoiIjtzOjE2OiJkaXNhYmxlX3VwbG9hZGVyIjtzOjQ6Ik1BPT0iO3M6NzoiZHluYW1pYyI7czowOiIiO3M6OToiY29sX3dpZHRoIjtzOjQ6Ik1BPT0iO3M6MTE6ImlucHV0X3dpZHRoIjtzOjQ6Ik1BPT0iO3M6Njoia19kZXNjIjtzOjA6IiI7czo2OiJrX3R5cGUiO3M6ODoiZEdWNGRBPT0iO3M6Nzoia19vcmRlciI7czo0OiJNQT09IjtzOjExOiJrX3NlcGFyYXRvciI7czowOiIiO3M6Nzoia19ncm91cCI7czowOiIiO3M6NToiX2h0bWwiO3M6NzY6IlBHTnRjenBsWkdsMFlXSnNaUTBLYm1GdFpUMG5iR2x6ZEdsdVoxOXBiV0ZuWlY5MGFYUnNaU2NOQ25SNWNHVTlKM1JsZUhRbkx6ND0iO3M6MTM6ImN1c3RvbV9wYXJhbXMiO3M6MDoiIjt9fQ==";s:8:"max_rows";s:4:"MA==";s:11:"button_text";s:12:"QWRkIGEgUm93";}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `couch_folders`
--

CREATE TABLE IF NOT EXISTS `couch_folders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '-1',
  `template_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `k_desc` mediumtext,
  `image` text,
  `access_level` int(11) DEFAULT '0',
  `weight` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `couch_folders_Index02` (`template_id`,`name`),
  KEY `couch_folders_Index01` (`template_id`,`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `couch_folders`
--

INSERT INTO `couch_folders` (`id`, `pid`, `template_id`, `name`, `title`, `k_desc`, `image`, `access_level`, `weight`) VALUES
(1, -1, 13, 'programming', 'Programming', '<p>Articles about anything programming related. Anything discussed in this section will be applicable to any programming language.</p>\r\n', '', 0, 0),
(2, -1, 13, 'java', 'Java', '<p>Java specific related articles will be discussed in this section.</p>\r\n', '', 0, 0),
(3, -1, 13, 'my-news', 'My News', '<p>This section will give you brief updates on what is new in my life, most likely related to new contracts that I have taken upon and detais of said project.</p>\r\n', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `couch_fulltext`
--

CREATE TABLE IF NOT EXISTS `couch_fulltext` (
  `page_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`page_id`),
  FULLTEXT KEY `couch_fulltext_Index01` (`title`),
  FULLTEXT KEY `couch_fulltext_Index02` (`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `couch_fulltext`
--

INSERT INTO `couch_fulltext` (`page_id`, `title`, `content`) VALUES
(1, 'Default page for index.php * PLEASE CHANGE THIS TITLE *', 'C C++ C++ STL JavaSE JavaEE JavaFX Spring Hibernate SQL Agile Methodologies Design Patterns Javascript JQuery Visual Studio IntelliJ Eclipse Netbeans Many many more... Freelance Full stack Developer Based in Warrington, United Kingdom. (Degree - Computer Science B.Sc from University of Manchester) I was one of the top of my class in all of the programming courses (Java, C, C++, C with OpenGL). With 10 years experience in these languages, I consider my self very useful to YOU C C++ C++ STL Java JavaFX Hibernate Log4J Maven Javascript XML Agile Methodologies Eclipse IntelliJ Visual Studio Netbeans Many many more... '),
(2, 'Default page for about.php * PLEASE CHANGE THIS TITLE *', ''),
(3, 'Default page for services.php * PLEASE CHANGE THIS TITLE *', ''),
(4, 'Default page for about.php * PLEASE CHANGE THIS TITLE *', 'C / C++ 100 10 years Java 90 9 years SQL 70 7 years Ant / Maven / GIT 50 5 years Many others 100 Please ask me about any skill '),
(5, 'Default page for services.php * PLEASE CHANGE THIS TITLE *', ''),
(6, 'Default page for testimonial.php * PLEASE CHANGE THIS TITLE *', 'Client Testimonials What my clients have to say about me Paaras Kumar VP, Gensym, Solution Innovation and; Delivery, Versata &quot;Jamie is highly enthusiastic in his work and has a great ambition to perform at a high level. . Excellent employee, has no problem to work hard when necessary. Skilled in programming and seems really enjoying the task where coding is required. quite enjoyed working with him&quot; December 5, 2012, Paaras was Jamie&#039;s client and (indirectly as the client was Versata) but also his development team manager  Paul Hall Owner, Protographics &quot;Jamie brought a dynamic and enthusiastic approach to the role and was a pleasure to work with. I would recommend him as a software engineer.&quot; November 1, 2012, Paul managed Jamie at Thales UK Ltd Saji Chacko CEO, SC Solutions Group &quot;Jamie was a phenomenal resource in getting this project in the right direction. It was a complex project to begin with but he came in and simplified the requirements. He is very honest and has an incredible skillset! Through him I was able to find additional freelancers to support core requirements. He is a pleasure to work with and he&#039;s a first-priority consideration for future jobs!&quot; November 15, 2015, Saji was Jamie&#039;s client from upWork Noah Ternullo CEO, Digital Arc Systems &quot;Jamie was a phenomenal resource in getting this project in the right direction. It was a complex project to begin with but he came in and simplified the requirements. He is very honest and has an incredible skillset! Through him I was able to find additional freelancers to support core requirements. He is a pleasure to work with and he&#039;s a first-priority consideration for future jobs!&quot; October 26, 2015, Noah was Jamie&#039;s client from upWork '),
(7, 'Default page for contact.php * PLEASE CHANGE THIS TITLE *', ''),
(8, 'Default page for services.php * PLEASE CHANGE THIS TITLE *', 'Services The services that I can provide you with. Software Requirements Helping you go from needs of your users to software requirements Software developers need concise requirements and many times all a client knows is what is required by their users. There is a knowledge gap here and this would be where I would come in. you can provide me with whatever info you have and turn them in detailed, useful requirements that can then be taken by a development team or by myself to turn your user&#039;s needs into actual software. Software Development Helping you realise any software requirements into actual software. You may already have concise requirements for a piece of software and with these, I can create the software you require. These requirments could be a complete application from the ground up or simply adding a module to an existing codebase. Both are services I would happiy provide-Additionally, sometimes you just need to remove bugs from your application and I can certainly help you to do this. Software Quality Assurance Complete testing of your software. Software is never bug free, especially when that software is being continually upgraded and having modifications made. I can help with the testing of the software whether it be via writing unit test code to automate your testing process. Unit testing is something that many projects simply deem not necessary until it is too late and the effort to add it would be very costly. Keep ahead and ensure you add it from the start of your project I am all too happy to help you with the manual part of the testing process. There are some areas of software where unit testing is either not worth the effort or not possible. For these areas, a series of tests woyuld be created and after every new build, these tests are run manually. Project Management Ensuring that the project runs smoothly, on budget and in time. Project management is the discipline of initiating, planning, executing, controlling, and closing the work of a team to achieve specific goals and meet specific success criteria.This is where I come in, I can take a project from start to end and also manage the team creating the software. This is a task that over the years spent in the software devvelopment world, have seen too many mistakes made in the project management only to see the project fail. Good project management will always result in a successful project. '),
(9, 'Default page for globals.php * PLEASE CHANGE THIS TITLE *', 'J.Reid&#039;s Blog Jamie Reid J.Reid Jamie Reid - Senior Software Developer Senior C++ and Java Software Developer info@jamie-reid.com jamie.reid@gmx.com JamieReid87 Jamie Reid is a Senior C, C++ and Java Software Developer with bases in UK and Spain. Hire an experienced freelance Senior Software Developer for all your development project needs. Software Development in Java and/or C++ Software Development in Java and/or C++ Check out a small selection of client testimonials from aññ around the globe of Jammie Reid, an experienced and freelance developer senior software. Read Jamie Reid&#039;s software development blog and stay updated with latest development news and techniques. Topics will be general programming, Java, C++, IDEs and many. Software Development in Java and/or C++ Hire a professional, friendly and passionate freelance Senior Java, C and C++ Software developer. Senior Java Developer Spain, Java Software Developer Spain, Senior C++ Developer Spain, Senior Java Developer UK, Java Software Developer UK, Senior C++ Developer UK. Senior Java Developer Spain, Java Software Developer Spain, Senior C++ Developer Spain, Senior Java Developer UK, Java Software Developer UK, Senior C++ Developer UK. Senior Java Developer Spain, Java Software Developer Spain, Senior C++ Developer Spain, Senior Java Developer UK, Java Software Developer UK, Senior C++ Developer UK. Client testimonials, Senior Java Developer Spain, Java Software Developer Spain, Senior C++ Developer Spain, Senior Java Developer UK, Java Software Developer UK, Senior C++ Developer UK. Senior Java Developer Spain, Java Software Developer Spain, Senior C++ Developer Spain, Senior Java Developer UK, Java Software Developer UK, Senior C++ Developer UK. Senior Java Developer Spain, Java Software Developer Spain, Senior C++ Developer Spain, Senior Java Developer UK, Java Software Developer UK, Senior C++ Developer UK. Senior Java Developer Spain, Java Software Developer Spain, Senior C++ Developer Spain, Senior Java Developer UK, Java Software Developer UK, Senior C++ Developer UK. 10 ALL RIGHTS RESERVED | Jamie Reid Development 2015 1 Home index.php About Me about.php My Services services.php Testimonials testimonial.php Blog blog.php Contact contact.php https://www.facebook.com/JReidSoftware https://plus.google.com/106661162484836004685 https://www.upwork.com/fl/jamiereid?_redirected= https://www.linkedin.com/in/reidjamie Categories Latest Posts Archives https://github.com/jareid '),
(10, 'Default page for 404.php * PLEASE CHANGE THIS TITLE *', '404 - Page Not Found The page you are looking for can not be found. Please try the return link below or use the links provided in the navigation bars at the top and bottom Go Back javascript:goBack() '),
(11, 'Default page for crash.php * PLEASE CHANGE THIS TITLE *', '500 - Server Error Oh my good gawd! What have you done! You crashed the server you crazy fool! Please try the return link below or use the links provided in the navigation bars at the top and bottom Go Back javascript:goBack() '),
(12, 'Default page for contact.php * PLEASE CHANGE THIS TITLE *', 'Contact Me Use the form below to get in touch Simply ask me anything or provide me requirements about a project for me to provide a quote. Enter your name. Enter your email Enter the subject Enter your message or requirements Send Email Jamie Reid Jamie Reid - Senior Software Developer Senior Java and C++ Software Developer mail@jamie-reid.com jamie.reid@gmx.com JamieReid87 -Software Development Java C++ Software Development Java C++ Software Development Java C++ Software Development Java C++ Software Development Java C++ '),
(13, 'My blog is born.', 'Today is the day that I will begin to write articles for my blog (and hopefully some poeple will read them too) Topics in my blog: There are some good techniques that are commonly ignored in programming. New developments in the programming world Code samples and tutorials. Many other topics.... I hope to hear back from anyone reading with suggestions. The blog is born. '),
(14, 'Default page for contact.php * PLEASE CHANGE THIS TITLE *', 'Contact Me Send me an email so that I can help you with any queries or provide a quote for any of my services. Fill in the form below if you have any queries or would like to request a quote for any of my services Please enter your name Please enter your email Please enter the reason for contacting me Please enter the message for me Contact Me ');

-- --------------------------------------------------------

--
-- Table structure for table `couch_levels`
--

CREATE TABLE IF NOT EXISTS `couch_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `k_level` int(11) DEFAULT '0',
  `disabled` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `couch_levels_index01` (`k_level`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `couch_levels`
--

INSERT INTO `couch_levels` (`id`, `name`, `title`, `k_level`, `disabled`) VALUES
(1, 'superadmin', 'Super Admin', 10, 0),
(2, 'admin', 'Administrator', 7, 0),
(3, 'authenticated_user_special', 'Authenticated User (Special)', 4, 0),
(4, 'authenitcated_user', 'Authenticated User', 2, 0),
(5, 'unauthenticated_user', 'Everybody', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `couch_pages`
--

CREATE TABLE IF NOT EXISTS `couch_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `page_title` varchar(255) DEFAULT NULL,
  `page_name` varchar(255) DEFAULT NULL,
  `creation_date` datetime DEFAULT '0000-00-00 00:00:00',
  `modification_date` datetime DEFAULT '0000-00-00 00:00:00',
  `publish_date` datetime DEFAULT '0000-00-00 00:00:00',
  `status` int(11) DEFAULT NULL,
  `is_master` int(1) DEFAULT '0',
  `page_folder_id` int(11) DEFAULT '-1',
  `access_level` int(11) DEFAULT '0',
  `comments_count` int(11) DEFAULT '0',
  `comments_open` int(1) DEFAULT '1',
  `nested_parent_id` int(11) DEFAULT '-1',
  `weight` int(11) DEFAULT '0',
  `show_in_menu` int(1) DEFAULT '1',
  `menu_text` varchar(255) DEFAULT NULL,
  `is_pointer` int(1) DEFAULT '0',
  `pointer_link` text,
  `pointer_link_detail` text,
  `open_external` int(1) DEFAULT '0',
  `masquerades` int(1) DEFAULT '0',
  `strict_matching` int(1) DEFAULT '0',
  `file_name` varchar(260) DEFAULT NULL,
  `file_ext` varchar(20) DEFAULT NULL,
  `file_size` int(11) DEFAULT '0',
  `file_meta` text,
  `creation_IP` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `couch_pages_Index03` (`template_id`,`page_name`),
  KEY `couch_pages_Index01` (`template_id`,`publish_date`),
  KEY `couch_pages_Index02` (`template_id`,`page_folder_id`,`publish_date`),
  KEY `couch_pages_Index04` (`template_id`,`modification_date`),
  KEY `couch_pages_Index05` (`template_id`,`page_folder_id`,`modification_date`),
  KEY `couch_pages_Index06` (`template_id`,`page_folder_id`,`page_name`),
  KEY `couch_pages_Index07` (`template_id`,`comments_count`),
  KEY `couch_pages_Index08` (`template_id`,`page_title`),
  KEY `couch_pages_Index09` (`template_id`,`page_folder_id`,`page_title`),
  KEY `couch_pages_Index10` (`template_id`,`page_folder_id`,`comments_count`),
  KEY `couch_pages_Index11` (`template_id`,`parent_id`,`modification_date`),
  KEY `couch_pages_Index12` (`parent_id`,`modification_date`),
  KEY `couch_pages_Index13` (`template_id`,`is_pointer`,`masquerades`,`pointer_link_detail`(255)),
  KEY `couch_pages_Index14` (`template_id`,`file_name`(255)),
  KEY `couch_pages_Index15` (`template_id`,`page_folder_id`,`file_name`(255)),
  KEY `couch_pages_Index16` (`template_id`,`file_ext`,`file_name`(255)),
  KEY `couch_pages_Index17` (`template_id`,`page_folder_id`,`file_ext`,`file_name`(255)),
  KEY `couch_pages_Index18` (`template_id`,`file_size`),
  KEY `couch_pages_Index19` (`template_id`,`page_folder_id`,`file_size`),
  KEY `couch_pages_Index20` (`creation_IP`,`creation_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `couch_pages`
--

INSERT INTO `couch_pages` (`id`, `template_id`, `parent_id`, `page_title`, `page_name`, `creation_date`, `modification_date`, `publish_date`, `status`, `is_master`, `page_folder_id`, `access_level`, `comments_count`, `comments_open`, `nested_parent_id`, `weight`, `show_in_menu`, `menu_text`, `is_pointer`, `pointer_link`, `pointer_link_detail`, `open_external`, `masquerades`, `strict_matching`, `file_name`, `file_ext`, `file_size`, `file_meta`, `creation_IP`) VALUES
(1, 1, 0, 'Default page for index.php * PLEASE CHANGE THIS TITLE *', 'default-page-for-index-php-please-change-this-title', '2016-05-17 21:16:36', '2016-05-20 08:10:36', '2016-05-17 21:16:36', NULL, 1, -1, 0, 0, 1, -1, 0, 1, NULL, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, '158.255.235.71'),
(4, 4, 0, 'Default page for about.php * PLEASE CHANGE THIS TITLE *', 'default-page-for-about-php-please-change-this-title', '2016-05-17 23:07:39', '2016-05-20 21:16:19', '2016-05-17 23:07:39', NULL, 1, -1, 0, 0, 1, -1, 0, 1, NULL, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, '158.255.235.71'),
(6, 6, 0, 'Default page for testimonial.php * PLEASE CHANGE THIS TITLE *', 'default-page-for-testimonial-php-please-change-this-title', '2016-05-17 23:15:59', '2016-05-20 21:12:22', '2016-05-17 23:15:59', NULL, 1, -1, 0, 0, 1, -1, 0, 1, NULL, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, '158.255.235.71'),
(8, 8, 0, 'Default page for services.php * PLEASE CHANGE THIS TITLE *', 'default-page-for-services-php-please-change-this-title', '2016-05-17 23:21:23', '2016-05-20 08:32:28', '2016-05-17 23:21:23', NULL, 1, -1, 0, 0, 1, -1, 0, 1, NULL, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, '158.255.235.71'),
(9, 9, 0, 'Default page for globals.php * PLEASE CHANGE THIS TITLE *', 'default-page-for-globals-php-please-change-this-title', '2016-05-17 23:21:37', '2016-05-20 08:12:12', '2016-05-17 23:21:37', NULL, 1, -1, 0, 0, 1, -1, 0, 1, NULL, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, '158.255.235.71'),
(10, 10, 0, 'Default page for 404.php * PLEASE CHANGE THIS TITLE *', 'default-page-for-404-php-please-change-this-title', '2016-05-17 23:21:41', '2016-05-18 00:26:36', '2016-05-17 23:21:41', NULL, 1, -1, 0, 0, 1, -1, 0, 1, NULL, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, '158.255.235.71'),
(11, 11, 0, 'Default page for crash.php * PLEASE CHANGE THIS TITLE *', 'default-page-for-crash-php-please-change-this-title', '2016-05-17 23:21:47', '2016-05-18 00:25:57', '2016-05-17 23:21:47', NULL, 1, -1, 0, 0, 1, -1, 0, 1, NULL, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, '158.255.235.71'),
(13, 13, 0, 'My blog is born.', 'default-page-for-blog-php-please-change-this-title', '2016-05-17 23:22:59', '2016-05-19 23:12:36', '2016-05-17 23:22:59', NULL, 1, 3, 0, 0, 1, -1, 0, 1, NULL, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, '158.255.235.71'),
(14, 12, 0, 'Default page for contact.php * PLEASE CHANGE THIS TITLE *', 'default-page-for-contact-php-please-change-this-title', '2016-05-20 08:13:51', '2016-05-20 08:21:43', '2016-05-20 08:13:51', NULL, 1, -1, 0, 0, 1, -1, 0, 1, NULL, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, '158.255.235.71');

-- --------------------------------------------------------

--
-- Table structure for table `couch_relations`
--

CREATE TABLE IF NOT EXISTS `couch_relations` (
  `pid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `weight` int(11) DEFAULT '0',
  PRIMARY KEY (`pid`,`fid`,`cid`),
  KEY `couch_relations_Index01` (`pid`,`fid`,`weight`),
  KEY `couch_relations_Index02` (`fid`,`cid`,`weight`),
  KEY `couch_relations_Index03` (`cid`,`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `couch_settings`
--

CREATE TABLE IF NOT EXISTS `couch_settings` (
  `k_key` varchar(255) NOT NULL,
  `k_value` longtext,
  PRIMARY KEY (`k_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `couch_settings`
--

INSERT INTO `couch_settings` (`k_key`, `k_value`) VALUES
('k_couch_version', '1.4.7'),
('nonce_secret_key', 'PgML3mUHuPMjJiXmStmwbv95JrCKIUoYABa3oubiKo1T7pFpismTnWpwNsHWMwlM'),
('secret_key', 'IIs8t3taBySj3x5RXzEnWO4tTT87Q2nZbfx4JrFKqXuTVZaiZf6luBeNUNlaf8zR');

-- --------------------------------------------------------

--
-- Table structure for table `couch_templates`
--

CREATE TABLE IF NOT EXISTS `couch_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `clonable` int(1) DEFAULT '0',
  `executable` int(1) DEFAULT '1',
  `title` varchar(255) DEFAULT NULL,
  `access_level` int(11) DEFAULT '0',
  `commentable` int(1) DEFAULT '0',
  `hidden` int(1) DEFAULT '0',
  `k_order` int(11) DEFAULT '0',
  `dynamic_folders` int(1) DEFAULT '0',
  `nested_pages` int(1) DEFAULT '0',
  `gallery` int(1) DEFAULT '0',
  `handler` text,
  `custom_params` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `couch_templates_Index01` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `couch_templates`
--

INSERT INTO `couch_templates` (`id`, `name`, `description`, `clonable`, `executable`, `title`, `access_level`, `commentable`, `hidden`, `k_order`, `dynamic_folders`, `nested_pages`, `gallery`, `handler`, `custom_params`) VALUES
(1, 'index.php', '', 0, 1, 'Home', 0, 0, 0, 1, 0, 0, 0, NULL, NULL),
(4, 'about.php', '', 0, 1, 'About', 0, 0, 0, 2, 0, 0, 0, NULL, NULL),
(6, 'testimonial.php', '', 0, 1, 'Testimonials', 0, 0, 0, 4, 0, 0, 0, NULL, NULL),
(8, 'services.php', '', 0, 1, 'Services', 0, 0, 0, 3, 0, 0, 0, NULL, NULL),
(9, 'globals.php', '', 0, 0, 'Global Settings', 0, 0, 0, 7, 0, 0, 0, NULL, NULL),
(10, '404.php', '', 0, 1, '404', 0, 0, 0, 8, 0, 0, 0, NULL, NULL),
(11, 'crash.php', '', 0, 1, 'Crash - 500', 0, 0, 0, 9, 0, 0, 0, NULL, NULL),
(12, 'contact.php', '', 0, 1, 'Contact Me', 0, 0, 0, 6, 0, 0, 0, NULL, NULL),
(13, 'blog.php', '', 1, 1, 'Blog', 0, 0, 0, 5, 1, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `couch_users`
--

CREATE TABLE IF NOT EXISTS `couch_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `password` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `activation_key` varchar(64) DEFAULT NULL,
  `password_reset_key` varchar(64) DEFAULT NULL,
  `registration_date` datetime DEFAULT NULL,
  `access_level` int(11) DEFAULT '0',
  `disabled` int(11) DEFAULT '0',
  `system` int(11) DEFAULT '0',
  `last_failed` bigint(11) DEFAULT '0',
  `failed_logins` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `couch_users_email` (`email`),
  UNIQUE KEY `couch_users_name` (`name`),
  KEY `couch_users_activation_key` (`activation_key`),
  KEY `couch_users_password_reset_key` (`password_reset_key`),
  KEY `couch_users_index01` (`access_level`),
  KEY `couch_users_index02` (`access_level`,`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `couch_users`
--

INSERT INTO `couch_users` (`id`, `name`, `title`, `password`, `email`, `activation_key`, `password_reset_key`, `registration_date`, `access_level`, `disabled`, `system`, `last_failed`, `failed_logins`) VALUES
(1, 'jreid', 'jreid', '$P$B1gVmLwNjB2KZxaiFzxc2XroC37xJp.', 'jamie.reid@gmx.com', '', '', '2016-05-17 21:13:49', 10, 0, 1, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
