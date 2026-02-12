# Task S2.01. MySQL Data Structure

## 📌 Level 1

### Exercise 1

This project contains the design and implementation of a MySQL relational database for an optical store called “Cul d'Ampolla”. The goal is to manage suppliers, brands, glasses, customers, employees, and sales, ensuring data consistency through proper normalization and foreign key constraints.

The repository includes:

* A relational model diagram (PNG/JPG)
* A SQL script to create the database schema
* A SQL script with sample data
* Example queries to validate the design

#### Database Requirements

The system stores the following information:

Suppliers
* Name
* Full address (street, number, floor, door, city, postal code, country)
* Phone
* Fax
* nif(unique)

Brands
* Brand name

Each brand is supplied by one single supplier
A supplier can provide multiple brands

Glasses
* Brand
* Left and right lens graduation
* Frame type (floating, plastic, metal)
* Frame color
* Lens color (left and right)
* Price

Customers
* Name
* Postal address
* Phone
* Email
* Registration date
* Recommended by another customer (optional, self-referencing relationship)

Employees
* Name

Sales
* Sale date
* Customer
* Employee
* Glasses sold

Each sale represents the sale of one pair of glasses by one employee to one customer.

#### Database Design

The database follows a normalized relational design:
* supplier → brand → glasses
* customer (self-referencing for recommendations)
* employee
* sale (connects customer, employee, and glasses)

Foreign keys are used to enforce referential integrity.
	
#### Schema Creation

The database schema is created using a SQL script that:
* Creates the database optics_culdampolla
* Defines all tables with primary keys
* Adds foreign key constraints
* Applies appropriate data types and constraints

#### Sample Data

Sample data is provided to:
* Validate relationships
* Test foreign key constraints
* Ensure queries return meaningful results

The sample data represents realistic suppliers, brands, customers, employees, glasses, and sales.

####  Validation Queries

The following queries are used to verify that the database works correctly:

1. Total invoices of a customer in a given period

2. Glasses models sold by an employee during a year

3. Suppliers that have successfully supplied sold glasses

These queries confirm that the relationships between tables are correctly implemented.


## 🛠️ Technologies
- MySQL – Database engine
- MySQL Workbench – Database modeling and SQL execution
- Docker – Containerized MySQL environment for consistent local development
- Git & GitHub 

## 🚀 Installation & Execution

Prerequisites

Ensure the following tools are installed on your system:
- Docker (recommended for consistent environment)
- MySQL Workbench (or any MySQL client)
- Git (optional)

Clone the Repository: git clone https:
- //github.com/Karel-Patricia/Task.S2.01.-MySQL_DataStructure.git
