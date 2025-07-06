# Task-no-8 – Reusable SQL Blocks (Stored Procedures & Functions)

# About the Project
This project is part of the **SQL Developer Internship – Task 8**, focused on using **stored procedures** and **functions** to modularize SQL code. 
A sample Library Management System is used, and a `Books` table is created to perform operations like checking availability and demand.

# Objectives

 Learn how to write **reusable SQL blocks**
 Understand the use of **stored procedures** and **functions**
 Apply **parameters** and **conditional logic** in SQL
 Write clean, modular, and testable code

# Database Table: `Books`
The `Books` table stores basic information such as title, author, genre, total copies, and issued copies. This data is used to evaluate availability and demand.

## What Was Created

# Stored Procedures
1. **GetAvailableBooksByGenre**  
    Returns books from a selected genre that are still available.

2. **GetAvailableBooksByAuthor**  
    Returns books from a selected author that are available.

   # Functions
1. **check_availability_status**  
    Returns status as 'Fully Available', 'Partially Available', or 'Not Available'.

2. **is_high_demand_book**  
    Returns 'Yes' if 75% or more copies are issued, else 'No'.


# Files Included

| File Name        | Description                                               |
|------------------|-----------------------------------------------------------|
| `Task8.sql`      | SQL code including table, data, procedures, and functions |
| `README.md`      | Documentation of the project and explanation              |
| `Task8_output`   | Images showing query outputs                              |

# Tools Used

 MySQL Workbench
 GitHub
 Markdown for documentation

# Learning Outcomes

- Learned how to modularize SQL logic
- Gained hands-on experience with **stored procedures** and **functions**
- Improved ability to write SQL with **parameters and conditional logic**
- Practiced real-world database operations in a structured way

# Author

**Mokshada Sanjay Dashpute**  
*MSc Statistics | SQL & Data Analytics Enthusiast*

