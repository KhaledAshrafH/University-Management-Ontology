(defclass University
	(is-a USER)
	(role concrete)
	(multislot Name (type STRING))
	(slot Location (propagation no-inherit) (type STRING))
)
	
(defclass Faculty
	(is-a University)
	(role concrete)
	(slot Location (propagation no-inherit) (type STRING))
	(slot university (type STRING))
)

(defclass Department
	(is-a Faculty)
	(role concrete)
	(slot Name (allowed-values CS IT AI IT DS))
	(slot min_GPA (type NUMBER))
	(slot Student_Num (type NUMBER))
)
	
(defclass Program
	(is-a Faculty)
	(role concrete)
	(slot Name (allowed-values CS IT AI IT DS General))
	(slot Student_Num (type NUMBER))
)

(defclass Course
	(is-a Faculty)
	(role concrete)
	(slot Student_Num (type NUMBER))
	(slot facultyName (type STRING)))
	
(defclass Academic_staff
	(is-a Faculty)
	(role concrete)
	(slot Academic_Num (type NUMBER))
)
	
(defclass Exams
	(is-a Faculty)
	(role concrete)
)
	
(defclass Course_work
	(is-a Faculty)
	(role concrete)
)
	
(defclass Thesis
	(is-a Faculty)
	(role concrete)
)
	
(defclass Lecture_hall
	(is-a Faculty)
	(role concrete)
)
	
(defclass Library
	(is-a Faculty)
	(role concrete)
)
	
(defclass Lab_room
	(is-a Faculty)
	(role concrete)
)
	
(defclass Lecturer
	(is-a Faculty)
	(role concrete)
	(slot FacultyNameL (type STRING))
)

(defclass TA
	(is-a Faculty)
	(role concrete)
	(slot depName (type SYMBOL))
)
	
(defclass Student
	(is-a Faculty)
	(role concrete)
	(multislot courses (type STRING))
	(slot GPA (type NUMBER))
)
	
;definstances	
(definstances University 
	(U1 of University 
	(Name "Cairo University") 
	(Location "Giza/Cairo"))
	
	(U2 of University 
	(Name "Helwan University") 
	(Location "Helwan/Cairo"))
)

(definstances Faculty 
	(F1 of Faculty 
	(Name "Computer Science")
	(Location "Giza")
	(university "Cairo University"))
	
	(F2 of Faculty 
	(Name "calture faculty") 
	(Location "Giza")
	(university "Helwan University"))
	
	(F3 of Faculty 
	(Name "Engennering faculty") 
	(Location "Giza")
	(university "Cairo University"))
)
	
(definstances TA 
	(T1 of TA 
	(Name "Ahmed Sayed")
	(depName CS))
	
	(T2 of TA 
	(Name "Samah")
	(depName CS))
	
	(T3 of TA 
	(Name "Aya")
	(depName CS))
	
	(T4 of TA 
	(Name "Khaled Ashraf")
	(depName CS))
)
	
(definstances Department 
	(D1 of Department 
	(Name CS) 
	(min_GPA 2.7) 
	(Student_Num 70))
	
	(D2 of Department 
	(Name IT) 
	(min_GPA 2.2) 
	(Student_Num 100))
)
	
(definstances Student 
	(S1 of Student 
	(Name Ahmed) 
	(GPA 3.22) 
	(courses OOP Algorithms))
		
	(S2 of Student 
	(Name Khaled) 
	(GPA 3.45)
	(courses C++ DataBase))

	(S3 of Student 
	(Name Manar) 
	(GPA 3.7) 
	(courses OOP Math3))
)
	
(definstances Lecturer 
	(L1 of Lecturer 
	(Name Dr:Abir) 
	(FacultyNameL "Computer Science"))
	
	(L2 of Lecturer 
	(Name Dr:Amin) 
	(FacultyNameL "Computer Science"))
	
	(L3 of Lecturer 
	(Name Dr:Manar) 
	(FacultyNameL "Engennering faculty"))
)
	
(definstances Course
	(c1 of Course 
	(Name OOP)
	(Student_Num 20)
	(facultyName "Computer Science"))
	
	(c2 of Course 
	(Name Algorithms)
	(Student_Num 20)
	(facultyName "Computer Science"))
	
	(c3 of Course 
	(Name c++)
	(Student_Num 20)
	(facultyName "Computer Science"))
	
	(c4 of Course 
	(Name DataBase)
	(Student_Num 202)
	(facultyName "Engennering faculty"))
	
	(c5 of Course 
	(Name Math3)
	(Student_Num 202)
	(facultyName "Engennering faculty"))
)
	
;all TAs belonging to a department.
(defrule print-TAs-department
	(declare (salience 9))
	?y <- (dep ?d)
	(object (name ?name) (depName ?d))
=>
	(send ?name printNames)
)
	
;all Courses belonging to a Student.
(defrule print-Courses-Student
	(declare (salience 7))
	?y <- (stu ?d)
	(object (name ?name) (Name ?d) (courses $?obj))
=>
	(retract ?y)
	(send ?name printCourses)
)
	
;all Courses belonging to a Faculty.
(defrule print-Courses-Faculty
	(declare (salience 5))
	?y <- (Fac ?d)
	(object (name ?name) (facultyName ?d))
=>
	(send ?name printCoursesF)
)
	
;all Lecturer belonging to a Faculty.
(defrule print-Lecturer-Faculty
	(declare (salience 3))
	?y <- (FacL ?d)
	(object (name ?name) (FacultyNameL ?d) (is-a Lecturer))
=>
	(send ?name printLecturer)
)
	
;all Lecturer belonging to a Faculty.
(defrule print-faculties-university
	(declare (salience 0))
	?y <- (University ?U)
	(object (name ?name) (university ?U) (is-a Faculty))
=>
	(send ?name printFaculty)
)
	
(defmessage-handler TA printNames ()
	(bind ?Names (send ?self get-Name))
	(printout t ?Names crlf)
	(open "TEMP/GUI1.txt" data "a")
	(printout t ?Names crlf)
	(printout data ?Names crlf)
	(close data)
)

(defmessage-handler Student printCourses ()
	(bind ?courses (send ?self get-courses))
	(open "TEMP/GUI2.txt" data "a")
	(printout t ?courses crlf)
	(printout data ?courses crlf)
	(close data)
)

(defmessage-handler Course printCoursesF ()
	(bind ?Names (send ?self get-Name))
	(open "TEMP/GUI3.txt" data "a")
	(printout t ?Names crlf)
	(printout data ?Names crlf)
	(close data)
)

(defmessage-handler Lecturer printLecturer ()
	(bind ?Names (send ?self get-Name))
	(open "TEMP/GUI4.txt" data "a")
	(printout t ?Names crlf)
	(printout data ?Names crlf)
	(close data)
)	

(defmessage-handler Faculty printFaculty ()
	(bind ?Names (send ?self get-Name))
	(open "TEMP/GUI5.txt" data "a")
	(printout t ?Names crlf)
	(printout data ?Names crlf)
	(close data)
)
