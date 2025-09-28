DROP DATABASE IF EXIST library_db;
CREATE DATABASE library_db;
USE library_db;

CREATE TABLE members(
  member_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL
  );
CREATE TABLE books (
  book_id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(200) NOT NULL,
  author VARCHAR(100),
  isbn VARCHAR(50) UNIQUE
  );

CREATE TABLE borrowings(
  borrowing_id INT AUTO_INCREMENT PRIMARY KEY,
  member_id INT NOT NULL,
  book_id INT NOT NULL,
  boorow_date DATE NOT NULL,
  return_date DATE,
  FOREIGN KEY (member_id) REFERENCES members(member_id),
  FOREIGN KEY (book_id) REFERENCES books(book_id)
  );
