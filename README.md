# Task S2.01. MySQL Data Structure


This project contains the design and implementation of multiple relational database models using MySQL, developed as part of data structure and normalization exercises.
The objective of the assignment is to practice:
	•	Relational modeling
	•	Normalization principles
	•	Foreign key constraints
	•	Referential integrity
	•	Query validation

## 📌 Level 1

Level 1 focuses on traditional business-oriented relational schemas.

### Exercise 1 - Optical Store Database (Cul d'Ampolla)

This exercise models a relational database for an optical store named Cul d'Ampolla.
Objective
Design a normalized schema to manage:
	•	Suppliers
	•	Brands
	•	Glasses
	•	Customers
	•	Employees
	•	Sales

Database Requirements
Suppliers
	•	Name
	•	Full address (street, number, floor, door, city, postal code, country)
	•	Phone
	•	Fax
	•	NIF (unique)
Brands
	•	Brand name
	•	Each brand is supplied by exactly one supplier
	•	A supplier may supply multiple brands
Glasses
	•	Brand
	•	Left and right lens graduation
	•	Frame type (floating, plastic, metal)
	•	Frame color
	•	Lens color (left and right)
	•	Price
Customers
	•	Name
	•	Postal address
	•	Phone
	•	Email
	•	Registration date
	•	Recommended by another customer (optional self-referencing relationship)
Employees
	•	Name
Sales
	•	Sale date
	•	Customer
	•	Employee
	•	Glasses sold
Each sale represents the purchase of one pair of glasses.

Database Design
Normalized relational structure:
supplier → brand → glasses customer (self-referencing) employee sale
Foreign keys enforce referential integrity.

Validation Queries
	1	Total invoices of a customer within a period
	2	Glasses sold by an employee during a year
	3	Suppliers associated with sold glasses

### Exercise 2 - Pizzeria Database

This exercise models a relational database for a home delivery pizzeria system.
Objective
Design a normalized schema supporting:
	•	Customers and orders
	•	Products and categories
	•	Stores and employees
	•	Geographic hierarchy

Main Entities
	•	Province
	•	City
	•	Customer
	•	Store
	•	Employee
	•	Order
	•	Product (pizza, hamburger, drink)
	•	Pizza Category

Key Relationships
	•	One province has many cities
	•	One city belongs to one province
	•	One customer can place many orders
	•	One order contains many products (N:M)
	•	One store handles many orders
	•	One store employs many employees
	•	One pizza belongs to one category
The many-to-many relationship between orders and products is resolved through the order_product table.

Validation Queries
	1	Total drinks sold in a given city
	2	Total orders handled by an employee

## 📌 Level 2 

Level 2 introduces a more complex domain with multiple interaction patterns.

### Exercise 1 - Video Platform Database

This exercise implements a simplified relational model of a YouTube-like platform.
Objective
Design a relational schema supporting:
	•	Users
	•	Channels
	•	Videos
	•	Tags
	•	Playlists
	•	Comments
	•	Reactions
	•	Subscriptions

Core Data Model
Users
	•	Email (unique identifier)
	•	Password
	•	Username
	•	Date of birth
	•	Gender
	•	Country
	•	Postal code
Videos
	•	Title
	•	Description
	•	Size
	•	File name
	•	Duration
	•	Thumbnail
	•	Views
	•	Likes / Dislikes
	•	Status (public / hidden / private)
	•	Publisher & publication timestamp
Channels
	•	Name
	•	Description
	•	Creation date

Functional Rules
	•	A user may publish videos
	•	Videos may have multiple tags (N:M)
	•	Users may subscribe to channels
	•	Users may react once per video
	•	Users may comment on videos
	•	Users may react to comments
	•	Playlists support privacy states


## 🛠️ Technologies

	•	MySQL
	•	MySQL Workbench
	•	Docker
	•	Git & GitHub 


## 🚀 Installation and Execution

1. Clone the repository:

git clone https://github.com/Karel-Patricia/Task.S2.01.-MySQL_DataStructure.git

Run MySQL with Docker (example):

docker run --name mysql-lab -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 -d mysql:8

Load the schema using MySQL Workbench.


