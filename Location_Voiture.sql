/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de création :  26/04/2020 16:46:43                      */
/*==============================================================*/


drop table if exists Client;

drop table if exists Reservation;

drop table if exists Voiture;

/*==============================================================*/
/* Table : Client                                               */
/*==============================================================*/
create table Client
(
   ID_Client            int not null,
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
   ID_Client            int,
   Id_Reservation       int not null,
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
   ID_Voiture           int not null,
   Id_Reservation       int,
   Marque               varchar(254),
   Modele               varchar(254),
   Nbr_Palce            smallint,
   Coleur               varchar(254),
   Prix                 float,
   primary key (ID_Voiture)
);

alter table Reservation add constraint FK_Association_1 foreign key (ID_Client)
      references Client (ID_Client) on delete restrict on update restrict;

alter table Voiture add constraint FK_Association_2 foreign key (Id_Reservation)
      references Reservation (Id_Reservation) on delete restrict on update restrict;

