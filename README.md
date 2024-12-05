# SQL Schema and Operations for University Database

## Overview
This project involves creating and managing a university database with the following tables:
- **Students**: Contains information about students.
- **Instructors**: Contains information about instructors.
- **Courses**: Contains details of courses offered.
- **Registration**: Tracks which students are registered for which courses, along with their grades.

---

## Schema

### Tables
1. **Students**
   - **Columns**:
     - `Student_Id` (Primary Key)
     - `Student_Name`
     - `Studaddress`
     - `Student_Batch`
     - `deptartment`
     - `CGPA` (Constraint: `0.0 <= CGPA <= 4.0`)

2. **Instructors**
   - **Columns**:
     - `InstructorId` (Primary Key)
     - `InstructorName`
     - `salary` (Constraint: `salary > 0`)
     - `joingdate`

3. **Courses**
   - **Columns**:
     - `CourseId` (Primary Key)
     - `CourseName` (Unique)
     - `CourseCreditHours` (Constraint: `> 0`)
     - `InstructorId` (Foreign Key to `Instructors.InstructorId`)

4. **Registration**
   - **Columns**:
     - `StudentId` (Foreign Key to `Students.Student_Id`)
     - `CourseId` (Foreign Key to `Courses.CourseId`)
     - `Grade` (Constraint: Values in `['A', 'B', 'C', 'D', 'F']`)
   - **Primary Key**: `(StudentId, CourseId)`

---

## Operations

### 1. Create Tables
The schema is created using `CREATE TABLE` statements with the necessary primary keys, foreign keys, and constraints.

### 2. Define Relationships
Primary and foreign keys are explicitly defined:
- `Students.Student_Id` and `Courses.CourseId` are referenced in the `Registration` table.
- `Instructors.InstructorId` is referenced in the `Courses` table.

### 3. Insert Sample Data
Sample values are inserted into the tables for testing purposes. For example:
- Students: Alice and Bob.
- Instructors: Dr. Smith and Prof. Johnson.
- Courses: Data Structures and Database Systems.
- Registration: Alice registered for Data Structures with grade 'A'.

### 4. Constraints
Key constraints applied:
- **NOT NULL**: Ensures essential fields are always filled.
- **UNIQUE**: Enforces unique course names.
- **CHECK**: Validates CGPA, salary, credit hours, and grades.
