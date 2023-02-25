CREATE TABLE Tutors
(
	TutorID INT PRIMARY KEY,
	TutorName NVARCHAR(30) NOT NULL,
	TutorMail NVARCHAR (30) NOT NULL,
	TutorPhone NVARCHAR (25) NOT NULL,
	TutorPicture NVARCHAR(50) NOT NULL
)
GO
CREATE TABLE Students
(
	StudentID INT PRIMARY KEY,
	StudentName NVARCHAR (30) NOT NULL,
	StudentMail NVARCHAR (30) NOT NULL,
	StudentPhone NVARCHAR (25) NOT NULL,
	StudentPicture NVARCHAR(50) NOT NULL
)
GO
CREATE TABLE Courses
(
	CourseID INT PRIMARY KEY,
	CourseName NVARCHAR (30) NOT NULL,
	DurationInYear INT NOT NULL,
	CourseFee MONEY NOT NULL,
	TutorID INT NOT NULL REFERENCES Tutors (TutorID)
)
GO
CREATE TABLE Enrollments
(
	StudentID INT NOT NULL REFERENCES Students (StudentID),
	CourseID INT NOT NULL REFERENCES Courses (CourseID),
	EnrollDate DATE NOT NULL,
	PaymentDate DATE NULL,
	PRIMARY KEY (StudentID,CourseID)
)
GO