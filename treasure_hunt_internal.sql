-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 04, 2025 at 06:50 AM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `treasure_hunt_internal`
--

-- --------------------------------------------------------

--
-- Table structure for table `level3_questions`
--

DROP TABLE IF EXISTS `level3_questions`;
CREATE TABLE IF NOT EXISTS `level3_questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `option_a` varchar(255) NOT NULL,
  `option_b` varchar(255) NOT NULL,
  `option_c` varchar(255) NOT NULL,
  `option_d` varchar(255) NOT NULL,
  `correct_option` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `level3_questions`
--

INSERT INTO `level3_questions` (`id`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `correct_option`) VALUES
(1, 'What does SMEClabs primarily specialize in?', 'Digital Marketing', 'Marine and Industrial Automation', 'Fashion Designing', 'Agriculture', 'B'),
(2, 'SMEClabs is the training division of which company?', 'Infosys', 'TCS', 'SMEC Automation', 'Wipro', 'C'),
(3, 'Where is the headquarters of SMEClabs located?', 'Chennai', 'Mumbai', 'Kochi', 'Bangalore', 'C'),
(4, 'Which of the following courses is NOT offered by SMEClabs?', 'PLC & SCADA Training', 'Marine Engineering', 'Artificial Intelligence', 'Interior Designing', 'D'),
(5, 'SMEClabs provides certification in collaboration with which global automation company?', 'Siemens', 'ABB', 'Rockwell Automation', 'All of the above', 'D'),
(6, 'SMEClabs offers placement assistance to students in which industries?', 'IT and Software Development', 'Oil & Gas, Marine, and Automation', 'Film and Entertainment', 'Textile and Garments', 'B'),
(7, 'What is the full form of PLC, a course SMEClabs offers?', 'Programmable Logic Controller', 'Program Level Coding', 'Process Line Control', 'Power Logic Circuit', 'A'),
(8, 'SMEClabs provides training in which programming languages?', 'Python', 'C++', 'Java', 'All of the above', 'D'),
(9, 'SMEClabs offers certifications recognized by which body?', 'NASA', 'ISO', 'IEEE', 'None of the above', 'B'),
(10, 'Which software is commonly used in SMEClabs automation training?', 'MATLAB', 'TIA Portal', 'Adobe Photoshop', 'SketchUp', 'B'),
(11, 'Which of the following is NOT an SMEClabs domain?', 'Data Science', 'Cybersecurity', 'Space Exploration', 'Instrumentation', 'C'),
(12, 'SMEClabs’ training methodology includes:', '100% Theoretical Classes', 'Only Online Training', 'Hands-on Practical Training', 'Outdoor Adventure Activities', 'C'),
(13, 'SMEClabs provides industrial training for:', 'Students only', 'Professionals only', 'Both students and professionals', 'Only government employees', 'C'),
(14, 'SMEClabs is a pioneer in which type of industrial training?', 'Marine Automation', 'Automobile Engineering', 'Fashion Design', 'Event Management', 'A'),
(15, 'Which programming language is widely used in Industrial Automation?', 'JavaScript', 'Python', 'Ladder Logic', 'Swift', 'C'),
(16, 'SMEClabs provides internship opportunities in:', 'Automation & Control', 'Embedded Systems', 'Artificial Intelligence', 'All of the above', 'D'),
(17, 'Which of these is NOT a module in SMEClabs’ cybersecurity training?', 'Ethical Hacking', 'Penetration Testing', 'Baking Technology', 'Network Security', 'C'),
(18, 'SMEClabs has partnerships with which of the following organizations?', 'Siemens', 'Schneider Electric', 'Honeywell', 'All of the above', 'D'),
(20, 'The major benefit of SMEClabs training is:', 'Only Theoretical Knowledge', 'Guaranteed Government Jobs', 'Industry-Recognized Certifications and Practical Exposure', 'Free Travel Abroad', 'C'),
(21, 'SMEClabs Data Science training includes:', 'Machine Learning', 'Deep Learning', 'Data Visualization', 'All of the above', 'D'),
(22, 'SMEClabs offers training in Embedded Systems using:', 'Arduino', 'Raspberry Pi', 'PIC Microcontrollers', 'All of the above', 'D'),
(23, 'SMEClabs’ Marine Automation training includes:', 'Navigation Control Systems', 'Ballast Water Management', 'Marine Power Systems', 'All of the above', 'D'),
(24, 'SMEClabs also provides training in Industrial IoT. What does IoT stand for?', 'Internet of Trucks', 'Internet of Things', 'Integrated Operational Technology', 'Intelligent Online Tools', 'B'),
(25, 'SMEClabs provides training through which modes?', 'Online', 'Offline', 'Hybrid (Online + Offline)', 'All of the above', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `level3_scores`
--

DROP TABLE IF EXISTS `level3_scores`;
CREATE TABLE IF NOT EXISTS `level3_scores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `score` int DEFAULT '0',
  `status` enum('pending','win','fail') DEFAULT 'pending',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `level3_scores`
--

INSERT INTO `level3_scores` (`id`, `user_id`, `score`, `status`) VALUES
(1, 149, 10, 'win');

-- --------------------------------------------------------

--
-- Table structure for table `level4_identification`
--

DROP TABLE IF EXISTS `level4_identification`;
CREATE TABLE IF NOT EXISTS `level4_identification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `clue` text NOT NULL,
  `option_1` varchar(100) NOT NULL,
  `option_2` varchar(100) NOT NULL,
  `option_3` varchar(100) NOT NULL,
  `option_4` varchar(100) NOT NULL,
  `correct_answer` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `level4_identification`
--

INSERT INTO `level4_identification` (`id`, `image_path`, `clue`, `option_1`, `option_2`, `option_3`, `option_4`, `correct_answer`) VALUES
(1, 'uploads/faces/face_67ef61348f0fb.jpg', 'A pioneering Indian businesswoman who broke the glass ceiling in the banking sector, she once led one of India\'s largest private banks and was known for her strong influence in retail banking and financial services.', 'Naina Lal Kidwai', 'Arundhati Bhattacharya', 'Chanda Kochhar', 'Shikha Sharma', 'Chanda Kochhar'),
(2, 'uploads/faces/face_67ef6212f02b6.jpg', 'He is a visionary entrepreneur who co-founded one of India\'s biggest IT companies, shaping the global software services industry. Known for his ethical leadership and innovation, he played a crucial role in making India a tech powerhouse. His contributions extend beyond business, as he actively supports education and philanthropy.', 'Nandan Nilekani', ' Narayana Murthy', 'Azim Premji', 'Satya Nadella', ' Narayana Murthy'),
(3, 'uploads/faces/face_67ef6287dc8ab.jpg', 'He is an industrialist who transformed a small trading company into one of India\'s largest and most respected conglomerates. Known for his visionary leadership, he expanded his company globally while maintaining strong ethical values. His contributions to philanthropy, innovation, and nation-building have earned him immense respect in India and beyond.', 'Mukesh Ambani', 'Gautam Adani', 'Cyrus Mistry', 'Ratan Tata', 'Ratan Tata'),
(4, 'uploads/faces/face_67ef6336c0979.jpg', 'He was a legendary filmmaker, screenwriter, and author who revolutionized Indian cinema with his realistic storytelling and artistic vision. His debut film, part of an iconic trilogy, won global acclaim and put Indian cinema on the world map. Apart from films, he was also a gifted writer, illustrator, and music composer.', 'Ritwik Ghatak', ' Guru Dutt', 'Satyajit Ray', 'Mrinal Sen', 'Satyajit Ray'),
(5, 'uploads/faces/face_67ef63e1be8f3.jpg', 'He is an Indian politician from the northeastern state of Arunachal Pradesh. Known for his dynamic leadership, he has held key ministerial positions in the Indian government, including roles related to law, home affairs, and sports. A strong advocate for northeastern development, he has played a crucial role in bridging the region with mainstream national politics.', 'Pema Khandu', 'Kiren Rijiju', 'Himanta Biswa Sarma', 'Rajnath Singh', 'Kiren Rijiju'),
(6, 'uploads/faces/face_67ef647658454.jpg', 'He is a seasoned diplomat-turned-politician who has played a crucial role in shaping India’s foreign policy. With decades of experience in international relations, he has served as India’s External Affairs Minister and was previously the country’s ambassador to the USA and China. His expertise in global affairs has strengthened India’s strategic partnerships worldwide.', 'Dr. Subrahmanyam Jaishankar', 'Shivshankar Menon', ' Ajit Doval', 'Venkaiah Naidu', 'Dr. Subrahmanyam Jaishankar'),
(7, 'uploads/faces/face_67ef65b897869.jpg', 'He was a respected statesman, orator, and poet who served as India\'s Prime Minister three times. Known for his leadership, he played a key role in India\'s economic growth and nuclear advancements. His ability to unite people across political lines and his impactful speeches made him one of the most beloved leaders in Indian history.', 'Lal Bahadur Shastri', 'Narendra Modi', 'Atal Bihari Vajpayee', 'Inder Kumar Gujral', 'Atal Bihari Vajpayee'),
(8, 'uploads/faces/face_67ef6651d6aa4.jpg', 'He is an Indian author known for blending mythology with fiction, creating modern retellings of ancient legends. His debut novel reimagined a Hindu deity as a warrior-hero, turning it into a bestselling series. With a unique storytelling style, he has introduced Indian mythology to a global audience.', 'Amish Tripathi', 'Devdutt Pattanaik', 'Ashwin Sanghi', 'Chetan Bhagat', 'Amish Tripathi'),
(10, 'uploads/faces/face_67ef6737dc582.jpeg', 'She is a legendary Indian athlete who became a global icon in women\'s boxing. Overcoming challenges, she has won multiple world championships and an Olympic medal. Hailing from Manipur, she is an inspiration for aspiring athletes and continues to promote sports in India.', 'Saina Nehwal', 'P. V. Sindhu', 'Mary Kom', 'Dutee Chand', 'Mary Kom'),
(11, 'uploads/faces/face_67ef68088e175.jpg', 'She made history by becoming the first Indian woman wrestler to win an Olympic medal. Her victory at the 2016 Rio Olympics brought wrestling into the spotlight for women in India. Coming from Haryana, she has inspired many young athletes to pursue the spo', 'Vinesh Phogat', 'Babita Phogat', 'Geeta Phogat', 'Sakshi Malik', 'Sakshi Malik'),
(12, 'uploads/faces/face_67ef686465edd.jpg', 'He is a Dutch racing sensation who became the youngest driver to compete in Formula 1. Known for his aggressive driving style and exceptional skills, he has won multiple world championships and is a key figure in Red Bull Racing’s dominance. His rivalry with top drivers has made him one of the most exciting names in motorsport.', 'Lewis Hamilton', 'Max Verstappen', 'Charles Leclerc', 'Fernando Alonso', 'Max Verstappen'),
(13, 'uploads/faces/face_67ef68d56cd6a.jpg', 'He is a legendary Indian actor, filmmaker, and politician known for his versatility across multiple languages. With a career spanning decades, he has delivered iconic performances in both commercial and art films. Apart from acting, he is a skilled dancer, singer, and screenplay writer, making him one of India\'s most celebrated cinema personalities.', 'Rajinikanth', 'Mohanlal', 'Chiranjeevi', 'Kamal Haasan', 'Kamal Haasan'),
(14, 'uploads/faces/face_67ef6aac150d9.jpg', 'He is a visionary Indian filmmaker known for his unique storytelling, deep characters, and stunning visuals. His films blend strong narratives with beautiful cinematography and soulful music, often in collaboration with A. R. Rahman. From romance to political thrillers, his works have left a lasting impact on Indian cinema.', 'Shankar', 'S. S. Rajamouli', 'Mani Ratnam', 'K S Ravikumar', 'Mani Ratnam'),
(15, 'uploads/faces/face_67ef6c5c2c323.jpg', 'He was a Soviet leader who introduced major political and economic reforms that led to the end of the Cold War. His policies of Glasnost (openness) and Perestroika (restructuring) transformed the USSR but also contributed to its dissolution. He was awarded the Nobel Peace Prize for his role in reducing global tensions.', 'Vladimir Putin', 'Nikita Khrushchev', ' Mikhail Gorbachev', 'Joseph Stalin', ' Mikhail Gorbachev'),
(16, 'uploads/faces/face_67ef6ccd7c41e.jpg', 'He was a revolutionary freedom fighter, writer, and political thinker who played a key role in India\'s independence movement. Known for promoting Hindutva ideology, he was imprisoned in the Andaman Cellular Jail for his resistance against British rule. His writings and speeches continue to influence Indian political thought.', 'Bal Gangadhar Tilak', 'Subhas Chandra Bose', 'Lala Lajpat Rai', 'Vinayak Damodar Savarkar', 'Vinayak Damodar Savarkar'),
(17, 'uploads/faces/face_67ef6d8a546f0.jpg', 'He is a former Indian cricketer and fast bowler who made his Test debut in the early 2000s. Hailing from Kerala, he was the first cricketer from the state to play for the Indian national team. His father was a famous athlete, which inspired him to pursue sports.', 'Sreesanth', 'Zaheer Khan', 'Tinu Yohannan', 'Irfan Pathan', 'Tinu Yohannan'),
(18, 'uploads/faces/face_67ef6ebd01bcf.jpg', 'She was the first woman to serve as the Prime Minister of the United Kingdom and was known for her strong leadership and conservative policies. Nicknamed the \"Iron Lady,\" she played a crucial role in transforming Britain’s economy and had a significant impact on global politics during the Cold War era.', 'Margaret Thatcher', 'Angela Merkel', 'Indira Gandhi', 'Theresa May', 'Margaret Thatcher'),
(19, 'uploads/faces/face_67ef6f65b6fcb.jpg', 'She was a beloved member of the British royal family, known for her humanitarian work and deep connection with the public. Her compassion for causes like AIDS awareness and landmine victims made her a global icon. Despite personal challenges, she remained \"The People\'s Princess,\" leaving a lasting legacy even after her tragic passing.', 'Queen Elizabeth II', 'Kate Middleton', 'Diana, Princess of Wales', 'Meghan Markle', 'Diana, Princess of Wales'),
(20, 'uploads/faces/face_67ef70616d5d6.jpg', 'He is a legendary English footballer known for his incredible free-kick ability and stylish play on the field. Having played for top clubs like Manchester United, Real Madrid, and LA Galaxy, he became a global sports icon. Apart from football, his influence extends to fashion, business, and philanthropy.', 'David Beckham', 'Cristiano Ronaldo', 'Wayne Rooney', 'Lionel Messi', 'David Beckham'),
(21, 'uploads/faces/face_67ef716210fdf.jpg', 'He is a Brazilian footballer known for his elegance, vision, and playmaking skills. A former AC Milan and Real Madrid star, he won the Ballon d’Or in 2007, becoming one of the last players to win it before the Ronaldo-Messi era. His dribbling, passing, and humility made him a fan favorite worldwide.', 'Ronaldinho', 'Neymar', 'Kaká', 'Rivaldo', 'Kaká'),
(22, 'uploads/faces/face_67ef7208d5f18.jpg', 'He was a visionary entrepreneur who co-founded a company that revolutionized personal technology. Known for his passion for innovation and design, he introduced iconic products like the iPhone, MacBook, and iPad. His influence shaped the modern tech industry, making his company one of the most valuable in the world.', 'Bill Gates', 'Steve Jobs', 'Elon Musk', 'Mark Zuckerberg', 'Bill Gates'),
(23, 'uploads/faces/face_67ef7296da3f4.jpg', 'She is a prominent American politician, lawyer, and diplomat who served as the First Lady of the United States, a U.S. Senator, and the Secretary of State. In 2016, she made history as the first woman to be nominated for U.S. President by a major political party. Known for her advocacy on women’s rights and healthcare, she remains a key figure in American politics.', 'Kamala Harris', 'Nancy Pelosi', 'Michelle Obama', 'Hilary Clinton ', 'Hilary Clinton '),
(24, 'uploads/faces/face_67ef748993a95.jpg', 'He is a British royal who gained global attention not only for his royal duties but also for his military service and philanthropy. As the Duke of Sussex, he stepped back from royal responsibilities to focus on a new life in the U.S. with his wife. He is passionate about mental health, veterans’ welfare, and humanitarian work.', 'Prince William', 'Prince Charles', 'Prince Harry', 'Prince Philip', 'Prince Harry'),
(25, 'uploads/faces/face_67ef762cf2252.jpg', 'He is a British actor best known for playing one of the most iconic secret agents in film history. With his intense performances and modern take on the character, he redefined the role in movies like Casino Royale, Skyfall, and No Time to Die. His portrayal brought a new level of realism and depth to the franchise.', 'Sean Connery', 'Daniel Craig', 'Pierce Brosnan', 'Tom Hardy', 'Daniel Craig'),
(26, 'uploads/faces/face_67ef77a2be565.jpg', 'He was a pioneering Indian nuclear physicist who played a key role in laying the foundation for India\'s atomic energy program. As the \"Father of India\'s Nuclear Programme,\" he established the Tata Institute of Fundamental Research (TIFR) and envisioned India’s advancements in nuclear science for peaceful applications. His contributions remain crucial to India\'s scientific progress.', 'C. V. Raman', 'Homi J. Bhabha', 'Vikram Sarabhai', 'A. P. J. Abdul Kalam', 'Homi J. Bhabha'),
(27, 'uploads/faces/face_67ef7863ccc48.jpg', 'He was a visionary creator who revolutionized the entertainment industry with his imagination and storytelling. As the founder of a world-famous animation company, he introduced beloved characters like Mickey Mouse and created the first-ever feature-length animated film. His dream led to the creation of magical theme parks that continue to inspire generations.', 'Walt Disney', 'Stan Lee', 'Jim Henson', 'Steven Spielberg', 'Walt Disney'),
(28, 'uploads/faces/face_67ef79e5ea677.jpg', 'He is a prominent Indian political leader who has served as the Prime Minister of India since 2014. Known for his strong leadership, economic reforms, and global diplomacy, he has played a key role in initiatives like Digital India, Make in India, and Swachh Bharat Abhiyan. Before becoming Prime Minister, he was the Chief Minister of Gujarat for over a decade.', 'Manmohan Singh', 'Amit Shah', 'Narendra Modi', 'Rahul Gandhi', 'Narendra Modi');

-- --------------------------------------------------------

--
-- Table structure for table `level4_scores`
--

DROP TABLE IF EXISTS `level4_scores`;
CREATE TABLE IF NOT EXISTS `level4_scores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `question_id` int NOT NULL,
  `selected_answer` varchar(255) DEFAULT NULL,
  `score` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `level4_scores`
--

INSERT INTO `level4_scores` (`id`, `user_id`, `question_id`, `selected_answer`, `score`) VALUES
(1, 149, 18, 'Margaret Thatcher', 1),
(2, 149, 21, 'Kaká', 1),
(3, 149, 25, 'Daniel Craig', 1),
(4, 149, 17, 'Tinu Yohannan', 1),
(5, 149, 8, 'Amish Tripathi', 1),
(6, 149, 23, 'Kamala Harris', 0),
(7, 149, 22, 'Steve Jobs', 0),
(8, 149, 16, 'Vinayak Damodar Savarkar', 1),
(9, 149, 24, 'Prince Harry', 1),
(10, 149, 3, 'Ratan Tata', 1);

-- --------------------------------------------------------

--
-- Table structure for table `passwords`
--

DROP TABLE IF EXISTS `passwords`;
CREATE TABLE IF NOT EXISTS `passwords` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `level` int NOT NULL,
  `passcode` varchar(5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_user_level` (`user_id`,`level`),
  KEY `fk_user` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `passwords`
--

INSERT INTO `passwords` (`id`, `user_id`, `level`, `passcode`) VALUES
(1, 149, 2, 'SVL78'),
(2, 149, 3, 'H4VDS'),
(3, 149, 4, 'NQZ3Z'),
(4, 149, 5, 'L6ELY');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_questions`
--

DROP TABLE IF EXISTS `quiz_questions`;
CREATE TABLE IF NOT EXISTS `quiz_questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` text,
  `option_a` varchar(255) DEFAULT NULL,
  `option_b` varchar(255) DEFAULT NULL,
  `option_c` varchar(255) DEFAULT NULL,
  `option_d` varchar(255) DEFAULT NULL,
  `correct_option` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `quiz_questions`
--

INSERT INTO `quiz_questions` (`id`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `correct_option`) VALUES
(1, 'The battle of Alinga was fought in the year', '540 BC', '320 AC', '440 BC', '261 BC', 'D'),
(2, 'The Russian revolution occurred in the year', '1918', '1819', '1917', '', 'C'),
(3, 'In which year was the First World War fought?', '1917-1920', '1914-1918', '1912-1916', '1910-1914', 'B'),
(4, 'Earth has a spherical shape. The sphere can be divided into two halves by a line; name that line', 'Divider', 'Divisible line', 'Latitude', 'The Equator', 'D'),
(5, 'An award-winning movie \"Slumdog Millionaire\" is directed by one of the following directors?', 'Danny Boyle', 'Ram Gopal Varma', 'S.S. Rajamouli', 'V. Razvan', 'A'),
(6, 'The Gandhi Peace Prize for the year 2000 was awarded to the former President of South Africa along with?', 'State Jewellery of India', 'Central Bank of Sri Lanka', 'State Bank of Bangladesh', 'Grameen Bank of Bangladesh', 'D'),
(7, 'The movie Rockstar comprises unique costumes designed by', 'Jenny Beavan', 'Aki Nirula', 'Edith Head', 'Manish Malhotra', 'B'),
(8, 'Nakshatra diamond jewelry has a very renowned actress as its brand ambassador. Choose the right name', 'Manisha Koirala', 'Kareena Kapoor', 'Katrina Kaif', 'Alia Bhatt', 'C'),
(9, 'The first Nobel Prize winner from India in literature was', 'C.V Raman', 'Rabindranath Tagore', 'Mother Teresa', 'Har Gobind Khorana', 'B'),
(10, 'MGNREGA was a popular act in India. Its full form is', 'Mahatma Gandhi Nominal Referral Entity Guarantee Act', 'Mahatma Gandhi National Rural Employment Guarantee Act', 'Main Gateway of National Regional Employment Guarantee Act', 'Mahatma Gandhi National Regional Employment Act', 'B'),
(11, 'Who is known as the father of the Delhi Metro?', 'Bhimrao Ramji Ambedkar', 'Shri Manoj Joshi', 'Shri Vikas Kumar', 'E. Sreedharan', 'D'),
(12, 'The first Indian director who got the opportunity to shoot at NASA', 'V. Kesava Raju', 'Japan Shakti', 'Ashutosh Gowariker', 'Edith Head', 'C'),
(13, 'Who among the following was not an exponent of the Bhakti movement?', 'Shankaracharya', 'Nanak', 'Ramananda', 'Kabir', 'A'),
(14, 'The decimal system was introduced by', 'Aryabhatta', 'Brahmagupta', 'Bhaskara', 'None of these', 'C'),
(15, 'Which is the largest temple in the world?', 'Angkor Wat in Cambodia', 'Ram Mandir, Ayodhya', 'Krishna Temple', 'None of these', 'A'),
(16, 'In which year did the Gulf War begin?', '1971', '1981', '1991', '1989', 'C'),
(17, 'Which footballer scored the highest number of goals in a year (86 goals in 2012)?', 'Cristiano Ronaldo', 'Neymar', 'Robert Lewandowski', 'Lionel Messi', 'D'),
(18, 'Which was the first artificial satellite launched by Russia?', 'Kosmos, 1956', 'Sputnik, 1957', 'Cosmos, 1945', 'List 1, 1929', 'B'),
(19, 'Who discovered the North Pole in 1909?', '1989, Commander Pesty', '1906, Alexander Peary', '1907, Commander Pesty', '1909, Commander Peary', 'D'),
(20, 'The First World War ended in the year', '1916', '1917', '1918', '1919', 'C'),
(21, 'In which year did the Suez Canal open?', '1860 BC', '1896 AD', '1896 BC', '1869 AD', 'D'),
(22, 'Christopher Columbus discovered America in the year', '1491 AD', '1492 BC', '1491 AD', '1492 AD', 'D'),
(23, 'On 14 March 2012, Parkash Singh Badal was appointed as', 'The chief minister of Haryana', 'The chief minister of Punjab', 'The chief minister of Delhi', 'The chief minister of Madhya Pradesh', 'B'),
(24, 'The painting \"The Hay Wain\" was created by', 'John Eric', 'Denmark', 'Leonardo da Vinci', 'John Constable', 'D'),
(25, 'Which state touches Sikkim?', 'West Bengal', 'Mizoram', 'Meghalaya', 'Bhutan', 'A'),
(26, 'What was the designation of Salman Khurshid?', 'Chief minister', 'Prime Minister', 'External Affairs Minister', 'Transportation Minister', 'C'),
(27, 'Which country is the largest tea producer in the world?', 'Britain', 'India', 'Bhutan', 'Nepal', 'B'),
(28, 'Which dam is built on the Sutlej River?', 'Sardar Sarovar Dam', 'Bhakra Dam', 'Hirakud Dam', 'Tehri Dam', 'B'),
(29, 'Which company has the highest foreign investment in India?', 'Vodafone', 'Jio', 'Airtel', 'BSNL', 'A'),
(30, 'On the bank of which river was Harappa situated?', 'Sutlej', 'Ganga', 'Yamuna', 'Ravi', 'D'),
(31, 'Where is the Indian research station \"Himadri\" located?', 'Antarctica', 'Arctic', 'America', 'Himachal Pradesh', 'B'),
(32, 'Which principle does a washing machine use?', 'Centrifugation', 'Removal', 'Adsorption', 'Absorption', 'A'),
(33, 'Which mountain range does the Konkan Railway pass through?', 'Himadri', 'Konkan', 'Himalayan', 'Western Ghats', 'D'),
(34, 'Which product is associated with \"De Beers\"?', 'Diamond', 'Gold', 'Silver', 'Platinum', 'A'),
(35, 'Which Indian state is the largest producer of mulberry silk?', 'Kullu', 'Sikkim', 'Arunachal Pradesh', 'Karnataka', 'D'),
(36, 'Which gas caused the Bhopal gas tragedy in 1984?', 'Carbon monoxide', 'Ethyl', 'Methyl Isocyanate', 'Ethyl Isocyanate', 'C'),
(37, 'Which country produces the most rice?', 'India', 'Bangladesh', 'Nepal', 'China', 'D'),
(38, 'In which year was the Planning Commission of India established?', '1947', '1975', '1949', '1950', 'D'),
(39, 'When did the Green Revolution take place?', '1960', '1970', '1980', '1999', 'A'),
(40, 'Which king defeated Seleucus Nicator?', 'Alexander', 'Ashoka', 'Chandragupta Maurya', 'Bindusara', 'C'),
(41, 'The Thar Express train runs to which country?', 'Pakistan', 'India', 'Bangladesh', 'Nepal', 'A'),
(42, 'Which process allows the sun to produce energy?', 'Solar emission', 'Solar radiation', 'Fission reaction', 'Nuclear fusion', 'D'),
(43, 'Which state of India has the smallest population?', 'Bihar', 'Gujarat', 'Mumbai', 'Sikkim', 'D'),
(44, 'Which ruler was the last king of the Maurya dynasty?', 'Chandragupta Maurya', 'Ashoka', 'Brihadratha', 'Ashoka', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

DROP TABLE IF EXISTS `results`;
CREATE TABLE IF NOT EXISTS `results` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `correct_answers` int DEFAULT NULL,
  `total_questions` int DEFAULT '25',
  `score` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `user_id`, `correct_answers`, `total_questions`, `score`) VALUES
(1, 149, 8, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

DROP TABLE IF EXISTS `scores`;
CREATE TABLE IF NOT EXISTS `scores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `moves` int NOT NULL,
  `completion_time` datetime DEFAULT NULL,
  `status` enum('Failed','Win') DEFAULT 'Failed',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `played` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_user` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`id`, `user_id`, `moves`, `completion_time`, `status`, `created_at`, `played`) VALUES
(1, 149, 0, '2025-04-04 09:49:50', 'Win', '2025-04-04 04:19:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

DROP TABLE IF EXISTS `staffs`;
CREATE TABLE IF NOT EXISTS `staffs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `department` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `emp_id` (`emp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=330 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`id`, `emp_id`, `name`, `phone`, `department`) VALUES
(327, 'SA42036', 'Amal V George', '8848045924', 'IT'),
(2, 'SA41301', 'Sandra D Nair', '8848928879', 'Software Engineer'),
(3, 'SA41237', 'Jithin Stephan', '9633935777', 'BDM'),
(4, 'SA41312', 'Shan Kumar S', '8136961777', 'Center Manager'),
(5, 'SA41300', 'Anusree SureshKumar ', '9744705006', 'Software Engineer '),
(6, 'SA41302', 'Sachin K.S.', '9633741777', 'BDM'),
(7, 'SA41324', 'HONEYMOL ISSAC', '8129364777', 'Senior BDM'),
(8, 'SA000', 'Sajad A Jamal ', '8136870777', 'Marketing Manager '),
(9, 'SA4606', 'Dipin A', '9108077030', 'Branch Manager'),
(10, 'SA41244', 'Sinchana Naik Bolwar', 'Nil', 'CRG Embedded System'),
(11, 'SA41246', 'Mohammed Fawas K', 'Nil', 'CRG Automation'),
(12, 'SA41297', 'Reesha Venisha Dsouza', '8296712111', 'BDE'),
(13, 'SA41314', 'Chaithra Shetty', '8296912111', 'BDE'),
(14, 'SA21148', 'Anoop Augustine', '8652333188', 'Manager Indigeniation & QA'),
(15, 'SA21399', 'SANGEETHA  A S', '9446312278', 'Accountant'),
(16, 'SA4681', 'John Joseph K A', '8590760978', 'Accountant'),
(17, 'SA41028', 'AUGUSTINE JOY', '9995445821', 'Technical Sales Engineer'),
(18, 'SA4857', 'SANJAI S KUMAR', '7012972119', 'Purchase Manager'),
(19, 'SA2176', 'Thomas John ', '9995807404', 'Supervisor '),
(20, 'SAC7008', 'Peter T X  (Siju)', '9288070335', 'Administration'),
(21, 'SA7002', 'Subin ks', '8139874003', 'Supervisor '),
(22, 'SAC7030', 'ARUNTHOMAS', '9048736367', 'Welder'),
(23, 'SA?7031', 'Jaison.p.k', '8589099883', 'Electrician '),
(24, 'SA132', 'James Burby', '8129039204', 'Elecrical supervisor'),
(25, 'SA142', 'jithesh kp', '920797335', 'ELECTRICAL ENGINEER'),
(26, 'SA7046', 'Siju Soman', '9744603059', 'SUPERVISOR'),
(27, 'SASMS/006', 'MOHIYADEEN SHAH ', '+971528039399', 'Project Manager'),
(28, 'SA119', 'Angel E Stainslavous', '9447670894', 'Manager Projects'),
(29, 'SAC7049', 'TROY TEDDY ', '9895585777', 'Electrician'),
(30, 'SA4243', 'Paul avarachan', '9400565264', 'Service engineer'),
(31, 'SA5225', 'Jinesh k p', '9946011996', 'service engineer'),
(32, 'SAC7003', 'PRASANTH.KP', '9037292440', 'Material Supervisor'),
(33, 'SA21506', 'Swathy K R', '9744750578', 'Accountant '),
(34, 'SA21481', 'Swathi M Nair', '8592822086', 'Engineer - Devolopment '),
(35, 'SA7155', 'Akhrsh J Pillai', '8281177446', 'Service Engineer '),
(36, 'SA21013', 'VIMAL KUMAR', '7356268075', 'Service Engineer '),
(37, 'SA4941', 'Varghese F', '9495282811', 'PROJECT MANAGER'),
(38, 'SA7152', 'Midhun a.m', '9207998943', 'Purchase executive '),
(39, 'SA144', 'Jolrin joseph', '9400127714', 'Service engineer '),
(40, 'SAC7151', 'Nikhil raj a r', '8089484946', 'Electrical technician '),
(41, 'SA064', 'Renjith Mathew ', '9847457714', 'Engineer'),
(42, 'SASAC7034', 'Rajitha kumar', '9809181030', 'Fabricator '),
(43, 'SA2952', 'Sreejith Godavarma', '9946239888', 'MANAGER SERVICES'),
(44, 'SA7166', 'GOPINADHAN K', '9778713438', 'STORE KEEPER'),
(45, 'SA2895', 'SANJU K DAS', '7012811857', 'Estimation Engineer'),
(46, 'SA-21205', 'JINU WILSON', '9746047472', 'SERVICE ENGINEER'),
(47, 'SA4492', 'Arun P', '9447348784', 'Service Engineer'),
(48, 'SA2675', 'Akhil K', '9995017617', 'Project Engineer'),
(49, 'SA7162', 'Nathaniel Xavier ', '9819437390', 'SERVICE ENGINEER'),
(50, 'SA2885', 'Saravanakumar M P G', '9442252296', 'Service Engineer '),
(51, 'SA2544', 'Suresh Kumar', '7904010219', 'Service '),
(52, 'SA51492', 'Divakaran B Nair', '9544146769', 'Service Engineer '),
(53, 'SA4529', 'SURAJ KUMAR M KAMATH', '9447763228', 'Service Engineer'),
(54, 'SA7161', 'ANEESH RAVINDRAN', '9496603371', 'Service Engineer '),
(55, 'SA52062', 'Anandhu V R', '8921420703', 'Trainee Engineer '),
(56, 'SA52063', 'JUSTIN SHIBU SAMUEL ', '7012191929', 'Trainee Engineer '),
(57, 'SA52061', 'Harshin P H', '7356843267', 'Trainee Engineer'),
(58, 'SA42057', 'GOPIKA C H', 'Nil', 'DOT NET CRG'),
(59, 'SA52056', 'Ann Maria Eldhose', '9072803205', 'Python CRG'),
(60, 'SA4985', 'Er B Balakrishnan', '8695220453', 'CRG Engineer'),
(61, 'SA42072', 'Rinsi M S', '9483652967', 'BDE'),
(62, 'SA42060', 'Akash M', '7012273909', 'Bd'),
(63, 'SA4650', 'Ananda Babu M', '8075360079', 'Branch Manager'),
(64, 'SA42082', 'Neethu Sajeev', '8139836477', 'Sr.BDM'),
(65, 'SA41142', 'SABI A', '9544611553', 'BDE'),
(66, 'SA42067', 'JITHA KP', '9747553407', 'BDE'),
(67, 'SA42084', 'Sanisha J', 'Nil', 'Business Development Manager '),
(68, 'SA42083', 'Shyma Chandran T ', 'Nil', 'Business Development Manager '),
(69, 'SA42085', 'Akhila Jayaraj', '9037165172', 'Sr Manager Business Development '),
(70, 'SA21519', 'Vineet Mathew', '9895551895', 'B.D'),
(71, 'SA42079', 'Sreeni Nair', '7012477380', 'Business development manager'),
(72, 'SA42052', 'Haritha C', '9061826035', 'BDE'),
(73, 'SA42055', 'Akhila T S', '9496625262', 'Department Head'),
(74, 'SA42096', 'ABHILASH MS', '8138059374', 'CRG ENGINEER '),
(75, 'SA52048', 'SHAMLAL SHAMKUMAR', '7034708292', 'CRG'),
(76, '', 'Binitta Varghese', '9645384523', 'BDM'),
(77, 'SA42087', 'Vishnu Vijayakumar', '9605047866', 'Graphic Designer'),
(78, 'SA4741', 'JIDHINRAM CG', '9962114307', 'Marine Support Engineer'),
(79, 'SA41199', 'JISHNU MARIYIL', '9400557314', 'CRG Engineer'),
(80, 'SA42064', 'SUJITH P S', '8760843370', 'CRG'),
(81, 'SA42047', 'POOJA K R', '7994916996', 'BDE'),
(82, 'SA4773', 'PREMA V', '7358741577', 'Business Development Manager'),
(83, 'SA42078', 'STEVE LALSON ', '7907728223', 'System Admin '),
(84, 'SA52077', 'Gadha J', '9895283561', 'Digital Marketing Executive '),
(85, 'SA21515', 'Nagarajan Mohan', '8610324330', 'R&D engineer'),
(86, 'SA42115', 'AKHIL E M', '9072513973', 'Software Engineer'),
(87, 'SA42114', 'Nidhin Saseendran', '9400674952', 'Junior Software Engineer'),
(88, 'SA21522', 'SHAHID M S ', '9037495016', 'Instrument Engineer '),
(89, 'SA21539', 'VISHNU V S', '9645314443', 'TECHNO SALES ENGINEER'),
(90, 'SA21526', 'SREEKUMAR B', '9650494783', 'TECHNO SALES ENGINEER'),
(91, 'SA21538', 'ANJALI B', '9539623803', 'Technical Support Engineer '),
(92, 'SA21520', 'Nimshaj P ', '9072311000', 'Service Engineer'),
(93, 'SA42125', 'RENJITH GANESH', '6385793601', 'Purchase Manager'),
(94, 'SA42120', 'Viji V Nair ', '8907720608', 'Sr.manager sales & placement '),
(95, 'SA41493', 'SARANYA MK', '9633748411', 'Operations'),
(96, 'SA52092', 'Ajnas  P S', '7034178213', 'CRG trainee'),
(97, 'SA42099', 'SAJAL MENON', '8547176306', 'CRG Engineer Automation '),
(98, 'SA52091', 'GOKUL KRISHNAN M J', '9995521036', 'Trainee Engineer '),
(99, 'SA42130', 'SALAHUDHEEN AYYOOBY KS', '8943640269', 'TRAINEE ENGINEER'),
(100, 'SA42116', 'Abees B', '9446782407', 'Trainee Engineer'),
(101, 'SA42135', 'ABDUL RAZACK.K', '8606430802', 'Trainee Engineer '),
(102, 'SA42108', 'NANDU K NAIR', '8113886056', 'Trainee Engineer '),
(103, 'SA42137', 'NANDU K NAIR', 'Nil', 'CRG Engineer'),
(104, 'SA42129', 'Harikrishnan Chandran Nair ', '9895075689', 'Trainee Engineer '),
(105, 'SA42136', 'MUNAVVIR NK', '9526472806', 'TRAINEE ENGINEER '),
(106, 'SA21552', 'Vishakh Vinod', '8606181337', 'Project Engineer'),
(107, 'SA4982', 'AMAN D', '9544384759', 'CRG ENGINEER'),
(108, 'SA42131', 'MOHAMMED AFSAL ', '6238565037', 'CRG'),
(109, 'SA42117', 'Prince vp', '8590645447', 'Fire and safety faculty '),
(110, 'SA42143', 'HARSHA SURESH', '9895911456', 'SOFTWARE TEST ENGINEER'),
(111, 'SA42124', 'Haripriya H', '8547654438', 'Python trainer'),
(112, 'SA42150', 'Aishwarya S Nair', '9947000880', 'Logistics Trainer'),
(113, 'SA42152', 'Aleena Brijith Johny', '7902782817', 'Logistics Trainer'),
(114, 'SA42145', 'Judy Hailin Ignatious ', '8129785798', 'Faculty '),
(115, 'SA42141', 'Rajeev Bhojwani', '9995138596', 'Placement Manager'),
(116, 'SA42158', 'JIKKUMON JAMES', '9495996643', 'Research and development (R&D)'),
(117, 'SA42123', 'Jaison Johny ', '9946924508', 'Training Manager '),
(118, 'SA42167', 'Ahammed Muzammil', '9497431363', 'Business Development Executive '),
(119, 'SA21619', 'Jince- Lawrance ', '9400545788', 'Techno sales Engineer '),
(120, 'SA21582', 'ATHUL SHAJITH', '8593035825', 'DESIGN & ESTIMATION ENGINEER'),
(121, 'SA21600', 'Justin Shibu Samuel ', '7012191929', 'Service Engineer '),
(122, 'SA21518', 'NAVEEN ANTO ', '9072719128', 'Service Engineer '),
(123, 'SA21658', 'ANN MARY JOSEPH', 'Nil', 'DESIGN & ESTIMATION ENGINEER'),
(124, 'SA21566', 'Adul nk', '7306590779', 'service engineer'),
(125, 'SA21559', 'NIDHINKUMAR K N', '8078068736', 'PLC PROGRAMMER'),
(126, 'SA21562', 'Athul M Nair', '8848998123', 'SERVICE ENGINEER '),
(127, 'SA21583', 'SHAMEER.A', '9633900154', 'Service Engineer'),
(128, 'SA21683', 'MARY SANDHYAV ', '9605738129', 'Design and estimation engineer '),
(129, 'SA21543', 'Mahadevan N S', '9207793344', 'Service engineer '),
(130, 'SA21620', 'Devmithra Prasad', '7558946179', 'Support Engineer'),
(131, 'SA21631', 'ARUN ANTONY ', '701272313', 'Service Engineer '),
(132, 'SA42134', 'AKASH KM', '9539120493', 'Crg engineer'),
(133, 'SA42178', 'Shebin M S', '9656970988', 'Graphic Designer '),
(134, 'SA42168', 'Jisha S Wilson', '9656754158', 'CRG Engineer'),
(135, 'SA42148', 'Akhil S Nair', '9384203347', 'CRG Engineer'),
(136, 'SA42182', 'Anand S Nair', '7012853740', 'Media Program Manager'),
(137, 'SA42184', 'Hebin PH', '9539125598', 'Video editor '),
(138, 'SA42149', 'Sana Sainaba K M', '9567438083', 'Teaching Faculty '),
(139, 'SA42169', 'Amal K Jacob', '9526119563', 'CRG'),
(140, 'SA42170', 'Francis George ', '8086093386', 'CRG '),
(141, 'SA42166', 'AJAY KRISHNA ', '9847232132', 'CRG'),
(142, 'SA42190', 'Vidhya V Nair', '8848664264', 'Content Presenter'),
(143, 'SA42172', 'Akshay K Manu', '7025724289', 'CRG'),
(144, 'SA42183', 'PRAISON THOMAS', 'Nil', 'Faculty '),
(145, 'SA42159', 'Hafice Ameer ', '8943320095', 'Faculty '),
(146, 'SA42156', 'Anju Sebastian', '9074925435', 'CRG'),
(147, 'SA42155', 'JOSHY JOHN M', '7356488733', 'Accounting Faculty'),
(148, 'SA42191', 'ANTO XAVIER ', '8606911784', 'Videographer '),
(149, 'SA42192', 'Abhijith Somasekharan', '9526403035', 'Wordpress Developer'),
(150, 'SA42189', 'Shijohn MJ', '9745843980', 'graphic designer'),
(151, 'SA42181', 'Anandu S', '8156938640', 'Network Administrator '),
(152, 'SA42171', 'Dona George Sunny', '6282312595', 'Business Development Manager'),
(153, 'SATrainee0', 'Vaibhav Anil', '7902646570', 'Software Trainee'),
(154, 'SASA42142', 'SARATH C', '9539297574', 'CRG Engineer '),
(155, 'SASA42111', 'Fida v', '9544007167', 'Front office'),
(156, 'SA4819', 'Mahima purakkat', '7907822236', 'Branch Manager '),
(157, 'SA42206', 'Ashwin E', '9495608767', 'Creative Head'),
(158, 'SA42193', 'Alan George ', '7306166582', 'Editor '),
(159, 'SA42175', 'VINEETH V', '9526419705', 'CRG'),
(160, 'SA42164', 'SUMATHI D', '9487230638', 'BDE'),
(161, 'SA42196', 'LATHA B', '8508413987', 'BDE'),
(162, 'SA4736', 'PADMAKUMAR E', '8122935589', 'BRANCH MANGER'),
(163, 'SA21595', 'Sujith P S ', '9361835895', 'Service Engineer '),
(164, 'SA21717', 'Lekshmi V Nair', '9567514901', 'Design and Estimation Engineer'),
(165, 'SA21716', 'Parvathy P Pillai', '9207512314', 'Design and Estimation Engineer'),
(166, 'SA21736', 'Gautham Vasudevan', '8590301382', 'Technical sales engineer '),
(167, 'SA21715', 'Adarsh P', '8289939733', 'Design and Estimation Engineer '),
(168, 'SA21626', 'Milu Maria Jose', '6238608730', 'Admin Executive '),
(169, 'SA21740', 'Joe Ignatious', '9995218508', 'Business Development Manager'),
(170, 'SA42186', 'Athira Akhil', '9633430298', 'Senior Network Engineer'),
(171, 'SA42154', 'Basil Jose', '9633636647', 'Head of Department Networking'),
(172, 'SA42200', 'SIBIN KS', '8136835897', 'Graphic Designer'),
(173, 'SA42176', 'Arun Kylath Isaac', '9072237906', 'Faculty in IT Networking '),
(174, 'SA42173', 'Vishnuprasad C', '8593815163', 'Embedded engineer '),
(175, 'SA42174', 'Dheeraj V Anand', 'Nil', 'Embedded Engineer'),
(176, 'SA42195', 'Steffi arun', '9745872399', 'Embedded engineering '),
(177, 'SA42187', 'Nandu Santhosh ', '9446282412', 'Business development manager '),
(178, 'SA42210', 'Sobin S Rajan', '8281273301', 'BDA'),
(179, 'SA42204', 'Chaithanya c.v', '6238286014', 'BDE'),
(180, 'SA42153', 'Bincy R Varghese ', '8113037012', 'BDE'),
(181, 'SA4221', 'Sanjuna Stanly ', '9746724688', 'Sales '),
(182, 'SA-42194', 'Sadiya K A', '9495166194', 'Data Science trainer'),
(183, 'SA4753', 'Gokul P R', '8281544783', 'Technical Consultant'),
(184, 'SA42109', 'M Rubin Ray', '9995246123', 'Sr. R & D Engineer'),
(185, 'SA21604', 'Nithin A', 'Nil', 'Sr. R&D Engineer'),
(186, 'SA21646', 'Harshin P H ', '7356843267', 'Jr Technical Consultant '),
(187, 'SA21706', 'ROSHNIN M R', '7356170693', 'Electrical design and estimation engineer'),
(188, 'SA21569', 'GOPAK BABU', '7558802304', 'DESIGN AND ESTIMATION ENGINEER'),
(189, 'SA21174', 'Renjith TG', '9744762627', 'Design Engineer'),
(190, 'Sac7162', 'Nathaniel Xavier', '9819437390', 'Service Engineer '),
(191, 'SA21628', 'Athul KC', '8895358348', 'Automation Engineer'),
(192, 'SA21530', 'ABDUSSUBHAN AMIAN', '8089270551', 'Service Engineer '),
(193, 'SA42197', 'ARUNLAL VG', '9744711333', 'BD'),
(194, 'SA21643', 'Abhirami M.R ', '7593933489', 'HR Assistant '),
(195, 'SA21589', 'Rasiyabi V P', '9745997902', 'Accounts Manager'),
(196, 'SA21719', 'REKHA RAVINDRAN', '9995325223', 'ACCOUNTANT'),
(197, 'SA21629', 'SEENA.S', '9400440924', 'Accountant'),
(198, 'SA21684', 'Soumya Sadhush ', '8921569827', 'Purchase Assistant '),
(199, 'SA21745', 'Salmiya SN', '9539129695', 'Accountant '),
(200, 'SA21681', 'SHARATH KUMAR MP', '7994687632', 'Store keeper '),
(201, 'SA21698', 'Eldhose Abraham', '9946812606', 'Design and estimate engineer '),
(202, 'SA21613', 'Joash K Joy', '6282623611', 'Embedded Engineer '),
(203, 'SA21614', 'Shaun Babu Mookken ', '9074286237', 'Embedded '),
(204, 'SA7003', 'PRASANTH.KP', '9037292440', 'Store Incharge'),
(205, 'SAC7142', 'TERRY JACOB ', '9567661415', 'Supervisor '),
(206, 'SA21692', 'Jyothimol C S', 'Nil', 'Project Assistant '),
(207, 'SA21665', 'Divya S', '9074634513', 'Power electronics technician '),
(208, 'SA21729', 'Meghanath MS', 'Nil', 'Front-End Developer'),
(209, 'SA21645', 'ANUSHA K P ', '8156823509', 'Embedded Engineer '),
(210, 'SA21677SA', 'Abdul Rashid', '9747348776', 'Embedded engineer '),
(211, 'SA21574', 'RAHUL RK', '8592859511', 'Service Engineer'),
(212, 'SA21635', 'Anandhu Krishna', '9544005391', 'Embedded engineer '),
(213, 'SA21532', 'Shiby K Raju', '9020299099', 'Operation Officer- Repairs'),
(214, 'SA21624', 'ARUN R', 'Nil', 'Estimation Supporter'),
(215, 'SA4372', 'MIDHUN NS', '9895257391', 'Accountant '),
(216, 'SA21531', 'Kesiya V J', '9895821104', 'Operation officer'),
(217, 'SA21749', 'CHINJU E G', '8907791244', 'Development Engineer Power Electronics'),
(218, 'SA21752', 'K Surendran', '9961497714', 'Project Manager - Defence '),
(219, 'SA-21014', 'Sreegith C G', '9400551442', 'Manager-Electrical Design'),
(220, 'SA-TRAINEE', 'Bhagyalakshmi K', '8590662169', 'Software Trainee'),
(221, 'SA42216', 'Keerthana NP', '7025996706', 'Business Development Manager '),
(222, 'SA42207', 'Salmon K Joseph Thomas', '9995199903', 'CRG Engineer '),
(223, 'SA21672', 'Faisal NS', '9061207682', 'Service engineer '),
(224, 'SA21742', 'Nandu K Nair', 'Nil', 'Service Engineer '),
(225, 'SA21755', 'SUJA K. M. ', '9633300639', 'DESIGN & ESTIMATION ENGINEER'),
(226, 'SA42198', 'Akhil M Nair ', '8129764080', 'Safety Officer '),
(227, 'SA42217', 'Jerry Francis John ', '8891857105', 'Tutor '),
(228, 'SA42199', 'Amrutha Gopalakrishnan ', '6235868896', 'Electrical Design Engineer '),
(229, 'SA42208', 'Suryamol P S', '9745763911', 'Quantity Surveyor'),
(230, 'SA42221', 'Gopika T G', '8590975621', 'Python CRG'),
(231, 'SA42203', 'Kevin K Varughese', '7902214376', 'CRG Engineer'),
(232, 'SA42224', 'Akshay S', '8606720324', 'Motion Graphic Designer '),
(233, 'SA42214', 'Mohamed Safvan', '8891159056', 'Flutter Developer'),
(234, 'SA42223', 'Tibin John', '9745852215', 'system administrator'),
(235, 'SA21738', 'Shiju T S', '9633704491', 'Service Engineer '),
(236, 'SA21760', 'Bibik sajan', '9961235030', 'Service Engineer'),
(237, 'SA21767', 'ABIN ANTONY ', '8589033640', 'INSTRUMENT TECHNICIAN '),
(238, 'SA21731', 'Remya T R', '9645006424', 'POWER ELECTRONICS DESIGN ENGINEER'),
(239, 'SA21726', 'Abees.B', '6282588379', 'Automation Service Engineer '),
(240, 'SA42001', 'C. P. VENKATESH ', '7358173364', 'CRG ENGINEER'),
(241, 'SA42151', 'Arun Jebabooshan T', '9994087653', 'CRG Engineer'),
(242, 'SA4342', 'Paul avarachan', '9400565264', 'Service engineer'),
(243, 'SA21753', 'Rajesh manikath', '8138094898', 'Snr. Service Engineer'),
(244, 'SA21764', 'Shijo Shaji', '7559052974', 'Automation Project Engineer'),
(245, 'SA21678', 'Vigneshwaran s.s', '8122847432', 'Services engineer'),
(246, 'SA42230', 'SARANYA.K. S', '7902251153', 'FACULTY'),
(247, 'SA42227', 'Ebin Francis', '7561083969', 'Video Editor'),
(248, 'SA42228', 'Sona Jayan', '6282288949', 'Business Development '),
(249, 'SAL42233', 'Jerin k Samuel ', '6238853191', 'Senior civil faculty '),
(250, 'SA41340', 'Anju V S', '9961277733', 'Manager - Projects'),
(251, 'SA21823', 'Jojo Augustine ', '9400411649', 'Supervisor '),
(252, 'SA42219', 'Nisha S L ', '9446034048', 'Teaching faculty '),
(253, 'SA42146', 'Rajeev Bhojwani', '9995138596', 'Placement Officer'),
(254, 'SA42241', 'Diya Jose', '9395167683', 'Jnr Marketing Strategist'),
(255, 'SA21746', 'MANIKANDAN PANCHATCHARAM', '8870641613', 'SERVICE ENGINEER '),
(256, 'SAC7046', 'Siju S', '9744603059', 'Supervisor'),
(257, 'SA21757', 'Benson. P j', '9961915400', 'Supervisor '),
(258, 'SA21788', 'Anil Thomas', '9400622734', 'Design and Estimation Engineer'),
(259, 'SA21787', 'BEN ALIAS', '8078751682', 'Service engineer '),
(260, 'SA21786', 'MUHAMMED SHAHID S', '9744491856', 'SERVICE ENGINEER'),
(261, 'SA21784', 'Yogesh R', '9446789960', 'Service Engineer '),
(262, 'SA21819', 'DEVADARSAN PV', '8111956861', 'Project Engineer'),
(263, 'SA2178', 'Yogesh R', 'Nil', 'Automation Engineer '),
(264, 'SA21774', 'Sreeram g', '9061103225', 'Service Engineer '),
(265, 'SA21769', 'Muhammed Ansil A. A', '9633728696', 'Office Assistant '),
(266, 'SAC7177', 'Robin V B', '9895670164', 'Safety  Engineer '),
(267, 'SA21671', 'Namitha Sabu', '9400565957', 'Project monitoring and coordination '),
(268, 'SAC7178', 'Tinu Xavier V X', '8281635314', 'Supervisor '),
(269, 'SA42242', 'Annashali', '8943278505', 'B.D.E'),
(270, 'SA21809', 'Arunima TR ', '7510743006', 'Project assistant '),
(271, 'SA21845', 'Joe Jose', '9074970498', 'Electrical Control Systems Design engineer '),
(272, 'SA21842', 'Sindrella Jacob', '9567953564', 'Automation and Estimation Engineer '),
(273, 'SA21843', 'Sona Susan Vinod', '9847072779', 'Design and Estimation Engineer'),
(274, 'SA21841', 'NEKHA VINOD ', '9645756434', 'Design and Estimation Engineer '),
(275, 'SA21844', 'Dhurga Ajithkumar ', '7736280784', 'Automation and estimation engineer '),
(276, 'SA21840', 'Parvathy kp', '9567015851', 'Store assistant '),
(277, 'SA21561', 'JESTO K J', '9961109971', 'SERVICE ENGINEER '),
(278, 'SA21725', 'Santhosh A', '9585426923', 'Service engineer '),
(279, 'SA21743', 'Ajnas P S', '7034178213', 'Service Engineer '),
(280, 'SA21640', 'Sachith Kanna M', '8680971860', 'SERVICE ENGINEER'),
(281, 'SA21696', 'Yadhukrishnan ss ', '8281492559', 'Service engineer '),
(282, 'SAC7157', 'SHIBIN S', '9946272384', 'SERVICE ENGINEER '),
(283, 'SA21830', 'ANEESH RAVINDRAN', '9496603371', 'Supervisor'),
(284, 'SA-21574', 'Rahul RK', '8592859511', 'Service Engineer'),
(285, 'SA21839', 'Dileep D', '9995170781', 'Accountant '),
(286, 'SAC7002', 'Subin K S', '8139874003', 'Supervisor'),
(287, 'SA21818', 'PRIYANBABU B', '8592088421', 'Technician '),
(288, 'SA21800', 'Swatheesh', '9656160330', 'Service engineer'),
(289, 'SA21789', 'Jesanto A Thomas', '9526232633', 'Jr service technician '),
(290, 'SA21846', 'Nithin Viswanath', '9400451701', 'Service engineer'),
(291, 'SA-21680', 'ARAVIND VARIER P ', 'Nil', 'Supervisor '),
(292, 'SA42218', 'Emmanual Jenson', '6282376481', 'CRG'),
(293, 'SA42234', 'Achuthan V S ', '9383473980', 'CRG'),
(294, 'SA42226', 'Joel K Johnson', '9746206914', 'CRG'),
(295, 'SA42236', 'Amal Joy', '8086962561', 'CRG ENGINEER'),
(296, 'SA42238', 'AJMAL RASHEED ', '9846312848', 'CRG'),
(297, 'SA42231', 'Anandu A', '9961478389', 'CRG Engineer '),
(298, 'SA42232', 'AHALYA K S', '8139052005', 'Instrumentation & Control Trainer'),
(299, 'SA42235', 'FIROS K R', 'Nil', 'CRG'),
(300, 'SA-42237', 'Alvin A D', '8089581493', 'CRG ENGINEER'),
(301, 'SA21802', 'ADITHYA LATHEESH', '7902678843', 'R&D Engineer'),
(302, 'SA42246', 'Sanu Paul', '9645518126', 'Business Development Manager '),
(303, 'SA42447', 'Linto Mary Somson', '7025952400', 'BUSINESS MANAGER'),
(304, 'SA42252', 'Jalva jahan', '6282079044', 'BDE'),
(305, 'SA42251', 'Philomina hendri', '9061131505', 'BD'),
(306, 'SA21689', 'Jestin jose', 'Nil', 'Superviser '),
(307, 'SA41033', 'Midhun P Das', '7736848426', 'BDM'),
(308, 'SA42025', 'Pramod Sankar', '7907846827', 'BDM'),
(309, 'SA42103', 'BINITTA VARGHESE', '9645384523', 'BDM'),
(310, 'SA108', 'Jithin Felix', '9995205781', 'Sr. Business Development Manager'),
(311, 'SA21524', 'VARUN V KURUP', '8714789540', 'Service engineer '),
(312, 'SA42254', 'Mary Sheela E.V', '8590854158', 'Business Development Executive'),
(313, 'SA42255', 'Anjitha Jose', '9072161571', 'Business Development Executive'),
(314, 'SA21712', 'Biju kumar', '9961306182', 'Fabricator'),
(315, 'SA42256', 'Jaismon Jolly', '9995876404', 'Sales Head'),
(316, 'SA42259', 'Anwar Sadath', '9020077243', 'Senior Digital Marketing Manager '),
(317, 'SA42258', 'Arunima Rajesh ', '7012254198', 'Business Development Manager '),
(318, 'SA42264', 'Anupama Asokan', '7994407938', 'CRG Engineer'),
(319, 'SA42265', 'Adwaith shaji ', '9895620261', 'CRG Engineer '),
(320, 'SA42262', 'Maneesha Mohan', '7736958220', 'CRG Engineer '),
(321, 'SA42263', 'Mithra M Lal', '9074544564', 'CRG Engineer '),
(322, 'SA21917', 'Aiswarya krishna', '9446289847', 'Embedded engineer'),
(323, 'SA42269', 'Shain T', '7560868413', 'Digital Marketing Manager'),
(324, 'SA42244', 'Milan sandra', '9562628058', 'Media head'),
(325, 'SASMS/041', 'VISAKH RADHAKRISHNAN', 'Nil', 'SENIOR SERVICE?ENGINEER'),
(326, 'SA42157', 'Mohammed Sahal', 'Nil', 'Junior Software Engineer'),
(328, 'sa42000', 'Nil', 'Nil', 'Nil'),
(329, 'SA42240', 'Akhil Raj B', '9778305763', 'Automation');

-- --------------------------------------------------------

--
-- Table structure for table `th_memory_game`
--

DROP TABLE IF EXISTS `th_memory_game`;
CREATE TABLE IF NOT EXISTS `th_memory_game` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `total_attempts` int DEFAULT '0',
  `time_taken` int DEFAULT '0',
  `status` tinyint DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `winner_position` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `winner_position` (`winner_position`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `th_memory_game`
--

INSERT INTO `th_memory_game` (`id`, `user_id`, `total_attempts`, `time_taken`, `status`, `completed_at`, `winner_position`) VALUES
(1, 149, 14, 76, 1, '2025-04-04 06:30:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `th_mystery_box`
--

DROP TABLE IF EXISTS `th_mystery_box`;
CREATE TABLE IF NOT EXISTS `th_mystery_box` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `answer` varchar(255) NOT NULL,
  `hint` text,
  `status` tinyint DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `th_mystery_box`
--

INSERT INTO `th_mystery_box` (`id`, `question`, `answer`, `hint`, `status`) VALUES
(19, 'The more you take, the more you leave behind. What are they?', 'Footsteps', 'Walk with me!', 1),
(18, 'What can fill a room but takes up no space?', 'Light', 'You turn it on!', 1),
(17, 'What begins with T, ends with T, and has T in it?', 'A teapot', 'Drink time!', 1),
(16, 'What has many keys but can’t open a single lock?', 'A piano', 'Musical mystery!', 1),
(15, 'What goes up but never comes down?', 'Your age', 'It increases every birthday!', 1),
(14, 'What has to be broken before you can use it?', 'An egg', 'Breakfast item!', 1),
(13, 'I’m tall when I’m young and short when I’m old. What am I?', 'A candle', 'I melt over time!', 1),
(12, 'What has hands but can’t clap?', 'A clock', 'It tells time!', 1),
(11, 'What comes once in a minute, twice in a moment, but never in a thousand years?', 'The letter M', 'Think letters, not time!', 1),
(20, 'I speak without a mouth and hear without ears. What am I?', 'An echo', 'Bounces back!', 1);

-- --------------------------------------------------------

--
-- Table structure for table `th_mystery_box_scores`
--

DROP TABLE IF EXISTS `th_mystery_box_scores`;
CREATE TABLE IF NOT EXISTS `th_mystery_box_scores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `attempts` int DEFAULT '0',
  `solved_at` timestamp NULL DEFAULT NULL,
  `score` int DEFAULT '0',
  `question_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `th_mystery_box_scores`
--

INSERT INTO `th_mystery_box_scores` (`id`, `user_id`, `attempts`, `solved_at`, `score`, `question_id`) VALUES
(1, 149, 1, '2025-04-04 06:30:23', 100, 10);

-- --------------------------------------------------------

--
-- Table structure for table `th_prizes`
--

DROP TABLE IF EXISTS `th_prizes`;
CREATE TABLE IF NOT EXISTS `th_prizes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `winner_position` int NOT NULL,
  `prize_name` varchar(50) NOT NULL,
  `prize_amount` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `winner_position` (`winner_position`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text,
  `qualification` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `otp` varchar(10) DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT '0',
  `password` varchar(255) NOT NULL,
  `otp_code` varchar(6) DEFAULT NULL,
  `referral_code` varchar(10) DEFAULT NULL,
  `referred_by` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_levels`
--

DROP TABLE IF EXISTS `user_levels`;
CREATE TABLE IF NOT EXISTS `user_levels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `level` int NOT NULL,
  `status` enum('locked','unlocked','completed') DEFAULT 'locked',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_user_level` (`user_id`,`level`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_levels`
--

INSERT INTO `user_levels` (`id`, `user_id`, `level`, `status`) VALUES
(1, 149, 1, 'locked'),
(2, 146, 1, 'unlocked'),
(3, 161, 1, 'unlocked'),
(4, 329, 1, 'unlocked'),
(5, 149, 2, 'locked'),
(6, 149, 3, 'locked'),
(7, 149, 4, 'locked'),
(8, 149, 5, 'locked'),
(9, 149, 6, 'unlocked');

-- --------------------------------------------------------

--
-- Table structure for table `user_login_details`
--

DROP TABLE IF EXISTS `user_login_details`;
CREATE TABLE IF NOT EXISTS `user_login_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(10) NOT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `mac_address` varchar(50) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `login_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_login_details`
--

INSERT INTO `user_login_details` (`id`, `emp_id`, `ip_address`, `mac_address`, `location`, `login_time`) VALUES
(23, 'sa42192', '202.164.141.232', '74-56-3C-D3-E6-12', '9.9899578, 76.3007544', '2025-04-04 06:24:53'),
(19, 'sa42192', '202.164.141.232', '74-56-3C-D3-E6-12', '9.9899578, 76.3007544', '2025-04-03 12:18:49'),
(20, 'sa42192', '202.164.141.232', '74-56-3C-D3-E6-12', '9.9899578, 76.3007544', '2025-04-03 12:21:47'),
(21, 'sa42192', '202.164.141.232', '74-56-3C-D3-E6-12', '9.9899578, 76.3007544', '2025-04-04 03:42:39'),
(22, 'sa42192', '202.164.141.232', '74-56-3C-D3-E6-12', '9.9899578, 76.3007544', '2025-04-04 04:15:22');

-- --------------------------------------------------------

--
-- Table structure for table `user_status`
--

DROP TABLE IF EXISTS `user_status`;
CREATE TABLE IF NOT EXISTS `user_status` (
  `user_id` int NOT NULL,
  `status` enum('win','fail') NOT NULL,
  `completed_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
