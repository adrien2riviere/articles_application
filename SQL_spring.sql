DROP TABLE IF EXISTS spring_db.compagnies, spring_db.divisions, spring_db.departments, 
spring_db.users, spring_db.items, spring_db.faborders, spring_db.itemoperations, spring_db.faborderoperations;


CREATE TABLE spring_db.users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50),
  password VARCHAR(64),
  langage VARCHAR(2),
  timezone VARCHAR(2),
  display VARCHAR(25),
  role VARCHAR(25),
  department VARCHAR(7)
);


CREATE TABLE spring_db.departments (
  id INT AUTO_INCREMENT PRIMARY KEY,
  cono VARCHAR(3),
  divi VARCHAR(3)
);


CREATE TABLE spring_db.items (
  id INT AUTO_INCREMENT PRIMARY KEY,
  reference VARCHAR(25),
  colour VARCHAR(25) NOT NULL,
  size VARCHAR(25) NOT NULL,
  sizenumber INT NOT NULL,
  graphics VARCHAR(25) NOT NULL,
  price DECIMAL(5, 2) NOT NULL,
  table_row INT NOT NULL,
  department VARCHAR(7)
);

CREATE TABLE spring_db.faborders (
  id INT AUTO_INCREMENT PRIMARY KEY,
  reference VARCHAR(25),
  item VARCHAR(25),
  status VARCHAR(25),
  statnumber INT NOT NULL,
  dateprod VARCHAR(25) NOT NULL,
  quantity INT NOT NULL,
  table_row INT NOT NULL,
  department VARCHAR(7)
);

CREATE TABLE spring_db.itemoperations (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  dateop VARCHAR(25) NOT NULL,
  reference VARCHAR(25) NOT NULL,
  operation VARCHAR(25) NOT NULL,
  description VARCHAR(250) NOT NULL,
  department VARCHAR(7)
);


CREATE TABLE spring_db.fabOrderoperations (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  dateop VARCHAR(25) NOT NULL,
  reference VARCHAR(25) NOT NULL,
  operation VARCHAR(25) NOT NULL,
  description VARCHAR(250) NOT NULL,
  department VARCHAR(7)
);


INSERT INTO spring_db.departments (cono, divi) VALUES
  ('100', ''),
  ('100', '100'),
  ('100', '200'),
  ('500', '');

  
INSERT INTO spring_db.items (reference, colour, size, sizenumber, graphics, price, table_row, department) VALUES
  ('001', 'blue', 'small', 1, 'classic', '2', 0, '100/200'),
  ('002','purple', 'medium', 2, 'fantasy', '4.50', 0, '100/200'),
  ('003', 'dark', 'big', 3, 'classic', '3.20', 0, '100/200'),
  ('004', 'green', 'medium', 2, 'laser', '4.50', 0, '100/200'),
  ('005', 'dark', 'small', 1, 'thunder', '2.0', 0, '100/200'),
  ('006','turquoise', 'medium', 2, 'ocean', '4.50', 0, '100/200'),
  ('007', 'red', 'medium', 2, 'classic', '3.20', 0, '100/200'),
  ('008', 'green', 'medium', 2, 'classic', '3.20', 0, '100/200'),
  ('009', 'fluo green', 'small', 1, 'slime', '2.0', 0, '100/200'),
  ('010', 'blue', 'medium', 2, 'classic', '3.20', 0, '100/200'),
  ('011', 'blue', 'medium', 2, 'vintage', '4.50', 0, '100/200'),
  ('012', 'dark', 'medium', 2, 'vintage', '4.50', 0, '100/200'),
  ('013', 'dark', 'medium', 2, 'professional', '4.50', 0, '100/200'),
  ('014', 'blue', 'medium', 2, 'professional', '4.50', 0, '100/200'),
  ('015', 'bdgr', 'big', 3, 'classic', '4.00', 0, '100/200'),
  ('016', 'fluo orange','medium', 2, 'orange sea', '4.50', 0, '100/100'),
  ('017', 'fluo red', 'medium', 2, 'red laser', '4.50', 0, '200/100');

  
INSERT INTO spring_db.faborders (reference, item, status, statnumber, dateprod, quantity, table_row, department) VALUES
  ('001', '004', 'shedulded', 1, '2026-11-10', 1, 0, '100/200'),
  ('002', '002','shedulded', 2, '2026-11-15', 4, 0, '100/200'),
  ('017', '004','preparation', 3, '2026-11-29', 2, 0, '100/200');

INSERT INTO spring_db.itemoperations (dateop, reference, operation, description, department) VALUES
  ('2008-11-11 13:23:44', '001', 'ADDITION', '[green, small, orange-sea, 3.0]', '100/200'),
  ('2022-09-22 09:00:00', '014', 'UPDATE', '[green, big, slime, 2.50]', '100/200');

INSERT INTO spring_db.faborderoperations (dateop, reference, operation, description, department) VALUES
  ('2008-11-11 13:23:44', '002', 'ADDITION', '[002, shedulded, 2026-01-11, 2026-03-05, 4]', '100/200'),
  ('2022-09-22 09:00:00', '002', 'UPDATE', '[002, preparation, 2026-01-11, 2026-03-08, 5]', '100/200');


INSERT INTO spring_db.users (username, password, langage, timezone, display, role, department) VALUES
  ('username', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 'fr', 'FR', 'scrollbar', 
  'user', '100/200'),
  ('admname', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', '-', '-', '-', 
  'administrator', '-/-'),
  ('admname2', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', '-', '-', '-', 
  'administrator', '-/-');


  
  