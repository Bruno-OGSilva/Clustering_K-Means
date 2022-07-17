-- Creating tables for UofT_DB

CREATE TABLE Owners (
     ID VARCHAR(7) NOT NULL,
     Ident VARCHAR(2)  NULL,
	 sex VARCHAR(10)  NULL,
	 bdate date  NULL,
	 status VARCHAR(10) NULL,
	 maritial VARCHAR(10)  NULL,
	 region VARCHAR(2)  NULL,
	 city VARCHAR(30)  NULL,
	 country VARCHAR(30)  NULL,
     PRIMARY KEY (ID),
     UNIQUE (id)
);


CREATE TABLE ATM_Payments (
     ID VARCHAR(7) NOT NULL,
	 date date not NULL,
	 code VARCHAR(30) not NULL,
	 amount float not NULL,
	 FOREIGN KEY (ID) REFERENCES Owners (ID)
);



CREATE TABLE Online_AutPay (
     ID VARCHAR(7) NOT NULL,
	 date date not NULL,
	 code VARCHAR(30) not NULL,
	 amount float not NULL,
	 FOREIGN KEY (ID) REFERENCES Owners (ID)
);

CREATE TABLE WalletMobile (
     ID VARCHAR(7) NOT NULL,
	 date date not NULL,
	 mobile VARCHAR(30) not NULL,
	 amount float not NULL,
	 FOREIGN KEY (ID) REFERENCES Owners (ID)
);



CREATE TABLE TapPos (
     ID VARCHAR(7) NOT NULL,
	 date date not NULL,
	 code VARCHAR(30) not NULL,
	 amount float not NULL,
	 FOREIGN KEY (ID) REFERENCES Owners (ID)
);