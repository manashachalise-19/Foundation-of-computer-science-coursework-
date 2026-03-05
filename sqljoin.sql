-- 1. Create Database
CREATE DATABASE IF NOT EXISTS SchoolDB;
USE SchoolDB;

-- 2. Create Student Table
CREATE TABLE IF NOT EXISTS Student (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    StudentName VARCHAR(50),
    Age INT,
    Gender VARCHAR(10)
);

-- 3. Create Club Table
CREATE TABLE IF NOT EXISTS Club (
    ClubID INT PRIMARY KEY AUTO_INCREMENT,
    ClubName VARCHAR(50),
    Description VARCHAR(100)
);

-- 4. Create Membership Table
CREATE TABLE IF NOT EXISTS Membership (
    MembershipID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    ClubID INT,
    JoinDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (ClubID) REFERENCES Club(ClubID)
);

-- 5. Insert Sample Data into Student
INSERT INTO Student (StudentName, Age, Gender) VALUES
('Manasha Chalise', 19, 'Female'),
('Sirish Rana', 20, 'Male'),
('Aarav Shrestha', 18, 'Male');

-- 6. Insert Sample Data into Club
INSERT INTO Club (ClubName, Description) VALUES
('Chess Club', 'For chess enthusiasts'),
('Music Club', 'For music lovers'),
('Drama Club', 'For drama and acting');

-- 7. Insert Sample Data into Membership
INSERT INTO Membership (StudentID, ClubID, JoinDate) VALUES
(1, 1, '2026-01-10'),   -- Manasha joins Chess Club
(2, 2, '2026-02-05'),   -- Sirish joins Music Club
(3, 3, '2026-02-20'),   -- Aarav joins Drama Club
(1, 2, '2026-03-01');   -- Manasha also joins Music Club

-- 8. Task 5: SQL JOIN Query
SELECT 
    s.StudentName,
    c.ClubName,
    m.JoinDate
FROM 
    Membership m
JOIN 
    Student s ON m.StudentID = s.StudentID
JOIN 
    Club c ON m.ClubID = c.ClubID;