CREATE TABLE Users(
	first_name VARCHAR(40) NOT NULL,
	last_name VARCHAR(40) NOT NULL,
	email VARCHAR(50) NOT NULL,
	user_id INTEGER PRIMARY KEY AUTOINCREMENT,
	company_id INTEGER,
	FOREIGN KEY(company_id) REFERENCES Company(company_id)
);

CREATE TABLE Company(
	name VARCHAR(50) NOT NULL,
	company_id INTEGER PRIMARY KEY AUTOINCREMENT,
);

CREATE TABLE Ads(
	title VARCHAR(40) NOT NULL,
	company_id INTEGER NOT NULL,
	ad_id INTEGER PRIMARY KEY AUTOINCREMENT,
	reward INTEGER NOT NULL,
	FOREIGN KEY(company_id) REFERENCES Company(company_id)
);

/*
Dynamically create a new table for each user that contains the ads they have consumed

CREATE TABLE user_4_ads(
	ad_id INTEGER NOT NULL,

);
*/