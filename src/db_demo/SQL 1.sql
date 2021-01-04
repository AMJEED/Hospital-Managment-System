

 ////////patient////////////////// 
CREATE TABLE patients (p_id INT (11) PRIMARY KEY,P_name varchar(29),Age int(11),Gender Varchar(5),Disease_id INT(11),Address VARChAR(25),Ward VARCHAR(3) ,
FOREIGN KEY (Disease_id) REFERENCES disease(disease_id)) ;




/////////////Appointment/////////////////

CREATE TABLE Appointments(App_id INT(11)  PRIMARY KEY ,patient_id INT (11),doctor_id INT(11),Disease_id INT(11),DATE_time varchar(25) ,
t_time varchar(25) , FOREIGN KEY  (Disease_id) REFERENCES disease(Disease_ID) , FOREIGN KEY (patient_id) REFERENCES patients(p_id),
FOREIGN KEY (doctor_id) REFERENCES doctors(d_id ));


////////////////report///////////////////
CREATE TABLE report (report_id INT (11) PRIMARY KEY ,Doctor_id INT (11),patient_id INT (11),numOfVisits INT (15),bill FLOAT(25) , FOREIGN KEY (Doctor_id) REFERENCES doctors(D_id),FOREIGN KEY (patient_id) REFERENCES patients(p_id) );




---------discharge-----------
CREATE table discharged_patients LIKE patients;
s


-----SQL QUIRIES USED IN PROJECTS------------------

----login----
Select * FROM user;
------for view doctor
SELECT * FROM doctors d1 LEFT JOIN disease d2 ON (d1.Specialist_in = d2.disease_id);

------for viw patiwnts
Select * FROM patients p left join disease d ON (d.disease_id = p.disease_id);

------for register doctor
INSERT INTO doctors VALUES('"+id+"', '"+name+"', '"+age+"', '"+contact+"', '"+address+"', '"+specialist+"' , '"+hire_date+"' , '"+salary+"');

------for admit patients
INSERT INTO patients VALUES('"+id+"','"+name+"', '"+age+"', '"+gender+"', '"+disease+"', '"+address+"', '"+ward+"');

------for discharge patient
--INSERT INTO discharged_patients SELECT * FROM patients WHERE p_id ="+id;

------for  generating report

show tables;

SELECT * FROM USERS:
SELECT * FROM doctors;
SELECT * FROM patients;
SELECT * FROM diseas;
SELECT * FROM Appointments;
SELECT * FROM report;
SELECT * FROM discharged_patients;

DESCRIBE users;
DESCRIBE doctors;
DESCRIBE patients;
DESCRIBE diseas;
DESCRIBE Appointments;
DESCRIBE report;

























show tables;