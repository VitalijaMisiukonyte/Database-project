INSERT INTO vimi2862.Klientas VALUES('33309240064','Jonas',	'Jonauskas',  NULL ) ;
INSERT INTO vimi2862.Klientas VALUES('33309240067','Petras','Meskauskas', '1995-03-05' ) ;


INSERT INTO vimi2862.Naryste VALUES(DEFAULT, 30,  1,  DEFAULT, 	   '2018-02-05', '33309240064' ) ;
INSERT INTO vimi2862.Naryste VALUES(DEFAULT, 100, 6, '2016-06-05', '2016-08-03', '33309240067' ) ;


INSERT INTO vimi2862.Treneris VALUES(DEFAULT,'Jonas', 'Jonauskas',  300 ) ;
INSERT INTO vimi2862.Treneris VALUES(DEFAULT,'Kazys', 'Kazlauskas', 1000 ) ;


INSERT INTO vimi2862.Treniruote VALUES('Kalanetika', 'Penktadienis', '17:00', 2 ) ;
INSERT INTO vimi2862.Treniruote VALUES('Zumba', 	 'Treciadienis', '18:00', 1 ) ;


INSERT INTO vimi2862.Pasirinktos_Treniruotes VALUES(DEFAULT, 'Kalanetika', 2, '2016-07-04', '2016-07-20') ;
INSERT INTO vimi2862.Pasirinktos_Treniruotes VALUES(DEFAULT, 'Zumba', 	   1, '2017-12-14', '2017-12-20' ) ;

