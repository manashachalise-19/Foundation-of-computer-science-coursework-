USE college_club_db;

-- 1. Insert a new student into the Student table
-- Note: Change StudentID to a number that doesn't exist yet
INSERT INTO Student (StudentID, StudentName, Email)
VALUES (9, 'Priya', 'priya@email.com');

-- 2. Insert a new club into the Club table
-- Note: ClubMentor column doesn't exist, so remove it
INSERT INTO Club (ClubID, ClubName, ClubRoom)
VALUES (105, 'Chess Club', 'R405');

-- 3. Display all students
SELECT * FROM Student;

-- 4. Display all clubs
SELECT * FROM Club;