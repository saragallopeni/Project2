
use task_managment;
CREATE TABLE statuses (
  gjendja_statusit ENUM('To do', 'In progress', 'Blocked', 'In review', 'Done') PRIMARY KEY
);

CREATE TABLE users (
  user_id INT(11) AUTO_INCREMENT PRIMARY KEY,
  emri VARCHAR(100),
  mbiemri VARCHAR(100),
  email VARCHAR(100),
  roli ENUM('Admin', 'Front-End Developer','UI/UX Designer','Web Designer','Back-end Developer','Product Manager') NOT NULL
);

CREATE TABLE tasks (
  task_id INT(11) AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255),
  description TEXT,
  status ENUM('To do', 'In progress', 'Blocked', 'In review', 'Done'),
  assignee_id INT(11),
  created_at TIMESTAMP,
  FOREIGN KEY (status) REFERENCES statuses(gjendja_statusit)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  FOREIGN KEY (assignee_id) REFERENCES users(user_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

/* https://www.mockaroo.com <- ku jane nxjerr të dhënat */

into users (user_id, emri, mbiemri, email, roli) values (1, 'Raeann', 'Leal', 'rleal0@arizona.edu', 'Admin');
insert into users (user_id, emri, mbiemri, email, roli) values (2, 'Emilia', 'McAlindon', 'emcalindon1@cmu.edu', 'Front-End Developer');
insert into users (user_id, emri, mbiemri, email, roli) values (3, 'Blinni', 'Yeardley', 'byeardley2@apache.org', 'UI/UX Designer');
insert into users (user_id, emri, mbiemri, email, roli) values (4, 'Myrna', 'Skermer', 'mskermer3@tinyurl.com', 'Web Designer');
insert into users (user_id, emri, mbiemri, email, roli) values (5, 'Moss', 'Mc-Kerley', 'mmckerley4@time.com', 'Back-end Developer');
insert into users (user_id, emri, mbiemri, email, roli) values (6, 'Bevon', 'Dobeson', 'bdobeson5@nbcnews.com', 'Product Manager');
insert into users (user_id, emri, mbiemri, email, roli) values (7, 'Jolyn', 'Fonzone', 'jfonzone6@trellian.com', 'Web Designer');
insert into users (user_id, emri, mbiemri, email, roli) values (8, 'Daveta', 'Stanlock', 'dstanlock7@house.gov', 'Front-End Developer');
insert into users (user_id, emri, mbiemri, email, roli) values (9, 'Hana', 'Forbear', 'hforbear8@scientificamerican.com', 'UI/UX Designer');
insert into users (user_id, emri, mbiemri, email, roli) values (10, 'Tore', 'Villaret', 'tvillaret9@indiegogo.com', 'Web Designer');
insert into users (user_id, emri, mbiemri, email, roli) values (11, 'Salmon', 'Kilshaw', 'skilshawa@businessinsider.com', 'Back-end Developer');
insert into users (user_id, emri, mbiemri, email, roli) values (12, 'Kingston', 'Zambonini', 'kzamboninib@so-net.ne.jp', 'Product Manager');
insert into users (user_id, emri, mbiemri, email, roli) values (13, 'Lois', 'Tarry', 'ltarryc@example.com', 'UI/UX Designer');
insert into users (user_id, emri, mbiemri, email, roli) values (14, 'Vachel', 'Pergens', 'vpergensd@soundcloud.com', 'Front-End Developer');
insert into users (user_id, emri, mbiemri, email, roli) values (15, 'Karia', 'Marsie', 'kmarsiee@networksolutions.com', 'UI/UX Designer');

insert into tasks (task_id, title, status, assignee_id) values (1, 'CodeSprint', 'To do', 5);
insert into tasks (task_id, title, status, assignee_id) values (2, 'CodeSprint', 'In progress', 5);
insert into tasks (task_id, title, status, assignee_id) values (3, 'CodeSprint', 'Blocked', 11);
insert into tasks (task_id, title, status, assignee_id) values (4, 'CodeSprint', 'In review', 5);
insert into tasks (task_id, title, status, assignee_id) values (5, 'CodeSprint', 'Done', 14);
insert into tasks (task_id, title, status, assignee_id) values (6, 'CyberShield', 'To do', 14);
insert into tasks (task_id, title, status, assignee_id) values (7, 'CyberShield', 'In progress', 3);
insert into tasks (task_id, title, status, assignee_id) values (8, 'CyberShield', 'Blocked', 15);
insert into tasks (task_id, title, status, assignee_id) values (1, 'ZenithWeb', 'To do', 8);
insert into tasks (task_id, title, status, assignee_id) values (2, 'ZenithWeb', 'In progress', 4);
insert into tasks (task_id, title, status, assignee_id) values (3, 'SmartMart', 'Blocked', 9);
insert into tasks (task_id, title, status, assignee_id) values (4, 'PulseSecure', 'In review', 7);
insert into tasks (task_id, title, status, assignee_id) values (5, 'CodeSprint', 'Done', 10);
insert into tasks (task_id, title, status, assignee_id) values (6, 'CyberShield', 'To do', 8);
insert into tasks (task_id, title, status, assignee_id) values (7, 'PulseSecure', 'In progress', 11);
insert into tasks (task_id, title, status, assignee_id) values (8, 'CyberShield', 'Blocked', 8);
insert into tasks (task_id, title, status, assignee_id) values (9, 'FutureFleet', 'In review', 15);
insert into tasks (task_id, title, status, assignee_id) values (10, 'RoboLogistics', 'Done', 9);
insert into tasks (task_id, title, status, assignee_id) values (11, 'RoboLogistics', 'To do', 2);
insert into tasks (task_id, title, status, assignee_id) values (12, 'RoboLogistics', 'In progress', 15);
insert into tasks (task_id, title, status, assignee_id) values (13, 'FutureFleet', 'Blocked', 8);
insert into tasks (task_id, title, status, assignee_id) values (14, 'CodeSprint', 'In review', 14);
insert into tasks (task_id, title, status, assignee_id) values (15, 'CyberShield', 'Done', 9);
insert into tasks (task_id, title, status, assignee_id) values (16, 'CyberShield', 'To do', 4);
insert into tasks (task_id, title, status, assignee_id) values (17, 'MindCraft', 'In progress', 15);
insert into tasks (task_id, title, status, assignee_id) values (18, 'PulseSecure', 'Blocked', 14);
insert into tasks (task_id, title, status, assignee_id) values (19, 'FutureFleet', 'In review', 2);
insert into tasks (task_id, title, status, assignee_id) values (20, 'SmartMart', 'Done', 13);