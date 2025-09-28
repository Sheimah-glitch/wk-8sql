# 📘 Library Management System – Database Project

## 📌 Objective

This project is a relational database built with MySQL for managing a library.
It helps track members, books, and borrowings.

### 🗂️ Database Schema

The database consists of three tables:

members

Stores details of library members.

Columns: member_id, name, email.

books

Stores details of books in the library.

Columns: book_id, title, author, isbn.

borrowings

Tracks which member borrowed which book and when.

Columns: borrowing_id, member_id, book_id, borrow_date, return_date.

Contains foreign keys referencing members and books.

### 🔗 Relationships

One-to-Many: One member → many borrowings.

One-to-Many: One book → many borrowings.

Together, this represents a Many-to-Many relationship between members and books (resolved by the borrowings table).
