CREATE DATABASE Sisoft;

USE Sisoft;

CREATE TABLE Appointment_Schedulee (
  Appointment_ID varchar(50) NOT NULL,
  patient_name varchar(50) NOT NULL,
  patient_contact varchar(50) NOT NULL,
  Appointment_date date NOT NULL,
  Appointment_time decimal(10,2) NOT NULL,
  doctor_name varchar(50) NOT NULL,
  Appointment_reason varchar(100) NOT NULL,
  Appointment_Status varchar(100) NOT NULL
  );
  


CREATE TABLE Patinet_Record (
    Patient_ID varchar(50) NOT NULL,
    Patient_name varchar(50) NOT NULL,
    patient_address varchar(100) NOT NULL,
    patient_contact varchar(50) NOT NULL,
    patient_age int NOT NULL,
    patient_gender varchar(20) NOT NULL,
    patient_medicalhistory varchar(100) NOT NULL,
    patient_insurance varchar(100) NOT NULL,
    prescription varchar(100) NOT NULL
);

CREATE TABLE Doctor_Record (
   Doctor_ID varchar(50) NOT NULL,
   Doctor_name varchar(50) NOT NULL,
   Doctor_address varchar(100) NOT NULL,
   Doctor_Connection varchar(50) NOT NULL,
   Doctor_Specialization varchar(50) NOT NULL,
   Doctor_Certificate varchar(50) NOT NULL,
   Doctor_availability varchar(50) NOT NULL,
   Doctor_Appointments int NOT NULL
   );

CREATE TABLE Prescription_Record (
   Prescription_ID varchar(50) NOT NULL,
   Patient_name varchar(50) NOT NULL,
   Doctor_name varchar(50) NOT NULL,
   Prescription_date varchar(50) NOT NULL,
   Prescription_name varchar(50) NOT NULL,
   Prescription_dose int NOT NULL
   );
 
 
  
INSERT INTO Appointment_Schedulee (Appointment_ID, patient_name, patient_contact, Appointment_date, Appointment_time, doctor_name, Appointment_reason, Appointment_Status)
VALUES 

   (1, 'Ayşe Yıldırım', '555-123-4567', '2023-04-15', 09.00, 'Dr. Ahmet Şahin', 'Dental pain', 'Scheduled'),
   (2, 'Ali Çelik', '555-234-5678', '2023-04-16', 11.30, 'Dr. Esin Yılmaz', 'flu symptoms', 'Scheduled'),
   (3, 'Mehmet Yılmaz', '555-345-6789', '2023-04-16', 14.00, 'Dr. Ayşe Gürkan', 'Examination of the infant', 'Canceled'),
   (4, 'Hatice Özcan', '555-876-5432', '2023-04-18', 13.30, 'Dr. Selim Kılıç', 'He has an allergy', 'Scheduled'),
   (5, 'Ali Kaya', '555-789-1234', '2023-04-20', 10.45, 'Dr. Merve Yüksel', 'Dental pain', 'Scheduled'),
   (6, 'Aylin Demir', '555-432-8765', '2023-04-21', 16.00, 'Dr. Ayşe Gürkan', 'vision test', 'Scheduled'),
   (7, 'Emre Öztürk', '555-765-4321', '2023-04-22', 11.15, 'Dr. Ali Söylemez', 'flu symptoms', 'Scheduled'),
   (8, 'Canan Kara', '555-321-8765', '2023-04-24', 14.30, 'Dr. Merve Yüksel', 'He has an allergy', 'Canceled');
 
INSERT INTO Patinet_Record (Patient_ID, Patient_name, patient_address, patient_contact, patient_age, patient_gender, patient_medicalhistory, patient_insurance, prescription)
VALUES 

  (1, 'Ayşe Yıldırım', 'İnönü Cad. No: 123, İstanbul', 555-123-4567, 23, 'Male', 'High blood pressure', 'full insurance', 'CATAFLAM'),
  (2, 'Ali Çelik', 'Atatürk Bulv. No: 567, İzmir', 555-234-5678, 34, 'Male', 'Diabetes', 'Private health insurance', 'TAMIFLU'),
  (3, 'Mehmet Yılmaz', 'Yavuz Selim Cad. No: 12, Ankara', 555-345-6789, 55, 'Male', 'None', 'Residency insurance', 'PRUFEN'),
  (4, 'Hatice Özcan', 'Akdeniz Cad. No: 78, Antalya', 555-876-5432, 67, 'Male', 'None', 'full insurance', 'CLARITINE'),
  (5, 'Ali Kaya', 'Anadolu Cad. No: 45, İstanbul', 555-789-1234, 33, 'Male', 'High cholesterol', 'full insurance', 'CATAFLAM'),
  (6, 'Aylin Demir', 'Gazi Bulv. No: 901, İzmir', 555-432-8765, 21, 'Female', 'None', 'Residency insurance', 'AZOPT'),
  (7, 'Emre Öztürk', 'Şehitler Cad. No: 567, Ankara', 555-765-4321, 45, 'Female', 'None', 'full insurance', 'TAMIFLU'),
  (8, 'Canan Kara', 'İstiklal Cad. No: 345, Ankara', 555-321-8765, 45, 'male', 'None', 'full insurance', 'CLARITINE');

INSERT INTO Doctor_Record (Doctor_ID, Doctor_name, Doctor_address, Doctor_Connection, Doctor_Specialization, Doctor_Certificate, Doctor_availability, Doctor_Appointments)
VALUES 

  (1, 'Dr. Ahmet Şahin', 'Atatürk Bulv. No: 45, Ankara', 555-987-6543, 'Dentist', 'Doctorate', 'am', 1),
  (2, 'Dr. Esin Yılmaz', 'Cumhuriyet Cad. No: 789, İstanbul', 555-876-5432, 'nose and throat', 'Doctorate', 'pm', 1),
  (3, 'Dr. Ayşe Gürkan', 'İstiklal Cad. No: 901, İzmir', 555-765-4321, 'Pediatrics', 'Master', 'pm', 1),
  (4, 'Dr. Selim Kılıç', 'İnönü Cad. No: 246, Ankara', 555-234-5678, 'dermatologist', 'Bachelors', 'pm', 1),
  (5, 'Dr. Merve Yüksel', 'Cumhuriyet Bulv. No: 345, Ankara', 555-321-8765, 'Dentist', 'Doctorate', 'pm', 1),
  (6, 'Dr. Ayşe Gürkan', 'İstiklal Cad. No: 123, İstanbul', 555-678-3452, 'Ophthalmologist', 'Bachelors', 'pm', 1),
  (7, 'Dr. Ali Söylemez', 'Atatürk Bulv. No: 901, İzmir', 555-234-5678, 'nose and throat', 'Doctorate', 'pm', 1),
  (8, 'Dr. Merve Yüksel', 'Anadolu Cad. No: 567, İzmir', 555-987-6543, 'dermatologist', 'Bachelors', 'pm', 1);

INSERT INTO Prescription_Record (Prescription_ID, Patient_name, Doctor_name, Prescription_date, Prescription_name, Prescription_dose)
VALUES 
   (1, 'Ayşe Yıldırım', 'Dr. Ahmet Şahin', '2023-04-15', 'CATAFLAM', 2),
   (2, 'Ali Çelik', 'Dr. Esin Yılmaz', '2023-04-16', 'TAMIFLU', 1),
   (3, 'Mehmet Yılmaz', 'Dr. Ayşe Gürkan', '2023-04-16', 'PRUFEN', 3),
   (4, 'Hatice Özcan', 'Dr. Selim Kılıç', '2023-04-18', 'CLARITINE', 2),
   (5, 'Ali Kaya', 'Dr. Merve Yüksel', '2023-04-20', 'CATAFLAM', 1),
   (6, 'Aylin Demir', 'Dr. Ayşe Gürkan', '2023-04-21', 'AZOPT', 1),
   (7, 'Emre Öztürk', 'Dr. Ali Söylemez', '2023-04-22', 'TAMIFLU', 3),
   (8, 'Canan Kara', 'Dr. Merve Yüksel', '2023-04-24', 'CLARITINE', 3);
