DROP TABLE IF EXISTS avis;
DROP TABLE IF EXISTS parks;
DROP TABLE IF EXISTS users;

CREATE TABLE  users(
  id int NOT NULL AUTO_INCREMENT,
  nom varchar(20) NOT NULL,
  prenom varchar(20) NOT NULL,
  pseudo varchar(20) NOT NULL,  
  password varchar (20) NOT NULL,
  age tinyint NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE  parks(
  id int NOT NULL AUTO_INCREMENT,
  nom varchar(20) NOT NULL,
  continent varchar(10) NOT NULL,
  categorie varchar(10) NOT NULL,  
  image varchar (30) NOT NULL,
  description text Not NULL,
  localisation varchar(30) NOT NULL,  
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8; 


CREATE TABLE avis (
  id int NOT NULL AUTO_INCREMENT,
  contenu text NOT NULL,  
  note tinyint NOT NULL,
  id_users int NOT NULL,
  id_parks int NOT NULL,  
  PRIMARY KEY (id),
  CONSTRAINT avis_ibfk_1 FOREIGN KEY (id_users) REFERENCES parks (id),
  CONSTRAINT avis_ibfk_2 FOREIGN KEY (id_parks) REFERENCES users (id)    
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

