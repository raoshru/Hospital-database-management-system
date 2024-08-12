--create database health
--use health
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE constraint_name = 'fk_EmployeeDetails_EmployeeID')
    ALTER TABLE EmployeeDetails DROP CONSTRAINT fk_EmployeeDetails_EmployeeID
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE constraint_name = 'fk_EmployeeDepartments_EmployeeID')
    ALTER TABLE EmployeeDepartments DROP CONSTRAINT fk_EmployeeDepartments_EmployeeID
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE constraint_name = 'fk_EmployeeDepartments_DepartmentID')
    ALTER TABLE EmployeeDepartments DROP CONSTRAINT fk_EmployeeDepartments_DepartmentID
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE constraint_name = 'fk_Feedbacks_FromPatientID')
    ALTER TABLE Feedbacks DROP CONSTRAINT fk_Feedbacks_FromPatientID
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE constraint_name = 'fk_Feedbacks_EmployeeID')
    ALTER TABLE Feedbacks DROP CONSTRAINT fk_Feedbacks_EmployeeID
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE constraint_name = 'fk_PatientInsurances_PatientID')
    ALTER TABLE PatientInsurances DROP CONSTRAINT fk_PatientInsurances_PatientID
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE constraint_name = 'uk_EmployeeDetails_EmployeeID')
    ALTER TABLE EmployeeDetails DROP CONSTRAINT uk_EmployeeDetails_EmployeeID
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE constraint_name = 'fk_PatientLabReports_PatientRegisterID')
    ALTER TABLE PatientLabReports DROP CONSTRAINT fk_PatientLabReports_PatientRegisterID
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE constraint_name = 'fk_PatientLabReports_LabTestID')
    ALTER TABLE PatientLabReports DROP CONSTRAINT fk_PatientLabReports_LabTestID
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE constraint_name = 'fk_PatientBillings_PatientID')
    ALTER TABLE PatientBillings DROP CONSTRAINT fk_PatientBillings_PatientID
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE constraint_name = 'fk_PatientRegisters_PatientInsuranceID')
    ALTER TABLE PatientRegisters DROP CONSTRAINT fk_PatientRegisters_PatientInsuranceID
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE constraint_name = 'fk_PatientRegisters_PatientID')
    ALTER TABLE PatientRegisters DROP CONSTRAINT fk_PatientRegisters_PatientID
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE constraint_name = 'fk_PatientDiseases_PatientRegisterID')
    ALTER TABLE PatientDiseases DROP CONSTRAINT fk_PatientDiseases_PatientRegisterID
IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE constraint_name = 'fk_Patient_address_PatientID')
    ALTER TABLE Patient_address DROP CONSTRAINT fk_Patient_address_PatientID
drop table if EXISTS Departments;
drop table if EXISTS EmployeeDepartments;
drop table if EXISTS Employees;
drop table if EXISTS Feedbacks;
drop TABLE if exists EmployeeDetails;
drop TABLE if exists Patients;
drop table if EXISTS PatientInsurances;
drop table if EXISTS PatientLabReports;
drop table if EXISTS LabTests;
drop TABLE if exists PatientBillings;
drop TABLE if exists PatientRegisters;
drop TABLE if exists PatientDiseases;
drop TABLE if exists Diseases;
drop TABLE if exists PatientAttendants;
drop TABLE if exists PatientAppointments;
drop TABLE if exists Patient_address;




CREATE TABLE Departments(
    DepartmentID int not null  ,
    DepartmentName varchar(45)   ,
    CONSTRAINT pk_Departments_DepartmentID PRIMARY KEY (DepartmentID)
)
GO
CREATE TABLE EmployeeDepartments(
    EmployeeID   varchar(45)  not null,
    DepartmentID  int  not null,
    isActive int not null,
)
GO
CREATE TABLE Employees(
    EmployeeID int IDENTITY  not null  ,
    EmployeeNumber varchar(45)   ,
    EmailID   varchar(45)    ,
    Password_value   varchar(45),
    CONSTRAINT pk_Employees_EmployeeNumber PRIMARY KEY (EmployeeNumber)
)
GO
CREATE TABLE Feedbacks(
    FeedbackID int IDENTITY  not null  ,
    FromPatientID int  ,
    ToEmployeeID   varchar(45)   ,
    Comment varchar(30),
    Rating int,
    CONSTRAINT pk_Feedbacks_FeedbackID PRIMARY KEY (FeedbackID)
)
GO
CREATE TABLE EmployeeDetails(
    EmployeeDetailsID int IDENTITY  not null ,
    FirstName varchar(40),
    LastName varchar(40),
    DateofBirth Date,
    Gender varchar(10),
    PhoneNumber VARCHAR(45),
    EmployeeID varchar(45),
    CONSTRAINT pk_EmployeeDetails_EmployeeDetailsID PRIMARY KEY (EmployeeDetailsID)
)
GO



CREATE TABLE Patients(
    PatientID int IDENTITY  not null ,
    FirstName varchar(40),
    LastName varchar(40),
    DateofBirth Date,
    Gender varchar(10),
    PhoneNumber VARCHAR(50),
    EmailID varchar(45),
    Height varchar(45),
    Weight_value varchar(45),
    Bloodgroup varchar(45),
    CONSTRAINT pk_Patients_PatientID PRIMARY KEY (PatientID)
)
GO
create table Patient_address(
    Patient_address_no int IDENTITY not null,
    PatientID int not null,
    Street varchar(45),
    building_no varchar(45),
    city varchar(45),
    country varchar(45),
    pincode varchar(45)
)



CREATE TABLE PatientInsurances(
    PatientInsuranceID int  not null  ,
    PatientID int not null ,
    ProviderName varchar(45)   ,
    StartDate   date   ,
    EndDate   date,
    CONSTRAINT pk_PatientInsurances_PatientInsuranceID PRIMARY KEY (PatientInsuranceID)
)
GO
CREATE TABLE PatientLabReports(
    PatientLabReportID int  not null ,
    PatientRegisterID int not null,
    LabTestID int not null,
    Comment varchar(60),
    TestValue varchar(10),
    CONSTRAINT pk_PatientLabReports_PatientLabReportID PRIMARY KEY (PatientLabReportID)
)
GO
CREATE TABLE LabTests(
    LabTestID int not null,
    TestName varchar(45) not null ,
    MinValue varchar(10),
    MaxValue varchar(10),
    CalculatedUnit varchar(30),
    CONSTRAINT pk_LabTests_LabTestID PRIMARY KEY (LabTestID)
)
GO



CREATE TABLE PatientBillings(
    PatientBillingID int not null ,
    PatientRegisterID int not null,
    GeneratedDate Date,
    PaymentType varchar(10),
    Amount VARCHAR(30),
    CONSTRAINT pk_PatientBillings_PatientBillingID PRIMARY KEY (PatientBillingID)
)
GO



CREATE TABLE PatientRegisters(
     
    PatientRegisterID int not null ,
    PatientID int not null,
    PatientInsuranceID int not null,
    AdmittedOn Date,
    DischargeOn Date,
    CONSTRAINT pk_PatientRegisters_PatientRegisterID PRIMARY KEY (PatientRegisterID)
)
GO
 
CREATE TABLE PatientDiseases(
    PatientRegisterID int not null ,
    PatientDiseaseID int not NULL,
)
GO
CREATE TABLE Diseases(
    DiseaseID int not null ,
    DiseaseName varchar(100),
    CONSTRAINT pk_Diseases_DiseaseID PRIMARY KEY (DiseaseID)
)
GO
CREATE TABLE PatientAppointments(
    PatientID int not null ,
    EmployeeID varchar(10),
    IsCompleted varchar(10),
    IsCancelled varchar(10),
    IsNoShow varchar(10),
)
GO
CREATE TABLE PatientAttendants(
    PatientRegisterID int  not null ,
    EmployeeID varchar(10),
)
GO
ALTER TABLE EmployeeDetails
    ADD CONSTRAINT fk_EmployeeDetails_EmployeeID FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeNumber)
 
 
ALTER TABLE EmployeeDepartments
    ADD CONSTRAINT fk_EmployeeDepartments_EmployeeID FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeNumber)
ALTER TABLE EmployeeDepartments
    ADD CONSTRAINT fk_EmployeeDepartments_DepartmentID FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
ALTER TABLE Feedbacks
    ADD CONSTRAINT fk_Feedbacks_FromPatientID FOREIGN KEY (FromPatientID) REFERENCES Patients(PatientID),
    CONSTRAINT fk_Feedbacks_EmployeeID FOREIGN KEY (ToEmployeeID) REFERENCES Employees(EmployeeNumber)
ALTER TABLE PatientInsurances
    ADD CONSTRAINT fk_PatientInsurances_PatientID FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
ALTER TABLE PatientLabReports
    ADD CONSTRAINT fk_PatientLabReports_PatientRegisterID FOREIGN KEY (PatientRegisterID) REFERENCES PatientRegisters(PatientRegisterID),
    CONSTRAINT fk_PatientLabReports_LabTestID FOREIGN KEY (LabTestID) REFERENCES LabTests(LabtestID)
ALTER TABLE PatientBillings
    ADD CONSTRAINT fk_PatientBillings_PatientID FOREIGN KEY (PatientRegisterID) REFERENCES PatientRegisters(PatientRegisterId)
ALTER TABLE PatientRegisters
    ADD CONSTRAINT fk_PatientRegisters_PatientInsuranceID FOREIGN KEY (PatientInsuranceID) REFERENCES PatientInsurances(PatientInsuranceID),
    CONSTRAINT fk_PatientRegisters_PatientID FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
 
ALTER TABLE PatientDiseases
    ADD CONSTRAINT fk_PatientDiseases_PatientRegisterID FOREIGN KEY (PatientRegisterID) REFERENCES PatientRegisters(PatientRegisterID)
ALTER TABLE PatientDiseases
    ADD CONSTRAINT fk_PatientDiseases_PatientDiseaseID FOREIGN KEY (PatientDiseaseID) REFERENCES Diseases(DiseaseID)
ALTER TABLE Patient_address
    ADD CONSTRAINT fk_Patient_address_PatientID FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
 
-- Insert Values to tables created
INSERT INTO Patients (FirstName, LastName,DateofBirth,Gender,PhoneNumber,EmailID,Height,Weight_value,Bloodgroup)
VALUES ('Rambo','Jack','1990-03-29','M','315-788-9132','rambo@gmail.com','170 cm','200','O+'),
('Ronaldo','CK','1992-05-29','M','315-788-9432','ronaldo.com','180 cm','220','B+'),
('Messi','PK','1991-01-29','M','315-722-9111','messi@gmail.com','175 cm','180','O+'),
('Rayn','Peter','1995-05-29','M','315-722-1122','rayn@gmail.com','170 cm','210','O+'),
('Sakira','Alex','1996-07-29','F','315-711-1132','sakira@gmail.com','170 cm','165','O-')
GO
INSERT INTO Employees (EmployeeNumber, EmailID, Password_value)
VALUES ('HM001', 'varun@gmail.com', 'password011'),
('HM002', 'lily@gmail.com', 'password012'),
('HM003', 'alex@gmail.com', 'password013'),
('HM004', 'arun@gmail.com', 'password014'),
('HM005', 'harry@gmail.com', 'password015'),
('HM006', 'peter@gmail.com', 'password016')
GO
INSERT INTO EmployeeDetails (FirstName, LastName, DateofBirth, Gender, PhoneNumber,EmployeeID)
VALUES
('Varun','Jack','1990-03-29','M','315-788-9132','HM001'),
('Lily','CK','1992-05-29','M','315-788-9432','HM002'),
('Alex','PK','1991-01-29','M','315-722-9111','HM003'),
('Arun','Peter','1995-05-29','M','315-722-1122','HM004'),
('Harry','Alex','1996-01-29','M','315-711-1132','HM005'),
('Peter','Alex','1996-07-29','M','315-711-1434','HM006')
GO
INSERT INTO Departments (DepartmentID,DepartmentName)
VALUES
(1001,'Emergency Department'),
(1002,'Burn Unit'),
(1003,'Surgery'),
(1004,'cardiology')
GO
INSERT INTO EmployeeDepartments (EmployeeID,DepartmentID,isActive)
VALUES
('HM001',1001,1),
('HM003',1002,1),
('HM002',1003,1),
('HM006',1004,1)
GO
INSERT INTO Feedbacks(FromPatientID,ToEmployeeID,Comment,Rating)
VALUES (1,'HM001','Good',8),
(2,'HM004','Bad Experience',5),
(4,'HM003','Very Friendly',9)
GO
INSERT INTO PatientInsurances (PatientInsuranceID, PatientID, ProviderName, StartDate, EndDate)
VALUES
(0101,1,'National','2022-05-29','2023-06-29'),
(0102,2,'Aetna','2022-06-29','2023-05-29'),
(0103,3,'Insure','2022-07-29','2023-09-29'),
(0105,4,'XYZ','2022-09-29','2023-01-29'),
(0106,5,'ADS','2022-02-25','2023-02-25')
GO
INSERT INTO LabTests (LabTestID, TestName, MinValue, MaxValue, CalculatedUnit)
VALUES (123,'Sugar','20','60', '44'),
(223,'Blood','66','120', '50'),
(323,'ECG','660','782', '714'),
(423,'heart','28','60', '44'),
(523,'Cardio','69','120', '90'),
(623,'veins','662','780', '714')
GO
INSERT INTO PatientRegisters (PatientRegisterID, PatientID, PatientInsuranceID, AdmittedOn, DischargeOn)
VALUES (1, 1, 0101,'1990-06-29' , '1990-07-30') ,
(2,2, 0102,'1990-07-29' , '1990-08-30'),
(3,3 , 0103,'1990-10-29' , '1990-11-30'),
(5,5, 0105,'1990-04-29' , '1990-05-30')
GO
INSERT INTO PatientLabReports (PatientLabReportID, PatientRegisterID, LabtestId, Comment, TestValue)
VALUES (1111,1,123,'Critical', '20'),
(2222,2,223,'Very Critical', '21'),
(3333,3,323,'Neutral', '12'),
(5555,5,523,'Very Critical', '24')
GO
INSERT INTO PatientBillings (PatientBillingID, PatientRegisterID, GeneratedDate, PaymentType, Amount)
VALUES (101, 1,'1990-04-29','Cash', '5000'),
(102, 2,'1990-05-29','Cheque', '6050'),
(103, 3,'1990-06-29','Card', '7144'),
(105, 5,'1990-08-29','Cheque', '6051')
GO
INSERT INTO Diseases (DiseaseID, DiseaseName)
VALUES (1123,'Diarreha'),
(2123,'Chicken pox'),
(3123,'lung disease'),
(4123,'Heart disease'),
(5123,'Small pox'),
(6123,'Brain disease')
GO
INSERT INTO PatientDiseases (PatientRegisterID, PatientDiseaseID)
VALUES
(1,1123),
(2,1123),
(3,2123),
(5,4123)
GO
INSERT INTO PatientAttendants (PatientRegisterID, EmployeeID)
VALUES
(1,'HM001'),
(2,'HM002'),
(3,'HM003'),
(5,'HM005')
select * from PatientAttendants
GO
INSERT INTO PatientAppointments (PatientID, EmployeeID, IsCompleted, IsCancelled, IsNoShow )
VALUES
(1,'HM001', '1','0', '0'),
(2,'HM002', '0','0', '1'),
(3,'HM003', '0','1', '0'),
(4, 'HM004', '0','0', '1'),
(5, 'HM005', '0','0', '1'),
(6, 'HM006', '1','0', '0')
 
GO
INSERT INTO Patient_address (PatientID,Street, building_no,city,country,pincode)
values
(1,'Avondale Pl','121','Syracuse','US','13210'),
(2,'Avondale Pl','131','Syracuse','US','13210'),
(3,'Avondale Pl','111','Syracuse','US','13210'),
(4,'Avondale Pl','151','Syracuse','US','13210')
 
select * from PatientInsurances;
select * from Patients;
select * from PatientLabReports;
select * from LabTests;
select * from PatientBillings;
select * from PatientRegisters;
select * from PatientDiseases;
select * from Diseases;
select * from PatientAttendants;
select * from PatientAppointments;
select * from Patient_address;
drop view if EXISTS Patient_details
Create view Patient_details AS Select p.PatientID,FirstName,LastName,DateofBirth,Gender,PhoneNumber,emailID,height,Weight_value,bloodgroup,ProviderName as 'Insurance_Provider_name',pi.StartDate as 'Insurance_Start_date',pi.EndDate as 'Insurance_End_date',lt.TestName,lt.MinValue,lt.MaxValue,lt.CalculatedUnit
from Patients p
    join PatientInsurances pi on p.PatientID = pi.PatientID
    join PatientRegisters pr on p.PatientID = pr.PatientID
    join PatientLabReports pl on pr.PatientRegisterID = pl.PatientRegisterID
    join PatientDiseases pd on pr.PatientRegisterID = pd.PatientRegisterID
    join LabTests lt on pl.LabTestID = lt.LabtestID
select * from Patient_details
select * from PatientLabReports
-- Employee Details
drop view if EXISTS Employee_Details
create view  Employee_Details AS select EmployeeNumber,EmailID,FirstName,LastName,DateofBirth,Gender,PhoneNumber,DepartmentName from Employees e
join EmployeeDepartments edp on e.EmployeeNumber = edp.EmployeeID
join EmployeeDetails ed on e.EmployeeNumber = ed.EmployeeID
join Departments d on edp.DepartmentID = d.DepartmentID
select * from Employee_Details
--feedback for Doctors
drop view if EXISTS Doctors_Feedback
create view  Doctors_Feedback AS select e.EmployeeNumber,firstname,lastname,Gender,Comment,Rating
from Employees e
join EmployeeDetails ed on e.EmployeeNumber = ed.EmployeeID
join EmployeeDepartments edp on e.EmployeeNumber = edp.EmployeeID
join Feedbacks fb on  e.EmployeeNumber = fb.ToEmployeeID
select * from Doctors_Feedback
--Patient Details regarding Appoinments
drop view if EXISTS Patient_appoinment_details
Create view Patient_appoinment_details as select pa.PatientID,FirstName,LastName,sum(Cast(IsCompleted as INTEGER)) as Total_Completed_Appoinments,
sum(Cast(IsCancelled as INTEGER)) as Total_Cancelled_Appoinments,
sum(Cast(IsNoShow as INTEGER)) as Total_IsNoShow_Appoinments
from PatientAppointments pa
join Patients p on pa.patientID = p.patientID
group by pa.PatientID,FirstName,LastName
 
select * from Patient_appoinment_details


