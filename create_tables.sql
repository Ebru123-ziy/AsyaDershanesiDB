CREATE TABLE Semtler (
    semtId INT IDENTITY(1,1) PRIMARY KEY,
    semtAdi VARCHAR(100)
);
CREATE TABLE Okullar (
    okulId INT IDENTITY(1,1) PRIMARY KEY,
    okulAdi VARCHAR(100),
    semtId INT FOREIGN KEY REFERENCES Semtler(semtId)
);
CREATE TABLE BasariGruplari (
    basariGrubuId INT IDENTITY(1,1) PRIMARY KEY,
    grupAdi VARCHAR(50), -- Elit, Orta, Destek
    minGPA INT,
    maxGPA INT
);



CREATE TABLE DershaneSiniflari (
    dershaneSinifId INT IDENTITY(1,1) PRIMARY KEY,
    sinifSeviyesi VARCHAR(2), -- 9, 10, 11, 12
    basariGrubuId INT FOREIGN KEY REFERENCES BasariGruplari(basariGrubuId),
    sinifAdi VARCHAR(50)
);

CREATE TABLE Ogrenciler (
    ogrenciId INT IDENTITY(1,1) PRIMARY KEY,
    isim VARCHAR(50),
    soyisim VARCHAR(50),
    cinsiyet CHAR(1),
    sinifSeviyesi VARCHAR(2),
    gpa INT, -- 0-100 arasi not
    okulId INT FOREIGN KEY REFERENCES Okullar(okulId),
    dershaneSinifId INT FOREIGN KEY REFERENCES DershaneSiniflari(dershaneSinifId),
    semtId INT FOREIGN KEY REFERENCES Semtler(semtId)
);
