-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2023 at 06:29 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourwise`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `c_text` text NOT NULL,
  `c_image` varchar(255) DEFAULT NULL,
  `u_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `c_text`, `c_image`, `u_id`, `pro_id`) VALUES
(5, 'hi bolo', 'uploads/dunhinda.jpg', 4, 7),
(9, 'The Kathiresan Pillayar Temple is not just a tourist destination; it\'s a journey into the heart of Sri Lanka\'s spirituality and cultural identity', 'uploads/tample.jpeg', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `admin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `title`, `description`, `admin_id`) VALUES
(1, 'Carnival in Nuwara eliya', 'There was a carnival in Nuwara Eliya in April 2019. The Grand Hotel organized the carnival, which also included an army food court, the largest potato halva launch, and a super cross.', 5);

-- --------------------------------------------------------

--
-- Table structure for table `map`
--

CREATE TABLE `map` (
  `id` int(11) NOT NULL,
  `lat` decimal(10,8) DEFAULT NULL,
  `lng` decimal(11,8) DEFAULT NULL,
  `plcName` varchar(255) DEFAULT NULL,
  `p_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `map`
--

INSERT INTO `map` (`id`, `lat`, `lng`, `plcName`, `p_id`) VALUES
(1, '6.88398276', '79.85878634', 'Kathiresan Pillayar Temple', 1),
(2, '6.92510482', '79.84887051', 'Galle Face', 1),
(3, '6.93691699', '79.85237674', 'Pettah', 1),
(4, '6.91693816', '79.85707475', 'Gangarama Temple', 1),
(5, '6.91097358', '79.85866255', 'National Museum Colombo', 1),
(6, '6.91347964', '79.86193018', 'Viharamahadevi Park', 1),
(7, '6.92960434', '79.85522487', 'Beira Lake', 1),
(8, '6.93613270', '79.85244366', 'Dutch Museum', 1),
(9, '8.57751099', '81.24357890', 'Fort Fredrick', 3),
(10, '8.58265577', '81.24559163', 'Koneswaram Temple', 3),
(11, '8.62802823', '81.19512223', 'Kanniya Hot Springs', 3),
(12, '8.58345717', '81.24581596', 'Swami Rock', 3),
(13, '8.51147903', '81.21294255', 'Marble Beach', 3),
(14, '8.60859194', '81.22284524', 'Uppuveli Beach', 3),
(15, '8.93683024', '81.00646686', 'Arisimale Beach', 3),
(16, '8.59503725', '81.40780495', 'Trincomalee Beach', 3),
(17, '7.92238254', '81.56586374', 'Pasikuda', 3),
(18, '6.83923139', '81.82842465', 'Arugam Bay', 3),
(19, '6.75913219', '81.80079064', 'Kumana National Park', 3),
(20, '6.03056336', '80.21519417', 'Galle Fort', 6),
(21, '6.02475335', '80.21979525', 'Galle Fort Lighthouse', 6),
(22, '6.05943957', '80.23948299', 'Jungle beach', 6),
(23, '5.94818403', '80.53520520', 'Old dutch market', 6),
(24, '6.02663114', '80.21919446', 'Historical mansion museum', 6),
(25, '6.03078570', '80.28197381', 'Japanese peace Pagoda', 6),
(26, '6.13872635', '80.09729358', 'Hikkaduwa beach', 6),
(27, '6.02829508', '80.21906927', 'Old gate', 6),
(28, '9.76339046', '79.88771801', 'Casuarina beach', 5),
(29, '9.67907428', '80.00693317', 'Jaffna Fort', 5),
(30, '9.66242905', '80.01354055', 'Jaffna Library', 5),
(31, '9.51815293', '79.68612208', 'Delft Island', 5),
(32, '9.78665571', '79.94324197', 'Dambakola Patuna', 5),
(33, '9.82046984', '80.13211975', 'Akkarai Beach', 5),
(34, '7.29359570', '80.64211259', 'Temple of the Tooth', 2),
(35, '7.29416396', '80.64325100', 'International Buddhist Museum', 2),
(36, '7.33104802', '80.44076211', 'Pinnawala Elephant Orphanage', 2),
(37, '7.25905945', '80.59638997', 'Peradeniya Botanical Gardens', 2),
(38, '7.27358133', '80.64546504', 'Ceylon Tea Museum', 2),
(39, '7.29068248', '80.64277435', 'Kandy Lake', 2),
(40, '7.29332783', '80.64108403', 'National Museum of Kandy', 2),
(41, '7.23425699', '80.56418901', 'Lankatilaka Temple', 2),
(42, '7.35023288', '80.60736171', 'Knuckles Mountain Range', 2),
(43, '7.58196316', '81.08835655', 'Maduru Oya National Park', 2),
(44, '6.96940758', '80.76913236', 'Victoria Park', 2),
(45, '6.92681920', '80.82187172', 'Hakgala Garden', 2),
(46, '6.94527089', '80.73879786', 'Nanu Oya Falls', 2),
(47, '7.00291051', '80.87880359', 'Lover\'s Leap', 2),
(48, '6.81032454', '80.50333634', 'Adam\'s Peak', 2),
(49, '6.87267855', '80.80570405', 'Ambewela Farm', 2),
(50, '6.94928704', '80.50198646', 'Aberdeen Falls', 2),
(51, '7.00159980', '80.77522150', 'Pidurutalagala', 2),
(52, '7.95712629', '80.76051008', 'Sigiriya Rock', 2),
(53, '7.96744236', '80.76172098', 'Pidurangala Rock', 2),
(54, '6.86581061', '81.06380749', 'Little Adam\'s Peak', 7),
(55, '6.87701747', '81.06101816', 'Nine Arches Bridge', 7),
(56, '6.86528500', '81.04472447', 'Ravana Falls', 7),
(57, '6.86443782', '81.04917309', 'Ella Rock', 7),
(58, '7.01782198', '81.06416977', 'Dunhinda Falls', 7),
(59, '8.34659297', '80.39805987', 'Lovamahapaya', 4),
(60, '8.35022036', '80.39658327', 'Ruwanwelisaya', 4),
(61, '8.35539655', '80.39647163', 'Thuparamaya', 4),
(62, '8.34481985', '80.39725498', 'Sri Maha Bodhi', 4),
(63, '8.34763238', '80.39361449', 'Archaeological Museum', 4),
(64, '8.37046049', '80.39112803', 'Ratnaprasada', 4),
(65, '8.33522191', '80.39160343', 'Isurumuniya Royal Temple', 4),
(66, '8.35216327', '80.40485191', 'Jetavanaramaya Monastery', 4),
(67, '7.90351535', '80.97552627', 'Parakrama Samudra', 4),
(68, '8.01713166', '80.84681607', 'Minneriya National Park', 4),
(69, '8.35742281', '80.49995656', 'Mihintale', 4),
(70, '8.47826711', '80.09022813', 'Wilpattu National Park', 4),
(71, '8.36941710', '80.39526670', 'Abhayagiri Vihara', 4),
(72, '7.94785743', '81.00136174', 'Dalada Maluwa', 4),
(73, '7.94270919', '81.00091204', 'The Royal Place of King Parakramabahu', 4),
(74, '7.93071870', '80.92364046', 'Angammedilla National Park', 4);

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `pcId` varchar(20) NOT NULL,
  `pc_name` varchar(250) NOT NULL,
  `pcImg` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`pcId`, `pc_name`, `pcImg`, `description`, `p_id`) VALUES
('pc001', 'Kathiresan Pillayar Temple', 'Kathiresan Pillayar temple.jpg', 'Built more than a hundred years ago, Kathiresan Pillaiyar Temple is an old temple which is dedicated to the war god of Hindu mythology God Murugan or Skanda. The temple is located on Galle Road in Colombo in Sri Lanka and is well known for its separate shrines dedicated to various deities and unique architecture which adorns colorful images of various gods of Hindu legend.', 1),
('pc002', 'Colombo Fort', 'Colombo Fort.jpg', 'The Fort area in Colombo has a busy harbor, the stock exchange, and the World Trade Centre, which is the country\'s biggest building. Apart from that, this area is rich in political and cultural heritage. However, due to the turmoil of the Civil War, large parts of it are shut down. Nevertheless, this dynamic district offers everything from food and heritage to nightlife and casinos.', 1),
('pc003', 'Pettah Market', 'pettah-market.jpg', 'The Pettah Market or Manning Market is an open market in the suburb of Pettah in the city of Colombo, Sri Lanka. Being one of Colombo\'s busiest places, the area may seem a little chaotic at first glance but if you know what to get on which street then you are going to walk out with some cool stuff at surprisingly low prices.', 1),
('pc004', 'Galle Face Green', 'Galle-Face-Green.jpg', 'The Galle Face Green is a beautiful beach park that covers an area of almost five hectares and is in the fort area of Sri Lanka\'s capital, Colombo. Enjoy yourself and forget the worries of your day by indulging in a vast span of activities like kite flying, fishing, football, beach volleyball, jogging, or just taking a relaxing stroll by the beach.', 1),
('pc005', 'Gangaramaya Temple', 'Gangaramaya temple.jpg', 'The Gangaramaya Temple is a unique blend of architecture and culture and a place for Buddhist learning and worship. It also effectively takes part in social welfare. It was built first in the 19th century and started by the famous scholar-monk Hikkaduwa Sri Sumangala Nayaka Thera. The temple is a unique blend of architectural styles from Sri Lanka, Thailand, Chinese, and India.', 1),
('pc006', 'National Museum of Colombo', 'National Museum of Colombo.jpg', 'The National Museum of Colombo is a two-story building that is the largest museum in Sri Lanka. It dates back to 1877 and has a colonial vibe with a rich history covering 2500 years. The founder of the museum was William Henry Gregory, British Governor of Ceylon from 1872–1877. The building’s artworks have an essence of the Dutch, Portuguese and British Colonial times, along with the display of significant ancient and local artifacts, farming methods, tools, and traditional craft.', 1),
('pc007', 'Viharamahadevi Park', 'ViharaMahadevi.jpg', 'Located in the busy and crowded city of Colombo is the beautiful Viharamahadevi Park. This gorgeous park is located quite close to the National Museum and is one of the biggest and oldest parks of Sri Lanka. The park also offers breathtaking views of sunrise and sunset for a truly memorable experience. The Viharamahadevi Park was initially known as the Victoria Park and was renamed after the mother of King Dutugemunu.', 1),
('pc008', 'Beira Lake', 'Beira lake.jpg', 'One of the most famous landmarks in Sri Lanka is Beira Lake, which is in the developed capital city of Colombo. Beira Lake is a quiet escape into the serene slumber of the splendid city, which makes it a great place to relax, and it is recommended for couples. During the colonial era of the Portuguese, Dutch and the English the lake was used for a wide variety of purposes. It still retains its Portuguese name. It is connected to many intricate canals which provided an easy way of transporting goods within the city and suburban cities.', 1),
('pc009', 'Colombo Dutch Museum', 'Colombo Dutch museum.jpg', 'The Colombo Dutch Museum is a beautiful two-story building which is a storehouse of some fantastic architecture and history of Dutch colonial rule of Sri Lanka. The Colombo Dutch museum was initially a residence of the Dutch governor- Thomas Van Rhee, and it was inside the walls of this museum that a treaty was signed with the Dutch.The building has been used for many different purposes over the years. It was a teacher training college and an institute for the instruction of clergymen between 1696 and 1796.', 1),
('pc010', 'National Zoological Garden', 'National zoo.jpg', 'The National Zoological Garden of Sri Lanka is also known as the Colombo Zoo or the Dehiwala Zoo. This sprawling zoo is home to over 300 different species of animals, birds, reptiles, and fish from all over the world. All this makes it a popular destination for both locals and tourists. The National Zoological Garden of Sri Lanka stretches over an area of almost 30 acres. One of the main focuses of the zoo is to look after the conservation of the animals.', 1),
('pc011', 'World Trade Center', 'world trade center.jpg', 'Colombo is famous for many old colonial buildings that clustered mostly in the old Fort area, and the most famous of them are the two iconic skyscrapers, the twin towers of the World Trade Center constructed within six years, i.e. from 1990-1996.', 1),
('pc012', 'Kelaniya Raja Maha Vihara', 'Kelaniya Raja maha vihara.jpg', 'Kelaniya Raja Maha Vihara is a Buddhist temple built in the 5th century. It is believed to have been visited by the Buddha on his third visit to the country along with 500 monks after the enlightenment of 8 years, back in 500 BCE. The temple holds the heritage designation of an Archaeological Protected Monument in Sri Lanka ever since 2007 thus holds great historical importance not only to Buddhists but also for all Sri Lankans.', 1),
('pc013', 'Panadura Beach', 'Panadura beach.jpg', 'Panadura is in the Western Province of Sri Lanka, located 27 km from the capital city of Colombo. Panadura is a large town bustling with people and the joys of local life in Sri Lanka. The town hosts warm tight-knit moments that often reflect the values of a community.', 1),
('pc014', 'R. Premadasa International Sta', 'R Premadasa international cricket stadium.jpg', 'The R. Premadasa International Stadium, earlier known as Kettarama Cricket Stadium till June 1994 was named after Former Sri Lanka president Ranasinghe Premadasa. It was opened on February 2, 1986, and is on Khettarama Road, Maligawatta, Colombo, Sri Lanka. Ever since it has hosted many test matches, T20s, and ODI\'s. It had its seating capacity increased from 14,000 to 40,000, and the media-box accommodates 200 journalists, and other upgrades.', 1),
('pc015', 'Sathutu Uyana', 'Sathutu Uyana.webp', 'Sathutu Uyana is a municipality park located in the Lankan capital of Colombo. Spread over 3 acres of land, this park has a number of pathways and recreational space for the public to enjoy. The park is open during the evening time and is a great way to spend some time away from the hustle and bustle of the city life. There are many well-manicured walking trails here where you can go for an evening walk/jog. Bring your kids so that they can play the park’s lawns.', 1),
('pc016', 'Temple of the Tooth', 'Temple of the Tooth.jpg', 'Sri Dalada Maligawa is the Sinhalese name for this holy shrine. Famously called the Temple of the Sacred Tooth Relic, it is touted to be the most sacred Buddhist temple in the whole world. It houses the tooth of Buddha nestled in a golden chamber and is within the premises of the royal palace complex (formerly a princely state). Kandy is a UNESCO World Heritage Site, and it is said that whichever state holds the tooth relic, maintains an essential place in the governance of the country.', 2),
('pc017', 'International Buddhist Museum', 'World Buddhist museum.jpg', 'The International Buddhist Museum or World Buddhist Museum is the first of its kind in the world and is in the cultural and administrative capital of Sri Lanka Kandy. It is nestled in the complex that once served as the King’s residence along with the National Museum and Temple of the Tooth, hence its structure exhibits royalty, grandeur, and elegance at its best. It compiles Buddhism, the extensive history of its teachings, and the depth of knowledge through scrolls, artifacts, and souvenirs from all over the world. The museum was established with the contributions of 17 countries such as Sri Lanka, India, Bangladesh, Nepal, Pakistan, Japan, China, Korea, Indonesia, Thailand, Myanmar, Laos, Vietnam, Cambodia, Malaysia, Bhutan, and Afghanistan.', 2),
('pc018', 'Pinnawala Elephant Orphanage', 'Pinnawala Elephant orphanage.jpg', 'The Pinnawala Elephant Orphanage was established by the Sri Lankan Department of Wildlife Conservation in 1975 for feeding and providing care and sanctuary to orphaned baby elephants that were found in the wild. The orphanage was located at the Wilpattu National Park, then shifted to the tourist complex at Bentota and then to the Dehiwala Zoo. From the Zoo it was shifted to Pinnawala village on a 25-acre coconut plantation adjacent to the Maha Oya River. The primary residential care area is on the east side of Highway B199, Rambukkana Road. The main site also has some restaurants and refreshment stands, and management buildings including sleeping sheds and veterinary facilities. The elephant bathing and viewing area along the Oya River is directly opposite on the west side of the highway', 2),
('pc019', 'Peradeniya Botanical Gardens', 'Royal botanical gardens Peradeniya.webp', 'The most prominent garden in Sri Lanka, Royal Botanical Gardens is situated 5 km west of Kandy. Colorful orchids, pleasant winds, tall trees. and proximity with the Mahaweli river is a beautiful “flora and aqua” treat for the eyes. The gardens are home to more than 4000 species of plants, including orchids, spices, medicinal plants, and palm trees. It is a 147 acre - natural elegance holding landscaped gardens and scenic beauty, making it a photographer’s dream.', 2),
('pc020', 'Ceylon Tea Museum', 'Ceylon tea museum.jpg', 'Among the many names given to this island country like Lanka, Lakdiva, Serendib, Sri Lanka was also named Ceylon - during British Colonialism - reminding us of the famous Ceylon tea that origins in Sri Lanka. Situated at Hantana, 3 KM away from main Kandy city, Ceylon Tea Museum was structured in 1925 as the former Hantana Tea factory. Later in 1998, this tea factory was converted into the famous Ceylon Tea Museum.The Ceylon Tea Museum at Hantane, three kilometres from Kandy city is served by a motorable road that circles the museum, provides easy access and adequate parking facilities for cars and tourist coaches. The museum consists of four floors. The ground floor and the second floor exhibit very old items of machinery and the first floor consist of a library and an auditorium with facilities for audio visual presentations. The third floor is allocated to tea sales outlets, where a selection of Sri Lanka\'s fine tea is available. The entire top floor is a tea cafe.', 2),
('pc021', 'Kandy Lake', 'Kandy Lake.jpg', 'The sea of Milk or Kiri Muhuda as it is dearly called by the people is an artificial lake bordering the Royal Palace and Royal Gardens. The lake corresponds to the monastery, royalty, and overall culture and beliefs of the people; it has elements of historical importance associated with it as it. Boat rides on the lake are a fun way to spend an evening here. There are local boat operators who offer tours of Kandy Lake and thereby a view of the royal city and its natural scenic beauty.', 2),
('pc022', 'National Museum of Kandy', 'National Museum of Kandy.jpg', 'Sri Lankan history and heritage, which has come a long way over the decades, is rightly preserved in the National Museum in Kandy, Sri Lanka. Formerly known as Palle Vahala, the museum earlier used to serve as accommodation for royal guests. The Palle Vahala (lower palace) or Meda Vahala (middle palace) was constructed during the Sri Vickrama Rajasingha era and was used as the quarters of the queens of King of Kandy. This building has been built according to the architectural features of Kandy period. It was used as a depository for historical artifacts made by the Kandy Art Association which was established in 1882 and artisans of Matale. The museum was opened to the public in 1942.', 2),
('pc023', 'Lankatilaka Temple', 'Lankatilaka Temple.jpg', 'The famous Lankatilaka temple of the Gampola period, attached with a rich history and incredible architecture, portrays the essence of Sri Lanka from the 14th century during the Gampola reign. It is located in Kandy near the Gadaladeniya Vihara Buddhist temple. The Lankatilaka temple was built on Panhalgala rock, a natural rock, and has three sections - the Temple building (which has the Buddha Image house in the east and Temples of God in the west), the Stupa, and the Bo tree. Various rock inscriptions in Sinhalese and Tamil can be found defining the history of the land and the temple.', 2),
('pc024', 'Knuckles Mountain Range', 'knuckles-mountain-range.jpg', 'Knuckles Mountain range is an unusual terrestrial landform located in Matale and Kandy, in Central Province, Sri Lanka. The name was given by the British, and the locals call this range \'Dumbara Kanduvetiya\', which means mist-laden mountains. The knuckles Mountain Range is called so because of its uncanny resemblance to the fingers of a clenched fist. The range is a World Heritage Conservation Area and is relatively untouched. The range features 34 peaks, ranging between 900 meters to 2000 meters. Five of these mountain peaks make the formation of a clenched fist.', 2),
('pc025', 'Maduru Oya National Park', 'Maduru oya national park.JPG', 'Maduru Oya National Park is home to the two main aspects of Sri Lanka’s tourism—plenty of diverse wildlife and fascinating Buddhist ruins. The park was established in 1983 and also shelters some members of the indigenous Vedda tribe. With a population numbering more than a hundred, Asian elephants are the best feature of this national park. Maduru Oya National Park is a serene location in the most real sense of the word—often, you might be the only tourists around, making it seem like a private tour of the country’s spectacular landscape and wildlife.', 2),
('pc026', 'Victoria Park', 'Victoria park.jpg', 'Victoria Park is a well-maintained park situated in the heart of Nuwara Eliya. It is the perfect place for family outings where the tourists can enjoy watching exotic birds, and some rare flowering plants. The park also has a children’s play area, and some rides, that make the place enjoyable for all ages alike. The pretty flowers, serene ponds, and many other scenic spots in the park would also make it an excellent location for clicking beautiful photographs.', 2),
('pc027', 'Hakgala Garden', 'hakgala botanical garden.webp', 'The Hakgala Botanical Garden is the second largest botanical garden in Sri Lanka. It is a part of the Hakgala Strict Nature Reserve and was established in 1861. It has a wide variety of plants and some exotic animal species with the entire garden divided into different sections, dedicated to different plant species, like ferns, cacti, orchids, etc. It is situated on the Badulla Highway and is about 5 kilometers away from the city of Nuwara Eliya. It is said that the Hakgala Gardens was in fact, \'Ashok Vatika\', from the Hindu epic \'The Ramayana\'. Since these gardens are on elevated ground, the climate mostly ranges from cool to moderately hot.', 2),
('pc028', 'Nanu Oya Falls', 'Nanuoya falls.jpg', 'Located about 6 kilometers from Nuwara Eliya, Nanuoya Waterfall is about 60 meters high and streams down a series of 25 steps. Eventually, the water flows down to join the Mahaweli and Kotmale rivers and is one of the perfect spots to spend some relaxing time; with lush green surroundings, calm breeze, freezing water (which people usually take a dip in when they visit the waterfall), and beautiful scenic views.', 2),
('pc029', 'Lover\'s Leap', 'Lovers leap.jpg', 'The Lover\'s Leap is a beautiful waterfall nestled amongst the tea plantation hills. Tourists can visit this place when they visit the Pedro Tea Estate since the waterfalls are nearby. The waterfall has many myths and stories associated with it, which makes it even more exciting and attractive. Tourists have to hike up the hill to get to the waterfalls which are one of the lesser-known and lesser-visited tourist spots in Nuwara Eliya, so tourists can leisurely explore the place. It is about 3.5 kilometers away from the central city and easily accessible via local transport.', 2),
('pc030', 'Adam\'s Peak', 'adam\'s peak - Copy.jpg', 'As one of the most famous pilgrimage sites in the Indian subcontinent, Adam’s Peak is a 7,359 feet tall mountain in Sri Lanka, frequently visited by people of almost all major religions. It is widely known for Sri Pada, a foot-shaped indentation at the summit of the pyramid-like mountain. Also called the sacred footprint, the Buddhists believe that it is the footprint of Lord Buddha, the Hindus as that of Shiva, the Muslims as Adam’s, and the Christians as that of St. Thomas the Apostle.', 2),
('pc031', 'Ambewela Farm', 'Ambewela Farm.jpg', 'The farm, also known as the New Zealand farm, is a hub of organic countryside activities in the pristine landscape of Ambewela hill station. The lush green fields, rugged mountains, and the bright blue sky give Ambewela the title of \'Little New Zealand\'. The drive is a pleasant one, with scenic views of vegetable farms, lakes, and forests. A famous attraction in this area is World\'s End, which is a cliff with an immense depth of more than 1200 meters. This thrilling sport is often used by visitors to click pictures.', 2),
('pc032', 'Aberdeen Falls', 'Aberdeen falls.jpg', 'Named after a tea plantation located nearby in the Nuwara Eliya district in Sri Lanka, Aberdeen Falls is a spectacular sight with the waterfall surrounded by enchanting greenery. While the trek to the bottom and back up from it may not be such an easy task, the deep pool resulting from the water streaming from the waterfall is an ideal place to swim; especially with the surrounding rocks and greens dotting the place that are extremely pleasant to the eye.', 2),
('pc033', 'Pidurutalagala', 'pidurutalagala.jpg', 'Locally known as Mount Pedro, Pidurutalagala is the tallest mountain peak in the country. With a height of 2524 m, the peak can be seen from the entire Central Province of Sri Lanka. The peak also serves as a base for the country’s armed forces’ radar system. It is not accessible by the general public.', 2),
('pc034', 'Sigiriya Rock', 'Sigiriya Rock.jpg', 'Sigiriya Rock or the Lion Rock is an ancient fort located in the Matale District in central Sri Lanka. It is a UNESCO World Heritage Site. It is in the Matale District of Central Sri Lanka and lies between the towns of Dambulla and Habarane at the height of 370 meters. It consists of a citadel and has ruins of palaces, the Lion Gate, gardens, moats, the Mirror Wall, and many beautiful frescoes (paintings made in wet plaster on walls). The place got its name from the Lion claws, carved at the entrance of the Lion Gate. You can reach the Sigiriya Fortress either by bus or by train, from the main towns of Dambulla or Habarane.', 2),
('pc035', 'Pidurangala Rock', 'PIdurangala rock.jpg', 'The Pidurangala Rock is a few kilometers away from the famous UNESCO site, the Sigiriya Rock. It is known for the view of Sigiriya Rock from the top of the rock, the white temple situated at the base of the cliff, and the enormous reclining Buddha statue located under an ancient boulder.', 2),
('pc036', 'Fort Frederick', 'Fort Frederick.jpg', 'In the coastal town of Trincomalee is the beautiful Fort Frederick which was built in the 17th century by the Portuguese and was later fully completed by the year 1624. The Fort has an exciting appeal to it as it was built on the Swami Rock-Konamamala which was formed by the debris and remains of the famous Hindu Koneswaram temple, which was also known as a temple of a thousand pillars.', 3),
('pc037', 'Koneswaram temple', 'Koneswaram temple.jpg', 'The Koneswaram temple is one of the main highlights of the east coast of Sri Lanka in Trincomalee. The temple is located high above the bay, and you can view the breathtaking and awe-inspiring scenery on all sides. The site is a religious pilgrimage for the Hindus and is also known as the Kailasa of the South. The Koneswaram temple is one of the five “Pancha Ishwarams” (abodes of Shiva) which has been built to worship Lord Shiva- the supreme God of Hinduism.', 3),
('pc038', 'Kanniya hot springs', 'Kanniya hot springs.webp', 'The Kanniya Hot Springs is on the east coast of Sri Lanka in Trincomalee and includes a series of seven square-shaped wells each with a depth of about four feet. The temperature of the water at these hot springs varies between wells, but the average temperature is warm to hot. These hot springs are an example of nature in their purest form where the water from the well is believed to have healing properties. The water in each of the wells is not very deep, and one can see the bottom of the well. The depth of the well is such that the water will run out by drawing 10-15 buckets from it.', 3),
('pc039', 'Swami rock', 'Swami rock.jpg', 'Nicknamed Lovers’ Leap, Swami Rock is in the port town of Trincomalee. It is best known for the Koneswaram Kovil, a famous Hindu temple of the country that is perched atop it. The Portuguese initially destroyed the temple in the 17th century and rebuilt it three centuries later. It is most world-renowned for spotting blue whales.', 3),
('pc040', 'Marble Beach', 'Marble beach.jpg', 'Marble beach is one of the most amazing beaches on the Sri Lankan east coast. This white sand beach is said to be one of the cleanest beaches, which is also a great place for solo travel. With an array of activities, the beach also offers a line of open restaurants. With a small island nestled here, the beach is also frequented by endemic bird and mammal species of birds and mammals. The beach also has a parking space.', 3),
('pc041', 'Uppuveli beach', 'Uppuveli beach.jpg', 'Located in Trincomalee District, Uppuveli Beach is a famous tourist spot. The beach also has various local food options, especially seafood. Ever since the beach witnessed the 2004 Tsunami tragedy it has had declining tourism. Nonetheless, today, these crystal waters offer many activities such as water skiing and wakeboarding.A beautiful sandy beach with amazing palms and wide coastline is located north of Trincomalee. You can get here by bus or auto rickshaw, takes just 10-15 minutes. This is a great place for active leisure among youth, as well as swimming and sunbathing.', 3),
('pc042', 'Arisimale beach', 'Arisimale beach.jpg', 'Located just a bit outside of Trincomalee, Arisimale Beach is one of the most visited beaches in the locality. Surrounded by greenery and mountains, although small, the beach is a beautiful getaway. A great place to view sunsets, the beach offers an array of food and drink options. Holding a navy camp close by, the place also has a parking space nearby.', 3),
('pc043', 'Trincomalee Beach', 'Trincomalee beach.webp', 'Trincomalee beach is one of the most beautiful Sri Lankan beaches. Located in Trincomalee town, the beach is known for its beauty, hygiene, and clean waters. With multiple foods and drink options, Trincomalee beach is a great place to witness fishermen at work.Besides the beach, Trincomalee is close to attractions of historical and religious significance. You could also indulge in boat riding. On the whole, if you’re looking for an incredibly vibrant destination in Sri Lanka, Trincomalee beach is the place to visit.', 3),
('pc044', 'Pasikuda', 'pasikuda.jpg', 'Pasikuda is a Sri Lankan resort town situated on the fringes of the Indian Ocean. Pasikuda is renowned for the stunning Pasikuda Beach with its sparkling blue waters. This little beach town has a shallow coastline which is one of the longest in the world. One can wade for considerable distances into the ocean due to the reasonably weak currents here. The coastal reefs enhance the beauty of the beach. The Mari Amman temple at Pasikuda is around seven centuries old and frequently visited by locals. The Batticaloa Dutch Fort, Batticaloa Lagoon, and the ancient city of Polonnaruwa are some distance away from the town.', 3),
('pc045', 'Arugam Bay', 'Arugam Bay.jpg', 'The Sri Lankan coastal town of Arugam Bay lies on the Indian Ocean, 320 kilometers from the capital city Colombo. With several surfing spots scattered across the area, for both beginners as well as skilled surfers, Arugam Bay is often called a surfer’s paradise. The famous surfing points here are Main Point and Whiskey Point, with surfboard rentals in their proximity. If you’re a non-surfer, you can choose to chill on the beautiful beaches. At night, the beaches play host many beach parties, offering a chance to soak in the lively atmosphere.', 3),
('pc046', 'Kumana National Park', 'Kumana National Park.jpg', 'Apart from that the 18,149 hectare of national park also encompasses a 200-hectare natural lake swamp, visited by various species of migratory birds. The national park does not only secure the species of birds but also breeds and roosts them. Some of the regular birds that can easily be spotted are the Pelicans, Painted Storks, Spoonbills, White Ibis, Herons, Egrets, and the little Cormorants.', 3),
('pc047', 'Lovamahapaya', 'Lovamahapaya.jpg', 'The Brazen Palace or Lovamahapaya is a 2000-year-old palace constructed by King Dutugemunu in the 2nd century B.C and had 1600 stone columns that supported nine stories reaching 150 feet and sides of 400 feet in length with 1000 rooms. It is also known as the Brazen Place because of the bronze tiles that were used on its roof.', 4),
('pc048', 'Ruwanwelisaya', 'Ruwanwelisaya.jpg', 'The Ruwanwelisaya stupa is one of the largest stupas or dagobas, which is in the heart of the beautiful heritage city of Anuradhapura. This magnificent stupa was built by King Dutugamunu, who was hailed to be the hero of the island. The Ruwanweliseya stupa is also known as the Maha stupa and is one of the most adorned structures of the people of Sri Lanka.', 4),
('pc049', 'Thuparamaya', 'Thuparamaya.jpg', 'Thuparamaya, also known as Thuparama, is the first stupa that was constructed in Sri Lanka after the introduction to Buddhism and is in the beautiful city of Anuradhapura. The ancient stupa of Thuparamaya was built during the reign of King Devamnampiyatissa somewhere in the 3rd Century BCE and is said to enshrine the right collar bone of Gautama Buddha. The ruins of the complex today cover an area of approximately three and a half acres of land.', 4),
('pc050', 'Sri Maha Bodhi', 'Sri Maha Bodhi.jpg', 'The Jaya Sri Maha Bodhi is one of the most ancient trees which are living even today standing tall in the Mahamewna Gardens in Anuradhapura in Sri Lanka. The tree is believed to have sprouted from a cutting brought from Bodh Gaya in India, where Gautama Buddha had attained enlightenment. The tree is an authentic and living link to Gautama Buddha and is often respected as the oldest tree in history which has a recorded date of the plantation.', 4),
('pc051', 'Archaeological Museum', 'Archaeological-Museum-Anuradhapura.jpg', 'The archaeological museum or Puravidu Bhavana of Anuradhapura holds some exciting artifacts, carvings, and ancient everyday items found after excavations in Anuradhapura and other historical sites around Sri Lanka. Both the interior and exterior parts of the museum display historical items.', 4),
('pc052', 'Ratnaprasada', 'Ratna prasad.jpg', 'Famous for its beautifully carved stone structures, the Rathna Prasada is the Uposatha house (a place for the cleansing of the defiled mind) of the Abhayagiri Viharaya. It holds great importance to Buddhists and is a historical landmark in Anuradhapura. Built in 192-194 AD by King Kanitta Tissa who ruled Ceylon, Rathna Prasada or Gem palace was originally a seven-storeyed skyscraper with a tiered roof, had beautiful guard stones (Mura Gal) and a statue of Buddha made of gold.', 4),
('pc053', 'Isurumuniya Royal Temple', 'Isurumuniya.jpg', 'Sri Lanka\'s ancient capital city, Anuradhapura is home to relics, stupas, and rocky hills that bring an aura of serenity. Isurumuniya is one of the granite, marble, and stone structures located near Tissa Wewa, and this Buddhist temple boasts of architecture and sculptures that showcase the emancipation of the artists.', 4),
('pc054', 'Jetavanaramaya Monastery', 'Jetavanaramaya monastery.jpg', 'Jetavanaramaya monastery is one of the largest monasteries in the heritage city of Anuradhapura in Sri Lanka. This magnificent structure was the third-largest structure in the ancient world. Legend has it that a part of Buddha’s sash or belt was tied and preserved here at the Jetavanaramaya monastery.', 4),
('pc055', 'Parakrama Samudra', 'Parakrama Samudra.jpg', 'Parakrama Samudra is a water reservoir that consists of five different lakes namely Thopa, Dumbutulu, Erabadu, Boo, Katu tanks. It is also known as King Parakrama\'s Sea and is in Polonnaruwa in Sri Lanka. Topa Wewa is the oldest reservoir here which was built around 386 AD. The middle section has Eramudu Wewa and below you have Dubutula Wewa. The lakes here are separated by a smaller dam to reduce the pressure.', 4),
('pc056', 'Minneriya National Park', 'Minneriya national park.jpg', 'The Minneriya National Park is in the Northern province of Sri Lanka, four hours away from Colombo, and 30 minutes away from Sigiriya. The national park is famous for its herds of elephants migrating for food, water and shelter, and forming a \'gathering\' that can be witnessed by the visitors. The dry season is the best time to visit this place, as the majestic elephants migrate to the Minneriya Tank for water. Apart from elephants, the national park is also home to several mammals, birds, reptiles, and different kinds of plant species. Minneriya National Park comes under the dry zone, meaning, it receives less rainfall compared to the other areas in the country.', 4),
('pc057', 'Mihintale', 'Mihintale.jpg', 'Ceylon, as it was formerly known rests on a beautiful landscape down south of India; hills, beaches, valleys, and waterfalls adorn this country. One such ancient marvel is the hills of Mihintale located 12 km from Anuradhapura which are known for religion, monarchy, warfare, and the underlying sense of scenic diversity.', 4),
('pc058', 'Wilpattu National Park', 'Wilpattu National Park.jpg', 'Wilpattu National Park is situated on the western coast of Sri Lanka, approximately an hour away from the ancient city of Anuradhapura. This national park has the enviable distinction of being the oldest and the largest national park in the country. The park has earned its name from the numerous \'villus\' (natural lakes in Sinhalese) that spread across the area. Wilpattu is known for its large population of leopards, among the highest in Sri Lanka.', 4),
('pc059', 'Abhayagiri Vihara', 'Abayaghiri Vihara.jpg', 'The Abhayagiri Vihara is one of the most beautiful and exciting structures which is in the atmospheric setting of Anuradhapura. The grand scale of the monastery ruins is genuinely breathtaking and can be viewed at any time, be it the break of dawn or dusk. The Abhayagiri Vihara has a beautiful and shimmering glow.It is one of the most extensive ruins in the world and one of the most sacred Buddhist pilgrimage cities in the nation', 4),
('pc060', 'Dalada Maluwa', 'Dalada Maluva.jpg', 'The circular building of Dalada Maluwa, also known as the Terrace of the Tooth Relic of Lord Buddha, is a beautiful work of art and architecture of the 12th century. Dalada Maluwa was built by King Parakrambahu the great (1164-1196AD), it was later enhanced and decorated by King Nissankamalla (1198-1206). It was the intended house for the Sacred Tooth Relic of Buddha; however, presently, the Tooth Relic is deposited in Kandy Tooth Relic Temple.', 4),
('pc061', 'The Royal Place of King Parakramabahu', 'The royal place of King Parakramabahu.jpg', 'Constructed under the reign of King Mahaparakram Bahu between the years 1153 to 1186, the striking Royal Palace stands as the emblem of grandeur in the ancient city of Polonnaruwa, Sri Lanka. The Royal Palace of King Parakramabahu is a place of great historical importance, the reason why it was declared a World Heritage site by UNESCO in the year 1982.', 4),
('pc062', 'Angammedilla National Park', 'Angammedilla national park.jpg', 'About half an hour away from the historical city of Polonnaruwa, bordered by the Angammedilla Canal in the south, lies Angammedilla National Park. A relatively more recent addition to Sri Lanka’s long list of protected areas, Angammedilla National Park is a habitat for a wide variety of flora and fauna. The park was initially designated to protect the catchment areas of the Parakrama Samudra, a shallow reservoir in Polonnaruwa, and the Minneriya and Girithale irrigation tanks.', 4),
('pc063', 'Casaurina Beach', 'Casuarina-Beach.jpeg', 'Deriving its name from the abundant casuarina trees found along the shore of the beach, the Casuarina beach with its soft golden sand grains and refreshing blue waters is located about 20 kilometers from Jaffna. One of the things that lure visitors to the beach is crystal clear water and is free of any sort of pollution.', 5),
('pc064', 'Jaffna Fort', 'fort.jpg', 'Located in Jaffna, its namesake Jaffna Fort is the second largest fort in the country, spanning an area of 55 acres. A former architectural marvel, most of the fort had been reduced to rubble during the Sri Lankan Civil War; fortunately, part restoration has taken place. Jaffna Fort stands today as a testament to the fact that war spares nothing and no one, not even a monument of paramount significance.', 5),
('pc065', 'Jaffna Library', 'jaffna library.jpg', 'Built-in the year 1933, the Jaffna library is one of the prominent and illustrious buildings in not only the city of Jaffna but also the country of Sri Lanka. The building holds a special place in the hearts of the people. The heritage building was burned down in the year 2002 as an attack on not only the building but an attack on the cultural heritage, and its history. The fire destroyed some of the Tamil cultural texts that were rare and one of a kind and which got burned.', 5),
('pc066', 'Delft Island', 'Delft island.jpg', 'Delft Island, locally known as Neduntheevu and situated in northern Sri Lanka, is roughly an hour-long ferry ride away from the mainland. From the remnants of a colonial fort to numerous wild ponies roaming about—an amalgamation of nature and history awaits you on a trip to this quaint little island. Add to that the coral walls surrounding the houses—and you’ll feel like you stepped into a strange yet beautiful dream.', 5),
('pc067', 'Dambakola Patuna', 'Dambakola patina.jpg', 'Dambakola Patina, or the fort of Jambukola, is one of the most ancient venues in the country. This monument has a rich history, and the port holds a lot of importance and significance for the Buddhist community. The reason that the port is of both historical and religious significance is that in 249BC, one of the saplings of the Bodhi tree, the tree under which Buddha was enlightened was brought to the country and planted, along with a stupa, but today, no such remains are found. The Sri Lankan navy has built a replica of the stupa and has even planted the Bodhi tree for the Buddhism followers.', 5),
('pc068', 'Akkarai Beach', 'Akkarai beach.jpg', 'Situated 40 minutes from Jaffna, Akkarai Beach is in Thondamanaru. The famous Lord Murugan Temple near the beach and the bridge that offers a panoramic view are the major attractions near Akkarai Beach. The best part is that the beach is clean, tranquil, and not crowded much.', 5),
('pc069', 'Galle Fort', 'Galle Fort.jpg', 'The Galle Fort, located on the southern coast of the country, is one of the five historical monuments which one must visit when in Sri Lanka. The fort was initially built by the Portuguese and was later modified by the Dutch. Today the Galle Fort is also declared as a UNESCO World Heritage site and is a stunning blend of architecture, archaeology, and history amidst a beautiful tropical setting.', 6),
('pc070', 'Galle Fort Lighthouse', 'Galle fort lighthouse.jpg', 'One of the oldest in Sri Lanka, is a coastal lighthouse inside Galle Fort. Initially built in 1848, it is one of the most visited attractions of the fort due to its picturesque surroundings, perfect for a serene stroll or an Instagram-worthy photo. It is important to note that visitors are not allowed to climb to the top of the lighthouse.', 6),
('pc071', 'Jungle Beach', 'Jungle beach.jpg', 'One of the lesser unknown treasures of Unawatuna is Jungle Beach. Located between Unawatuna and Galle, right next to the jungle is the beautiful and calm Jungle beach. The beach is not as easy to visit as compared to the other beaches of the city, but you can access it either by walking on foot and making a trekking trip out of it or even taking a boat ride which will become a whole new experience for you.', 6),
('pc072', 'Old Dutch Market', 'Old dutch market.jpg', 'Galle is much more than the historic fort and its attractions. The Old Dutch Market in Galle is one of the unique remnants of colonial times. As the name suggests, it is a marketplace, popular amongst locals as well as tourists for selling some of the freshest and exotic produce in all of Galle. The building was built in the late eighteenth century, probably by the British but possibly by the Dutch it was used to house the Nupe market.', 6),
('pc073', 'Historical Mansion Museum', 'Historical mansion museum.jpg', 'The Historical Mansion Museum is inside the Galle Fort and is more of an antique shop than a museum. It belongs to a single-family and has a great display of their family antique collection. The museum proves to be a fantastic sightseeing spot for those interested in the history of Sri Lanka.', 6),
('pc074', 'Japanese Peace Pagoda', 'Japanese peace Pagoda.jpg', 'The Peace Pagoda is on the hillside of the Galle Fort and is a beautiful and peaceful place to visit. The Mahayana sect built the Peace Pagoda as an initiative to establish peace in the Sri Lankan conflict zone. The Pagoda is a spectacle to witness, especially when you view it from the side of Unawatuna, which makes it look like it has grown out of the jungle.', 6),
('pc075', 'Hikkaduwa Beach', 'Hikkaduwa beach.jpg', 'The island of Sri Lanka brings to you beaches that are popular for their beauty and surfing spots. One such cozy beach town in Sri Lanka is Hikkaduwa. Located in southwest Sri Lanka, Hikkaduwa is endowed with palm trees by the shorelines, clean blue waters all this alongside the backdrop of the warm sun.', 6),
('pc076', 'Old Gate', 'Old gate Galle.jpg', 'Old Gate is a point of entry to Galle Fort at Queen Street. The Dutch originally built the gate, but later modified it by the British. On the outside, the arch on the gate is adorned by the British coat of arms, the phrase ‘Dieu et Mon Droit’, and a plaque with the year 1668 inscribed on it. Inside the fort, the arch is decorated with the Dutch coat of arms, the letters VOC (Verenigde Oostindische Compagnie, which translates to the Dutch East India Company), and a plaque below it with the letters ANNOMDCLXIX.', 6),
('pc077', 'Little Adam\'s Peak', 'Little Adam\'s peak.jpg', 'Little Adam\'s peak is the mini version of the pilgrimage mountain site of central Sri Lanka called Adam\'s peak. Located in Ella, The little Adam\'s shape is the same as its so-called bigger brother The Adam\'s Peak. It provides a less exhausting and more pleasant alternative as a hiking spot to those who cannot hike on a mountain as big as Adam\'s peak but also want to see a breathtaking view from a mountain\'s top.', 7),
('pc078', 'Nine Arches Bridge', 'Nine arch bridge.jpg', 'Nine Arches Bridge, also known as Ahas Namaye Palama or The Bridge in the Sky, is an iconic architectural structure located in the mountainous region of Ella in Sri Lanka. It is a magnificent stone bridge, built amidst lush green tea plantations, with stunning mountains in the backdrop. This ancient construction is 91 meters long and 24 meters high and never fails to leave tourists spellbound at its beauty.', 7),
('pc079', 'Ravana Falls', 'Ravana falls.jpg', 'Just 2 km from Ella city, perched at an altitude of 82 feet is the Ravana cave, and Ravana falls. The history of Sri Lanka dates back to over 2000 years and it finds itself in the iconic Ramayana. It is believed that Ravana was a fervent Sri Lankan by origin and stood as a villain in the lives of duo Ram – Sita. He captured Sita and kept her hostage in his custody in the famous, Ravana caves and the Ravana falls. Landscapes around the Ravana falls comprises slopes, valleys, hills, and streams that ornament the rocks.', 7),
('pc080', 'Ella Rock', 'Ella Rock.png', 'One of the best hiking and trekking sites in Sri Lanka, the Ella rocks provide the most picturesque views from the top. Walking through the beautiful path, the train track, bridge, and the tea plantation on the way up is a wholesome experience. You may start your trekking from Ella railway station, Kithal Ella railway station, or Heel Oya railway track if you are keen to travel amidst the mountains. Kithal Ella is the closest to the rock. It takes no more than 4 hours to trek up and down. One can sit and enjoy some coconut water and fruits being sold on the top while embracing the wind and admiring the spectacular view.', 7),
('pc081', 'Dunhinda Falls', 'Dunhinda falls.png', 'Dunhinda Falls is at Badulla, approximately an hour away from Ella. The falls tumble down a narrow gap between rocks and expand to form a stunning smoky cascade—an appearance reminiscent of a bridal veil; no wonder it is also known as Bridal Falls. The falls finally crash into a pool at the bottom.', 7);

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`p_id`, `p_name`) VALUES
(1, 'Western'),
(2, 'Central'),
(3, 'Eastern'),
(4, 'North Central'),
(5, 'Northern'),
(6, 'Southern'),
(7, 'Uva');

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` int(11) NOT NULL,
  `task` varchar(255) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `task`, `u_id`) VALUES
(29, 'going to rehearsal', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tour_guides`
--

CREATE TABLE `tour_guides` (
  `guide_id` int(11) NOT NULL,
  `guide_name` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `p_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tour_guides`
--

INSERT INTO `tour_guides` (`guide_id`, `guide_name`, `phone`, `email`, `p_id`) VALUES
(1, 'Alahakoon M', '+94 758965895', 'alaha@gmail.com', 1),
(2, 'Magna Perera', '+94 775846124', 'mgna@gmail.com', 1),
(3, 'Amarathunga F', '+94 777854214', 'amr@gmail.com', 1),
(4, 'Sunil K', '+94 772102374', 'sunil@gmail.com', 1),
(5, 'Manara M', '+94 769856654', 'mnr@gmail.com', 1),
(6, 'Pradeep H', '+94 763201782', 'prd@gmail.com', 1),
(7, 'Perera KL', '+94 782147953', 'per@gmail.com', 2),
(8, 'Fernando SS', '+94 712345678', 'fernando@gmail.com', 2),
(9, 'Silva SP', '+94 775432109', 'silva@gmail.com', 2),
(10, 'Gunasekara NR', '+94 788765432', 'gunasekara@gmail.com', 2),
(11, 'Rajapakse AM', '+94 776543210', 'rajapakse@gmail.com', 2),
(12, 'Kumarasinghe RD', '+94 777654321', 'kumarasinghe@gmail.com', 2),
(13, 'Chandrasekara MP', '+94 710123456', 'chandrasekara@gmail.com', 4),
(14, 'Wickramasinghe JH', '+94 775432109', 'wickramasinghe@gmail.com', 4),
(15, 'Perera AS', '+94 788765432', 'perera@gmail.com', 4),
(16, 'Gunathilaka NA', '+94 776543210', 'gunathilaka@gmail.com', 4),
(17, 'Kumara PP', '+94 777654321', 'kumara@gmail.com', 4),
(18, 'Fernando TS', '+94 784567890', 'fernando@gmail.com', 4),
(19, 'De Silva WD', '+94 710123456', 'desilva@gmail.com', 5),
(20, 'Rathnayake HM', '+94 775432109', 'rathnayake@gmail.com', 5),
(21, 'Amarasiri LP', '+94 788765432', 'amarasiri@gmail.com', 5),
(22, 'Jayawardena KP', '+94 776543210', 'jayawardena@gmail.com', 5),
(23, 'Fernando RY', '+94 777654321', 'fernando@gmail.com', 5),
(24, 'Karunaratne HS', '+94 784567890', 'karunaratne@gmail.com', 5),
(25, 'Rajapaksa MS', '+94 710123456', 'rajapaksa@gmail.com', 6),
(26, 'Wickramanayake AA', '+94 775432109', 'wickramanayake@gmail.com', 6),
(27, 'Gunaratne BL', '+94 788765432', 'gunaratne@gmail.com', 6),
(28, 'Perera TH', '+94 776543210', 'perera@gmail.com', 6),
(29, 'Samaraweera PN', '+94 777654321', 'samaraweera@gmail.com', 6),
(30, 'Fernando SR', '+94 784567890', 'fernando@gmail.com', 6),
(31, 'Wickramasinghe RW', '+94 710123456', 'wickramasinghe@gmail.com', 7),
(32, 'Silva JR', '+94 775432109', 'silva@gmail.com', 7),
(33, 'Gunasekara PS', '+94 788765432', 'gunasekara@gmail.com', 7),
(34, 'Peris KV', '+94 776543210', 'peris@gmail.com', 7),
(35, 'Kumarasinghe S', '+94 777654321', 'kumarasinghe@gmail.com', 7),
(36, 'Fernando RD', '+94 784567890', 'fernando@gmail.com', 7);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `username`, `password`, `role`) VALUES
(3, 'Hikm', 'hkm@gmail.com', 'hameem', '$2y$10$GT.LB4..MB4Gd83C4fCYO.TstwaO4SmyH7BxkCT96ump7fy57wtZe', 2),
(4, 'Himan Salaf', 'hims@gmail.com', 'hmn', '$2y$10$CjwI5cONHUi45oVynb9PLe0w6iglsswJNSRQ.hPGxBSQBORiTjJTW', 2),
(5, 'Admin', 'admins@gmail.com', 'admin', '$2y$10$ntAAjMY9DFjZ4UjKMX37ieV163fXm5KCAWsn3WF9CRsD7axo320QW', 1),
(6, 'Nusky', 'ns@gmail.com', 'nusky', '$2y$10$ntAAjMY9DFjZ4UjKMX37ieV163fXm5KCAWsn3WF9CRsD7axo320QW', 2),
(7, 'Shasna', 'shn@gmail.com', 'shas', '$2y$10$9Iosodji6Q0Ib4bD6lD/YeirljXeHMjv2azS8noKTv5eLjjUNg1X6', 2),
(8, 'sharaf ahmed', 'sharafahmed@gmail.com', 'sharaf', '$2y$10$HHtvC3HgjLyhcJxx94iEp.It2gmIddDfFc5clvIo6I7AXMdsj8hfW', 1),
(9, 'user', 'user@gmail.com', 'user', '$2y$10$6y7EzI5Qex0Uf9Q3X5mjEe/7QMzQ1YPjYfmlW9RoWssAUTXgn8D82', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `u_id` (`u_id`),
  ADD KEY `pro_id` (`pro_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `map`
--
ALTER TABLE `map`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`pcId`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `tour_guides`
--
ALTER TABLE `tour_guides`
  ADD PRIMARY KEY (`guide_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `map`
--
ALTER TABLE `map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tour_guides`
--
ALTER TABLE `tour_guides`
  MODIFY `guide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`pro_id`) REFERENCES `province` (`p_id`);

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `place`
--
ALTER TABLE `place`
  ADD CONSTRAINT `place_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `province` (`p_id`);

--
-- Constraints for table `todos`
--
ALTER TABLE `todos`
  ADD CONSTRAINT `todos_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
