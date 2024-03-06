REM   Script: DBMS-Project
REM   Bütün kodlar ; tablo , kayıt , sorgu 

Create table Banka( 
    BankaID int , 
    Adi char(25) NOT NULL, 
    primary key (BankaID) 
);

Create table Sube( 
    SubeID int , 
    BankaID int NOT NULL, 
    SubeAdresi char(50) NOT NULL, 
    primary key(SubeID), 
    foreign key (BankaID) references Banka (BankaID) 
);

Create table Calisan( 
    CalisanID int, 
    Adi char(15) NOT NULL, 
    Soyadi char(15) NOT NULL, 
    SubeID int NOT NULL, 
    BankaID int NOT NULL, 
    Maas int NOT NULL, 
    primary key (CalisanID), 
    foreign key (SubeID) references Sube (SubeID), 
    foreign key (BankaID) references Banka (BankaID) 
);

Create table Tur( 
    TurID int , 
    TurAdi char(20) NOT NULL, 
    primary key (TurID) 
);

Create table Hesap( 
    HesapNo int, 
    Bakiye int NOT NULL, 
    SubeID int NOT NULL, 
    OlusturanCalisanID int NOT NULL, 
    TurID int NOT NULL, 
    primary key (HesapNo), 
    foreign key (SubeID) references Sube (SubeID), 
    foreign key (TurID) references Tur (TurID) 
);

Create table KrediLimit( 
    KrediLimitID int, 
    KrediLimit int NOT NULL, 
    primary key(KrediLimitID) 
);

Create table Kredi( 
    KrediNo int, 
    KrediLimitID int NOT NULL, 
    SubeID int NOT NULL, 
    OlusturanCalisanID int NOT NULL, 
    TurID int NOT NULL, 
    primary key (KrediNo), 
    foreign key (SubeID) references Sube (SubeID), 
    foreign key (TurID) references Tur (TurID), 
    foreign key (KrediLimitID) references KrediLimit (KrediLimitID) 
);

Create table Adres( 
    AdresID int NOT NULL, 
    Adres char(50) NOT NULL, 
    primary key(AdresID) 
);

Create table Musteri ( 
    TCKN int, 
    Ad char(20) NOT NULL, 
    Soyad char(20) NOT NULL, 
    AdresID int NOT NULL, 
    Yas int NOT NULL,  
    Tel Char(12)NOT NULL, 
    HesapNo int, 
    KrediNo int, 
    primary key (TCKN), 
    foreign key (HesapNo) references Hesap (HesapNo), 
    foreign key (KrediNo) references Kredi (KrediNo), 
    foreign key (AdresID) references Adres (AdresID) 
);

insert into tur values(1,'Vadeli');

insert into tur values(2,'Vadesiz');

insert into tur values(3,'Döviz');

insert into tur values(4,'Fon');

insert into tur values(5,'Yatırım');

insert into tur values(6,'İhtiyaç Kredisi');

insert into tur values(7,'Evlilik Kredisi');

insert into tur values(8,'Öğrenci Kredisi');

insert into tur values(9,'Esnaf Kredisi');

insert into tur values(10,'Konut Kredisi');

insert into banka values(1,'Ziraat Bankası');

insert into banka values(2,'İş Bankası');

insert into banka values(3,'Halk Bankası');

insert into banka values(4,'Yapı Kredi');

insert into banka values(5,'Garanti Bankası');

insert into Sube values(1,1,'Küçükçekmeceİstanbul');

insert into Sube values(2,1,'Avcılarİstanbul');

insert into Sube values(3,1,'Kadıköyİstanbul');

insert into Sube values(4,1,'ÇankayaAnkara');

insert into Sube values(5,1,'Bornovaİzmir');

insert into Sube values(6,2,'Avcılarİstanbul');

insert into Sube values(7,4,'Kadıköyİstanbul');

insert into Sube values(8,5,'ÇankayaAnkara');

insert into Sube values(9,5,'İpekyoluVan');

insert into Sube values(10,3,'Bornovaİzmir');

insert into calisan values (100,'Esma','Erdem',2,1,13000);

insert into calisan values (101,'Enes','Kapsızlar',1,1,45000);

insert into calisan values (102,'Kübra','Sarp',2,1,13000);

insert into calisan values (103,'Aleyna','Tilki',3,1,17000);

insert into calisan values (104,'Simge','Sağın',6,2,18000);

insert into calisan values (105,'Sezen','Aksu',8,5,22000);

insert into calisan values (106,'Hadise','Açıkgöz',10,3,22000);

insert into calisan values (107,'Emilia','Clarke',10,3,25000);

insert into calisan values (108,'Scarlett','Johansson',9,5,30000);

insert into calisan values (109,'Margot','Robbie',1,1,30000);

insert into calisan values (110,'Vehbi','Erdem',7,2,10000);

insert into calisan values (111,'Berivan','Solmaz',6,4,9800);

insert into calisan values (112,'Davut','Duman',5,5,10000);

insert into calisan values (113,'Yakup','Korkmaz',4,3,12000);

insert into calisan values (114,'Dogan','Bakır',3,4,15000);

insert into calisan values (115,'Hatice','Doga',2,4,13000);

insert into calisan values (116,'Menderes','Imırzalıoglu',1,3,11000);

insert into calisan values (117,'Mehmet','Arvas',8,2,12000);

insert into calisan values (118,'İzzet','Alagoz',9,4,16000);

insert into calisan values (119,'Barıs','Polat',10,4,17000);

insert into hesap values(001340,17000,10,107,1);

insert into hesap values(001341,22000,1,116,4);

insert into hesap values(001342,44000,9,118,3);

insert into hesap values(001343,2000,10,119,2);

insert into hesap values(001344,5000,9,118,5);

insert into hesap values(001345,1000,3,114,2);

insert into hesap values(001346,7000,1,116,4);

insert into hesap values(001347,11000,8,117,3);

insert into hesap values(001348,25000,2,115,1);

insert into hesap values(001349,140000,3,114,5);

insert into hesap values(001350,70000,8,117,3);

insert into hesap values(001351,55000,2,115,4);

insert into hesap values(001352,21000,10,107,3);

insert into hesap values(001353,8000,10,119,1);

insert into hesap values(001354,500,1,116,4);

insert into hesap values(001310,90000,2,100,4);

insert into hesap values(001311,80000,10,106,3);

insert into hesap values(001312,1500,8,105,5);

insert into hesap values(001313,31500,6,104,5);

insert into hesap values(001314,7800,6,104,3);

insert into hesap values(001315,660,6,104,1);

insert into hesap values(001316,125,3,103,2);

insert into hesap values(001317,50000,2,100,3);

insert into hesap values(001318,25,2,100,3);

insert into hesap values(001319,14500,1,101,4);

insert into hesap values(001320,3200,1,101,5);

insert into hesap values(001321,100000,2,102,4);

insert into hesap values(001322,710000,2,100,1);

insert into hesap values(001323,36000,8,105,1);

insert into hesap values(001324,1100,3,103,2);

insert into hesap values(001325,12000,9,108,2);

insert into hesap values(001326,13000,9,108,1);

insert into hesap values(001327,15000,1,109,3);

insert into hesap values(001328,16000,7,110,1);

insert into hesap values(001329,13000,6,111,4);

insert into hesap values(001330,12000,5,112,5);

insert into hesap values(001331,9000,4,113,4);

insert into hesap values(001332,32000,1,109,3);

insert into hesap values(001333,124000,7,110,1);

insert into hesap values(001334,12300,6,111,1);

insert into hesap values(001335,42000,5,112,5);

insert into hesap values(001336,92000,4,113,4);

insert into hesap values(001337,52000,9,108,1);

insert into hesap values(001338,12000,1,109,3);

insert into hesap values(001339,345000,7,110,1);

insert into kredilimit values(1,20000);

insert into kredilimit values(2,50000);

insert into kredilimit values(3,70000);

insert into kredilimit values(4,100000);

insert into kredi values(009230,1,10,119,6);

insert into kredi values(009231,2,9,118,7);

insert into kredi values(009232,4,3,114,9);

insert into kredi values(009233,3,1,116,10);

insert into kredi values(009234,4,8,117,8);

insert into kredi values(009235,4,2,115,7);

insert into kredi values(009236,3,3,114,6);

insert into kredi values(009237,3,8,117,8);

insert into kredi values(009238,2,2,115,9);

insert into kredi values(009239,1,10,107,10);

insert into kredi values(009210,1,1,101,9);

insert into kredi values(009211,2,6,104,10);

insert into kredi values(009212,1,6,104,10);

insert into kredi values(009213,1,8,105,7);

insert into kredi values(009214,3,2,102,7);

insert into kredi values(009215,2,1,101,6);

insert into kredi values(009216,2,2,100,6);

insert into kredi values(009217,4,2,102,7);

insert into kredi values(009218,4,3,103,8);

insert into kredi values(009219,3,3,103,8);

insert into kredi values(009220,2,5,112,8);

insert into kredi values(009221,3,4,113,9);

insert into kredi values(009222,1,1,109,7);

insert into kredi values(009223,4,7,110,10);

insert into kredi values(009224,1,6,111,6);

insert into kredi values(009225,3,5,112,10);

insert into kredi values(009226,3,4,113,7);

insert into kredi values(009227,2,9,108,8);

insert into kredi values(009228,2,1,109,9);

insert into kredi values(009229,2,7,110,10);

insert into adres values(1,'Kadıköyİstanbul');

insert into adres values(2,'Avcılarİstanbul');

insert into adres values(3,'Küçükçekmeceİstanbul');

insert into adres values(4,'ÇankayaAnkara');

insert into adres values(5,'Bornovaİzmir');

insert into adres values(6,'İpekyoluVan');

insert into musteri values(3456325,'Arden','Aslan',1,32,'5474846556',001325,009220);

insert into musteri values(3456326,'Nergis','Demir',1,65,'537646489',001326,009221);

insert into musteri values(3456327,'İnan','Yılmaz',1,44,'5450989324',001327,009222);

insert into musteri values(3456328,'Ahmet','Demirhan',5,20,'544748859',001328,009223);

insert into musteri values(3456329,'Salih','Karatas',1,20,'546748390',001329,009224);

insert into musteri values(3456330,'Musa','Gürbüz',4,43,'5385849384',001330,009225);

insert into musteri values(3456331,'Figen','Gürbüz',4,40,'5484859643',001331,009226);

insert into musteri values(3456332,'İbrahim','Soy',2,26,'5343578132',001332,009227);

insert into musteri values(3456333,'Polat','Alemdar',3,33,'5438687952',001333,009228);

insert into musteri values(3456334,'Memati','Baş',3,40,'5366879362',001334,009229);

insert into musteri values(3456335,'Erhan','Güllü',3,28,'5238697047',001335,NULL);

insert into musteri values(3456336,'Doğu','Eşrefoğlu',4,60,'5469743321',001336,NULL);

insert into musteri values(3456337,'Süleyman','Çakır',3,35,'5336748694',001337,NULL);

insert into musteri values(3456338,'Mehmet','Karahanlı',4,60,'5538594832',001338,NULL);

insert into musteri values(3456339,'Nedim','İplikçi',2,56,'5328485963',001339,NULL);

insert into musteri values(3456310,'Serdar','Aydın',6,22,'5456911711',001340,009230);

insert into musteri values(3456311,'Ahmet','Yılmaz',3,25,'5352352354',001341,NULL);

insert into musteri values(3456312,'Aslı','Çolak',3,26,'5349530532',001344,009231);

insert into musteri values(3456313,'Mehmet','Mor',2,20,'5445949596',001353,009236);

insert into musteri values(3456314,'Seda','Erdem',3,20,'5324852332',001342,009237);

insert into musteri values(3456315,'Buse','Şahin',3,23,'5335943053',001354,009233);

insert into musteri values(3456316,'Ünal','Yılmaz',3,33,'5553854934',001347,NULL);

insert into musteri values(3456317,'Ayşe','Güler',3,44,'5394853943',001346,NULL);

insert into musteri values(3456318,'Kazım','Karataş',2,71,'5384950354',001352,009232);

insert into musteri values(3456319,'Abdullah','Erdoğan',2,56,'5054839483',001350,NULL);

insert into musteri values(3456320,'Servan','Aydın',6,20,'5456911711',001343,009235);

insert into musteri values(3456321,'Faruk','Durak',1,25,'5457584960',001345,009239);

insert into musteri values(3456322,'Savas','Dursun',4,36,'5427485766',001348,009234);

insert into musteri values(3456323,'Musap Taha','Guvengıl',5,29,'5417483920',001349,NULL);

insert into musteri values(3456324,'Ferdi','Keskin',4,56,'5537460102', 001351 ,009238);

insert into musteri values(3456340,'Mehmet','Delibaş',6,22,'5335896211',001310,NULL);

insert into musteri values(3456341,'Necdet','Koşu',1,22,'5312075541',001311,NULL);

insert into musteri values(3456342,'Kerem','Karaarslan',4,23,'5428457515',001324,009219);

insert into musteri values(3456343,'Ali','Koç',5,57,'5075623310',001323,009211);

insert into musteri values(3456344,'Ahmet','Çebi',4,61,'5537826690',001315,009215);

insert into musteri values(3456345,'Mauro','İcardi',1,29,'5434118946',001318,009216);

insert into musteri values(3456346,'Michy','Batshuayi',1,30,'5051113327',001321,009212);

insert into musteri values(3456347,'Jorge','Jesus',1,71,'5309870301',001319,NULL);

insert into musteri values(3456348,'Arda','Güler',5,18,'5448568799',001314,009210);

insert into musteri values(3456349,'Cemal','Özdemir',1,23,'5461332288',001313,009213);

insert into musteri values(3456350,'Atiba','Hutcinson',4,41,'5385001622',001312,009218);

insert into musteri values(3456351,'Sergen','Yalçın',4,55,'5465015646',001316,NULL);

insert into musteri values(3456352,'Lucas','Torreira',2,27,'5462438907',001317,009214);

insert into musteri values(3456353,'Volkan','Demirel',3,39,'5398367206',001320,NULL);

insert into musteri values(3456354,'Fernando','Muslera',3,38,'5380774692',001322,009217);

select m.TCKN , m.ad , m.soyad, m.adresID, m.tel , m.hesapno , m.kredino from musteri m,hesap h , sube s 
where m.hesapno = h.hesapno and h.subeID = s.subeID and BankaID = 3;

select m.TCKN , m.ad , m.soyad, m.adresID, m.tel , m.hesapno , m.kredino from musteri m,hesap h , sube s 
where m.hesapno = h.hesapno and h.subeID = s.subeID and BankaID = 5;

select * from banka b inner join sube s on b.bankaid=s.bankaid;

select tckn, ad, soyad  from musteri m 
    inner join hesap h on  m.hesapno=h.hesapno  
        inner join kredi k on m.kredino=k.kredino;

select  ad, soyad, bakiye from musteri m 
     inner join hesap h on h.hesapno=m.hesapno 
        order by bakiye desc fetch first 5 rows only;

select m.TCKN , m.ad , m.soyad, m.adresID, m.tel , m.hesapno , m.kredino from musteri m,hesap h , sube s 
where m.hesapno = h.hesapno and h.subeID = s.subeID and BankaID = 1;

select m.TCKN , m.ad , m.soyad, m.adresID, m.tel , m.hesapno , m.kredino from musteri m,hesap h , sube s 
where m.hesapno = h.hesapno and h.subeID = s.subeID and BankaID = 2;

select m.TCKN , m.ad , m.soyad, m.adresID, m.tel , m.hesapno , m.kredino from musteri m,hesap h , sube s 
where m.hesapno = h.hesapno and h.subeID = s.subeID and BankaID = 3;

select m.TCKN , m.ad , m.soyad, m.adresID, m.tel , m.hesapno , m.kredino from musteri m,hesap h , sube s 
where m.hesapno = h.hesapno and h.subeID = s.subeID and BankaID = 4;

select m.TCKN , m.ad , m.soyad, m.adresID, m.tel , m.hesapno , m.kredino from musteri m,hesap h , sube s 
where m.hesapno = h.hesapno and h.subeID = s.subeID and BankaID = 5;

select tel, ad, soyad from musteri;

select subeadresi, sum(maas) as odenecek_toplam_maas from calisan c , sube s 
    where c.subeid= s.subeid 
        group by subeadresi;

select subeadresi, sum(maas) as odenecek_toplam_maas from calisan c , sube s 
    where c.subeid= s.subeid 
        group by subeadresi;

select subeadresi, sum(maas) as odenecek_toplam_maas from calisan c , sube s 
    where c.subeid= s.subeid 
        group by subeadresi;

select m.TCKN , m.ad , m.soyad, m.adresID, m.tel , m.hesapno , m.kredino from musteri m,hesap h , sube s 
where m.hesapno = h.hesapno and h.subeID = s.subeID and BankaID = 1 and TurID = 1;

select m.TCKN , m.ad , m.soyad, m.adresID, m.tel , m.hesapno , m.kredino from musteri m,hesap h , sube s 
where m.hesapno = h.hesapno and h.subeID = s.subeID and BankaID = 1 and TurID = 2;

select subeadresi, sum(maas) as odenecek_toplam_maas from calisan c , sube s 
    where c.subeid= s.subeid 
        group by subeadresi;

select m.TCKN , m.ad , m.soyad, m.adresID, m.tel , m.hesapno , m.kredino from musteri m,hesap h , sube s 
where m.hesapno = h.hesapno and h.subeID = s.subeID and BankaID = 1 and TurID = 3;

select m.TCKN , m.ad , m.soyad, m.adresID, m.tel , m.hesapno , m.kredino from musteri m,hesap h , sube s 
where m.hesapno = h.hesapno and h.subeID = s.subeID and BankaID = 1 and TurID = 4;

select * from musteri where adresid = 6;

select m.TCKN , m.ad , m.soyad, m.adresID, m.tel , m.hesapno , m.kredino from musteri m,hesap h , sube s 
where m.hesapno = h.hesapno and h.subeID = s.subeID and BankaID = 1 and TurID = 5;

select m.TCKN , m.ad , m.soyad, m.adresID, m.tel , m.hesapno , m.kredino from musteri m,kredi k , sube s 
where m.kredino = k.kredino and k.subeID = s.subeID and TurID = 9;

select  b.adi,sum(kl.kredilimit)as verilen_toplam_kredi_miktari from kredilimit kl, kredi k, sube s , banka b 
where kl.kredilimitID = k.kredilimitID and k.SubeID = s.SubeID and s.BankaID = b.BankaID 
    group by b.adi;

select  b.adi,sum(kl.kredilimit)as verilen_toplam_kredi_miktari from kredilimit kl, kredi k, sube s , banka b 
where kl.kredilimitID = k.kredilimitID and k.SubeID = s.SubeID and s.BankaID = b.BankaID 
    group by b.adi;

select  c.adi , count(HesapNo) from hesap h, calisan c 
    where h.olusturancalisanid=c.calisanid 
        group by c.adi ;

select  c.adi , count(HesapNo) from hesap h, calisan c 
    where h.olusturancalisanid=c.calisanid 
        group by c.adi ;

select  c.adi , count(olusturancalisanid ) from kredi k, calisan c 
    where k.olusturancalisanid=c.calisanid 
        group by c.adi ;

select  c.adi , count(HesapNo) from hesap h, calisan c 
    where h.olusturancalisanid=c.calisanid 
        group by c.adi ;

select m.ad, m.soyad , h.bakiye from musteri m , hesap h 
where m.HesapNo = h.HesapNo ;

