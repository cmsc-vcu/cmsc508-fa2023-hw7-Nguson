# Resume Database Project

This project connects to a MySQL database and performs various queries. Below are some key sections:

## Setup

Before running the queries, ensure you have the necessary libraries installed and configure the database connection by setting up your `.env` file.

## Database Connection

Establish a connection to the MySQL database using SQLAlchemy.

## Overview and Description

This assignment involved creating tables, connecting to the database, and inserting data. The document includes a crows-foot diagram representing the database structure.

## Examples of Data in the Database

### People Table

- Columns: first name, last name, email, LinkedIn URL, headshot URL, Discord handle, brief bio, date joined.

### Skills Table

- Columns: skill name, skill description, skill tag, skill URL, skill time commitment.

### Roles Table

- Columns: role id, role name, role sort priority.

## Sample Queries

Explore the database with sample queries:

- List skill names, tags, and descriptions ordered by name.
- List people names and email addresses ordered by last name.
- List skill names of Person 1.
- List people names with Skill 6.
- List people with a DEVELOPER role.
- List names and email addresses of people without skills.
- List names and tags of unused skills.
- List people names and skill names with the BOSS role.
- List ids and names of unused roles.

## Reflection

This homework provided hands-on experience with SQL queries, table creation, and data manipulation in a MySQL database.

**GitHub Repository:** [Resume Database](https://github.com/cmsc-vcu/cmsc508-fa2023-hw7-Nguson.git)
