# CampusAssetManagementSystem

The concept of the Campus Asset Management system is to assist college campuses to track their IT equipment. The CAM (Campus Asset Management) system's purpose is to track assets from purchasing to configuration and tracking, to disposal and storage. This system is designed for Olympic College and is intended as a senior project organized by Joshua Simpson at the University of Washington, Tacoma. This project is open source, free, and intended to be used as a study guide for other developers interested in creating full stack applications.

Project information can be found on GitHub at https://github.com/jsimpson-oc after requesting / gaining access to it (GitHub account required).

CAM uses a 3-tiered system architecture. The three components are: MS SQL Database, Campus Asset Management Service, and the Campus Asset Management Client.

MS SQL Database
This database will store all the data for the system. The database can begin as an SQLite instance, with larger systems using a full installation of MSSQL Server. The system will have minimal logins with appropriate security applied. The only connection point for the SQL Server should be the service.

Campus Asset Management Service
The CAM Service is responsible for the primary business logic of the application and connecting clients to the database through an intermediary. The service will connect directly to the database on the back end using SQL credentials. The front end of the service will connect clients via a REST API. The service will be written in C# as the campus uses Microsoft based solutions.

Campus Asset Management Client
The CAM client is responsible for user interactions with the database. The client must be easy to use so Student Employees are able to assist maintaining equipment at their college campuses. The service will use also use C# for its language as it is a Microsoft environment.
