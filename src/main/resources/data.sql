
INSERT INTO USERS_TABLE (id, email, FIRST_NAME, LAST_NAME, login, password)
VALUES 
(1, 'user1@gmail.com', 'John', 'Doe', 'johndoe', 'password123'),
(2, 'user2@gmail.com', 'Jane', 'Smith', 'janesmith', 'pass456'),
(3, 'user3@gmail.com', 'Bob', 'Johnson', 'bobj', 'secure89'),
(4, 'user4@gmail.com', 'Alice', 'Williams', 'alicew', 'qwerty12'),
(5, 'user5@gmail.com', 'Charlie', 'Brown', 'charlieb', 'abc123'),
(6, 'user6@gmail.com', 'Eva', 'Miller', 'evam', 'p@ssw0rd'),
(7, 'user7@gmail.com', 'Frank', 'Davis', 'frankd', 'letmein1'),
(8, 'user8@gmail.com', 'Grace', 'Thomas', 'gracet', 'passphrase'),
(9, 'user9@gmail.com', 'Henry', 'Martin', 'henrym', 'hello123'),
(10, 'user10@gmail.com', 'Isabel', 'Taylor', 'isabelt', 'strongpw'),
(11, 'user11@gmail.com', 'Kasidech', 'Chumthong', 'Gote888', 'kukuyt88'),
(12, 'user12@gmail.com', 'Chaiwat ', 'Sawamiphak', 'Max99', 'maxmax99'),
(13, 'user13@gmail.com', 'Pachara', 'Chinnikorn ', 'MatTsover', 'TSover77'),
(14, 'user14@gmail.com', 'Pakpoom ', 'Rodjana ', 'UFA69', 'Por69'),
(15, 'user15@gmail.com', 'Phubet', 'Klubchai', 'Handsome44', 'Somehand66'),
(16, 'user16@gmail.com', 'Sirisak ', 'Vongsawat ', 'DoDo69', '6969DODO');


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

INSERT INTO comment (comment_id, user_id, comment_text) VALUES
(1, 1, 'Sample Comment');