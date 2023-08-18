# FYP_management
An FYP management System that contains SQL database and working done in .NET made by Marrium, Maria and Areeba
PROJECT REPORT
MARIA SAEED 20I0836
MARRIUM JILANI 20K1748
AREEBA SATTAR 20I0634
We were given a task to design an a database of Final year project
For that we came up with the following relations:
 
ERD
 ![image](https://github.com/mariasaeedahmed/FYP_management/assets/87717273/8a74d5de-8046-47ef-acd4-c87ac1f9a8af)

![image](https://github.com/mariasaeedahmed/FYP_management/assets/87717273/6b2be21f-a32a-4706-a723-385bc2f7ab83)


In this the committee was given most privileges
•	It could register students 
•	It could see reports which would display the queries the required
•	It could make panels
•	The constraints were kept in mind while making the sql for it
Then we had panel members 
•	The job of these members were that they were to fill evaluation forms about their respective projects
•	For this purpose a table of evaluation forms was made with the foreign key as the the panel id 
•	This made it easier to see the missing evaluation forms and evaluations of every panel member
The student had least amount of previlidges granted to them
They could log in and view their information.
Triggers
We have also secured the whole database with triggers as well 
Web pages
The web pages were designed using bootstrap. They are linked with each other thorough buttons. the web pages are all backed with SQL queries to back up their functionality. Log ins are used to transfer variables form one page to the other. In this the concept of session was used.  The web forms were created using C#

