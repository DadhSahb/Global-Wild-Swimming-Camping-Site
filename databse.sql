CREATE TABLE visitors (
  visitor_id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(50) NOT NULL,
  surname VARCHAR(50) NOT NULL,
  email_address VARCHAR(100) NOT NULL,
  PRIMARY KEY (visitor_id)
);

CREATE TABLE swimming_slots (
  swimming_slot_id INT NOT NULL AUTO_INCREMENT,
  site_name VARCHAR(100) NOT NULL,
  availability INT NOT NULL,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (swimming_slot_id)
);

CREATE TABLE camping_pitches (
  camping_pitch_id INT NOT NULL AUTO_INCREMENT,
  site_name VARCHAR(100) NOT NULL,
  availability INT NOT NULL,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (camping_pitch_id)
);

CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT,
  firstName VARCHAR(50) NOT NULL,
  lastName VARCHAR(50) NOT NULL,
  gender CHAR(1) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  number VARCHAR(20) NOT NULL,
  PRIMARY KEY (id)
);
