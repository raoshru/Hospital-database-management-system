{\rtf1\ansi\ansicpg1252\cocoartf2759
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;\f1\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red25\green25\blue25;\red15\green112\blue1;\red255\green255\blue254;
\red0\green0\blue255;\red144\green1\blue18;\red101\green76\blue29;\red19\green120\blue72;\red11\green97\blue205;
}
{\*\expandedcolortbl;;\cssrgb\c12941\c12941\c12941;\cssrgb\c0\c50196\c0;\cssrgb\c100000\c100000\c99608;
\cssrgb\c0\c0\c100000;\cssrgb\c63922\c8235\c8235;\cssrgb\c47451\c36863\c14902;\cssrgb\c3529\c53333\c35294;\cssrgb\c0\c47059\c84314;
}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs22 \cf2 \expnd0\expndtw0\kerning0
\'a0
\fs20 \
\pard\pardeftab720\partightenfactor0

\f1\fs18 \cf3 \cb4 --create database health
\f0\fs20 \cf2 \

\f1\fs18 \cf3 --use health
\f0\fs20 \cf2 \
\pard\pardeftab720\partightenfactor0

\f1\fs18 \cf5 IF\cf2  \cf5 EXISTS\cf2  ( \cf5 SELECT\cf2  * \cf5 FROM\cf2  INFORMATION_SCHEMA.TABLE_CONSTRAINTS \cf5 WHERE\cf2  constraint_name = \cf6 'fk_EmployeeDetails_EmployeeID'\cf2 )
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 ALTER\cf2  \cf5 TABLE\cf2  EmployeeDetails \cf5 DROP\cf2  \cf5 CONSTRAINT\cf2  fk_EmployeeDetails_EmployeeID
\f0\fs20 \

\f1\fs18 \cf5 IF\cf2  \cf5 EXISTS\cf2  ( \cf5 SELECT\cf2  * \cf5 FROM\cf2  INFORMATION_SCHEMA.TABLE_CONSTRAINTS \cf5 WHERE\cf2  constraint_name = \cf6 'fk_EmployeeDepartments_EmployeeID'\cf2 )
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 ALTER\cf2  \cf5 TABLE\cf2  EmployeeDepartments \cf5 DROP\cf2  \cf5 CONSTRAINT\cf2  fk_EmployeeDepartments_EmployeeID
\f0\fs20 \

\f1\fs18 \cf5 IF\cf2  \cf5 EXISTS\cf2  ( \cf5 SELECT\cf2  * \cf5 FROM\cf2  INFORMATION_SCHEMA.TABLE_CONSTRAINTS \cf5 WHERE\cf2  constraint_name = \cf6 'fk_EmployeeDepartments_DepartmentID'\cf2 )
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 ALTER\cf2  \cf5 TABLE\cf2  EmployeeDepartments \cf5 DROP\cf2  \cf5 CONSTRAINT\cf2  fk_EmployeeDepartments_DepartmentID
\f0\fs20 \

\f1\fs18 \cf5 IF\cf2  \cf5 EXISTS\cf2  ( \cf5 SELECT\cf2  * \cf5 FROM\cf2  INFORMATION_SCHEMA.TABLE_CONSTRAINTS \cf5 WHERE\cf2  constraint_name = \cf6 'fk_Feedbacks_FromPatientID'\cf2 )
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 ALTER\cf2  \cf5 TABLE\cf2  Feedbacks \cf5 DROP\cf2  \cf5 CONSTRAINT\cf2  fk_Feedbacks_FromPatientID
\f0\fs20 \

\f1\fs18 \cf5 IF\cf2  \cf5 EXISTS\cf2  ( \cf5 SELECT\cf2  * \cf5 FROM\cf2  INFORMATION_SCHEMA.TABLE_CONSTRAINTS \cf5 WHERE\cf2  constraint_name = \cf6 'fk_Feedbacks_EmployeeID'\cf2 )
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 ALTER\cf2  \cf5 TABLE\cf2  Feedbacks \cf5 DROP\cf2  \cf5 CONSTRAINT\cf2  fk_Feedbacks_EmployeeID
\f0\fs20 \

\f1\fs18 \cf5 IF\cf2  \cf5 EXISTS\cf2  ( \cf5 SELECT\cf2  * \cf5 FROM\cf2  INFORMATION_SCHEMA.TABLE_CONSTRAINTS \cf5 WHERE\cf2  constraint_name = \cf6 'fk_PatientInsurances_PatientID'\cf2 )
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 ALTER\cf2  \cf5 TABLE\cf2  PatientInsurances \cf5 DROP\cf2  \cf5 CONSTRAINT\cf2  fk_PatientInsurances_PatientID
\f0\fs20 \
\

\f1\fs18 \cf5 IF\cf2  \cf5 EXISTS\cf2  ( \cf5 SELECT\cf2  * \cf5 FROM\cf2  INFORMATION_SCHEMA.TABLE_CONSTRAINTS \cf5 WHERE\cf2  constraint_name = \cf6 'uk_EmployeeDetails_EmployeeID'\cf2 )
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 ALTER\cf2  \cf5 TABLE\cf2  EmployeeDetails \cf5 DROP\cf2  \cf5 CONSTRAINT\cf2  uk_EmployeeDetails_EmployeeID
\f0\fs20 \
\

\f1\fs18 \cf5 IF\cf2  \cf5 EXISTS\cf2  ( \cf5 SELECT\cf2  * \cf5 FROM\cf2  INFORMATION_SCHEMA.TABLE_CONSTRAINTS \cf5 WHERE\cf2  constraint_name = \cf6 'fk_PatientLabReports_PatientRegisterID'\cf2 )
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 ALTER\cf2  \cf5 TABLE\cf2  PatientLabReports \cf5 DROP\cf2  \cf5 CONSTRAINT\cf2  fk_PatientLabReports_PatientRegisterID
\f0\fs20 \

\f1\fs18 \cf5 IF\cf2  \cf5 EXISTS\cf2  ( \cf5 SELECT\cf2  * \cf5 FROM\cf2  INFORMATION_SCHEMA.TABLE_CONSTRAINTS \cf5 WHERE\cf2  constraint_name = \cf6 'fk_PatientLabReports_LabTestID'\cf2 )
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 ALTER\cf2  \cf5 TABLE\cf2  PatientLabReports \cf5 DROP\cf2  \cf5 CONSTRAINT\cf2  fk_PatientLabReports_LabTestID
\f0\fs20 \

\f1\fs18 \cf5 IF\cf2  \cf5 EXISTS\cf2  ( \cf5 SELECT\cf2  * \cf5 FROM\cf2  INFORMATION_SCHEMA.TABLE_CONSTRAINTS \cf5 WHERE\cf2  constraint_name = \cf6 'fk_PatientBillings_PatientID'\cf2 )
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 ALTER\cf2  \cf5 TABLE\cf2  PatientBillings \cf5 DROP\cf2  \cf5 CONSTRAINT\cf2  fk_PatientBillings_PatientID
\f0\fs20 \

\f1\fs18 \cf5 IF\cf2  \cf5 EXISTS\cf2  ( \cf5 SELECT\cf2  * \cf5 FROM\cf2  INFORMATION_SCHEMA.TABLE_CONSTRAINTS \cf5 WHERE\cf2  constraint_name = \cf6 'fk_PatientRegisters_PatientInsuranceID'\cf2 )
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 ALTER\cf2  \cf5 TABLE\cf2  PatientRegisters \cf5 DROP\cf2  \cf5 CONSTRAINT\cf2  fk_PatientRegisters_PatientInsuranceID
\f0\fs20 \

\f1\fs18 \cf5 IF\cf2  \cf5 EXISTS\cf2  ( \cf5 SELECT\cf2  * \cf5 FROM\cf2  INFORMATION_SCHEMA.TABLE_CONSTRAINTS \cf5 WHERE\cf2  constraint_name = \cf6 'fk_PatientRegisters_PatientID'\cf2 )
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 ALTER\cf2  \cf5 TABLE\cf2  PatientRegisters \cf5 DROP\cf2  \cf5 CONSTRAINT\cf2  fk_PatientRegisters_PatientID
\f0\fs20 \

\f1\fs18 \cf5 IF\cf2  \cf5 EXISTS\cf2  ( \cf5 SELECT\cf2  * \cf5 FROM\cf2  INFORMATION_SCHEMA.TABLE_CONSTRAINTS \cf5 WHERE\cf2  constraint_name = \cf6 'fk_PatientDiseases_PatientRegisterID'\cf2 )
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 ALTER\cf2  \cf5 TABLE\cf2  PatientDiseases \cf5 DROP\cf2  \cf5 CONSTRAINT\cf2  fk_PatientDiseases_PatientRegisterID
\f0\fs20 \
\

\f1\fs18 \cf5 IF\cf2  \cf5 EXISTS\cf2  ( \cf5 SELECT\cf2  * \cf5 FROM\cf2  INFORMATION_SCHEMA.TABLE_CONSTRAINTS \cf5 WHERE\cf2  constraint_name = \cf6 'fk_Patient_address_PatientID'\cf2 )
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 ALTER\cf2  \cf5 TABLE\cf2  Patient_address \cf5 DROP\cf2  \cf5 CONSTRAINT\cf2  fk_Patient_address_PatientID
\f0\fs20 \
\

\f1\fs18 \cf5 drop\cf2  \cf5 table\cf2  \cf5 if\cf2  \cf5 EXISTS\cf2  Departments;
\f0\fs20 \

\f1\fs18 \cf5 drop\cf2  \cf5 table\cf2  \cf5 if\cf2  \cf5 EXISTS\cf2  EmployeeDepartments;
\f0\fs20 \

\f1\fs18 \cf5 drop\cf2  \cf5 table\cf2  \cf5 if\cf2  \cf5 EXISTS\cf2  Employees;
\f0\fs20 \

\f1\fs18 \cf5 drop\cf2  \cf5 table\cf2  \cf5 if\cf2  \cf5 EXISTS\cf2  Feedbacks;
\f0\fs20 \

\f1\fs18 \cf5 drop\cf2  \cf5 TABLE\cf2  \cf5 if\cf2  \cf5 exists\cf2  EmployeeDetails;
\f0\fs20 \

\f1\fs18 \cf5 drop\cf2  \cf5 TABLE\cf2  \cf5 if\cf2  \cf5 exists\cf2  Patients;
\f0\fs20 \

\f1\fs18 \cf5 drop\cf2  \cf5 table\cf2  \cf5 if\cf2  \cf5 EXISTS\cf2  PatientInsurances;
\f0\fs20 \

\f1\fs18 \cf5 drop\cf2  \cf5 table\cf2  \cf5 if\cf2  \cf5 EXISTS\cf2  PatientLabReports;
\f0\fs20 \

\f1\fs18 \cf5 drop\cf2  \cf5 table\cf2  \cf5 if\cf2  \cf5 EXISTS\cf2  LabTests;
\f0\fs20 \

\f1\fs18 \cf5 drop\cf2  \cf5 TABLE\cf2  \cf5 if\cf2  \cf5 exists\cf2  PatientBillings;
\f0\fs20 \

\f1\fs18 \cf5 drop\cf2  \cf5 TABLE\cf2  \cf5 if\cf2  \cf5 exists\cf2  PatientRegisters;
\f0\fs20 \

\f1\fs18 \cf5 drop\cf2  \cf5 TABLE\cf2  \cf5 if\cf2  \cf5 exists\cf2  PatientDiseases;
\f0\fs20 \

\f1\fs18 \cf5 drop\cf2  \cf5 TABLE\cf2  \cf5 if\cf2  \cf5 exists\cf2  Diseases;
\f0\fs20 \

\f1\fs18 \cf5 drop\cf2  \cf5 TABLE\cf2  \cf5 if\cf2  \cf5 exists\cf2  PatientAttendants;
\f0\fs20 \

\f1\fs18 \cf5 drop\cf2  \cf5 TABLE\cf2  \cf5 if\cf2  \cf5 exists\cf2  PatientAppointments;
\f0\fs20 \

\f1\fs18 \cf5 drop\cf2  \cf5 TABLE\cf2  \cf5 if\cf2  \cf5 exists\cf2  Patient_address;
\f0\fs20 \
\pard\pardeftab720\sa320\partightenfactor0

\f1\fs18 \cf2 \cb1 \uc0\u8232 \u8232 
\f0\fs20 \cb4 \
\pard\pardeftab720\partightenfactor0

\f1\fs18 \cf5 CREATE\cf2  \cf5 TABLE\cf2  \cf7 Departments\cf2 (
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 DepartmentID \cf5 int\cf2  \cf5 not null\cf2 \'a0 ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 DepartmentName \cf5 varchar\cf2 (\cf8 45\cf2 )\'a0\'a0 ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 CONSTRAINT\cf2  pk_Departments_DepartmentID \cf5 PRIMARY KEY\cf2  (DepartmentID)
\f0\fs20 \

\f1\fs18 )
\f0\fs20 \

\f1\fs18 \cf5 GO
\f0\fs20 \cf2 \

\f1\fs18 \cf5 CREATE\cf2  \cf5 TABLE\cf2  \cf7 EmployeeDepartments\cf2 (
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 EmployeeID\'a0\'a0 \cf5 varchar\cf2 (\cf8 45\cf2 )\'a0 \cf5 not null\cf2 ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 DepartmentID\'a0 \cf5 int\cf2 \'a0 \cf5 not null\cf2 ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 isActive \cf5 int\cf2  \cf5 not null\cf2 ,
\f0\fs20 \

\f1\fs18 )
\f0\fs20 \

\f1\fs18 \cf5 GO
\f0\fs20 \cf2 \

\f1\fs18 \cf5 CREATE\cf2  \cf5 TABLE\cf2  \cf7 Employees\cf2 (
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 EmployeeID \cf5 int\cf2  \cf5 IDENTITY\cf2 \'a0 \cf5 not null\cf2 \'a0 ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 EmployeeNumber \cf5 varchar\cf2 (\cf8 45\cf2 )\'a0\'a0 ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 EmailID\'a0\'a0 \cf5 varchar\cf2 (\cf8 45\cf2 )\'a0\'a0\'a0 ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 Password_value\'a0\'a0 \cf5 varchar\cf2 (\cf8 45\cf2 ),
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 CONSTRAINT\cf2  pk_Employees_EmployeeNumber \cf5 PRIMARY KEY\cf2  (EmployeeNumber)
\f0\fs20 \

\f1\fs18 )
\f0\fs20 \

\f1\fs18 \cf5 GO
\f0\fs20 \cf2 \

\f1\fs18 \cf5 CREATE\cf2  \cf5 TABLE\cf2  \cf7 Feedbacks\cf2 (
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 FeedbackID \cf5 int\cf2  \cf5 IDENTITY\cf2 \'a0 \cf5 not null\cf2 \'a0 ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 FromPatientID \cf5 int\cf2 \'a0 ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 ToEmployeeID\'a0\'a0 \cf5 varchar\cf2 (\cf8 45\cf2 )\'a0\'a0 ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 Comment \cf5 varchar\cf2 (\cf8 30\cf2 ),
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 Rating \cf5 int\cf2 ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 CONSTRAINT\cf2  pk_Feedbacks_FeedbackID \cf5 PRIMARY KEY\cf2  (FeedbackID)
\f0\fs20 \

\f1\fs18 )
\f0\fs20 \

\f1\fs18 \cf5 GO
\f0\fs20 \cf2 \

\f1\fs18 \cf5 CREATE\cf2  \cf5 TABLE\cf2  \cf7 EmployeeDetails\cf2 (
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 EmployeeDetailsID \cf5 int\cf2  \cf5 IDENTITY\cf2 \'a0 \cf5 not null\cf2  ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 FirstName \cf5 varchar\cf2 (\cf8 40\cf2 ),
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 LastName \cf5 varchar\cf2 (\cf8 40\cf2 ),
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 DateofBirth \cf5 Date\cf2 ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 Gender \cf5 varchar\cf2 (\cf8 10\cf2 ),
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 PhoneNumber \cf5 VARCHAR\cf2 (\cf8 45\cf2 ),
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 EmployeeID \cf5 varchar\cf2 (\cf8 45\cf2 ),
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 CONSTRAINT\cf2  pk_EmployeeDetails_EmployeeDetailsID \cf5 PRIMARY KEY\cf2  (EmployeeDetailsID)
\f0\fs20 \

\f1\fs18 )
\f0\fs20 \

\f1\fs18 \cf5 GO
\f0\fs20 \cf2 \
\pard\pardeftab720\sa320\partightenfactor0

\f1\fs18 \cf2 \cb1 \uc0\u8232 
\f0\fs20 \cb4 \
\pard\pardeftab720\partightenfactor0

\f1\fs18 \cf5 CREATE\cf2  \cf5 TABLE\cf2  \cf7 Patients\cf2 (
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 PatientID \cf5 int\cf2  \cf5 IDENTITY\cf2 \'a0 \cf5 not null\cf2  ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 FirstName \cf5 varchar\cf2 (\cf8 40\cf2 ),
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 LastName \cf5 varchar\cf2 (\cf8 40\cf2 ),
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 DateofBirth \cf5 Date\cf2 ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 Gender \cf5 varchar\cf2 (\cf8 10\cf2 ),
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 PhoneNumber \cf5 VARCHAR\cf2 (\cf8 50\cf2 ),
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 EmailID \cf5 varchar\cf2 (\cf8 45\cf2 ),
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 Height \cf5 varchar\cf2 (\cf8 45\cf2 ),
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 Weight_value \cf5 varchar\cf2 (\cf8 45\cf2 ),
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 Bloodgroup \cf5 varchar\cf2 (\cf8 45\cf2 ),
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 CONSTRAINT\cf2  pk_Patients_PatientID \cf5 PRIMARY KEY\cf2  (PatientID)
\f0\fs20 \

\f1\fs18 )
\f0\fs20 \

\f1\fs18 \cf5 GO
\f0\fs20 \cf2 \
\

\f1\fs18 \cf5 create\cf2  \cf5 table\cf2  \cf7 Patient_address\cf2 (
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 Patient_address_no \cf5 int\cf2  \cf5 IDENTITY\cf2  \cf5 not null\cf2 ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 PatientID \cf5 int\cf2  \cf5 not null\cf2 ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 Street \cf5 varchar\cf2 (\cf8 45\cf2 ),
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 building_no \cf5 varchar\cf2 (\cf8 45\cf2 ),
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 city \cf5 varchar\cf2 (\cf8 45\cf2 ),
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 country \cf5 varchar\cf2 (\cf8 45\cf2 ),
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 pincode \cf5 varchar\cf2 (\cf8 45\cf2 )
\f0\fs20 \

\f1\fs18 )
\f0\fs20 \
\pard\pardeftab720\sa320\partightenfactor0

\f1\fs18 \cf2 \cb1 \uc0\u8232 
\f0\fs20 \cb4 \
\pard\pardeftab720\partightenfactor0

\f1\fs18 \cf5 CREATE\cf2  \cf5 TABLE\cf2  \cf7 PatientInsurances\cf2 (
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 PatientInsuranceID \cf5 int\cf2 \'a0 \cf5 not null\cf2 \'a0 ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 PatientID \cf5 int\cf2  \cf5 not null\cf2  ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 ProviderName \cf5 varchar\cf2 (\cf8 45\cf2 )\'a0\'a0 ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 StartDate\'a0\'a0 \cf5 date\cf2 \'a0\'a0 ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 EndDate\'a0\'a0 \cf5 date\cf2 ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 CONSTRAINT\cf2  pk_PatientInsurances_PatientInsuranceID \cf5 PRIMARY KEY\cf2  (PatientInsuranceID)
\f0\fs20 \

\f1\fs18 )
\f0\fs20 \

\f1\fs18 \cf5 GO
\f0\fs20 \cf2 \
\

\f1\fs18 \cf5 CREATE\cf2  \cf5 TABLE\cf2  \cf7 PatientLabReports\cf2 (
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 PatientLabReportID \cf5 int\cf2 \'a0 \cf5 not null\cf2  ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 PatientRegisterID \cf5 int\cf2  \cf5 not null\cf2 ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 LabTestID \cf5 int\cf2  \cf5 not null\cf2 ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 Comment \cf5 varchar\cf2 (\cf8 60\cf2 ),
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 TestValue \cf5 varchar\cf2 (\cf8 10\cf2 ),
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 CONSTRAINT\cf2  pk_PatientLabReports_PatientLabReportID \cf5 PRIMARY KEY\cf2  (PatientLabReportID)
\f0\fs20 \

\f1\fs18 )
\f0\fs20 \
\

\f1\fs18 \cf5 GO
\f0\fs20 \cf2 \
\

\f1\fs18 \cf5 CREATE\cf2  \cf5 TABLE\cf2  \cf7 LabTests\cf2 (
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 LabTestID \cf5 int\cf2  \cf5 not null\cf2 ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 TestName \cf5 varchar\cf2 (\cf8 45\cf2 ) \cf5 not null\cf2  ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 MinValue \cf5 varchar\cf2 (\cf8 10\cf2 ),
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 MaxValue \cf5 varchar\cf2 (\cf8 10\cf2 ),
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 CalculatedUnit \cf5 varchar\cf2 (\cf8 30\cf2 ),
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 CONSTRAINT\cf2  pk_LabTests_LabTestID \cf5 PRIMARY KEY\cf2  (LabTestID)
\f0\fs20 \

\f1\fs18 )
\f0\fs20 \

\f1\fs18 \cf5 GO
\f0\fs20 \cf2 \
\pard\pardeftab720\sa320\partightenfactor0

\f1\fs18 \cf2 \cb1 \uc0\u8232 
\f0\fs20 \cb4 \
\pard\pardeftab720\partightenfactor0

\f1\fs18 \cf5 CREATE\cf2  \cf5 TABLE\cf2  \cf7 PatientBillings\cf2 (
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 PatientBillingID \cf5 int\cf2  \cf5 not null\cf2  ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 PatientRegisterID \cf5 int\cf2  \cf5 not null\cf2 ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 GeneratedDate \cf5 Date\cf2 ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 PaymentType \cf5 varchar\cf2 (\cf8 10\cf2 ),
\f0\fs20 \

\f1\fs18 \'a0\'a0 \'a0Amount \cf5 VARCHAR\cf2 (\cf8 30\cf2 ),
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 CONSTRAINT\cf2  pk_PatientBillings_PatientBillingID \cf5 PRIMARY KEY\cf2  (PatientBillingID)
\f0\fs20 \

\f1\fs18 )
\f0\fs20 \

\f1\fs18 \cf5 GO
\f0\fs20 \cf2 \
\pard\pardeftab720\sa320\partightenfactor0

\f1\fs18 \cf2 \cb1 \uc0\u8232 
\f0\fs20 \cb4 \
\pard\pardeftab720\partightenfactor0

\f1\fs18 \cf5 CREATE\cf2  \cf5 TABLE\cf2  \cf7 PatientRegisters\cf2 (
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0\'a0\'a0
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0\'a0PatientRegisterID \cf5 int\cf2  \cf5 not null\cf2  ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 PatientID \cf5 int\cf2  \cf5 not null\cf2 ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 PatientInsuranceID \cf5 int\cf2  \cf5 not null\cf2 ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 AdmittedOn \cf5 Date\cf2 ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 DischargeOn \cf5 Date\cf2 ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 CONSTRAINT\cf2  pk_PatientRegisters_PatientRegisterID \cf5 PRIMARY KEY\cf2  (PatientRegisterID)
\f0\fs20 \

\f1\fs18 )
\f0\fs20 \

\f1\fs18 \cf5 GO
\f0\fs20 \cf2 \
\

\f1\fs18 \'a0
\f0\fs20 \

\f1\fs18 \cf5 CREATE\cf2  \cf5 TABLE\cf2  \cf7 PatientDiseases\cf2 (
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 PatientRegisterID \cf5 int\cf2  \cf5 not null\cf2  ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 PatientDiseaseID \cf5 int\cf2  \cf5 not NULL\cf2 ,
\f0\fs20 \

\f1\fs18 )
\f0\fs20 \

\f1\fs18 \cf5 GO
\f0\fs20 \cf2 \

\f1\fs18 \cf5 CREATE\cf2  \cf5 TABLE\cf2  \cf7 Diseases\cf2 (
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 DiseaseID \cf5 int\cf2  \cf5 not null\cf2  ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 DiseaseName \cf5 varchar\cf2 (\cf8 100\cf2 ),
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 CONSTRAINT\cf2  pk_Diseases_DiseaseID \cf5 PRIMARY KEY\cf2  (DiseaseID)
\f0\fs20 \

\f1\fs18 )
\f0\fs20 \

\f1\fs18 \cf5 GO
\f0\fs20 \cf2 \

\f1\fs18 \cf5 CREATE\cf2  \cf5 TABLE\cf2  \cf7 PatientAppointments\cf2 (
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 PatientID \cf5 int\cf2  \cf5 not null\cf2  ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 EmployeeID \cf5 varchar\cf2 (\cf8 10\cf2 ),
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 IsCompleted \cf5 varchar\cf2 (\cf8 10\cf2 ),
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 IsCancelled \cf5 varchar\cf2 (\cf8 10\cf2 ),
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 IsNoShow \cf5 varchar\cf2 (\cf8 10\cf2 ),
\f0\fs20 \

\f1\fs18 )
\f0\fs20 \

\f1\fs18 \cf5 GO
\f0\fs20 \cf2 \
\

\f1\fs18 \cf5 CREATE\cf2  \cf5 TABLE\cf2  \cf7 PatientAttendants\cf2 (
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 PatientRegisterID \cf5 int\cf2 \'a0 \cf5 not null\cf2  ,
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 EmployeeID \cf5 varchar\cf2 (\cf8 10\cf2 ),
\f0\fs20 \

\f1\fs18 )
\f0\fs20 \
\

\f1\fs18 \cf5 GO
\f0\fs20 \cf2 \
\

\f1\fs18 \cf5 ALTER\cf2  \cf5 TABLE\cf2  EmployeeDetails
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 ADD\cf2  \cf5 CONSTRAINT\cf2  fk_EmployeeDetails_EmployeeID \cf5 FOREIGN KEY\cf2  (EmployeeID) \cf5 REFERENCES\cf2  Employees(EmployeeNumber)
\f0\fs20 \

\f1\fs18 \'a0
\f0\fs20 \

\f1\fs18 \'a0
\f0\fs20 \

\f1\fs18 \cf5 ALTER\cf2  \cf5 TABLE\cf2  EmployeeDepartments
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 ADD\cf2  \cf5 CONSTRAINT\cf2  fk_EmployeeDepartments_EmployeeID \cf5 FOREIGN KEY\cf2  (EmployeeID) \cf5 REFERENCES\cf2  Employees(EmployeeNumber)
\f0\fs20 \

\f1\fs18 \cf5 ALTER\cf2  \cf5 TABLE\cf2  EmployeeDepartments
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 ADD\cf2  \cf5 CONSTRAINT\cf2  fk_EmployeeDepartments_DepartmentID \cf5 FOREIGN KEY\cf2  (DepartmentID) \cf5 REFERENCES\cf2  Departments(DepartmentID)
\f0\fs20 \

\f1\fs18 \cf5 ALTER\cf2  \cf5 TABLE\cf2  Feedbacks
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 ADD\cf2  \cf5 CONSTRAINT\cf2  fk_Feedbacks_FromPatientID \cf5 FOREIGN KEY\cf2  (FromPatientID) \cf5 REFERENCES\cf2  Patients(PatientID),
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 CONSTRAINT\cf2  fk_Feedbacks_EmployeeID \cf5 FOREIGN KEY\cf2  (ToEmployeeID) \cf5 REFERENCES\cf2  Employees(EmployeeNumber)
\f0\fs20 \
\

\f1\fs18 \cf5 ALTER\cf2  \cf5 TABLE\cf2  PatientInsurances
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 ADD\cf2  \cf5 CONSTRAINT\cf2  fk_PatientInsurances_PatientID \cf5 FOREIGN KEY\cf2  (PatientID) \cf5 REFERENCES\cf2  Patients(PatientID)
\f0\fs20 \
\

\f1\fs18 \cf5 ALTER\cf2  \cf5 TABLE\cf2  PatientLabReports
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 ADD\cf2  \cf5 CONSTRAINT\cf2  fk_PatientLabReports_PatientRegisterID \cf5 FOREIGN KEY\cf2  (PatientRegisterID) \cf5 REFERENCES\cf2  PatientRegisters(PatientRegisterID),
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 CONSTRAINT\cf2  fk_PatientLabReports_LabTestID \cf5 FOREIGN KEY\cf2  (LabTestID) \cf5 REFERENCES\cf2  LabTests(LabtestID)
\f0\fs20 \

\f1\fs18 \cf5 ALTER\cf2  \cf5 TABLE\cf2  PatientBillings
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 ADD\cf2  \cf5 CONSTRAINT\cf2  fk_PatientBillings_PatientID \cf5 FOREIGN KEY\cf2  (PatientRegisterID) \cf5 REFERENCES\cf2  PatientRegisters(PatientRegisterId)
\f0\fs20 \

\f1\fs18 \cf5 ALTER\cf2  \cf5 TABLE\cf2  PatientRegisters
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 ADD\cf2  \cf5 CONSTRAINT\cf2  fk_PatientRegisters_PatientInsuranceID \cf5 FOREIGN KEY\cf2  (PatientInsuranceID) \cf5 REFERENCES\cf2  PatientInsurances(PatientInsuranceID),
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 CONSTRAINT\cf2  fk_PatientRegisters_PatientID \cf5 FOREIGN KEY\cf2  (PatientID) \cf5 REFERENCES\cf2  Patients(PatientID)
\f0\fs20 \

\f1\fs18 \'a0
\f0\fs20 \

\f1\fs18 \cf5 ALTER\cf2  \cf5 TABLE\cf2  PatientDiseases
\f0\fs20 \

\f1\fs18 \'a0\'a0 \'a0\cf5 ADD\cf2  \cf5 CONSTRAINT\cf2  fk_PatientDiseases_PatientRegisterID \cf5 FOREIGN KEY\cf2  (PatientRegisterID) \cf5 REFERENCES\cf2  PatientRegisters(PatientRegisterID)
\f0\fs20 \

\f1\fs18 \cf5 ALTER\cf2  \cf5 TABLE\cf2  PatientDiseases
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 ADD\cf2  \cf5 CONSTRAINT\cf2  fk_PatientDiseases_PatientDiseaseID \cf5 FOREIGN KEY\cf2  (PatientDiseaseID) \cf5 REFERENCES\cf2  Diseases(DiseaseID)
\f0\fs20 \
\

\f1\fs18 \cf5 ALTER\cf2  \cf5 TABLE\cf2  Patient_address
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 ADD\cf2  \cf5 CONSTRAINT\cf2  fk_Patient_address_PatientID \cf5 FOREIGN KEY\cf2  (PatientID) \cf5 REFERENCES\cf2  Patients(PatientID)
\f0\fs20 \
\

\f1\fs18 \'a0
\f0\fs20 \
\pard\pardeftab720\partightenfactor0

\f1\fs18 \cf3 -- Insert Values to tables created
\f0\fs20 \cf2 \
\pard\pardeftab720\partightenfactor0

\f1\fs18 \cf5 INSERT INTO\cf2  Patients (FirstName, LastName,DateofBirth,Gender,PhoneNumber,EmailID,Height,Weight_value,Bloodgroup)
\f0\fs20 \

\f1\fs18 \cf5 VALUES\cf2  (\cf6 'Rambo'\cf2 ,\cf6 'Jack'\cf2 ,\cf6 '1990-03-29'\cf2 ,\cf6 'M'\cf2 ,\cf6 '315-788-9132'\cf2 ,\cf6 '{\field{\*\fldinst{HYPERLINK "mailto:rambo@gmail.com"}}{\fldrslt \cf9 \ul \ulc9 rambo@gmail.com}}'\cf2 ,\cf6 '170 cm'\cf2 ,\cf6 '200'\cf2 ,\cf6 'O+'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf6 'Ronaldo'\cf2 ,\cf6 'CK'\cf2 ,\cf6 '1992-05-29'\cf2 ,\cf6 'M'\cf2 ,\cf6 '315-788-9432'\cf2 ,\cf6 'ronaldo.com'\cf2 ,\cf6 '180 cm'\cf2 ,\cf6 '220'\cf2 ,\cf6 'B+'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf6 'Messi'\cf2 ,\cf6 'PK'\cf2 ,\cf6 '1991-01-29'\cf2 ,\cf6 'M'\cf2 ,\cf6 '315-722-9111'\cf2 ,\cf6 '{\field{\*\fldinst{HYPERLINK "mailto:messi@gmail.com"}}{\fldrslt \cf9 \ul \ulc9 messi@gmail.com}}'\cf2 ,\cf6 '175 cm'\cf2 ,\cf6 '180'\cf2 ,\cf6 'O+'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf6 'Rayn'\cf2 ,\cf6 'Peter'\cf2 ,\cf6 '1995-05-29'\cf2 ,\cf6 'M'\cf2 ,\cf6 '315-722-1122'\cf2 ,\cf6 '{\field{\*\fldinst{HYPERLINK "mailto:rayn@gmail.com"}}{\fldrslt \cf9 \ul \ulc9 rayn@gmail.com}}'\cf2 ,\cf6 '170 cm'\cf2 ,\cf6 '210'\cf2 ,\cf6 'O+'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf6 'Sakira'\cf2 ,\cf6 'Alex'\cf2 ,\cf6 '1996-07-29'\cf2 ,\cf6 'F'\cf2 ,\cf6 '315-711-1132'\cf2 ,\cf6 '{\field{\*\fldinst{HYPERLINK "mailto:sakira@gmail.com"}}{\fldrslt \cf9 \ul \ulc9 sakira@gmail.com}}'\cf2 ,\cf6 '170 cm'\cf2 ,\cf6 '165'\cf2 ,\cf6 'O-'\cf2 )
\f0\fs20 \

\f1\fs18 \cf5 GO
\f0\fs20 \cf2 \
\

\f1\fs18 \cf5 INSERT INTO\cf2  Employees (EmployeeNumber, EmailID, Password_value)
\f0\fs20 \

\f1\fs18 \cf5 VALUES\cf2  (\cf6 'HM001'\cf2 , \cf6 '{\field{\*\fldinst{HYPERLINK "mailto:varun@gmail.com"}}{\fldrslt \cf9 \ul \ulc9 varun@gmail.com}}'\cf2 , \cf6 'password011'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf6 'HM002'\cf2 , \cf6 '{\field{\*\fldinst{HYPERLINK "mailto:lily@gmail.com"}}{\fldrslt \cf9 \ul \ulc9 lily@gmail.com}}'\cf2 , \cf6 'password012'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf6 'HM003'\cf2 , \cf6 '{\field{\*\fldinst{HYPERLINK "mailto:alex@gmail.com"}}{\fldrslt \cf9 \ul \ulc9 alex@gmail.com}}'\cf2 , \cf6 'password013'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf6 'HM004'\cf2 , \cf6 '{\field{\*\fldinst{HYPERLINK "mailto:arun@gmail.com"}}{\fldrslt \cf9 \ul \ulc9 arun@gmail.com}}'\cf2 , \cf6 'password014'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf6 'HM005'\cf2 , \cf6 '{\field{\*\fldinst{HYPERLINK "mailto:harry@gmail.com"}}{\fldrslt \cf9 \ul \ulc9 harry@gmail.com}}'\cf2 , \cf6 'password015'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf6 'HM006'\cf2 , \cf6 '{\field{\*\fldinst{HYPERLINK "mailto:peter@gmail.com"}}{\fldrslt \cf9 \ul \ulc9 peter@gmail.com}}'\cf2 , \cf6 'password016'\cf2 )
\f0\fs20 \
\

\f1\fs18 \cf5 GO
\f0\fs20 \cf2 \

\f1\fs18 \cf5 INSERT INTO\cf2  EmployeeDetails (FirstName, LastName, DateofBirth, Gender, PhoneNumber,EmployeeID)
\f0\fs20 \

\f1\fs18 \cf5 VALUES
\f0\fs20 \cf2 \

\f1\fs18 (\cf6 'Varun'\cf2 ,\cf6 'Jack'\cf2 ,\cf6 '1990-03-29'\cf2 ,\cf6 'M'\cf2 ,\cf6 '315-788-9132'\cf2 ,\cf6 'HM001'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf6 'Lily'\cf2 ,\cf6 'CK'\cf2 ,\cf6 '1992-05-29'\cf2 ,\cf6 'M'\cf2 ,\cf6 '315-788-9432'\cf2 ,\cf6 'HM002'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf6 'Alex'\cf2 ,\cf6 'PK'\cf2 ,\cf6 '1991-01-29'\cf2 ,\cf6 'M'\cf2 ,\cf6 '315-722-9111'\cf2 ,\cf6 'HM003'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf6 'Arun'\cf2 ,\cf6 'Peter'\cf2 ,\cf6 '1995-05-29'\cf2 ,\cf6 'M'\cf2 ,\cf6 '315-722-1122'\cf2 ,\cf6 'HM004'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf6 'Harry'\cf2 ,\cf6 'Alex'\cf2 ,\cf6 '1996-01-29'\cf2 ,\cf6 'M'\cf2 ,\cf6 '315-711-1132'\cf2 ,\cf6 'HM005'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf6 'Peter'\cf2 ,\cf6 'Alex'\cf2 ,\cf6 '1996-07-29'\cf2 ,\cf6 'M'\cf2 ,\cf6 '315-711-1434'\cf2 ,\cf6 'HM006'\cf2 )
\f0\fs20 \

\f1\fs18 \cf5 GO
\f0\fs20 \cf2 \
\

\f1\fs18 \cf5 INSERT INTO\cf2  Departments (DepartmentID,DepartmentName)
\f0\fs20 \

\f1\fs18 \cf5 VALUES
\f0\fs20 \cf2 \

\f1\fs18 (\cf8 1001\cf2 ,\cf6 'Emergency Department'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 1002\cf2 ,\cf6 'Burn Unit'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 1003\cf2 ,\cf6 'Surgery'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 1004\cf2 ,\cf6 'cardiology'\cf2 )
\f0\fs20 \
\

\f1\fs18 \cf5 GO
\f0\fs20 \cf2 \

\f1\fs18 \cf5 INSERT INTO\cf2  EmployeeDepartments (EmployeeID,DepartmentID,isActive)
\f0\fs20 \

\f1\fs18 \cf5 VALUES
\f0\fs20 \cf2 \

\f1\fs18 (\cf6 'HM001'\cf2 ,\cf8 1001\cf2 ,\cf8 1\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf6 'HM003'\cf2 ,\cf8 1002\cf2 ,\cf8 1\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf6 'HM002'\cf2 ,\cf8 1003\cf2 ,\cf8 1\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf6 'HM006'\cf2 ,\cf8 1004\cf2 ,\cf8 1\cf2 )
\f0\fs20 \
\

\f1\fs18 \cf5 GO
\f0\fs20 \cf2 \
\

\f1\fs18 \cf5 INSERT INTO\cf2  Feedbacks(FromPatientID,ToEmployeeID,Comment,Rating)
\f0\fs20 \

\f1\fs18 \cf5 VALUES\cf2  (\cf8 1\cf2 ,\cf6 'HM001'\cf2 ,\cf6 'Good'\cf2 ,\cf8 8\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 2\cf2 ,\cf6 'HM004'\cf2 ,\cf6 'Bad Experience'\cf2 ,\cf8 5\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 4\cf2 ,\cf6 'HM003'\cf2 ,\cf6 'Very Friendly'\cf2 ,\cf8 9\cf2 )
\f0\fs20 \
\

\f1\fs18 \cf5 GO
\f0\fs20 \cf2 \
\

\f1\fs18 \cf5 INSERT INTO\cf2  PatientInsurances (PatientInsuranceID, PatientID, ProviderName, StartDate, EndDate)
\f0\fs20 \

\f1\fs18 \cf5 VALUES
\f0\fs20 \cf2 \

\f1\fs18 (\cf8 0101\cf2 ,\cf8 1\cf2 ,\cf6 'National'\cf2 ,\cf6 '2022-05-29'\cf2 ,\cf6 '2023-06-29'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 0102\cf2 ,\cf8 2\cf2 ,\cf6 'Aetna'\cf2 ,\cf6 '2022-06-29'\cf2 ,\cf6 '2023-05-29'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 0103\cf2 ,\cf8 3\cf2 ,\cf6 'Insure'\cf2 ,\cf6 '2022-07-29'\cf2 ,\cf6 '2023-09-29'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 0105\cf2 ,\cf8 4\cf2 ,\cf6 'XYZ'\cf2 ,\cf6 '2022-09-29'\cf2 ,\cf6 '2023-01-29'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 0106\cf2 ,\cf8 5\cf2 ,\cf6 'ADS'\cf2 ,\cf6 '2022-02-25'\cf2 ,\cf6 '2023-02-25'\cf2 )
\f0\fs20 \
\

\f1\fs18 \cf5 GO
\f0\fs20 \cf2 \
\

\f1\fs18 \cf5 INSERT INTO\cf2  LabTests (LabTestID, TestName, MinValue, MaxValue, CalculatedUnit)
\f0\fs20 \

\f1\fs18 \cf5 VALUES\cf2  (\cf8 123\cf2 ,\cf6 'Sugar'\cf2 ,\cf6 '20'\cf2 ,\cf6 '60'\cf2 , \cf6 '44'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 223\cf2 ,\cf6 'Blood'\cf2 ,\cf6 '66'\cf2 ,\cf6 '120'\cf2 , \cf6 '50'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 323\cf2 ,\cf6 'ECG'\cf2 ,\cf6 '660'\cf2 ,\cf6 '782'\cf2 , \cf6 '714'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 423\cf2 ,\cf6 'heart'\cf2 ,\cf6 '28'\cf2 ,\cf6 '60'\cf2 , \cf6 '44'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 523\cf2 ,\cf6 'Cardio'\cf2 ,\cf6 '69'\cf2 ,\cf6 '120'\cf2 , \cf6 '90'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 623\cf2 ,\cf6 'veins'\cf2 ,\cf6 '662'\cf2 ,\cf6 '780'\cf2 , \cf6 '714'\cf2 )
\f0\fs20 \
\

\f1\fs18 \cf5 GO
\f0\fs20 \cf2 \
\

\f1\fs18 \cf5 INSERT INTO\cf2  PatientRegisters (PatientRegisterID, PatientID, PatientInsuranceID, AdmittedOn, DischargeOn)
\f0\fs20 \

\f1\fs18 \cf5 VALUES\cf2  (\cf8 1\cf2 , \cf8 1\cf2 , \cf8 0101\cf2 ,\cf6 '1990-06-29'\cf2  , \cf6 '1990-07-30'\cf2 ) ,
\f0\fs20 \

\f1\fs18 (\cf8 2\cf2 ,\cf8 2\cf2 , \cf8 0102\cf2 ,\cf6 '1990-07-29'\cf2  , \cf6 '1990-08-30'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 3\cf2 ,\cf8 3\cf2  , \cf8 0103\cf2 ,\cf6 '1990-10-29'\cf2  , \cf6 '1990-11-30'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 5\cf2 ,\cf8 5\cf2 , \cf8 0105\cf2 ,\cf6 '1990-04-29'\cf2  , \cf6 '1990-05-30'\cf2 )
\f0\fs20 \
\

\f1\fs18 \cf5 GO
\f0\fs20 \cf2 \
\

\f1\fs18 \cf5 INSERT INTO\cf2  PatientLabReports (PatientLabReportID, PatientRegisterID, LabtestId, Comment, TestValue)
\f0\fs20 \

\f1\fs18 \cf5 VALUES\cf2  (\cf8 1111\cf2 ,\cf8 1\cf2 ,\cf8 123\cf2 ,\cf6 'Critical'\cf2 , \cf6 '20'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 2222\cf2 ,\cf8 2\cf2 ,\cf8 223\cf2 ,\cf6 'Very Critical'\cf2 , \cf6 '21'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 3333\cf2 ,\cf8 3\cf2 ,\cf8 323\cf2 ,\cf6 'Neutral'\cf2 , \cf6 '12'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 5555\cf2 ,\cf8 5\cf2 ,\cf8 523\cf2 ,\cf6 'Very Critical'\cf2 , \cf6 '24'\cf2 )
\f0\fs20 \
\

\f1\fs18 \cf5 GO
\f0\fs20 \cf2 \
\

\f1\fs18 \cf5 INSERT INTO\cf2  PatientBillings (PatientBillingID, PatientRegisterID, GeneratedDate, PaymentType, Amount)
\f0\fs20 \

\f1\fs18 \cf5 VALUES\cf2  (\cf8 101\cf2 , \cf8 1\cf2 ,\cf6 '1990-04-29'\cf2 ,\cf6 'Cash'\cf2 , \cf6 '5000'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 102\cf2 , \cf8 2\cf2 ,\cf6 '1990-05-29'\cf2 ,\cf6 'Cheque'\cf2 , \cf6 '6050'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 103\cf2 , \cf8 3\cf2 ,\cf6 '1990-06-29'\cf2 ,\cf6 'Card'\cf2 , \cf6 '7144'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 105\cf2 , \cf8 5\cf2 ,\cf6 '1990-08-29'\cf2 ,\cf6 'Cheque'\cf2 , \cf6 '6051'\cf2 )
\f0\fs20 \
\

\f1\fs18 \cf5 GO
\f0\fs20 \cf2 \
\

\f1\fs18 \cf5 INSERT INTO\cf2  Diseases (DiseaseID, DiseaseName)
\f0\fs20 \

\f1\fs18 \cf5 VALUES\cf2  (\cf8 1123\cf2 ,\cf6 'Diarreha'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 2123\cf2 ,\cf6 'Chicken pox'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 3123\cf2 ,\cf6 'lung disease'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 4123\cf2 ,\cf6 'Heart disease'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 5123\cf2 ,\cf6 'Small pox'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 6123\cf2 ,\cf6 'Brain disease'\cf2 )
\f0\fs20 \
\

\f1\fs18 \cf5 GO
\f0\fs20 \cf2 \
\

\f1\fs18 \cf5 INSERT INTO\cf2  PatientDiseases (PatientRegisterID, PatientDiseaseID)
\f0\fs20 \

\f1\fs18 \cf5 VALUES
\f0\fs20 \cf2 \

\f1\fs18 (\cf8 1\cf2 ,\cf8 1123\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 2\cf2 ,\cf8 1123\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 3\cf2 ,\cf8 2123\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 5\cf2 ,\cf8 4123\cf2 )
\f0\fs20 \
\

\f1\fs18 \cf5 GO
\f0\fs20 \cf2 \

\f1\fs18 \cf5 INSERT INTO\cf2  PatientAttendants (PatientRegisterID, EmployeeID)
\f0\fs20 \

\f1\fs18 \cf5 VALUES
\f0\fs20 \cf2 \

\f1\fs18 (\cf8 1\cf2 ,\cf6 'HM001'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 2\cf2 ,\cf6 'HM002'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 3\cf2 ,\cf6 'HM003'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 5\cf2 ,\cf6 'HM005'\cf2 )
\f0\fs20 \
\

\f1\fs18 \cf5 select\cf2  * \cf5 from\cf2  PatientAttendants
\f0\fs20 \
\

\f1\fs18 \cf5 GO
\f0\fs20 \cf2 \
\

\f1\fs18 \cf5 INSERT INTO\cf2  PatientAppointments (PatientID, EmployeeID, IsCompleted, IsCancelled, IsNoShow )
\f0\fs20 \

\f1\fs18 \cf5 VALUES
\f0\fs20 \cf2 \

\f1\fs18 (\cf8 1\cf2 ,\cf6 'HM001'\cf2 , \cf6 '1'\cf2 ,\cf6 '0'\cf2 , \cf6 '0'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 2\cf2 ,\cf6 'HM002'\cf2 , \cf6 '0'\cf2 ,\cf6 '0'\cf2 , \cf6 '1'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 3\cf2 ,\cf6 'HM003'\cf2 , \cf6 '0'\cf2 ,\cf6 '1'\cf2 , \cf6 '0'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 4\cf2 , \cf6 'HM004'\cf2 , \cf6 '0'\cf2 ,\cf6 '0'\cf2 , \cf6 '1'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 5\cf2 , \cf6 'HM005'\cf2 , \cf6 '0'\cf2 ,\cf6 '0'\cf2 , \cf6 '1'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 6\cf2 , \cf6 'HM006'\cf2 , \cf6 '1'\cf2 ,\cf6 '0'\cf2 , \cf6 '0'\cf2 )
\f0\fs20 \
\

\f1\fs18 \'a0
\f0\fs20 \

\f1\fs18 \cf5 GO
\f0\fs20 \cf2 \
\

\f1\fs18 \cf5 INSERT INTO\cf2  Patient_address (PatientID,Street, building_no,city,country,pincode)
\f0\fs20 \

\f1\fs18 \cf5 values
\f0\fs20 \cf2 \

\f1\fs18 (\cf8 1\cf2 ,\cf6 'Avondale Pl'\cf2 ,\cf6 '121'\cf2 ,\cf6 'Syracuse'\cf2 ,\cf6 'US'\cf2 ,\cf6 '13210'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 2\cf2 ,\cf6 'Avondale Pl'\cf2 ,\cf6 '131'\cf2 ,\cf6 'Syracuse'\cf2 ,\cf6 'US'\cf2 ,\cf6 '13210'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 3\cf2 ,\cf6 'Avondale Pl'\cf2 ,\cf6 '111'\cf2 ,\cf6 'Syracuse'\cf2 ,\cf6 'US'\cf2 ,\cf6 '13210'\cf2 ),
\f0\fs20 \

\f1\fs18 (\cf8 4\cf2 ,\cf6 'Avondale Pl'\cf2 ,\cf6 '151'\cf2 ,\cf6 'Syracuse'\cf2 ,\cf6 'US'\cf2 ,\cf6 '13210'\cf2 )
\f0\fs20 \
\

\f1\fs18 \'a0
\f0\fs20 \

\f1\fs18 \cf5 select\cf2  * \cf5 from\cf2  PatientInsurances;
\f0\fs20 \

\f1\fs18 \cf5 select\cf2  * \cf5 from\cf2  Patients;
\f0\fs20 \

\f1\fs18 \cf5 select\cf2  * \cf5 from\cf2  PatientLabReports;
\f0\fs20 \

\f1\fs18 \cf5 select\cf2  * \cf5 from\cf2  LabTests;
\f0\fs20 \

\f1\fs18 \cf5 select\cf2  * \cf5 from\cf2  PatientBillings;
\f0\fs20 \

\f1\fs18 \cf5 select\cf2  * \cf5 from\cf2  PatientRegisters;
\f0\fs20 \

\f1\fs18 \cf5 select\cf2  * \cf5 from\cf2  PatientDiseases;
\f0\fs20 \

\f1\fs18 \cf5 select\cf2  * \cf5 from\cf2  Diseases;
\f0\fs20 \

\f1\fs18 \cf5 select\cf2  * \cf5 from\cf2  PatientAttendants;
\f0\fs20 \

\f1\fs18 \cf5 select\cf2  * \cf5 from\cf2  PatientAppointments;
\f0\fs20 \

\f1\fs18 \cf5 select\cf2  * \cf5 from\cf2  Patient_address;
\f0\fs20 \
\

\f1\fs18 \cf5 drop\cf2  \cf5 view\cf2  \cf5 if\cf2  \cf5 EXISTS\cf2  Patient_details
\f0\fs20 \
\

\f1\fs18 \cf5 Create\cf2  \cf5 view\cf2  \cf7 Patient_details\cf2  \cf5 AS\cf2  \cf5 Select\cf2  p.PatientID,FirstName,LastName,DateofBirth,Gender,PhoneNumber,emailID,height,Weight_value,bloodgroup,ProviderName \cf5 as\cf2  \cf6 'Insurance_Provider_name'\cf2 ,pi.StartDate \cf5 as\cf2  \cf6 'Insurance_Start_date'\cf2 ,pi.EndDate \cf5 as\cf2  \cf6 'Insurance_End_date'\cf2 ,lt.TestName,lt.MinValue,lt.MaxValue,lt.CalculatedUnit
\f0\fs20 \

\f1\fs18 \cf5 from\cf2  Patients p
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 join\cf2  PatientInsurances pi \cf5 on\cf2  p.PatientID = pi.PatientID
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 join\cf2  PatientRegisters pr \cf5 on\cf2  p.PatientID = pr.PatientID
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 join\cf2  PatientLabReports pl \cf5 on\cf2  pr.PatientRegisterID = pl.PatientRegisterID
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 join\cf2  PatientDiseases pd \cf5 on\cf2  pr.PatientRegisterID = pd.PatientRegisterID
\f0\fs20 \

\f1\fs18 \'a0\'a0\'a0 \cf5 join\cf2  LabTests lt \cf5 on\cf2  pl.LabTestID = lt.LabtestID
\f0\fs20 \
\

\f1\fs18 \cf5 select\cf2  * \cf5 from\cf2  Patient_details
\f0\fs20 \
\

\f1\fs18 \cf5 select\cf2  * \cf5 from\cf2  PatientLabReports
\f0\fs20 \
\
\pard\pardeftab720\partightenfactor0

\f1\fs18 \cf3 -- Employee Details
\f0\fs20 \cf2 \
\pard\pardeftab720\partightenfactor0

\f1\fs18 \cf5 drop\cf2  \cf5 view\cf2  \cf5 if\cf2  \cf5 EXISTS\cf2  Employee_Details
\f0\fs20 \
\

\f1\fs18 \cf5 create\cf2  \cf5 view\cf2 \'a0 \cf7 Employee_Details\cf2  \cf5 AS\cf2  \cf5 select\cf2  EmployeeNumber,EmailID,FirstName,LastName,DateofBirth,Gender,PhoneNumber,DepartmentName \cf5 from\cf2  Employees e
\f0\fs20 \

\f1\fs18 \cf5 join\cf2  EmployeeDepartments edp \cf5 on\cf2  e.EmployeeNumber = edp.EmployeeID
\f0\fs20 \

\f1\fs18 \cf5 join\cf2  EmployeeDetails ed \cf5 on\cf2  e.EmployeeNumber = ed.EmployeeID
\f0\fs20 \

\f1\fs18 \cf5 join\cf2  Departments d \cf5 on\cf2  edp.DepartmentID = d.DepartmentID
\f0\fs20 \
\

\f1\fs18 \cf5 select\cf2  * \cf5 from\cf2  Employee_Details
\f0\fs20 \
\pard\pardeftab720\partightenfactor0

\f1\fs18 \cf3 --feedback for Doctors
\f0\fs20 \cf2 \
\pard\pardeftab720\partightenfactor0

\f1\fs18 \cf5 drop\cf2  \cf5 view\cf2  \cf5 if\cf2  \cf5 EXISTS\cf2  Doctors_Feedback
\f0\fs20 \
\

\f1\fs18 \cf5 create\cf2  \cf5 view\cf2 \'a0 \cf7 Doctors_Feedback\cf2  \cf5 AS\cf2  \cf5 select\cf2  e.EmployeeNumber,firstname,lastname,Gender,Comment,Rating
\f0\fs20 \

\f1\fs18 \cf5 from\cf2  Employees e
\f0\fs20 \

\f1\fs18 \cf5 join\cf2  EmployeeDetails ed \cf5 on\cf2  e.EmployeeNumber = ed.EmployeeID
\f0\fs20 \

\f1\fs18 \cf5 join\cf2  EmployeeDepartments edp \cf5 on\cf2  e.EmployeeNumber = edp.EmployeeID
\f0\fs20 \

\f1\fs18 \cf5 join\cf2  Feedbacks fb \cf5 on\cf2 \'a0 e.EmployeeNumber = fb.ToEmployeeID
\f0\fs20 \
\

\f1\fs18 \cf5 select\cf2  * \cf5 from\cf2  Doctors_Feedback
\f0\fs20 \
\
\pard\pardeftab720\partightenfactor0

\f1\fs18 \cf3 --Patient Details regarding Appoinments
\f0\fs20 \cf2 \
\pard\pardeftab720\partightenfactor0

\f1\fs18 \cf5 drop\cf2  \cf5 view\cf2  \cf5 if\cf2  \cf5 EXISTS\cf2  Patient_appoinment_details
\f0\fs20 \
\

\f1\fs18 \cf5 Create\cf2  \cf5 view\cf2  \cf7 Patient_appoinment_details\cf2  \cf5 as\cf2  \cf5 select\cf2  pa.PatientID,FirstName,LastName,\cf7 sum\cf2 (\cf7 Cast\cf2 (IsCompleted \cf5 as\cf2  \cf5 INTEGER\cf2 )) \cf5 as\cf2  Total_Completed_Appoinments,
\f0\fs20 \
\pard\pardeftab720\partightenfactor0

\f1\fs18 \cf7 sum\cf2 (\cf7 Cast\cf2 (IsCancelled \cf5 as\cf2  \cf5 INTEGER\cf2 )) \cf5 as\cf2  Total_Cancelled_Appoinments,
\f0\fs20 \

\f1\fs18 \cf7 sum\cf2 (\cf7 Cast\cf2 (IsNoShow \cf5 as\cf2  \cf5 INTEGER\cf2 )) \cf5 as\cf2  Total_IsNoShow_Appoinments
\f0\fs20 \
\pard\pardeftab720\partightenfactor0

\f1\fs18 \cf5 from\cf2  PatientAppointments pa
\f0\fs20 \

\f1\fs18 \cf5 join\cf2  Patients p \cf5 on\cf2  pa.patientID = p.patientID
\f0\fs20 \

\f1\fs18 \cf5 group by\cf2  pa.PatientID,FirstName,LastName
\f0\fs20 \
\

\f1\fs18 \'a0
\f0\fs20 \

\f1\fs18 \cf5 select\cf2  * \cf5 from\cf2  Patient_appoinment_details}