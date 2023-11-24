
INSERT INTO USERS_TABLE (id, email, FIRST_NAME, LAST_NAME, login, password) VALUES 
(1, 'user1@gmail.com', 'John', 'Doe', 'johndoe', 'password123');
-- (2, 'user2@gmail.com', 'Jane', 'Smith', 'janesmith', 'pass456',False),
-- (3, 'user3@gmail.com', 'Bob', 'Johnson', 'bobj', 'secure89',False),
-- (4, 'user4@gmail.com', 'Alice', 'Williams', 'alicew', 'qwerty12',False),
-- (5, 'user5@gmail.com', 'Charlie', 'Brown', 'charlieb', 'abc123',False),
-- (6, 'user6@gmail.com', 'Eva', 'Miller', 'evam', 'p@ssw0rd',False),
-- (7, 'user7@gmail.com', 'Frank', 'Davis', 'frankd', 'letmein1',False),
-- (8, 'user8@gmail.com', 'Grace', 'Thomas', 'gracet', 'passphrase',False),
-- (9, 'user9@gmail.com', 'Henry', 'Martin', 'henrym', 'hello123',False),
-- (10, 'user10@gmail.com', 'Isabel', 'Taylor', 'isabelt', 'strongpw',False),
-- (11, 'user11@gmail.com', 'Kasidech', 'Chumthong', 'Gote888', 'kukuyt88',False),
-- (12, 'user12@gmail.com', 'Chaiwat ', 'Sawamiphak', 'Max99', 'maxmax99',False),
-- (13, 'user13@gmail.com', 'Pachara', 'Chinnikorn ', 'MatTsover', 'TSover77',False),
-- (14, 'user14@gmail.com', 'Pakpoom ', 'Rodjana ', 'UFA69', 'Por69',False),
-- (15, 'user15@gmail.com', 'Phubet', 'Klubchai', 'Handsome44', 'Somehand66',False),
-- (16, 'user16@gmail.com', 'Sirisak ', 'Vongsawat ', 'DoDo69', '6969DODO',False);
-- (17, 'admin@gmail.com', 'Admin ', 'admin ', 'Admin1', 'Admin1',True);



INSERT INTO restaurant_table (id, name, rating) VALUES
(511, 'Phra Athit Noodles', 5),
(512, 'Pag Mor', 4),
(513, 'GINDON at Mae Fah Luang', 4),
(514, 'Imm Jung fresh noodles', 4),
(515, 'Senchai Charoensap', 5),
(516, 'Lamp Cafe at Mae Fah Luang', 4),
(517, 'Singha Park Cafe M Square MFU Chiang Rai', 4),
(518, 'Cafe Amazon MFU', 5),
(519, 'Rodiya Roti Hat Yai', 3),
(520, 'Yai Da Crepe', 5),
(521, 'Milk Box MFU', 4);

INSERT INTO review (Review_ID, id, Restaurant_ID, ReviewText, Rating) VALUES
(101, 1, 518, 'Great place! I like the atmosphere', 4),
(102, 1, 521, 'The food is very delicious. Especially desserts', 5),
(103, 2, 513, 'Good service but prices a bit high', 4),
(104, 2, 515, 'Friendly staff and friendly atmosphere', 4),
(105, 3, 511, 'Good experience Food quality needs to be improved', 3),
(106, 3, 512, 'Excellent food and quick service', 5),
(107, 4, 517, 'This place has a beautiful view. But the menu is limited', 3),
(108, 4, 517, 'Best restaurant in MFU', 5),
(109, 5, 514, 'average experience Nothing special', 3),
(110, 5, 521, 'Delicious food in a comfortable atmosphere', 4),
(111, 6, 516, 'Wait time too long But the food is worth it', 4),
(112, 6, 513, 'Very good value for money I like the variety in the menu', 5),
(113, 7, 519, 'Dessert is the highlight of the meal', 5),
(114, 7, 516, 'Good service but small quantity of drinks', 3),
(115, 8, 518, 'family friendly environment', 4),
(116, 8, 513, 'Amazing food! A little expensive', 4),
(117, 9, 518, 'Staff are knowledgeable about the menu', 4),
(118, 9, 514, 'Cozy atmosphere and friendly staff', 4),
(119, 10, 515, 'The restaurant has a unique and stylish decoration', 5),
(120, 10, 512, 'Seat area suitable for dinner', 4),
(121, 11, 511, 'variety of noodles', 4),
(122, 12, 516, 'The atmosphere was lively. And the drinks are refreshing', 5),
(123, 12, 520, 'Crepes delicious beyond expectations', 5),
(124, 13, 511, 'Friendly staff but limited options', 3),
(125, 13, 512, 'Well prepared food with attention to detail', 5),
(126, 14, 514, 'Unique cooking experience, must try!', 5),
(127, 14, 515, 'Quick service and reasonable prices', 4),
(128, 15, 515, 'Comfortable seats and warm atmosphere', 4),
(129, 15, 520, 'Dessert menu rather disappointing', 3),
(130, 15, 520, 'Highly recommended', 5),
(131, 11, 519, 'Attentive staff and wide range of drinks', 4),
(132, 12, 521, 'Beautiful interior design', 4),
(133, 13, 519, 'Delicious, but waited longer than expected', 3);