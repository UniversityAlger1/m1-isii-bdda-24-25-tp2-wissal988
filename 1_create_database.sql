-- Create LabDatabase Database
CREATE DATABASE IF NOT EXISTS LabDatabase;
USE LabDatabase;

-- Create Laboratoire Table
CREATE TABLE Laboratoire (
    CodeLab VARCHAR(4) PRIMARY KEY,
    NomLab VARCHAR(100),
    Datcreation DATE,
    DatFin DATE,
    Siteweb NVARCHAR(255)
);

-- Create Chercheur Table
CREATE TABLE Chercheur (
    NumCh INT PRIMARY KEY,
    NomCh VARCHAR(30),
    CodeLab VARCHAR(4),
    FOREIGN KEY (CodeLab) REFERENCES Laboratoire(CodeLab)
);
