CREATE TABLE Geo (
	GeoID INT IDENTITY(1,1) PRIMARY KEY,
	Country VARCHAR(100),
	Continent VARCHAR(100),
	Hemisphere VARCHAR(100)
);
CREATE TABLE Patient (
    PatientID VARCHAR(100) PRIMARY KEY,
    Age INT NOT NULL,
    Sex VARCHAR(100) NOT NULL,
	Income BIGINT NOT NULL,
	PreviousHeartProblems BIT NOT NULL,
	FamilyHistory BIT NOT NULL,
	Obesity BIT NOT NULL,
	Diet VARCHAR(100) NOT NULL,
    MedicationUse BIT NOT NULL,
	Smoking BIT NOT NULL,
	AlcoholConsumption BIT NOT NULL,
	Diabetes BIT NOT NULL,
);
CREATE TABLE Fact_Health (
    FactID INT IDENTITY(1,1) PRIMARY KEY,
    PatientID VARCHAR(100) NOT NULL,
    GeoID INT NOT NULL,
	SystolicPressure INT NOT NULL,
	DiastolicPressure INT NOT NULL,
    Cholesterol INT NOT NULL,
    HeartRate INT NOT NULL,
    BMI FLOAT NOT NULL,
    Triglycerides INT NOT NULL,
	StressLevel INT NOT NULL,
    HeartAttackRisk BIT NOT NULL,
	ExerciseHoursPerWeek FLOAT NOT NULL,
	PhysicalActivityDaysPerWeek INT NOT NULL,
	SedentaryHoursPerDay FLOAT NOT NULL,
	SleepHoursPerDay INT NOT NULL,
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (GeoID) REFERENCES Geo(GeoID),
);
CREATE TABLE RawData (
    PatientID VARCHAR(100) PRIMARY KEY,
    Age INT NOT NULL,
    Sex VARCHAR(100) NOT NULL,
    Cholesterol INT NOT NULL,
    HeartRate INT NOT NULL,
    Diabetes BIT NOT NULL,
    FamilyHistory BIT NOT NULL,
    Smoking BIT NOT NULL,
    Obesity BIT NOT NULL,
    AlcoholConsumption BIT NOT NULL,
    ExerciseHoursPerWeek FLOAT NOT NULL,
    Diet VARCHAR(100) NOT NULL,
	PreviousHeartProblems BIT NOT NULL,
    MedicationUse BIT NOT NULL,
    PhysicalActivityDaysPerWeek INT NOT NULL,
    SedentaryHoursPerDay FLOAT NOT NULL,
    SleepHoursPerDay INT NOT NULL,
    Country VARCHAR(100) NOT NULL,
    Continent VARCHAR(100) NOT NULL,
    Hemisphere VARCHAR(100) NOT NULL,
    SystolicPressure INT NOT NULL,
    DiastolicPressure INT NOT NULL,
    BMI FLOAT NOT NULL,
	Income BIGINT NOT NULL,
    Triglycerides INT NOT NULL,
    StressLevel INT NOT NULL,
    HeartAttackRisk BIT NOT NULL,
);

DELETE FROM RawData;
DELETE FROM Fact_Health;
DELETE FROM Geo;
DELETE FROM Patient;