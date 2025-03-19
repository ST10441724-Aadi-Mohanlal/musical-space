USE master
IF EXISTS (SELECT * FROM sys.databases WHERE name = 'MusicalSpaceDB')
CREATE DATABASE MusicalSpaceDB
USE MusicalSpaceDB

--TABLE CREATION SECTION
CREATE TABLE [User] (
UserID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
Username VARCHAR(20) NOT NULL,
ProfilePicture VARCHAR(150),
Email VARCHAR(150) NOT NULL
);

CREATE TABLE Song (
SongID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
FileType VARCHAR(5) NOT NULL,
Title VARCHAR(150) NOT NULL,
Genre VARCHAR(20) NOT NULL
);

CREATE TABLE PLAYLIST (
PlaylistID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
UserID INT FOREIGN KEY REFERENCES [User](UserID),
SongID INT FOREIGN KEY REFERENCES Song(SongID),
[Name] VARCHAR(150) NOT NULL
);


--/-- TABLE ALTERATION SECTION

--TABLE INSERTION SECTION
INSERT INTO [User] (Username, ProfilePicture, Email)
VALUES('IsaacLeshaba', 'https://www.topgear.com/sites/default/files/2024/10/Audi_RS_3_Sedan_progressive_red_DSF3374.jpg', 'isaac.leshaba@gmail.com'),
('JohnDoe', 'https://www.topgear.com/sites/default/files/2024/10/Audi_RS_3_Sedan_progressive_red_DSF3374.jpg', 'john@gmail.com')

INSERT INTO Song (FileType, Title, Genre)
VALUES ('mp3', 'New Song', 'New Genre'),
('mp4', 'Another Song', 'Another Genre')

INSERT INTO Playlist (UserID, SongID, [Name])
VALUES (1,2, 'New Playlist'),
(2,2, 'Another Playlist')

--TABLE MANIPULATION SECTION
SELECT * FROM [User]
SELECT * FROM Song 
SELECT * FROM PLAYLIST
--STORED PROCEDURES SECTION