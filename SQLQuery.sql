--CREATE DATABASE OLAP
--USE OLAP

CREATE TABLE [FACTRaw] (
    [PatientID] varchar(100),
    [Age] INT,
    [Sex] varchar(100),
    [Cholesterol] INT,
    [BloodPressure] varchar(100),
    [HeartRate] varchar(100),
    [Diabetes] INT,
    [FamilyHistory] INT,
    [Smoking] INT,
    [Obesity] INT,
    [AlcoholConsumption] INT,
    [ExerciseHoursPerWeek] DECIMAL(18, 15),
    [Diet] varchar(100),
    [PreviousHeartProblems] INT,
    [MedicationUse] INT,
    [StressLevel] INT,
    [SedentaryHoursPerDay] DECIMAL(18, 15),
    [Income] INT,
    [BMI] DECIMAL(18, 15),
    [Triglycerides] INT,
    [PhysicalActivityDaysPerWeek] INT,
    [SleepHoursPerDay] INT,
    [Country] varchar(100),
    [Continent] varchar(100),
    [Hemisphere] varchar(100),
    [HeartAttackRisk] INT
)

CREATE TABLE [] (
    [FactID] INT IDENTITY(1,1) PRIMARY KEY,

    [Cholesterol] INT,
    [BloodPressure] varchar(100),
    [HeartRate] varchar(100),
    [Diabetes] INT,
    [FamilyHistory] INT,
    [Smoking] INT,
    [Obesity] INT,
    [AlcoholConsumption] INT,
    [ExerciseHoursPerWeek] DECIMAL(18, 15),
    [Diet] varchar(100),
    [PreviousHeartProblems] INT,
    [MedicationUse] INT,
    [StressLevel] INT,
    [SedentaryHoursPerDay] DECIMAL(18, 15),
    [Income] INT,
    [BMI] DECIMAL(18, 15),
    [Triglycerides] INT,
    [PhysicalActivityDaysPerWeek] INT,
    [SleepHoursPerDay] INT,
    [HeartAttackRisk] INT,

	[PatientID] varchar(100) FOREIGN KEY REFERENCES DIMPatient([PatientID]),
	[GeoID] int FOREIGN KEY REFERENCES DIMGeography([GeoID]),
)

DELETE FROM DIMGeography;
DELETE FROM DIMPatient;
DELETE FROM FACTRaw;