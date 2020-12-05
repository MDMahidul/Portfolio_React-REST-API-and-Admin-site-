-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2020 at 11:15 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `react_site`
--

-- --------------------------------------------------------

--
-- Table structure for table `chart_data`
--

CREATE TABLE `chart_data` (
  `technology` varchar(1000) NOT NULL,
  `projects` varchar(1000) NOT NULL,
  `id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chart_data`
--

INSERT INTO `chart_data` (`technology`, `projects`, `id`) VALUES
('Java', '100', 1),
('Kotlin', '40', 2),
('Sql', '90', 3),
('Bootstrap', '95', 4),
('Jquery', '60', 5),
('React', '90', 6),
('PHP', '100', 7),
('Angular', '65', 8);

-- --------------------------------------------------------

--
-- Table structure for table `client_review`
--

CREATE TABLE `client_review` (
  `id` int(255) NOT NULL,
  `client_img` varchar(1000) NOT NULL,
  `client_title` varchar(1000) NOT NULL,
  `client_description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client_review`
--

INSERT INTO `client_review` (`id`, `client_img`, `client_title`, `client_description`) VALUES
(1, 'https://scontent.fdac99-1.fna.fbcdn.net/v/t1.0-9/35657201_2101674980072574_3108290058570956800_o.jpg?_nc_cat=107&_nc_sid=174925&_nc_ohc=UDE6fyoK4LwAX_rS5eV&_nc_ht=scontent.fdac99-1.fna&oh=8e5e73de5143f617c35af907f6f3d4b1&oe=5F6FF286', 'Web Development', 'By default the HTTP-server will listen to port 8000. However if that port is already in use or you wish to serve multiple applications this way, you might want to specify what port to use. Just add the --port argument'),
(2, 'https://scontent.fdac99-1.fna.fbcdn.net/v/t1.0-9/35657201_2101674980072574_3108290058570956800_o.jpg?_nc_cat=107&_nc_sid=174925&_nc_ohc=UDE6fyoK4LwAX_rS5eV&_nc_ht=scontent.fdac99-1.fna&oh=8e5e73de5143f617c35af907f6f3d4b1&oe=5F6FF286', 'Mobile App Development', 'By default the HTTP-server will listen to port 8000. However if that port is already in use or you wish to serve multiple applications this way, you might want to specify what port to use. Just add the --port argument'),
(3, 'https://scontent.fdac99-1.fna.fbcdn.net/v/t1.0-9/35657201_2101674980072574_3108290058570956800_o.jpg?_nc_cat=107&_nc_sid=174925&_nc_ohc=UDE6fyoK4LwAX_rS5eV&_nc_ht=scontent.fdac99-1.fna&oh=8e5e73de5143f617c35af907f6f3d4b1&oe=5F6FF286', 'Graphics Design', 'By default the HTTP-server will listen to port 8000. However if that port is already in use or you wish to serve multiple applications this way, you might want to specify what port to use. Just add the --port argument'),
(4, 'https://scontent.fdac99-1.fna.fbcdn.net/v/t1.0-9/35657201_2101674980072574_3108290058570956800_o.jpg?_nc_cat=107&_nc_sid=174925&_nc_ohc=UDE6fyoK4LwAX_rS5eV&_nc_ht=scontent.fdac99-1.fna&oh=8e5e73de5143f617c35af907f6f3d4b1&oe=5F6FF286', 'Graphics Design', 'By default the HTTP-server will listen to port 8000. However if that port is already in use or you wish to serve multiple applications this way, you might want to specify what port to use. Just add the --port argument');

-- --------------------------------------------------------

--
-- Table structure for table `contact_table`
--

CREATE TABLE `contact_table` (
  `id` int(255) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact_table`
--

INSERT INTO `contact_table` (`id`, `name`, `email`, `message`) VALUES
(1, 'Maruf', 'maruf@gmail.com', 'Hello world'),
(2, 'Mahidul', 'mmbmahidul007@gmail.com', 'hi'),
(3, 'Mahidul', 'mmbmahidul007@gmail.com', 'gy'),
(4, 'moon', 'moon@gmail.com', 'test msg');

-- --------------------------------------------------------

--
-- Table structure for table `course_table`
--

CREATE TABLE `course_table` (
  `id` int(255) NOT NULL,
  `short_title` varchar(1000) NOT NULL,
  `short_des` varchar(1000) NOT NULL,
  `small_img` varchar(1000) NOT NULL,
  `long_title` varchar(1000) NOT NULL,
  `long_des` text NOT NULL,
  `total_lecture` varchar(1000) NOT NULL,
  `total_student` varchar(1000) NOT NULL,
  `skill_all` text NOT NULL,
  `video_url` varchar(1000) NOT NULL,
  `course_link` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course_table`
--

INSERT INTO `course_table` (`id`, `short_title`, `short_des`, `small_img`, `long_title`, `long_des`, `total_lecture`, `total_student`, `skill_all`, `video_url`, `course_link`) VALUES
(1, 'Web Development', 'I build native and cross platfrom mobile app for your business app for your business', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSXZWLfk6mazOmeJdWxZf17lOd-koXXM2pqMw&usqp=CAU', 'Web Development Online Basic Course', 'Web development is the work involved in developing a Web site for the Internet or an intranet. Web development can range from developing a simple single static page of plain text to complex Web-based Internet applications, electronic businesses, and social network services.', '140', '150', '  <ul>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                     </ul>', 'https://media.w3.org/2010/05/sintel/trailer_hd.mp4', 'www.react.rabbil.com'),
(2, 'Mobile App Development', 'Mobile app development is the act or process by which a mobile app is developed for mobile devices, such as personal digital assistants.', 'https://www.netwebtechs.com/wp-content/uploads/2019/09/Mobile-Application-Development.png', 'Mobile App Development Online Course', 'Mobile app development is the act or process by which a mobile app is developed for mobile devices, such as personal digital assistants, enterprise digital assistants or mobile phones.As part of the development process, mobile user interface (UI) design is also essential in the creation of mobile apps.', '89', '210', '  <ul>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                     </ul>', 'https://media.w3.org/2010/05/sintel/trailer_hd.mp4', 'www.react.rabbil.com'),
(3, 'Graphics Design', 'Graphic design is the process of visual communication and problem-solving through the use of typography.', 'https://img2.pngio.com/graphic-design-logo-png-picture-568857-graphic-design-logo-png-graphic-design-logo-png-497_398.png', 'Graphics Design Advance Course ', 'Graphic design is the process of visual communication and problem-solving through the use of typography, photography, iconography and illustration. The field is considered a subset of visual communication and communication design, but sometimes the term \"graphic design\" is used synonymously.', '87', '120', '  <ul>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                     </ul>', 'https://media.w3.org/2010/05/sintel/trailer_hd.mp4', 'www.react.rabbil.com'),
(4, 'Digital Marketing', 'Digital marketing is the component of marketing that utilizes internet and online based digital technologies', 'https://www.starwebmaker.com/images/digital-marketing.png', 'Digital Marketing Online Course', 'Digital marketing is the component of marketing that utilizes internet and online based digital technologies such as desktop computers, mobile phones and other digital media and platforms to promote products and services.', '100', '121', '  <ul>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                     </ul>', 'https://media.w3.org/2010/05/sintel/trailer_hd.mp4', 'www.react.rabbil.com'),
(5, 'SEO Engineering', 'Search engine optimization is the process of growing the quality and quantity of website traffic by increasing the visibility', 'https://image.freepik.com/free-vector/seo-elements-background-flat-style_23-2147764031.jpg', 'SEO Engineering Basic Course ', 'Search engine optimization is the process of growing the quality and quantity of website traffic by increasing the visibility of a website or a web page to users of a web search engine. SEO refers to the improvement of unpaid results and excludes direct traffic and the purchase of paid placement.', '120', '98', '  <ul>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                     </ul>', 'https://media.w3.org/2010/05/sintel/trailer_hd.mp4', 'www.react.rabbil.com'),
(6, 'Machine learning', 'Machine learning is the study of computer algorithms that improve automatically through experience. It is seen as a subset of artificial intelligence.', 'https://appia-dev.com/img/bg-img/machine.png', 'Machine learning Online Basic Course', 'Machine learning is an application of artificial intelligence (AI) that provides systems the ability to automatically learn and improve from experience without being explicitly programmed. Machine learning focuses on the development of computer programs that can access data and use it learn for themselves.', '100', '100', '  <ul>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                         <li className=\"serviceDescription\">Web Development Skill</li>                                     </ul>', 'https://media.w3.org/2010/05/sintel/trailer_hd.mp4', 'www.react.rabbil.com');

-- --------------------------------------------------------

--
-- Table structure for table `footer_table`
--

CREATE TABLE `footer_table` (
  `id` int(255) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `phone` varchar(1000) NOT NULL,
  `facebook` varchar(1000) NOT NULL,
  `youtube` varchar(1000) NOT NULL,
  `footer_credit` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `footer_table`
--

INSERT INTO `footer_table` (`id`, `address`, `email`, `phone`, `facebook`, `youtube`, `footer_credit`) VALUES
(1, '#79/6 Padma Residential Aria, 3rd Floor Front Side, Rajshahi', 'mmbmahidul@gmail.com', '01710611988', 'facebook.com', 'https://www.youtube.com/watch?v=wfGteTw323A', 'mmb.com © 2019-2020');

-- --------------------------------------------------------

--
-- Table structure for table `home_etc`
--

CREATE TABLE `home_etc` (
  `id` int(255) NOT NULL,
  `home_title` varchar(1000) NOT NULL,
  `home_subtitle` varchar(1000) NOT NULL,
  `tech_description` text NOT NULL,
  `total_project` varchar(1000) NOT NULL,
  `total_client` varchar(1000) NOT NULL,
  `video_description` text NOT NULL,
  `video_url` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_etc`
--

INSERT INTO `home_etc` (`id`, `home_title`, `home_subtitle`, `tech_description`, `total_project`, `total_client`, `video_description`, `video_url`) VALUES
(1, 'SOFTWARE ENGINEER D', 'Mobile & Web Application D', '<p>To build native android apps i use Java as well as kotline mainly. React JS is used for cross platform mobile application. I use MySQL database for relational database system. To build NoSQL application i use MongoDB.</p>\r\n\r\n<p>Firebase database system is used where it is necessary to provide realtime data flow facilities. I always build dynamic application. Admin panel is the heart of such kinds of application. I always try to provide sufficient features in admin panel to dominate application.</p>\r\n\r\n<p>According to client demand I use PHP OOP, CodeIgniter and Laravel to build admin panel section. Application security is a big deal for commercial application.I always ensure security portion of my application, moreover i build a security alert system, to notify admin when his system at risk.This data come from DataBase.</p>', '100', '100', 'First I analysis the requirement of project. According to the requirement i make a proper technical analysis, then i build a software architecture. According to the planning i start coding. Testing is also going on with coding. Final testing take place after finishing coding part. After successful implementation i provide 6 month free bug fixing service for corresponding project.', 'https://media.w3.org/2010/05/sintel/trailer_hd.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `information_etc`
--

CREATE TABLE `information_etc` (
  `id` int(255) NOT NULL,
  `about` text NOT NULL,
  `refund` text NOT NULL,
  `terms` text NOT NULL,
  `privacy` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `information_etc`
--

INSERT INTO `information_etc` (`id`, `about`, `refund`, `terms`, `privacy`) VALUES
(1, '<h1 className=\"serviceName\">Who i AM</h1>\r\n                            <hr/>\r\n<p className=\"serviceDescription\">I am a highly talented, experienced, professional and cooperative software engineer, I am working in programming and web world for more than 4 years .I assure you a wide range of quality IT services. Web development, mobile app development and UI design the major filed i am expert in. Moreover i have teaching passion. I makes video tutorial to share my knowledge. My over all skill makes me a complete software developer, so you can hire me for your projects </p>\r\n\r\n                            <h1 className=\"serviceName\">My Mission</h1>\r\n                            <hr/>\r\n <p className=\"serviceDescription\">My mission is to develop unique idea and quality software that will secure top ranking in marketplace, people\'s system and people\'s heart. Develop robust, secure, dynamic, responsive software for all platform (computer, tab, mobile phone). Provide top notch customer service, customization of our product according to customer demand and current technology. Planning advanced techniques for optimization, user experience and satisfaction of customer for our software. Planning flexible software that will not be bounded by any linguistic or regional restriction. I want to flourish software that can blow people\'s heart and soul </p>\r\n\r\n<h1 className=\"serviceName\">My Vision</h1>\r\n                            <hr/>\r\n <p className=\"serviceDescription\">My vision is to brand our firm as the best firm in the world. Secure the top place among software providers for both local and international market. Brand our country as the best software provider country. Create employment for youth on the field of both software and corporate level. Provide our country and world with superior software. Nurture youths to be highly skilled software engineers </p>\r\n                        ', '<ul>\r\n<li>First 25 Days Money Back!</li>\r\n<li>THIS IS NOT A BUY-AND-TRY PRODUCT</li>\r\n                                <li>Refund is applicable for software and plugins, if the products aren\'t functioning, producing errors or you haven\'t received access to them at any time during the first 30 days after purchase, please get in touch with our support team immediately. If we are unable to provide you a working solution within 3 business days, simply delete all digital files and license keys you obtained from us, and ask for a full refund. You will get your refund processed within 30 days or early. That\'s a firm promise and commitment.</li>\r\n<li>After 30 Days : There is no refund offered after the first 30 days.</li>\r\n<li>To serve you and others better in the future, we require that you tell us why you want a refund and provide us with an opportunity to help you fix the issue. We want satisfied customers.</li>\r\n                                <li>Please remember that asking for a refund but continuing to use products purchased from us is the same thing as stealing and also violate applicable intellectual property rights law.</li>\r\n </ul>', '<p className=\"serviceDescription\"> Unless you have entered into an express written contract with this website to the contrary, visitors, viewers, subscribers, members, affiliates, or customers have no right to use this information in a commercial or public setting; they have no right to broadcast it, copy it, save it, print it, sell it, or publish any portions of the content of this website. By accessing the contents of this website, you agree to this condition of access and you acknowledge that any unauthorized use is unlawful and may subject you to civil or criminal penalties. Again, Visitor has no rights whatsoever to use the content of, or portions thereof, including its databases, invisible pages, linked pages, underlying code, or other intellectual property the site may contain, for any reason or for any use whatsoever. In recognition of the fact that it may be difficult to quantify the exact damages arising from infringement of this provision, Visitor agrees to compensate the owners of this site with liquidated damages in the amount of U.S. $100,000, or, if it can be calculated, the actual costs and actual damages for breach of this provision, whichever is greater. Visitor warrants that he or she understands that accepting this provision is a condition of accessing this site and that accessing this site constitutes acceptance.</p>\r\n                       ', '<p className=\"serviceDescription\">\r\n                                Unless you have entered into an express written contract with this website to the contrary, visitors, viewers, subscribers, members, affiliates, or customers have no right to use this information in a commercial or public setting; they have no right to broadcast it, copy it, save it, print it, sell it, or publish any portions of the content of this website. By accessing the contents of this website, you agree to this condition of access and you acknowledge that any unauthorized use is unlawful and may subject you to civil or criminal penalties. Again, Visitor has no rights whatsoever to use the content of, or portions thereof, including its databases, invisible pages, linked pages, underlying code, or other intellectual property the site may contain, for any reason or for any use whatsoever. In recognition of the fact that it may be difficult to quantify the exact damages arising from infringement of this provision, Visitor agrees to compensate the owners of this site with liquidated damages in the amount of U.S. $100,000, or, if it can be calculated, the actual costs and actual damages for breach of this provision, whichever is greater. Visitor warrants that he or she understands that accepting this provision is a condition of accessing this site and that accessing this site constitutes acceptance.\r\n                            </p>');

-- --------------------------------------------------------

--
-- Table structure for table `projects_table`
--

CREATE TABLE `projects_table` (
  `id` int(255) NOT NULL,
  `img_one` varchar(1000) NOT NULL,
  `img_two` varchar(1000) NOT NULL,
  `project_name` varchar(1000) NOT NULL,
  `short_description` varchar(1000) NOT NULL,
  `project_features` text NOT NULL,
  `live_preview` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects_table`
--

INSERT INTO `projects_table` (`id`, `img_one`, `img_two`, `project_name`, `short_description`, `project_features`, `live_preview`) VALUES
(1, 'https://www.protranslate.net/blog/wp-content/uploads/2017/02/ecommerce-1000x600.png', 'https://globalcore.marketing/wp-content/uploads/2020/01/Ecommerce-Shopping-Infographics.png', 'Bazar Mela', 'Complete e-commerce app solution for selling fruit online. According to build quality, data loading speed this is the best one', '<ul>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                             </ul>', 'http://http//rabbil.com/'),
(2, 'https://cdn.wedevs.com/uploads/2019/01/e-commerce-business-catering-global-audience.png', 'https://dmi-uploads.imgix.net/general/5-of-The-Best-E-commerce-Platforms_blog.gif?fm=jpg&ixlib=php-1.1.0&q=3&w=2060&s=7b0c08042cb9bcac6b44be7bf04d80b5', 'Online Shop', 'Complete e-commerce app solution for selling fruit online. According to build quality, data loading speed this is the best one', '<ul>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                             </ul>', 'http://http//rabbil.com/'),
(3, 'https://thumbs.dreamstime.com/b/online-grocery-store-online-grocery-store-shopping-people-cart-supermarket-baskets-online-market-app-vector-concept-157461867.jpg', 'https://image.freepik.com/free-vector/grocery-delivery-concept-order-food-online_113065-539.jpg', 'Foll Bazzar', 'Complete e-commerce app solution for selling fruit online. According to build quality, data loading speed this is the best one', '<ul>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                             </ul>', 'http://http//rabbil.com/'),
(4, 'https://cdn2.f-cdn.com/contestentries/1414518/30265814/5b9ad3e05522e_thumb900.jpg', 'https://fastcode.space/wp-content/uploads/2019/11/Golden-Gym-Logo-Template-Free-Logo-Design-Template-.jpg', 'Retro Gym ', 'Online gym management system. According to build quality, data loading speed this is the best one', '<ul>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                             </ul>', 'http://http//rabbil.com/'),
(5, 'https://cdn2.f-cdn.com/contestentries/1172613/12117858/59f9c9af82011_thumb900.jpg', 'https://media4.s-nbcnews.com/i/newscms/2018_42/2606816/181016-supermarket-aisle-se-350p_ca106b1f79df29654258020b5e726fb9.jpg', 'Super Shop', 'Complete e-commerce app solution for grocery online. According to build quality, data loading speed this is the best one', '<ul>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                                 <li className=\"serviceDescription\">Unlimited Dynamic Product Category</li>\r\n                             </ul>', 'http://http//rabbil.com/');

-- --------------------------------------------------------

--
-- Table structure for table `services_table`
--

CREATE TABLE `services_table` (
  `id` int(255) NOT NULL,
  `service_name` varchar(1000) NOT NULL,
  `service_description` varchar(1000) NOT NULL,
  `service_logo` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services_table`
--

INSERT INTO `services_table` (`id`, `service_name`, `service_description`, `service_logo`) VALUES
(1, 'Web Development', 'I design and develop static and dynamic web sites as per your requirements as we believe, “web is world’s next home”.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTmbSM2LrO4ShKQ0kV5Qh4BclMOLLYHBBr05A&usqp=CAU'),
(2, 'Mobile Development', 'I design and develop static and dynamic web sites as per your requirements as we believe, “web is world’s next home”.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSVne8DC-kJW7EbDG6m06tHL7hmsFPv0isTXA&usqp=CAU'),
(3, 'Graphics Design', 'I design and develop static and dynamic web sites as per your requirements as we believe, “web is world’s next home”.', 'https://cdn.onlinewebfonts.com/svg/img_463275.png?fbclid=IwAR26ssoMJVPjkEyY6UA9YwcuUU_hfDTTQIcWcsp1sdsAu1YFGP3C1n4RTNQ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chart_data`
--
ALTER TABLE `chart_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_review`
--
ALTER TABLE `client_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_table`
--
ALTER TABLE `contact_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_table`
--
ALTER TABLE `course_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_table`
--
ALTER TABLE `footer_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_etc`
--
ALTER TABLE `home_etc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `information_etc`
--
ALTER TABLE `information_etc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects_table`
--
ALTER TABLE `projects_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services_table`
--
ALTER TABLE `services_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chart_data`
--
ALTER TABLE `chart_data`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `client_review`
--
ALTER TABLE `client_review`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact_table`
--
ALTER TABLE `contact_table`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `course_table`
--
ALTER TABLE `course_table`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `footer_table`
--
ALTER TABLE `footer_table`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_etc`
--
ALTER TABLE `home_etc`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `information_etc`
--
ALTER TABLE `information_etc`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `projects_table`
--
ALTER TABLE `projects_table`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `services_table`
--
ALTER TABLE `services_table`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
