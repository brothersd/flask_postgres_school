-- school.sql

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  age INTEGER,
  subject_id INTEGER
);

CREATE TABLE teachers (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  age INTEGER,
  subject_id INTEGER
);

CREATE TABLE subjects (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE student_classes (
  student_id INTEGER,
  class_id INTEGER,
  FOREIGN KEY (student_id) REFERENCES students(id),
  FOREIGN KEY (class_id) REFERENCES teachers(id)
);