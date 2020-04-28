/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de création :  28/04/2020 10:54:37                      */
/*==============================================================*/


drop table if exists Client;
drop table if exists Reservation;
drop table if exists Voiture;

/*==============================================================*/
/* Table : Client                                               */
/*==============================================================*/
create table Client
(
   ID_Client            int not null AUTO_INCREMENT,
   Nom                  varchar(254),
   Prenom               varchar(254),
   Email                varchar(254),
   Phone                int,
   Adresse              varchar(254),
   Date_Naissance       datetime,
   primary key (ID_Client)
);

/*==============================================================*/
/* Table : Reservation                                          */
/*==============================================================*/
create table Reservation
(
   Id_Reservation       int not null,
   ID_Client            int,
   ID_Voiture           int,
   Nbr_Jours            int,
   Date_Debut           datetime,
   Date_Fin             datetime,
   Date_Permis          datetime,
   primary key (Id_Reservation)
);
/*==============================================================*/
/* Table : Voiture                                              */
/*==============================================================*/
create table Voiture
(
   ID_Voiture           int not null AUTO_INCREMENT,
   Marque               varchar(254),
   Modele               varchar(254),
   Nbr_Palce            smallint,
   Coleur               varchar(254),
   Prix                 float,
   primary key (ID_Voiture)
);

alter table Reservation add constraint FK_Association_1 foreign key (ID_Client)
      references Client (ID_Client) on delete restrict on update restrict;

alter table Reservation add constraint FK_Association_2 foreign key (ID_Voiture)
      references Voiture (ID_Voiture) on delete restrict on update restrict;
