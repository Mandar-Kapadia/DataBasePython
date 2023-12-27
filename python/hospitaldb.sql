BEGIN TRANSACTION;
CREATE TABLE doctors(
  "D_ID" TEXT PRIMARY KEY,
  "D_NAME" TEXT,
  "D_GENDER" TEXT,
  "D_AGE" TEXT,
  "D_SPECIALIZATION" TEXT,
  "D_YEARS_OF_EXPERIENCE" TEXT,
  "D_CONTACT" TEXT,
  "D_STREET" TEXT,
  "D_CITY" TEXT
);
INSERT INTO "doctors" VALUES('0','JAMES SMITH','m','36','General surgery','10','781-370-0443','Sterling Place','Reading');
INSERT INTO "doctors" VALUES('1','JOHN JOHNSON','m','39','Pathology','13','508-258-6524','Starr Street','Worcester');
INSERT INTO "doctors" VALUES('2','ROBERT WILLIAMS','m','30','Neurology','4','617-936-0638','Dewitt Avenue','Boston');
INSERT INTO "doctors" VALUES('3','MICHAEL JONES','m','41','Nuclear medicine','15','339-166-9590','Lawn Court','Burlington');
INSERT INTO "doctors" VALUES('4','WILLIAM BROWN','m','44','Physical medicine and rehabilitation','18','781-045-4121','Newel Street','Burlington');
INSERT INTO "doctors" VALUES('5','MARY SMITH','f','36','Internal medicine','15','978-930-3316','Homecrest Avenue','Lowell');
INSERT INTO "doctors" VALUES('6','PATRICIA JOHNSON','f','31','Obstetrics and gynaecology','10','978-930-9517','Whitney Avenue','Lowell');
INSERT INTO "doctors" VALUES('7','LINDA WILLIAMS','f','54','Cardiothoracic anesthesiology','33','978-930-9485','Lee Avenue','Lowell');
INSERT INTO "doctors" VALUES('8','BARBARA JONES','f','45','Neurosurgery','24','617-314-5667','Himrod Street','Woburn');
INSERT INTO "doctors" VALUES('9','ELIZABETH BROWN','f','57','Pediatrics','36','617-314-8264','Lee Avenue','Woburn');
CREATE TABLE instruments (
        I_ID INTEGER PRIMARY KEY, 
        I_NAME TEXT, 
        I_MANUFACTURER TEXT
    );
INSERT INTO "instruments" VALUES(0,'Instrument0','Aesculap');
INSERT INTO "instruments" VALUES(1,'Instrument1','Applied Medical Resources');
INSERT INTO "instruments" VALUES(2,'Instrument2','Elekta AB');
INSERT INTO "instruments" VALUES(3,'Instrument3','Ethicon Inc.');
INSERT INTO "instruments" VALUES(4,'Instrument4','Exactech Inc.');
INSERT INTO "instruments" VALUES(5,'Instrument5','Integra LifeSciences');
INSERT INTO "instruments" VALUES(6,'Instrument6','IntraOp Medical Inc.');
INSERT INTO "instruments" VALUES(7,'Instrument7','Medtronic Xomed Surgical Products');
INSERT INTO "instruments" VALUES(8,'Instrument8','Micra USA Inc.');
INSERT INTO "instruments" VALUES(9,'Instrument9','Stryker Corporation');
CREATE TABLE n_assists (
        N_ID INTEGER, 
        D_ID INTEGER,
        PRIMARY KEY(N_ID,D_ID)
    );
INSERT INTO "n_assists" VALUES(2501,4);
INSERT INTO "n_assists" VALUES(2502,6);
INSERT INTO "n_assists" VALUES(2502,2);
INSERT INTO "n_assists" VALUES(2502,4);
INSERT INTO "n_assists" VALUES(2503,0);
INSERT INTO "n_assists" VALUES(2504,9);
INSERT INTO "n_assists" VALUES(2505,4);
INSERT INTO "n_assists" VALUES(2505,8);
INSERT INTO "n_assists" VALUES(2505,6);
INSERT INTO "n_assists" VALUES(2506,9);
INSERT INTO "n_assists" VALUES(2506,1);
INSERT INTO "n_assists" VALUES(2507,1);
INSERT INTO "n_assists" VALUES(2508,3);
INSERT INTO "n_assists" VALUES(2508,1);
INSERT INTO "n_assists" VALUES(2509,6);
INSERT INTO "n_assists" VALUES(2510,2);
INSERT INTO "n_assists" VALUES(2511,0);
INSERT INTO "n_assists" VALUES(2512,7);
INSERT INTO "n_assists" VALUES(2513,3);
INSERT INTO "n_assists" VALUES(2514,7);
INSERT INTO "n_assists" VALUES(2515,0);
INSERT INTO "n_assists" VALUES(2515,5);
INSERT INTO "n_assists" VALUES(2516,9);
INSERT INTO "n_assists" VALUES(2517,2);
INSERT INTO "n_assists" VALUES(2517,5);
INSERT INTO "n_assists" VALUES(2518,6);
INSERT INTO "n_assists" VALUES(2518,9);
INSERT INTO "n_assists" VALUES(2519,6);
INSERT INTO "n_assists" VALUES(2519,3);
INSERT INTO "n_assists" VALUES(2519,8);
CREATE TABLE nurses (
       N_ID INTEGER PRIMARY KEY, 
       N_NAME TEXT, 
       N_SPECIALIZATION TEXT, 
       N_SHIFT INTEGER CHECK (N_SHIFT IN (1, 2)), 
       N_STREET TEXT, 
       N_CITY TEXT    
    );
INSERT INTO "nurses" VALUES(2500,'MARY SMITH','Oncology nursing',2,'Sterling Place','Reading');
INSERT INTO "nurses" VALUES(2501,'PATRICIA JOHN','HIV/AIDS nursing',1,'Dewitt Avenue','Boston');
INSERT INTO "nurses" VALUES(2502,'SOLINDA WILLIAMS','Ambulatory care nursing',2,'Sterling Place','Reading');
INSERT INTO "nurses" VALUES(2503,'BARBARA JONES','Critical care nursing',1,'Starr Street','Worcester');
INSERT INTO "nurses" VALUES(2504,'ELIZABETH BROWN','Community health nursing',1,'Dewitt Avenue','Boston');
INSERT INTO "nurses" VALUES(2505,'JENNIFER DAVIS','Burn nursing',1,'Dewitt Avenue','Boston');
INSERT INTO "nurses" VALUES(2506,'MARIA MILLER','Case management',2,'Sterling Place','Reading');
INSERT INTO "nurses" VALUES(2507,'SUSAN WILSON','Matron',1,'Starr Street','Worcester');
INSERT INTO "nurses" VALUES(2508,'MARGARET MOORE','Burn nursing',2,'Sterling Place','Reading');
INSERT INTO "nurses" VALUES(2509,'DOROTHY TAYLOR','Neonatal nursing',2,'Newel Street','Burlington');
INSERT INTO "nurses" VALUES(2510,'LISA ANDERSON','District nursing',1,'Newel Street','Burlington');
INSERT INTO "nurses" VALUES(2511,'NANCY THOMAS','Genetics nursing',1,'Whitney Avenue','Lowell');
INSERT INTO "nurses" VALUES(2512,'KAREN JACKSON','Clinical nurse specialist',1,'Newel Street','Burlington');
INSERT INTO "nurses" VALUES(2513,'BETTY WHITE','Health visiting',2,'Lee Avenue','Lowell');
INSERT INTO "nurses" VALUES(2514,'HELEN HARRIS','Community health nursing',2,'Homecrest Avenue','Lowell');
INSERT INTO "nurses" VALUES(2515,'SANDRA MARTIN','Ambulatory care nursing',1,'Lawn Court','Burlington');
INSERT INTO "nurses" VALUES(2516,'DONNA THOMPSON','Infectious disease nursing',1,'Himrod Street','Woburn');
INSERT INTO "nurses" VALUES(2517,'CAROL GARCIA','Oncology nursing',1,'Homecrest Avenue','Lowell');
INSERT INTO "nurses" VALUES(2518,'SHARON ROBINSON','Burn nursing',1,'Starr Street','Worcester');
INSERT INTO "nurses" VALUES(2519,'MICHELLE CLARK','Oncology nursing',2,'Starr Street','Worcester');
CREATE TABLE p_assignment (
        P_ID INTEGER, 
        D_ID INTEGER,
        PRIMARY KEY(P_ID,D_ID)
    );
INSERT INTO "p_assignment" VALUES(1007,0);
INSERT INTO "p_assignment" VALUES(1002,2);
INSERT INTO "p_assignment" VALUES(1026,3);
INSERT INTO "p_assignment" VALUES(1032,4);
INSERT INTO "p_assignment" VALUES(1005,5);
INSERT INTO "p_assignment" VALUES(1027,6);
INSERT INTO "p_assignment" VALUES(1001,6);
INSERT INTO "p_assignment" VALUES(1021,6);
INSERT INTO "p_assignment" VALUES(1032,6);
INSERT INTO "p_assignment" VALUES(1006,6);
INSERT INTO "p_assignment" VALUES(1004,7);
INSERT INTO "p_assignment" VALUES(1002,8);
INSERT INTO "p_assignment" VALUES(1000,9);
INSERT INTO "p_assignment" VALUES(1003,9);
INSERT INTO "p_assignment" VALUES(1000,1);
INSERT INTO "p_assignment" VALUES(1038,0);
INSERT INTO "p_assignment" VALUES(1008,3);
INSERT INTO "p_assignment" VALUES(1028,6);
INSERT INTO "p_assignment" VALUES(1009,1);
INSERT INTO "p_assignment" VALUES(1020,7);
INSERT INTO "p_assignment" VALUES(1025,7);
INSERT INTO "p_assignment" VALUES(1037,0);
INSERT INTO "p_assignment" VALUES(1011,0);
INSERT INTO "p_assignment" VALUES(1028,7);
INSERT INTO "p_assignment" VALUES(1012,7);
INSERT INTO "p_assignment" VALUES(1031,0);
INSERT INTO "p_assignment" VALUES(1013,6);
INSERT INTO "p_assignment" VALUES(1035,2);
INSERT INTO "p_assignment" VALUES(1014,0);
INSERT INTO "p_assignment" VALUES(1038,1);
INSERT INTO "p_assignment" VALUES(1015,8);
INSERT INTO "p_assignment" VALUES(1033,7);
INSERT INTO "p_assignment" VALUES(1016,5);
INSERT INTO "p_assignment" VALUES(1012,9);
INSERT INTO "p_assignment" VALUES(1017,6);
INSERT INTO "p_assignment" VALUES(1016,6);
INSERT INTO "p_assignment" VALUES(1018,3);
INSERT INTO "p_assignment" VALUES(1026,7);
INSERT INTO "p_assignment" VALUES(1019,4);
INSERT INTO "p_assignment" VALUES(1017,5);
INSERT INTO "p_assignment" VALUES(1010,6);
INSERT INTO "p_assignment" VALUES(1019,6);
INSERT INTO "p_assignment" VALUES(1021,4);
INSERT INTO "p_assignment" VALUES(1027,7);
INSERT INTO "p_assignment" VALUES(1022,9);
INSERT INTO "p_assignment" VALUES(1012,5);
INSERT INTO "p_assignment" VALUES(1023,1);
INSERT INTO "p_assignment" VALUES(1034,5);
INSERT INTO "p_assignment" VALUES(1024,9);
INSERT INTO "p_assignment" VALUES(1027,2);
INSERT INTO "p_assignment" VALUES(1025,5);
INSERT INTO "p_assignment" VALUES(1005,7);
INSERT INTO "p_assignment" VALUES(1026,4);
INSERT INTO "p_assignment" VALUES(1029,4);
INSERT INTO "p_assignment" VALUES(1027,0);
INSERT INTO "p_assignment" VALUES(1018,6);
INSERT INTO "p_assignment" VALUES(1028,0);
INSERT INTO "p_assignment" VALUES(1009,7);
INSERT INTO "p_assignment" VALUES(1029,3);
INSERT INTO "p_assignment" VALUES(1014,5);
INSERT INTO "p_assignment" VALUES(1011,5);
INSERT INTO "p_assignment" VALUES(1036,0);
INSERT INTO "p_assignment" VALUES(1031,5);
INSERT INTO "p_assignment" VALUES(1005,0);
INSERT INTO "p_assignment" VALUES(1032,1);
INSERT INTO "p_assignment" VALUES(1001,4);
INSERT INTO "p_assignment" VALUES(1033,4);
INSERT INTO "p_assignment" VALUES(1031,7);
INSERT INTO "p_assignment" VALUES(1034,3);
INSERT INTO "p_assignment" VALUES(1038,8);
INSERT INTO "p_assignment" VALUES(1035,1);
INSERT INTO "p_assignment" VALUES(1024,8);
INSERT INTO "p_assignment" VALUES(1036,1);
INSERT INTO "p_assignment" VALUES(1039,6);
INSERT INTO "p_assignment" VALUES(1037,8);
INSERT INTO "p_assignment" VALUES(1030,4);
INSERT INTO "p_assignment" VALUES(1038,5);
INSERT INTO "p_assignment" VALUES(1011,3);
INSERT INTO "p_assignment" VALUES(1039,5);
INSERT INTO "p_assignment" VALUES(1037,3);
CREATE TABLE patients (
        P_ID INTEGER PRIMARY KEY, 
        P_NAME TEXT, 
        P_GENDER TEXT, 
        P_AGE INTEGER, 
        P_DISEASE TEXT, 
        P_CONTACT TEXT,
        P_STREET TEXT, 
        P_CITY TEXT);
INSERT INTO "patients" VALUES(1000,'DAVID DAVIS','m',47,'Heartburn','978-930-0234','Mamoth Road','Lowell');
INSERT INTO "patients" VALUES(1001,'RICHARD MILLER','m',52,'Infertility','781-389-9038','Straight Street','Reading');
INSERT INTO "patients" VALUES(1002,'CHARLES WILSON','m',46,'Ear Problems','617-314-9446','Beacon Street','Boston');
INSERT INTO "patients" VALUES(1003,'JOSEPH MOORE','m',63,'Melena (Blood in Stool)','508-258-1004','Starr Street','Worcester');
INSERT INTO "patients" VALUES(1004,'THOMAS TAYLOR','m',64,'Bronchitis','978-930-4554','Mamoth Road','Lowell');
INSERT INTO "patients" VALUES(1005,'CHRISTOPHER ANDERSON','m',45,'Miscarriages','617-314-7541','Himrod Street','Woburn');
INSERT INTO "patients" VALUES(1006,'DANIEL THOMAS','m',42,'Heart Attacks','978-930-8765','Whitney Avenue','Lowell');
INSERT INTO "patients" VALUES(1007,'PAUL JACKSON','m',67,'Gynecomastia','617-314-8442','Lee Avenue','Woburn');
INSERT INTO "patients" VALUES(1008,'MARK WHITE','m',53,'Prostate Cancer','617-936-0112','Daisy Avenue','Boston');
INSERT INTO "patients" VALUES(1009,'DONALD HARRIS','m',69,'Burns','978-930-3257','Highway Avenue','Lowell');
INSERT INTO "patients" VALUES(1010,'GEORGE MARTIN','m',25,'Irritable Bowel Syndrome (IBS)','617-936-0539','Common Avenue','Boston');
INSERT INTO "patients" VALUES(1011,'KENNETH THOMPSON','m',62,'Hepatitis','978-930-5339','Brodway Street','Lowell');
INSERT INTO "patients" VALUES(1012,'STEVEN GARCIA','m',58,'Anorexia Nervosa','617-314-5612','Himrod Street','Woburn');
INSERT INTO "patients" VALUES(1013,'EDWARD MARTINEZ','m',44,'Down Syndrome','617-936-4765','Prudential Street','Boston');
INSERT INTO "patients" VALUES(1014,'BRIAN ROBINSON','m',71,'Staph Infection (MRSA)','617-936-9701','Brodway Street','Boston');
INSERT INTO "patients" VALUES(1015,'RONALD CLARK','m',66,'Gout','781-045-1214','Newel Street','Burlington');
INSERT INTO "patients" VALUES(1016,'ANTHONY RODRIGUEZ','m',42,'Eye Problems','617-314-2502','Totman Drive','Woburn');
INSERT INTO "patients" VALUES(1017,'KEVIN LEWIS','m',23,'Juvenile Diabetes','781-045-1661','Newyear Street','Burlington');
INSERT INTO "patients" VALUES(1018,'JASON LEE','m',36,'Canker Sores (Cold Sores)','617-314-7812','Cambridge Street','Woburn');
INSERT INTO "patients" VALUES(1019,'MATTHEW WALKER','m',30,'Obsessive Compulsive Disorder (OCD)','781-045-1321','Newel Street','Burlington');
INSERT INTO "patients" VALUES(1020,'MAISY MATHEW','f',28,'Ankle Twist','617-314-1234','Lee Avenue','Woburn');
INSERT INTO "patients" VALUES(1021,'MARIA MILLER','f',24,'Alzheimers Disease','617-314-6845','Happy Street','Dracut');
INSERT INTO "patients" VALUES(1022,'SUSAN WILSON','f',33,'Bone Cancer','617-936-1111','Haymarket Avenue','Boston');
INSERT INTO "patients" VALUES(1023,'MARGARET MOORE','f',21,'Osteoporosis','508-258-6655','Starr Street','Worcester');
INSERT INTO "patients" VALUES(1024,'DOROTHY TAYLOR','f',15,'Acid Reflux Disease (GERD)','508-258-7878','Sand Street','Worcester');
INSERT INTO "patients" VALUES(1025,'LISA ANDERSON','f',66,'Warts','508-258-6521','Apple Street','Worcester');
INSERT INTO "patients" VALUES(1026,'NANCY THOMAS','f',37,'Infectious Mononucleosis (Glandular Fever)','781-370-0412','Sterling Place','Reading');
INSERT INTO "patients" VALUES(1027,'KAREN JACKSON','f',68,'Peyronies Disease','508-258-4290','Conway Avenue','Worcester');
INSERT INTO "patients" VALUES(1028,'BETTY WHITE','f',32,'Chronic Obstructive Pulmonary Disease (COPD)','781-370-4509','Sterling Place','Reading');
INSERT INTO "patients" VALUES(1029,'HELEN HARRIS','f',72,'Cancer','617-936-0880','First Street','Boston');
INSERT INTO "patients" VALUES(1030,'SANDRA MARTIN','f',16,'Bladder Cancer','617-936-1460','Massachusetts Avenue','Boston');
INSERT INTO "patients" VALUES(1031,'DONNA THOMPSON','f',59,'Sinus Infections','508-258-1225','Summer Street','Worcester');
INSERT INTO "patients" VALUES(1032,'CAROL GARCIA','f',15,'Canker Sores (Cold Sores)','781-370-0007','Bond Street','Reading');
INSERT INTO "patients" VALUES(1033,'RUTH MARTINEZ','f',47,'Ear Infections','781-370-0383','Swan Avenue','Reading');
INSERT INTO "patients" VALUES(1034,'SHARON ROBINSON','f',43,'Brain Injury','617-936-1462','Massachusetts Avenue','Boston');
INSERT INTO "patients" VALUES(1035,'MICHELLE CLARK','f',74,'Sexually Transmitted Disease (STD)','617-936-1290','Massachusetts Avenue','Boston');
INSERT INTO "patients" VALUES(1036,'LAURA RODRIGUEZ','f',34,'Psoriasis','617-936-1445','Massachusetts Avenue','Boston');
INSERT INTO "patients" VALUES(1037,'SARAH LEWIS','f',16,'Obesity','978-930-1264','Homecrest Avenue','Lowell');
INSERT INTO "patients" VALUES(1038,'KIMBERLY LEE','f',47,'Hypertension (High Blood Pressure)','617-314-8925','Himrod Street','Woburn');
INSERT INTO "patients" VALUES(1039,'DEBORAH WALKER','f',52,'Panic Attack','978-930-1279','School Street','Lowell');
CREATE TABLE tests (
        T_ID INTEGER PRIMARY KEY, 
        T_NAME TEXT, 
        P_ID INTEGER, 
        D_ID INTEGER, 
        I_ID INTEGER, 
        T_DATE TEXT, 
        T_RESULT TEXT
    );
INSERT INTO "tests" VALUES(0,'Test0',1037,3,2,'8/19/1997','Positive');
INSERT INTO "tests" VALUES(2,'Test2',1011,3,0,'12/29/2003','Positive');
INSERT INTO "tests" VALUES(4,'Test4',1030,4,6,'6/17/2010','Positive');
INSERT INTO "tests" VALUES(7,'Test7',1036,1,5,'10/6/1992','Positive');
INSERT INTO "tests" VALUES(8,'Test8',1024,8,1,'6/9/2010','Positive');
INSERT INTO "tests" VALUES(10,'Test10',1038,8,5,'6/23/2012','Positive');
INSERT INTO "tests" VALUES(11,'Test11',1034,3,3,'12/1/2004','Positive');
INSERT INTO "tests" VALUES(13,'Test13',1007,0,8,'8/29/2011','Positive');
INSERT INTO "tests" VALUES(14,'Test14',1002,2,1,'3/20/2008','Positive');
INSERT INTO "tests" VALUES(17,'Test17',1005,5,0,'5/24/2012','Positive');
INSERT INTO "tests" VALUES(18,'Test18',1032,6,4,'7/19/2001','Positive');
INSERT INTO "tests" VALUES(23,'Test23',1027,6,5,'3/31/2008','Positive');
INSERT INTO "tests" VALUES(25,'Test25',1000,9,3,'11/29/2004','Positive');
INSERT INTO "tests" VALUES(28,'Test28',1038,0,3,'11/24/1997','Positive');
INSERT INTO "tests" VALUES(32,'Test32',1032,1,5,'8/20/1998','Positive');
INSERT INTO "tests" VALUES(34,'Test34',1033,4,2,'11/19/1994','Positive');
INSERT INTO "tests" VALUES(35,'Test35',1009,1,9,'8/28/2008','Positive');
INSERT INTO "tests" VALUES(38,'Test38',1037,0,4,'7/26/2004','Positive');
INSERT INTO "tests" VALUES(39,'Test39',1011,0,5,'7/1/2005','Positive');
INSERT INTO "tests" VALUES(41,'Test41',1012,7,1,'7/4/2009','Positive');
INSERT INTO "tests" VALUES(42,'Test42',1031,0,5,'4/15/2007','Positive');
INSERT INTO "tests" VALUES(43,'Test43',1013,6,5,'9/12/2003','Positive');
INSERT INTO "tests" VALUES(44,'Test44',1035,2,0,'3/11/2001','Positive');
INSERT INTO "tests" VALUES(45,'Test45',1014,0,8,'2/11/2006','Positive');
INSERT INTO "tests" VALUES(48,'Test48',1029,4,0,'5/8/2007','Positive');
COMMIT;
