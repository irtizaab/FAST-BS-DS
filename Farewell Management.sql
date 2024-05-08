-- Create the database
-- CREATE DATABASE IF NOT EXISTS FarewellPartyManagement;

-- Use the created database
USE FarewellPartyManagement;

-- Create Student table
-- CREATE TABLE Student (
--     StudentID INT AUTO_INCREMENT PRIMARY KEY,
--     Name VARCHAR(255) NOT NULL,
--     Email VARCHAR(255) NOT NULL,
--     Password VARCHAR(255) NOT NULL,
--     TeamID INT
-- );

-- Create Teacher table
-- CREATE TABLE Teacher (
--     TeacherID INT AUTO_INCREMENT PRIMARY KEY,
--     Name VARCHAR(255) NOT NULL,
--     Email VARCHAR(255) NOT NULL,
--     Password VARCHAR(255) NOT NULL
-- );

-- Create Team table
-- CREATE TABLE Team (
--     TeamID INT AUTO_INCREMENT PRIMARY KEY,
--     Name VARCHAR(255) NOT NULL
-- );

-- Create Task table
-- CREATE TABLE Task (
--     TaskID INT AUTO_INCREMENT PRIMARY KEY,
--     Description TEXT,
--     Deadline DATE,
--     Status VARCHAR(50)
-- );

-- Create MenuItem table
-- CREATE TABLE MenuItem (
--     MenuItemID INT AUTO_INCREMENT PRIMARY KEY,
--     Name VARCHAR(255) NOT NULL,
--     Description TEXT,
--     Votes INT
-- );

-- Create Performance table
-- CREATE TABLE Performance (
--     PerformanceID INT AUTO_INCREMENT PRIMARY KEY,
--     Type VARCHAR(255),
--     Duration TIME,
--     SpecialRequirements TEXT,
--     Votes INT,
--     StudentID INT
-- );

-- Create Attendance table
-- CREATE TABLE Attendance (
--     AttendanceID INT AUTO_INCREMENT PRIMARY KEY,
--     Date DATE,
--     StudentID INT,
--     TeacherID INT,
--     FamilyMemberID INT
-- );

-- Create Budget table
-- CREATE TABLE Budget (
--     BudgetID INT AUTO_INCREMENT PRIMARY KEY,
--     Category VARCHAR(255) NOT NULL,
--     Amount DECIMAL(10,2) NOT NULL
-- );

-- Create FamilyMember table
-- CREATE TABLE FamilyMember (
--     FamilyMemberID INT AUTO_INCREMENT PRIMARY KEY,
--     Name VARCHAR(255) NOT NULL,
--     FamilyRelation BOOLEAN,
--     StudentID INT,
--     TeacherID INT
-- );

-- Add foreign key constraints
-- ALTER TABLE Student ADD FOREIGN KEY (TeamID) REFERENCES Team(TeamID);
-- ALTER TABLE MenuItem ADD FOREIGN KEY (StudentID) REFERENCES Student(StudentID);
-- ALTER TABLE Performance ADD FOREIGN KEY (StudentID) REFERENCES Student(StudentID);
-- ALTER TABLE Attendance ADD FOREIGN KEY (StudentID) REFERENCES Student(StudentID);
-- ALTER TABLE Attendance ADD FOREIGN KEY (TeacherID) REFERENCES Teacher(TeacherID);
-- ALTER TABLE Attendance ADD FOREIGN KEY (FamilyMemberID) REFERENCES FamilyMember(FamilyMemberID);
-- ALTER TABLE FamilyMember ADD FOREIGN KEY (StudentID) REFERENCES Student(StudentID);
-- ALTER TABLE FamilyMember ADD FOREIGN KEY (TeacherID) REFERENCES Teacher(TeacherID);

-- Create TaskTeam table for many-to-many relationship
-- CREATE TABLE TaskTeam (
--     TaskTeamID INT AUTO_INCREMENT PRIMARY KEY,
--     TaskID INT,
--     TeamID INT,
--     FOREIGN KEY (TaskID) REFERENCES Task(TaskID),
--     FOREIGN KEY (TeamID) REFERENCES Team(TeamID)
-- );