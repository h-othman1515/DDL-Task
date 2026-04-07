# 🗄️ SQL DDL Tasks – Online Store Database

A collection of SQL Server DDL exercises covering database and table creation, constraints, relationships, and schema modifications.

---

## 📋 Topics Covered

- Creating databases and tables
- Primary keys, foreign keys, unique and not null constraints
- ALTER TABLE (add, modify, drop columns)
- Self-referencing foreign keys
- Composite primary keys (many-to-many relationships)
- IDENTITY (auto-increment)
- DEFAULT values with GETDATE()
- TRUNCATE vs DROP

---

## 📁 File

| File | Description |
|------|-------------|
| `DDL_Tasks.sql` | All 30 main tasks + 10 optional tasks |

---

## 📝 DDL Tasks

1. Create a database for an online store, then start working inside it.
2. You need a table to store users. Each user must have an ID that identifies them uniquely, and a name.
3. Extend the users table so that each user has an email. This email should not be repeated between users.
4. Make sure that the email in the users table cannot be left empty.
5. Create a table for products. Each product should have a name and a price. Choose a suitable data type for storing money values.
6. Ensure that every product must have a price (it cannot be missing).
7. Create a table for orders. Each order must belong to a user. Think about how to enforce this relationship.
8. Add a column to store the date of the order.
9. Make the order date automatically filled if no value is provided.
10. Create a table to represent products inside orders. Each product should not appear twice in the same order.
11. Create a table for categories, then link products to categories so that each product belongs to one category.
12. Create a table for employees where an employee can have a manager from the same table.
13. Add a phone column to the users table, then remove it again.
14. Increase the size of the name column in the users table.
15. Create a table for customers where the name is required but the phone is optional.
16. Create a table for payments where each payment must be linked to an order.
17. Create a table for students where each student must have a unique identifier and a name.
18. Create a table for courses with a title.
19. Students can take multiple courses. Design a table to represent this relationship.
20. Create a table to store logs with a message and a timestamp.
21. Remove all data from the logs table in a fast way without deleting the table.
22. You need to completely remove a column from an existing table because it is no longer needed.
23. Completely delete a table from the database.
24. Create a table where the ID is automatically generated.
25. Create a table with two columns: one must always have a value, and the other can be empty.
26. Create a simple table for books with title and price.
27. Create a table for authors and link it with books.
28. Create a table that only stores IDs.
29. Create a table that includes number, text, and date columns.
30. Create a table first, then later make one of its columns unique.

---

## ✅ Optional Tasks

1. Create a new database for testing, then delete it.
2. Create a table for products with name and price.
3. Add a new column for description to the products table.
4. Delete the products table.
5. Create a table with only one column.
6. Create a temporary table and delete it immediately.
7. Create a table, then remove all its data but keep its structure.
8. Create a table where email must be unique and not empty.
9. Create a table where price must always exist.
10. Create a table that includes: unique ID, required field, and a field that must not be duplicated.

---

## ⚙️ Requirements

- SQL Server (or SQL Server Management Studio)
- Run the file in order from top to bottom
