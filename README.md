# JAlloc
JAlloc is a web application similar to JoSAA, which can be used for seat allocation. It is being built using JSP and uses the MySQL RDBMS.

## Technical specifications
* Java 7 or above
* MySQL version 5.1 or above

## Installation guide

#### Java
To check if the Java compiler is already installed on your system, execute the following command:
```
$ javac -version
```

If the Java compiler is not present, execute the following command to install the default Java Development Kit (JDK):
```
$ sudo apt install default-jdk
```

#### MySQL
To install MySQL, follow all three steps given in [this](https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-18-04) tutorial, and set `1234` as the `root` password when prompted for the same.

#### NetBeans IDE 8.2
Install NetBeans IDE 8.2 from [here](https://netbeans.org/downloads/old/8.2/), by selecting the Java EE bundle.

## Usage

#### 1. Create MySQL database

Issue the following commands in the MySQL Command Line Client for building the database used by the application:
```
CREATE DATABASE jalloc;
USE jalloc;

CREATE TABLE users
(
name varchar(255),
password varchar(255)
);

CREATE TABLE colleges
(
college varchar(255),
branch varchar(255),
totalSeats int(11),
availableSeats int(11),
info varchar(1000),
website varchar(1000)
);

INSERT INTO colleges VALUES('NITK', 'CSE', 120, 120, 'A college on the shores of the Arabian Sea.', 'https://www.nitk.ac.in');
INSERT INTO colleges VALUES('IITK', 'EEE', 120, 120, 'An institute of national importance in Kanpur.', 'https://www.iitk.ac.in');
INSERT INTO colleges VALUES('BITS', 'CSE', 150, 150, 'Major Indian private college.', 'https://bits-pilani.ac.in');

CREATE TABLE preference
(
name varchar(255),
college varchar(255),
branch varchar(255),
number int(11)
);
```

#### 2. Run the application

Open the NetBeans IDE, click on File -> Open Project, and open the JAlloc web application. Once opened, in the Projects section, expand the JAlloc project node, expand the `Web Pages` subnode, right-click index.jsp, and click `Run File`.
