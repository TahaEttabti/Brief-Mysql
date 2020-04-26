update client 
set Nom = 'Abdellah', Prenom = 'Mousaoui', Email = 'Abdellah22@gmail.com', Phone = '0665575343', Adresse = 'N° 14 Bloc 4 SAFI', Date_Naissance = '1990-5-3'
where ID_Client = 3;

update client 
set Nom = 'Ibrahim', Prenom = 'Alaoui', Email = 'Ibrahim44@gmail.com', Phone = '0656563546', Adresse = 'N° 20 Qu Saada-2 SAFI', Date_Naissance = '1992-8-20'
where ID_Client = 4;


SELECT * FROM myserver.client;