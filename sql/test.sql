SHOW DATABASES;

DROP DATABASE IF EXISTS demo;
CREATE DATABASE demo;

USE demo;

DROP TABLE IF EXISTS demo.user;
CREATE TABLE demo.user (
  id       INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) NOT NULL ,
  password VARCHAR(255),
  age      INT(3),
  sex      CHAR(6)          DEFAULT 'male', -- fixed size, Male/Female
  height   DOUBLE(3, 2), #1.73
  salary   DECIMAL(6, 2),
  birthday DATE,
  UNIQUE (id,username)
#   UNIQUE (id),
#   UNIQUE (username)
);

SHOW TABLES;

INSERT INTO demo.user (username, password, age, sex, height, salary, birthday)
VALUES ('GQ', '123', 32, 'male', 1.89, 6000, '1984-6-13');
INSERT INTO demo.user VALUES (NULL, 'SP', '123', 33, 'female', 1.67, 4500, '1986-4-3');
INSERT INTO demo.user VALUES (NULL, 'll', '123', 31, NULL, 1.69, 8000, '1985-3-23');
INSERT INTO demo.user (username, password) VALUES ('gq_ll', '123');


INSERT INTO demo.user VALUES (NULL, 'll', '123', 31, NULL, 1.69, 8000, '1985-3-23');
INSERT INTO demo.user VALUES (NULL, 'll', '123', 31, NULL, 1.69, 8000, '1985-3-23');

SELECT *
FROM demo.user;

# INSERT INTO demo.user VALUES (1,'GQ', '123');


DROP TABLE IF EXISTS  demo.student;
CREATE TABLE demo.student(
  id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY ,
  name VARCHAR(255),
  depart_id INT(11) UNSIGNED
);

DROP TABLE IF EXISTS demo.department;
CREATE TABLE demo.department(
  id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY ,
  name VARCHAR(255)
);

ALTER TABLE demo.student
    ADD CONSTRAINT fk_student_department_id
FOREIGN KEY (depart_id)
      REFERENCES demo.department(id);

INSERT INTO demo.department VALUES (NULL , 'CS');
INSERT INTO demo.department VALUES (NULL , 'EN');

INSERT INTO demo.student VALUES (NULL , 'John', 1);
INSERT INTO demo.student VALUES (NULL , 'Jack', 1);
INSERT INTO demo.student VALUES (NULL , 'Tony', 1);


SELECT * FROM demo.department;

SELECT * FROM demo.student;


DESC demo.user;
DESC demo.department;
DESC demo.student;



































