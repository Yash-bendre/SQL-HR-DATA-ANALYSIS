# COMPANY HR DATA ANALYSIS 

## 1. Problem Statement :-
In most organizations, HR departments struggle to efficiently manage and analyze employee-related data such as salaries, promotions, department allocations, and turnover rates. 
Manual tracking leads to errors, inefficiencies, and a lack of actionable insights.

## This project aims to build a relational database to:
⦁	Store employee and job data accurately.

⦁	Track promotions, job history, and management relationships.

⦁	Provide advanced analytics such as salary comparison, turnover rate, and department-wise distribution.

## 2. Scope of the Project :-
 The project models a real-world HR database suitable for an Indian company.             
 ### It includes: 
⦁	Storing and managing employee records.

⦁	Assigning roles and departments to employees.

⦁	Maintaining salary structures by job roles.

⦁	Tracking historical job changes for promotion and turnover analysis.

⦁	Generating insights on departmental, managerial, and city-level data.

⦁	Supporting complex SQL queries for HR analytics.


## This system can be scaled or integrated into:

⦁	HR Management Systems (HRMS)

⦁	Business Intelligence tools

⦁	Performance tracking dashboards

## 3. Entities in the Project :-

### 1) Employees2 :-
               Stores current employee information (name, salary, job, etc.)
### 2)Departments1:-
            Represents organizational departments.
### 3)Jobs :-
            Contains job titles and their salary range.
### 4)locations :-	
           Maps departments to cities
### 5)job_history :-	
           Tracks employee movement (promotions, transfers, exits
           
### These tables are interlinked using foreign keys to maintain referential integrity.

## 4.Methods and Technologies Used :-

### 1)Database :-
	MySQL / PostgreSQL / SQLite
 
### 2)Data Insertion :-
	INSERT INTO statements (20 values per table)
 
### 3)Relational Mapping	 :-
            Foreign keys and primary keys
            
### 4)Data Querying :-
	SQL: JOIN, GROUP BY, CASE, COUNT, AVG
 
### 5)Analysis :-
	SQL scripts, conditional logic, aggregate functions
 
### 6)Data Sample :-
	 names, job roles, cities, salaries

## 5. Project Steps :-

### Step 1: Requirement Gathering:-

⦁	 Understand HR needs: employee data, job tracking, turnover monitoring.

### Step 2: Database Design:
⦁	    Identify entities and their relationships.

⦁	   Create ERD (Entity Relationship Diagram) (optional).

### Step 3: Table Creation
⦁	Write CREATE TABLE scripts for all entities.

⦁	Set up primary keys, foreign keys, and constraints.

### Step 4: Data Population :-

⦁	Insert 20 sample rows into each table using realistic Indian data.

### Step 5: Query Development :-
#### ⦁	Write SQL queries for:

⦁	Employees by department/city

⦁	Salary comparisons

⦁	Promotions and job history

⦁	Turnover rates per manager

⦁	Department and job title stats

### Step 6: Analysis & Reporting :-
⦁	Analyze results and present insights.

⦁	Prepare final analysis report (like this one).

### Step 7: Testing & Validation :-
⦁	Ensure referential integrity and query accuracy.

⦁	Fix constraint violations or data mismatches.


