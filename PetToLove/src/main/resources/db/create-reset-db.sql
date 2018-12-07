DROP DATABASE IF EXISTS pettolove;

CREATE DATABASE pettolove;

USE pettolove;

CREATE TABLE user(
    id INTEGER,
    creationTime DATETIME,
    updateTime DATETIME,
    version INTEGER,
    name VARCHAR(255),
    username VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(255),
    password VARCHAR(255),
    PRIMARY KEY(id)
);

INSERT INTO user(ID, CREATIONTIME, UPDATETIME, VERSION, NAME, USERNAME, EMAIL, PHONE, PASSWORD) VALUES
  (1, TIMESTAMP '2017-10-10 08:45:56.468', TIMESTAMP '2017-10-10 08:45:56.468', 0, 'Firmino', 'firmino', 'mail@gmail.com', '999777888', '1234'),
  (2, TIMESTAMP '2017-10-10 08:45:56.481', TIMESTAMP '2017-10-10 08:45:56.481', 0, 'João', 'joao', 'mail@gmail.com', '999777888', '1234'),
  (3, TIMESTAMP '2017-10-10 08:45:56.482', TIMESTAMP '2017-10-10 08:45:56.482', 0, 'Vasco', 'vasco', 'mail@gmail.com', '999777888', '1234'),
  (4, TIMESTAMP '2017-10-10 08:45:56.482', TIMESTAMP '2017-10-10 08:45:56.482', 0, 'Andre', 'andre', 'mail@gmail.com', '999777888', '1234'),
  (5, TIMESTAMP '2017-10-10 08:45:56.482', TIMESTAMP '2017-10-10 08:45:56.482', 0, 'Ana', 'ana', 'mail@gmail.com', '999777888', '1234');

CREATE TABLE animalType(
    id INTEGER,
    animalType VARCHAR(255),
    PRIMARY KEY(id)
);

INSERT INTO animalType(ID, ANIMALTYPE) VALUES
  (1, 'cat'),
  (2, 'dog');

CREATE TABLE animal(
    id INTEGER,
    creationTime DATETIME,
    updateTime DATETIME,
    version INTEGER,
    name VARCHAR(255),
    user INTEGER,
    description VARCHAR(255),
    animalType INTEGER,
    breed VARCHAR(255),
    likes INTEGER,
    gender VARCHAR(255),
    imageLink VARCHAR(255),
    FOREIGN KEY(user) REFERENCES user(id),
    FOREIGN KEY(animalType) REFERENCES animalType(id),
    PRIMARY KEY(id)
);

INSERT INTO animal(ID, CREATIONTIME, UPDATETIME, VERSION, NAME, USER, DESCRIPTION, ANIMALTYPE, BREED, LIKES, GENDER, IMAGELINK) VALUES
  (1, TIMESTAMP '2017-10-10 08:45:56.468', TIMESTAMP '2017-10-10 08:45:56.468', 1, 'Spot', 1, 'I have a spot', 2, 'normal dog', 100, 'undefined', null),
  (2, TIMESTAMP '2017-10-10 08:45:56.468', TIMESTAMP '2017-10-10 08:45:56.468', 1, 'Dot', 1, 'I have a dot', 1, 'normal cat', 200, 'female', null),
  (3, TIMESTAMP '2017-10-10 08:45:56.468', TIMESTAMP '2017-10-10 08:45:56.468', 1, 'Niki', 2, 'I have a bad name', 2, 'not normal dog', 150, 'male', null),
  (4, TIMESTAMP '2017-10-10 08:45:56.468', TIMESTAMP '2017-10-10 08:45:56.468', 1, 'Paw', 2, 'My name is Paw', 1, 'not normal cat', 350, 'male', null);


